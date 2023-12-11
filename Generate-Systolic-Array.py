from amaranth import *
from amaranth.back import verilog
from amaranth_soc import wishbone
from amaranth.sim import *
import random

class SystolicArray(Elaboratable):
    def __init__(self, N):
        self.N = N
        self.wb_bus = wishbone.Interface(data_width=32, addr_width=32)
        self.input_matrix1 = Array(Signal(16) for _ in range(N*N))
        self.input_matrix2 = Array(Signal(16) for _ in range(N*N))
        self.output_matrix = Array(Signal(32) for _ in range(N*N))

    def elaborate(self, platform):
        m = Module()

        # Systolic Array logic
        for i in range(self.N):
            for j in range(self.N):
                m.d.sync += self.output_matrix[i*self.N+j].eq(self.input_matrix1[i*self.N+j] * self.input_matrix2[i*self.N+j])

        # Wishbone interface
        with m.Switch(self.wb_bus.adr):
            for i in range(self.N*self.N):
                with m.Case(i):
                    m.d.sync += self.input_matrix1[i].eq(self.wb_bus.dat_w)
                with m.Case(i+self.N*self.N):
                    m.d.sync += self.input_matrix2[i].eq(self.wb_bus.dat_w)
                with m.Case(i+2*self.N*self.N):
                    m.d.comb += self.wb_bus.dat_r.eq(self.output_matrix[i])

        # Instant acks
        with m.If(self.wb_bus.cyc & self.wb_bus.stb):
            m.d.sync += self.wb_bus.ack.eq(1)

        return m

# Create the systolic array
dut = SystolicArray(N=4)

# Create a simulator
sim = Simulator(dut)
sim.add_clock(1e-6)  # Add a 1 MHz clock

def process():
    for _ in range(100):  # Run the test 100 times
        # Generate random inputs
        matrix1 = [random.randint(0, 65535) for _ in range(dut.N*dut.N)]
        matrix2 = [random.randint(0, 65535) for _ in range(dut.N*dut.N)]

        # Load the inputs into the systolic array
        for i in range(dut.N*dut.N):
            yield dut.wb_bus.adr.eq(i)
            yield dut.wb_bus.dat_w.eq(matrix1[i])
            yield Tick()
            yield dut.wb_bus.adr.eq(i+dut.N*dut.N)
            yield dut.wb_bus.dat_w.eq(matrix2[i])
            yield Tick()

        # Check the output
        for i in range(dut.N*dut.N):
            yield dut.wb_bus.adr.eq(i+2*dut.N*dut.N)
            yield Tick()
            assert (yield dut.wb_bus.dat_r) == matrix1[i] * matrix2[i]

# Generate the Verilog code
top = SystolicArray(N=8)
print(verilog.convert(top, ports=[top.wb_bus.adr, top.wb_bus.dat_w, top.wb_bus.dat_r, top.wb_bus.sel, top.wb_bus.we, top.wb_bus.cyc, top.wb_bus.stb, top.wb_bus.ack]))

# Add the process to the simulator
sim.add_sync_process(process)
with sim.write_vcd('test.vcd', 'test.gtkw'):
    sim.run_until(1e-3, run_passive=True)
