// SPDX-FileCopyrightText: 2020 Efabless Corporation
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// SPDX-License-Identifier: Apache-2.0

`default_nettype none
/*
 *-------------------------------------------------------------
 *
 * user_proj_example
 *
 * This is an example of a (trivially simple) user project,
 * showing how the user project can connect to the logic
 * analyzer, the wishbone bus, and the I/O pads.
 *
 * This project generates an integer count, which is output
 * on the user area GPIO pads (digital output only).  The
 * wishbone connection allows the project to be controlled
 * (start and stop) from the management SoC program.
 *
 * See the testbenches in directory "mprj_counter" for the
 * example programs that drive this user project.  The three
 * testbenches are "io_ports", "la_test1", and "la_test2".
 *
 *-------------------------------------------------------------
 */

module user_proj_example #(
    parameter BITS = 16
)(
`ifdef USE_POWER_PINS
    inout vdd,	// User area 1 1.8V supply
    inout vss,	// User area 1 digital ground
`endif

    // Wishbone Slave ports (WB MI A)
    input wb_clk_i,
    input wb_rst_i,
    input wbs_stb_i,
    input wbs_cyc_i,
    input wbs_we_i,
    input [3:0] wbs_sel_i,
    input [31:0] wbs_dat_i,
    input [31:0] wbs_adr_i,
    output wbs_ack_o,
    output [31:0] wbs_dat_o
);
    wire [31:0] dat_w;
    wire [31:0] dat_r;
    wire sel;
    wire we;
    wire cyc;
    wire stb;
    wire ack;
    wire clk;
    wire rst;
    wire [31:0] adr;
    
    assign dat_w = wbs_dat_i;
    assign wbs_dat_o = dat_r;
    assign sel = wbs_sel_i[0];
    assign we = wbs_we_i;
    assign cyc = wbs_cyc_i;
    assign stb = wbs_stb_i;
    assign wbs_ack_o = ack;
    assign clk = wb_clk_i;
    assign rst = wb_rst_i;
    assign adr = wbs_adr_i;
    
    systolic_array systolic_array(
        .dat_w(dat_w),
        .dat_r(dat_r),
        .sel(sel),
        .we(we),
        .cyc(cyc),
        .stb(stb),
        .ack(ack),
        .clk(clk),
        .rst(rst),
        .adr(adr)
    );

endmodule
 
module systolic_array(dat_w, dat_r, sel, we, cyc, stb, ack, clk, rst, adr);
  reg \$auto$verilog_backend.cc:2097:dump_module$1  = 0;
  (* src = "/home/james/systolicArray.py:21" *)
  wire [31:0] \$13 ;
  (* src = "/home/james/systolicArray.py:21" *)
  wire [31:0] \$18 ;
  (* src = "/home/james/systolicArray.py:21" *)
  wire [31:0] \$23 ;
  (* src = "/home/james/systolicArray.py:21" *)
  wire [31:0] \$28 ;
  (* src = "/home/james/systolicArray.py:21" *)
  wire [31:0] \$3 ;
  (* src = "/home/james/systolicArray.py:21" *)
  wire [31:0] \$33 ;
  (* src = "/home/james/systolicArray.py:21" *)
  wire [31:0] \$38 ;
  (* src = "/home/james/systolicArray.py:21" *)
  wire [31:0] \$43 ;
  (* src = "/home/james/systolicArray.py:21" *)
  wire [31:0] \$48 ;
  (* src = "/home/james/systolicArray.py:21" *)
  wire [31:0] \$53 ;
  (* src = "/home/james/systolicArray.py:21" *)
  wire [31:0] \$58 ;
  (* src = "/home/james/systolicArray.py:21" *)
  wire [31:0] \$63 ;
  (* src = "/home/james/systolicArray.py:21" *)
  wire [31:0] \$68 ;
  (* src = "/home/james/systolicArray.py:21" *)
  wire [31:0] \$73 ;
  (* src = "/home/james/systolicArray.py:21" *)
  wire [31:0] \$78 ;
  (* src = "/home/james/systolicArray.py:21" *)
  wire [31:0] \$8 ;
  (* src = "/home/james/systolicArray.py:34" *)
  wire \$80 ;
  (* src = "/home/james/systolicArray.py:13" *)
  reg [31:0] \$signal  = 32'd0;
  (* src = "/home/james/systolicArray.py:11" *)
  reg [15:0] \$signal$1  = 16'h0000;
  (* src = "/home/james/systolicArray.py:11" *)
  reg [15:0] \$signal$1$next ;
  (* src = "/home/james/systolicArray.py:13" *)
  reg [31:0] \$signal$10  = 32'd0;
  (* src = "/home/james/systolicArray.py:13" *)
  reg [31:0] \$signal$10$next ;
  (* src = "/home/james/systolicArray.py:11" *)
  reg [15:0] \$signal$11  = 16'h0000;
  (* src = "/home/james/systolicArray.py:11" *)
  reg [15:0] \$signal$11$next ;
  (* src = "/home/james/systolicArray.py:12" *)
  reg [15:0] \$signal$12  = 16'h0000;
  (* src = "/home/james/systolicArray.py:12" *)
  reg [15:0] \$signal$12$next ;
  (* src = "/home/james/systolicArray.py:13" *)
  reg [31:0] \$signal$15  = 32'd0;
  (* src = "/home/james/systolicArray.py:13" *)
  reg [31:0] \$signal$15$next ;
  (* src = "/home/james/systolicArray.py:11" *)
  reg [15:0] \$signal$16  = 16'h0000;
  (* src = "/home/james/systolicArray.py:11" *)
  reg [15:0] \$signal$16$next ;
  (* src = "/home/james/systolicArray.py:12" *)
  reg [15:0] \$signal$17  = 16'h0000;
  (* src = "/home/james/systolicArray.py:12" *)
  reg [15:0] \$signal$17$next ;
  (* src = "/home/james/systolicArray.py:12" *)
  reg [15:0] \$signal$2  = 16'h0000;
  (* src = "/home/james/systolicArray.py:12" *)
  reg [15:0] \$signal$2$next ;
  (* src = "/home/james/systolicArray.py:13" *)
  reg [31:0] \$signal$20  = 32'd0;
  (* src = "/home/james/systolicArray.py:13" *)
  reg [31:0] \$signal$20$next ;
  (* src = "/home/james/systolicArray.py:11" *)
  reg [15:0] \$signal$21  = 16'h0000;
  (* src = "/home/james/systolicArray.py:11" *)
  reg [15:0] \$signal$21$next ;
  (* src = "/home/james/systolicArray.py:12" *)
  reg [15:0] \$signal$22  = 16'h0000;
  (* src = "/home/james/systolicArray.py:12" *)
  reg [15:0] \$signal$22$next ;
  (* src = "/home/james/systolicArray.py:13" *)
  reg [31:0] \$signal$25  = 32'd0;
  (* src = "/home/james/systolicArray.py:13" *)
  reg [31:0] \$signal$25$next ;
  (* src = "/home/james/systolicArray.py:11" *)
  reg [15:0] \$signal$26  = 16'h0000;
  (* src = "/home/james/systolicArray.py:11" *)
  reg [15:0] \$signal$26$next ;
  (* src = "/home/james/systolicArray.py:12" *)
  reg [15:0] \$signal$27  = 16'h0000;
  (* src = "/home/james/systolicArray.py:12" *)
  reg [15:0] \$signal$27$next ;
  (* src = "/home/james/systolicArray.py:13" *)
  reg [31:0] \$signal$30  = 32'd0;
  (* src = "/home/james/systolicArray.py:13" *)
  reg [31:0] \$signal$30$next ;
  (* src = "/home/james/systolicArray.py:11" *)
  reg [15:0] \$signal$31  = 16'h0000;
  (* src = "/home/james/systolicArray.py:11" *)
  reg [15:0] \$signal$31$next ;
  (* src = "/home/james/systolicArray.py:12" *)
  reg [15:0] \$signal$32  = 16'h0000;
  (* src = "/home/james/systolicArray.py:12" *)
  reg [15:0] \$signal$32$next ;
  (* src = "/home/james/systolicArray.py:13" *)
  reg [31:0] \$signal$35  = 32'd0;
  (* src = "/home/james/systolicArray.py:13" *)
  reg [31:0] \$signal$35$next ;
  (* src = "/home/james/systolicArray.py:11" *)
  reg [15:0] \$signal$36  = 16'h0000;
  (* src = "/home/james/systolicArray.py:11" *)
  reg [15:0] \$signal$36$next ;
  (* src = "/home/james/systolicArray.py:12" *)
  reg [15:0] \$signal$37  = 16'h0000;
  (* src = "/home/james/systolicArray.py:12" *)
  reg [15:0] \$signal$37$next ;
  (* src = "/home/james/systolicArray.py:13" *)
  reg [31:0] \$signal$40  = 32'd0;
  (* src = "/home/james/systolicArray.py:13" *)
  reg [31:0] \$signal$40$next ;
  (* src = "/home/james/systolicArray.py:11" *)
  reg [15:0] \$signal$41  = 16'h0000;
  (* src = "/home/james/systolicArray.py:11" *)
  reg [15:0] \$signal$41$next ;
  (* src = "/home/james/systolicArray.py:12" *)
  reg [15:0] \$signal$42  = 16'h0000;
  (* src = "/home/james/systolicArray.py:12" *)
  reg [15:0] \$signal$42$next ;
  (* src = "/home/james/systolicArray.py:13" *)
  reg [31:0] \$signal$45  = 32'd0;
  (* src = "/home/james/systolicArray.py:13" *)
  reg [31:0] \$signal$45$next ;
  (* src = "/home/james/systolicArray.py:11" *)
  reg [15:0] \$signal$46  = 16'h0000;
  (* src = "/home/james/systolicArray.py:11" *)
  reg [15:0] \$signal$46$next ;
  (* src = "/home/james/systolicArray.py:12" *)
  reg [15:0] \$signal$47  = 16'h0000;
  (* src = "/home/james/systolicArray.py:12" *)
  reg [15:0] \$signal$47$next ;
  (* src = "/home/james/systolicArray.py:13" *)
  reg [31:0] \$signal$5  = 32'd0;
  (* src = "/home/james/systolicArray.py:13" *)
  reg [31:0] \$signal$5$next ;
  (* src = "/home/james/systolicArray.py:13" *)
  reg [31:0] \$signal$50  = 32'd0;
  (* src = "/home/james/systolicArray.py:13" *)
  reg [31:0] \$signal$50$next ;
  (* src = "/home/james/systolicArray.py:11" *)
  reg [15:0] \$signal$51  = 16'h0000;
  (* src = "/home/james/systolicArray.py:11" *)
  reg [15:0] \$signal$51$next ;
  (* src = "/home/james/systolicArray.py:12" *)
  reg [15:0] \$signal$52  = 16'h0000;
  (* src = "/home/james/systolicArray.py:12" *)
  reg [15:0] \$signal$52$next ;
  (* src = "/home/james/systolicArray.py:13" *)
  reg [31:0] \$signal$55  = 32'd0;
  (* src = "/home/james/systolicArray.py:13" *)
  reg [31:0] \$signal$55$next ;
  (* src = "/home/james/systolicArray.py:11" *)
  reg [15:0] \$signal$56  = 16'h0000;
  (* src = "/home/james/systolicArray.py:11" *)
  reg [15:0] \$signal$56$next ;
  (* src = "/home/james/systolicArray.py:12" *)
  reg [15:0] \$signal$57  = 16'h0000;
  (* src = "/home/james/systolicArray.py:12" *)
  reg [15:0] \$signal$57$next ;
  (* src = "/home/james/systolicArray.py:11" *)
  reg [15:0] \$signal$6  = 16'h0000;
  (* src = "/home/james/systolicArray.py:11" *)
  reg [15:0] \$signal$6$next ;
  (* src = "/home/james/systolicArray.py:13" *)
  reg [31:0] \$signal$60  = 32'd0;
  (* src = "/home/james/systolicArray.py:13" *)
  reg [31:0] \$signal$60$next ;
  (* src = "/home/james/systolicArray.py:11" *)
  reg [15:0] \$signal$61  = 16'h0000;
  (* src = "/home/james/systolicArray.py:11" *)
  reg [15:0] \$signal$61$next ;
  (* src = "/home/james/systolicArray.py:12" *)
  reg [15:0] \$signal$62  = 16'h0000;
  (* src = "/home/james/systolicArray.py:12" *)
  reg [15:0] \$signal$62$next ;
  (* src = "/home/james/systolicArray.py:13" *)
  reg [31:0] \$signal$65  = 32'd0;
  (* src = "/home/james/systolicArray.py:13" *)
  reg [31:0] \$signal$65$next ;
  (* src = "/home/james/systolicArray.py:11" *)
  reg [15:0] \$signal$66  = 16'h0000;
  (* src = "/home/james/systolicArray.py:11" *)
  reg [15:0] \$signal$66$next ;
  (* src = "/home/james/systolicArray.py:12" *)
  reg [15:0] \$signal$67  = 16'h0000;
  (* src = "/home/james/systolicArray.py:12" *)
  reg [15:0] \$signal$67$next ;
  (* src = "/home/james/systolicArray.py:12" *)
  reg [15:0] \$signal$7  = 16'h0000;
  (* src = "/home/james/systolicArray.py:12" *)
  reg [15:0] \$signal$7$next ;
  (* src = "/home/james/systolicArray.py:13" *)
  reg [31:0] \$signal$70  = 32'd0;
  (* src = "/home/james/systolicArray.py:13" *)
  reg [31:0] \$signal$70$next ;
  (* src = "/home/james/systolicArray.py:11" *)
  reg [15:0] \$signal$71  = 16'h0000;
  (* src = "/home/james/systolicArray.py:11" *)
  reg [15:0] \$signal$71$next ;
  (* src = "/home/james/systolicArray.py:12" *)
  reg [15:0] \$signal$72  = 16'h0000;
  (* src = "/home/james/systolicArray.py:12" *)
  reg [15:0] \$signal$72$next ;
  (* src = "/home/james/systolicArray.py:13" *)
  reg [31:0] \$signal$75  = 32'd0;
  (* src = "/home/james/systolicArray.py:13" *)
  reg [31:0] \$signal$75$next ;
  (* src = "/home/james/systolicArray.py:11" *)
  reg [15:0] \$signal$76  = 16'h0000;
  (* src = "/home/james/systolicArray.py:11" *)
  reg [15:0] \$signal$76$next ;
  (* src = "/home/james/systolicArray.py:12" *)
  reg [15:0] \$signal$77  = 16'h0000;
  (* src = "/home/james/systolicArray.py:12" *)
  reg [15:0] \$signal$77$next ;
  (* src = "/home/james/systolicArray.py:13" *)
  reg [31:0] \$signal$next ;
  (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:227" *)
  output ack;
  reg ack = 1'h0;
  (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:227" *)
  reg \ack$next ;
  (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:227" *)
  input [31:0] adr;
  wire [31:0] adr;
  (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/ir.py:508" *)
  input clk;
  wire clk;
  (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:227" *)
  input cyc;
  wire cyc;
  (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:227" *)
  output [31:0] dat_r;
  reg [31:0] dat_r;
  (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:227" *)
  input [31:0] dat_w;
  wire [31:0] dat_w;
  (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/ir.py:508" *)
  input rst;
  wire rst;
  (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:227" *)
  input sel;
  wire sel;
  (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:227" *)
  input stb;
  wire stb;
  (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/lib/wiring.py:227" *)
  input we;
  wire we;
  always @(posedge clk)
    \$signal$6  <= \$signal$6$next ;
  always @(posedge clk)
    \$signal$7  <= \$signal$7$next ;
  always @(posedge clk)
    \$signal$11  <= \$signal$11$next ;
  always @(posedge clk)
    \$signal$12  <= \$signal$12$next ;
  always @(posedge clk)
    \$signal$16  <= \$signal$16$next ;
  always @(posedge clk)
    \$signal$17  <= \$signal$17$next ;
  always @(posedge clk)
    \$signal$21  <= \$signal$21$next ;
  always @(posedge clk)
    \$signal$22  <= \$signal$22$next ;
  always @(posedge clk)
    \$signal$26  <= \$signal$26$next ;
  always @(posedge clk)
    \$signal$27  <= \$signal$27$next ;
  always @(posedge clk)
    \$signal$31  <= \$signal$31$next ;
  always @(posedge clk)
    \$signal$32  <= \$signal$32$next ;
  always @(posedge clk)
    \$signal$36  <= \$signal$36$next ;
  always @(posedge clk)
    \$signal$37  <= \$signal$37$next ;
  always @(posedge clk)
    \$signal$41  <= \$signal$41$next ;
  always @(posedge clk)
    \$signal$42  <= \$signal$42$next ;
  always @(posedge clk)
    \$signal$46  <= \$signal$46$next ;
  always @(posedge clk)
    \$signal$47  <= \$signal$47$next ;
  always @(posedge clk)
    \$signal$51  <= \$signal$51$next ;
  always @(posedge clk)
    \$signal$52  <= \$signal$52$next ;
  always @(posedge clk)
    \$signal$56  <= \$signal$56$next ;
  always @(posedge clk)
    \$signal$57  <= \$signal$57$next ;
  always @(posedge clk)
    \$signal$61  <= \$signal$61$next ;
  always @(posedge clk)
    \$signal$62  <= \$signal$62$next ;
  always @(posedge clk)
    \$signal$66  <= \$signal$66$next ;
  always @(posedge clk)
    \$signal$67  <= \$signal$67$next ;
  always @(posedge clk)
    \$signal$71  <= \$signal$71$next ;
  always @(posedge clk)
    \$signal$72  <= \$signal$72$next ;
  always @(posedge clk)
    \$signal$76  <= \$signal$76$next ;
  always @(posedge clk)
    \$signal$77  <= \$signal$77$next ;
  always @(posedge clk)
    ack <= \ack$next ;
  assign \$13  = \$signal$11  * (* src = "/home/james/systolicArray.py:21" *) \$signal$12 ;
  assign \$18  = \$signal$16  * (* src = "/home/james/systolicArray.py:21" *) \$signal$17 ;
  assign \$23  = \$signal$21  * (* src = "/home/james/systolicArray.py:21" *) \$signal$22 ;
  assign \$28  = \$signal$26  * (* src = "/home/james/systolicArray.py:21" *) \$signal$27 ;
  assign \$33  = \$signal$31  * (* src = "/home/james/systolicArray.py:21" *) \$signal$32 ;
  assign \$38  = \$signal$36  * (* src = "/home/james/systolicArray.py:21" *) \$signal$37 ;
  assign \$3  = \$signal$1  * (* src = "/home/james/systolicArray.py:21" *) \$signal$2 ;
  assign \$43  = \$signal$41  * (* src = "/home/james/systolicArray.py:21" *) \$signal$42 ;
  assign \$48  = \$signal$46  * (* src = "/home/james/systolicArray.py:21" *) \$signal$47 ;
  assign \$53  = \$signal$51  * (* src = "/home/james/systolicArray.py:21" *) \$signal$52 ;
  assign \$58  = \$signal$56  * (* src = "/home/james/systolicArray.py:21" *) \$signal$57 ;
  assign \$63  = \$signal$61  * (* src = "/home/james/systolicArray.py:21" *) \$signal$62 ;
  assign \$68  = \$signal$66  * (* src = "/home/james/systolicArray.py:21" *) \$signal$67 ;
  assign \$73  = \$signal$71  * (* src = "/home/james/systolicArray.py:21" *) \$signal$72 ;
  assign \$78  = \$signal$76  * (* src = "/home/james/systolicArray.py:21" *) \$signal$77 ;
  assign \$80  = cyc & (* src = "/home/james/systolicArray.py:34" *) stb;
  always @(posedge clk)
    \$signal  <= \$signal$next ;
  always @(posedge clk)
    \$signal$5  <= \$signal$5$next ;
  always @(posedge clk)
    \$signal$10  <= \$signal$10$next ;
  always @(posedge clk)
    \$signal$15  <= \$signal$15$next ;
  always @(posedge clk)
    \$signal$20  <= \$signal$20$next ;
  always @(posedge clk)
    \$signal$25  <= \$signal$25$next ;
  always @(posedge clk)
    \$signal$30  <= \$signal$30$next ;
  always @(posedge clk)
    \$signal$35  <= \$signal$35$next ;
  assign \$8  = \$signal$6  * (* src = "/home/james/systolicArray.py:21" *) \$signal$7 ;
  always @(posedge clk)
    \$signal$40  <= \$signal$40$next ;
  always @(posedge clk)
    \$signal$45  <= \$signal$45$next ;
  always @(posedge clk)
    \$signal$50  <= \$signal$50$next ;
  always @(posedge clk)
    \$signal$55  <= \$signal$55$next ;
  always @(posedge clk)
    \$signal$60  <= \$signal$60$next ;
  always @(posedge clk)
    \$signal$65  <= \$signal$65$next ;
  always @(posedge clk)
    \$signal$70  <= \$signal$70$next ;
  always @(posedge clk)
    \$signal$75  <= \$signal$75$next ;
  always @(posedge clk)
    \$signal$1  <= \$signal$1$next ;
  always @(posedge clk)
    \$signal$2  <= \$signal$2$next ;
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$next  = \$3 ;
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$next  = 32'd0;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$5$next  = \$8 ;
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$5$next  = 32'd0;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$50$next  = \$53 ;
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$50$next  = 32'd0;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$55$next  = \$58 ;
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$55$next  = 32'd0;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$60$next  = \$63 ;
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$60$next  = 32'd0;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$65$next  = \$68 ;
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$65$next  = 32'd0;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$70$next  = \$73 ;
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$70$next  = 32'd0;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$75$next  = \$78 ;
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$75$next  = 32'd0;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$1$next  = \$signal$1 ;
    (* src = "/home/james/systolicArray.py:24" *)
    casez (adr)
      /* src = "/home/james/systolicArray.py:26" */
      32'd0:
          \$signal$1$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$1$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$2$next  = \$signal$2 ;
    (* src = "/home/james/systolicArray.py:24" *)
    casez (adr)
      /* src = "/home/james/systolicArray.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd16:
          \$signal$2$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$2$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    dat_r = 32'd0;
    (* src = "/home/james/systolicArray.py:24" *)
    casez (adr)
      /* src = "/home/james/systolicArray.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd16:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd32:
          dat_r = \$signal ;
      /* src = "/home/james/systolicArray.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd17:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd33:
          dat_r = \$signal$5 ;
      /* src = "/home/james/systolicArray.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd18:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd34:
          dat_r = \$signal$10 ;
      /* src = "/home/james/systolicArray.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd19:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd35:
          dat_r = \$signal$15 ;
      /* src = "/home/james/systolicArray.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd20:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd36:
          dat_r = \$signal$20 ;
      /* src = "/home/james/systolicArray.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd21:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd37:
          dat_r = \$signal$25 ;
      /* src = "/home/james/systolicArray.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd22:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd38:
          dat_r = \$signal$30 ;
      /* src = "/home/james/systolicArray.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd23:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd39:
          dat_r = \$signal$35 ;
      /* src = "/home/james/systolicArray.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd24:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd40:
          dat_r = \$signal$40 ;
      /* src = "/home/james/systolicArray.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd25:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd41:
          dat_r = \$signal$45 ;
      /* src = "/home/james/systolicArray.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd26:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd42:
          dat_r = \$signal$50 ;
      /* src = "/home/james/systolicArray.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd27:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd43:
          dat_r = \$signal$55 ;
      /* src = "/home/james/systolicArray.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd28:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd44:
          dat_r = \$signal$60 ;
      /* src = "/home/james/systolicArray.py:26" */
      32'd13:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd29:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd45:
          dat_r = \$signal$65 ;
      /* src = "/home/james/systolicArray.py:26" */
      32'd14:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd30:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd46:
          dat_r = \$signal$70 ;
      /* src = "/home/james/systolicArray.py:26" */
      32'd15:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd31:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd47:
          dat_r = \$signal$75 ;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$6$next  = \$signal$6 ;
    (* src = "/home/james/systolicArray.py:24" *)
    casez (adr)
      /* src = "/home/james/systolicArray.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd16:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd32:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd1:
          \$signal$6$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$6$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$10$next  = \$13 ;
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$10$next  = 32'd0;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$7$next  = \$signal$7 ;
    (* src = "/home/james/systolicArray.py:24" *)
    casez (adr)
      /* src = "/home/james/systolicArray.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd16:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd32:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd17:
          \$signal$7$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$7$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$11$next  = \$signal$11 ;
    (* src = "/home/james/systolicArray.py:24" *)
    casez (adr)
      /* src = "/home/james/systolicArray.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd16:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd32:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd17:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd33:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd2:
          \$signal$11$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$11$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$12$next  = \$signal$12 ;
    (* src = "/home/james/systolicArray.py:24" *)
    casez (adr)
      /* src = "/home/james/systolicArray.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd16:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd32:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd17:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd33:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd18:
          \$signal$12$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$12$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$16$next  = \$signal$16 ;
    (* src = "/home/james/systolicArray.py:24" *)
    casez (adr)
      /* src = "/home/james/systolicArray.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd16:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd32:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd17:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd33:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd18:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd34:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd3:
          \$signal$16$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$16$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$17$next  = \$signal$17 ;
    (* src = "/home/james/systolicArray.py:24" *)
    casez (adr)
      /* src = "/home/james/systolicArray.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd16:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd32:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd17:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd33:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd18:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd34:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd19:
          \$signal$17$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$17$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$21$next  = \$signal$21 ;
    (* src = "/home/james/systolicArray.py:24" *)
    casez (adr)
      /* src = "/home/james/systolicArray.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd16:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd32:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd17:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd33:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd18:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd34:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd19:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd35:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd4:
          \$signal$21$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$21$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$22$next  = \$signal$22 ;
    (* src = "/home/james/systolicArray.py:24" *)
    casez (adr)
      /* src = "/home/james/systolicArray.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd16:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd32:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd17:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd33:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd18:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd34:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd19:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd35:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd20:
          \$signal$22$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$22$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$26$next  = \$signal$26 ;
    (* src = "/home/james/systolicArray.py:24" *)
    casez (adr)
      /* src = "/home/james/systolicArray.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd16:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd32:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd17:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd33:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd18:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd34:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd19:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd35:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd20:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd36:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd5:
          \$signal$26$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$26$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$27$next  = \$signal$27 ;
    (* src = "/home/james/systolicArray.py:24" *)
    casez (adr)
      /* src = "/home/james/systolicArray.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd16:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd32:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd17:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd33:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd18:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd34:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd19:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd35:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd20:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd36:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd21:
          \$signal$27$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$27$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$31$next  = \$signal$31 ;
    (* src = "/home/james/systolicArray.py:24" *)
    casez (adr)
      /* src = "/home/james/systolicArray.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd16:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd32:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd17:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd33:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd18:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd34:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd19:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd35:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd20:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd36:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd21:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd37:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd6:
          \$signal$31$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$31$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$15$next  = \$18 ;
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$15$next  = 32'd0;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$32$next  = \$signal$32 ;
    (* src = "/home/james/systolicArray.py:24" *)
    casez (adr)
      /* src = "/home/james/systolicArray.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd16:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd32:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd17:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd33:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd18:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd34:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd19:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd35:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd20:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd36:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd21:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd37:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd22:
          \$signal$32$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$32$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$36$next  = \$signal$36 ;
    (* src = "/home/james/systolicArray.py:24" *)
    casez (adr)
      /* src = "/home/james/systolicArray.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd16:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd32:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd17:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd33:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd18:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd34:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd19:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd35:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd20:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd36:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd21:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd37:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd22:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd38:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd7:
          \$signal$36$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$36$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$37$next  = \$signal$37 ;
    (* src = "/home/james/systolicArray.py:24" *)
    casez (adr)
      /* src = "/home/james/systolicArray.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd16:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd32:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd17:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd33:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd18:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd34:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd19:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd35:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd20:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd36:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd21:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd37:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd22:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd38:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd23:
          \$signal$37$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$37$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$41$next  = \$signal$41 ;
    (* src = "/home/james/systolicArray.py:24" *)
    casez (adr)
      /* src = "/home/james/systolicArray.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd16:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd32:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd17:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd33:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd18:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd34:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd19:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd35:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd20:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd36:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd21:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd37:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd22:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd38:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd23:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd39:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd8:
          \$signal$41$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$41$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$42$next  = \$signal$42 ;
    (* src = "/home/james/systolicArray.py:24" *)
    casez (adr)
      /* src = "/home/james/systolicArray.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd16:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd32:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd17:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd33:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd18:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd34:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd19:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd35:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd20:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd36:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd21:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd37:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd22:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd38:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd23:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd39:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd24:
          \$signal$42$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$42$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$46$next  = \$signal$46 ;
    (* src = "/home/james/systolicArray.py:24" *)
    casez (adr)
      /* src = "/home/james/systolicArray.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd16:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd32:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd17:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd33:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd18:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd34:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd19:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd35:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd20:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd36:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd21:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd37:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd22:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd38:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd23:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd39:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd24:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd40:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd9:
          \$signal$46$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$46$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$47$next  = \$signal$47 ;
    (* src = "/home/james/systolicArray.py:24" *)
    casez (adr)
      /* src = "/home/james/systolicArray.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd16:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd32:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd17:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd33:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd18:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd34:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd19:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd35:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd20:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd36:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd21:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd37:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd22:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd38:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd23:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd39:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd24:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd40:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd25:
          \$signal$47$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$47$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$51$next  = \$signal$51 ;
    (* src = "/home/james/systolicArray.py:24" *)
    casez (adr)
      /* src = "/home/james/systolicArray.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd16:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd32:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd17:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd33:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd18:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd34:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd19:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd35:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd20:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd36:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd21:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd37:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd22:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd38:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd23:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd39:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd24:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd40:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd25:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd41:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd10:
          \$signal$51$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$51$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$52$next  = \$signal$52 ;
    (* src = "/home/james/systolicArray.py:24" *)
    casez (adr)
      /* src = "/home/james/systolicArray.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd16:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd32:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd17:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd33:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd18:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd34:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd19:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd35:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd20:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd36:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd21:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd37:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd22:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd38:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd23:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd39:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd24:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd40:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd25:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd41:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd26:
          \$signal$52$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$52$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$56$next  = \$signal$56 ;
    (* src = "/home/james/systolicArray.py:24" *)
    casez (adr)
      /* src = "/home/james/systolicArray.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd16:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd32:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd17:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd33:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd18:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd34:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd19:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd35:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd20:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd36:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd21:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd37:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd22:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd38:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd23:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd39:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd24:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd40:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd25:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd41:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd26:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd42:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd11:
          \$signal$56$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$56$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$20$next  = \$23 ;
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$20$next  = 32'd0;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$57$next  = \$signal$57 ;
    (* src = "/home/james/systolicArray.py:24" *)
    casez (adr)
      /* src = "/home/james/systolicArray.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd16:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd32:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd17:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd33:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd18:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd34:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd19:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd35:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd20:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd36:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd21:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd37:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd22:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd38:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd23:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd39:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd24:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd40:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd25:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd41:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd26:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd42:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd27:
          \$signal$57$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$57$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$61$next  = \$signal$61 ;
    (* src = "/home/james/systolicArray.py:24" *)
    casez (adr)
      /* src = "/home/james/systolicArray.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd16:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd32:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd17:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd33:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd18:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd34:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd19:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd35:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd20:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd36:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd21:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd37:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd22:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd38:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd23:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd39:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd24:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd40:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd25:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd41:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd26:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd42:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd27:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd43:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd12:
          \$signal$61$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$61$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$62$next  = \$signal$62 ;
    (* src = "/home/james/systolicArray.py:24" *)
    casez (adr)
      /* src = "/home/james/systolicArray.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd16:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd32:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd17:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd33:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd18:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd34:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd19:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd35:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd20:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd36:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd21:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd37:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd22:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd38:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd23:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd39:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd24:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd40:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd25:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd41:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd26:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd42:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd27:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd43:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd28:
          \$signal$62$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$62$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$66$next  = \$signal$66 ;
    (* src = "/home/james/systolicArray.py:24" *)
    casez (adr)
      /* src = "/home/james/systolicArray.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd16:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd32:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd17:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd33:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd18:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd34:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd19:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd35:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd20:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd36:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd21:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd37:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd22:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd38:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd23:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd39:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd24:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd40:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd25:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd41:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd26:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd42:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd27:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd43:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd28:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd44:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd13:
          \$signal$66$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$66$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$67$next  = \$signal$67 ;
    (* src = "/home/james/systolicArray.py:24" *)
    casez (adr)
      /* src = "/home/james/systolicArray.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd16:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd32:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd17:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd33:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd18:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd34:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd19:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd35:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd20:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd36:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd21:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd37:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd22:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd38:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd23:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd39:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd24:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd40:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd25:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd41:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd26:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd42:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd27:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd43:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd28:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd44:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd13:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd29:
          \$signal$67$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$67$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$71$next  = \$signal$71 ;
    (* src = "/home/james/systolicArray.py:24" *)
    casez (adr)
      /* src = "/home/james/systolicArray.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd16:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd32:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd17:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd33:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd18:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd34:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd19:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd35:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd20:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd36:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd21:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd37:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd22:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd38:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd23:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd39:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd24:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd40:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd25:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd41:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd26:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd42:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd27:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd43:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd28:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd44:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd13:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd29:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd45:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd14:
          \$signal$71$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$71$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$72$next  = \$signal$72 ;
    (* src = "/home/james/systolicArray.py:24" *)
    casez (adr)
      /* src = "/home/james/systolicArray.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd16:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd32:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd17:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd33:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd18:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd34:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd19:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd35:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd20:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd36:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd21:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd37:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd22:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd38:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd23:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd39:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd24:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd40:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd25:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd41:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd26:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd42:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd27:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd43:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd28:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd44:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd13:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd29:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd45:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd14:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd30:
          \$signal$72$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$72$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$76$next  = \$signal$76 ;
    (* src = "/home/james/systolicArray.py:24" *)
    casez (adr)
      /* src = "/home/james/systolicArray.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd16:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd32:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd17:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd33:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd18:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd34:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd19:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd35:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd20:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd36:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd21:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd37:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd22:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd38:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd23:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd39:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd24:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd40:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd25:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd41:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd26:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd42:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd27:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd43:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd28:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd44:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd13:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd29:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd45:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd14:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd30:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd46:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd15:
          \$signal$76$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$76$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$77$next  = \$signal$77 ;
    (* src = "/home/james/systolicArray.py:24" *)
    casez (adr)
      /* src = "/home/james/systolicArray.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd16:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd32:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd17:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd33:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd18:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd34:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd19:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd35:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd20:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd36:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd21:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd37:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd22:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd38:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd23:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd39:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd24:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd40:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd25:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd41:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd26:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd42:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd27:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd43:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd28:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd44:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd13:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd29:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd45:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd14:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd30:
          /* empty */;
      /* src = "/home/james/systolicArray.py:30" */
      32'd46:
          /* empty */;
      /* src = "/home/james/systolicArray.py:26" */
      32'd15:
          /* empty */;
      /* src = "/home/james/systolicArray.py:28" */
      32'd31:
          \$signal$77$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$77$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \ack$next  = ack;
    (* src = "/home/james/systolicArray.py:34" *)
    casez (\$80 )
      /* src = "/home/james/systolicArray.py:34" */
      1'h1:
          \ack$next  = 1'h1;
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \ack$next  = 1'h0;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$25$next  = \$28 ;
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$25$next  = 32'd0;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$30$next  = \$33 ;
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$30$next  = 32'd0;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$35$next  = \$38 ;
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$35$next  = 32'd0;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$40$next  = \$43 ;
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$40$next  = 32'd0;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$45$next  = \$48 ;
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$45$next  = 32'd0;
    endcase
  end
endmodule



`default_nettype wire