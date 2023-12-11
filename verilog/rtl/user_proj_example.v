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
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *)
  wire [31:0] \$103 ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *)
  wire [31:0] \$108 ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *)
  wire [31:0] \$113 ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *)
  wire [31:0] \$118 ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *)
  wire [31:0] \$123 ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *)
  wire [31:0] \$128 ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *)
  wire [31:0] \$13 ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *)
  wire [31:0] \$133 ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *)
  wire [31:0] \$138 ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *)
  wire [31:0] \$143 ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *)
  wire [31:0] \$148 ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *)
  wire [31:0] \$153 ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *)
  wire [31:0] \$158 ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *)
  wire [31:0] \$163 ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *)
  wire [31:0] \$168 ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *)
  wire [31:0] \$173 ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *)
  wire [31:0] \$178 ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *)
  wire [31:0] \$18 ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:34" *)
  wire \$180 ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *)
  wire [31:0] \$23 ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *)
  wire [31:0] \$28 ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *)
  wire [31:0] \$3 ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *)
  wire [31:0] \$33 ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *)
  wire [31:0] \$38 ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *)
  wire [31:0] \$43 ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *)
  wire [31:0] \$48 ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *)
  wire [31:0] \$53 ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *)
  wire [31:0] \$58 ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *)
  wire [31:0] \$63 ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *)
  wire [31:0] \$68 ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *)
  wire [31:0] \$73 ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *)
  wire [31:0] \$78 ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *)
  wire [31:0] \$8 ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *)
  wire [31:0] \$83 ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *)
  wire [31:0] \$88 ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *)
  wire [31:0] \$93 ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *)
  wire [31:0] \$98 ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal  = 32'd0;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$1  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$1$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$10  = 32'd0;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$10$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$100  = 32'd0;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$100$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$101  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$101$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$102  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$102$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$105  = 32'd0;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$105$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$106  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$106$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$107  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$107$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$11  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$11$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$110  = 32'd0;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$110$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$111  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$111$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$112  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$112$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$115  = 32'd0;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$115$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$116  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$116$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$117  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$117$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$12  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$12$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$120  = 32'd0;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$120$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$121  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$121$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$122  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$122$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$125  = 32'd0;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$125$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$126  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$126$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$127  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$127$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$130  = 32'd0;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$130$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$131  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$131$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$132  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$132$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$135  = 32'd0;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$135$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$136  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$136$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$137  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$137$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$140  = 32'd0;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$140$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$141  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$141$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$142  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$142$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$145  = 32'd0;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$145$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$146  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$146$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$147  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$147$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$15  = 32'd0;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$15$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$150  = 32'd0;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$150$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$151  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$151$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$152  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$152$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$155  = 32'd0;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$155$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$156  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$156$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$157  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$157$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$16  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$16$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$160  = 32'd0;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$160$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$161  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$161$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$162  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$162$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$165  = 32'd0;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$165$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$166  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$166$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$167  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$167$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$17  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$17$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$170  = 32'd0;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$170$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$171  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$171$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$172  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$172$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$175  = 32'd0;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$175$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$176  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$176$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$177  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$177$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$2  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$2$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$20  = 32'd0;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$20$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$21  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$21$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$22  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$22$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$25  = 32'd0;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$25$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$26  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$26$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$27  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$27$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$30  = 32'd0;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$30$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$31  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$31$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$32  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$32$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$35  = 32'd0;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$35$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$36  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$36$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$37  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$37$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$40  = 32'd0;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$40$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$41  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$41$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$42  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$42$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$45  = 32'd0;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$45$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$46  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$46$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$47  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$47$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$5  = 32'd0;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$5$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$50  = 32'd0;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$50$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$51  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$51$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$52  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$52$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$55  = 32'd0;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$55$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$56  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$56$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$57  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$57$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$6  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$6$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$60  = 32'd0;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$60$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$61  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$61$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$62  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$62$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$65  = 32'd0;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$65$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$66  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$66$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$67  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$67$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$7  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$7$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$70  = 32'd0;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$70$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$71  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$71$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$72  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$72$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$75  = 32'd0;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$75$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$76  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$76$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$77  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$77$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$80  = 32'd0;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$80$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$81  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$81$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$82  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$82$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$85  = 32'd0;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$85$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$86  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$86$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$87  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$87$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$90  = 32'd0;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$90$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$91  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$91$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$92  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$92$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$95  = 32'd0;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
  reg [31:0] \$signal$95$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$96  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:11" *)
  reg [15:0] \$signal$96$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$97  = 16'h0000;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:12" *)
  reg [15:0] \$signal$97$next ;
  (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:13" *)
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
  assign \$103  = \$signal$101  * (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *) \$signal$102 ;
  assign \$108  = \$signal$106  * (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *) \$signal$107 ;
  assign \$113  = \$signal$111  * (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *) \$signal$112 ;
  assign \$118  = \$signal$116  * (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *) \$signal$117 ;
  assign \$123  = \$signal$121  * (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *) \$signal$122 ;
  assign \$128  = \$signal$126  * (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *) \$signal$127 ;
  assign \$133  = \$signal$131  * (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *) \$signal$132 ;
  assign \$138  = \$signal$136  * (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *) \$signal$137 ;
  assign \$13  = \$signal$11  * (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *) \$signal$12 ;
  assign \$143  = \$signal$141  * (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *) \$signal$142 ;
  assign \$148  = \$signal$146  * (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *) \$signal$147 ;
  assign \$153  = \$signal$151  * (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *) \$signal$152 ;
  assign \$158  = \$signal$156  * (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *) \$signal$157 ;
  assign \$163  = \$signal$161  * (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *) \$signal$162 ;
  assign \$168  = \$signal$166  * (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *) \$signal$167 ;
  assign \$173  = \$signal$171  * (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *) \$signal$172 ;
  assign \$178  = \$signal$176  * (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *) \$signal$177 ;
  assign \$180  = cyc & (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:34" *) stb;
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
  assign \$18  = \$signal$16  * (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *) \$signal$17 ;
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
    \$signal$80  <= \$signal$80$next ;
  always @(posedge clk)
    \$signal$85  <= \$signal$85$next ;
  always @(posedge clk)
    \$signal$90  <= \$signal$90$next ;
  always @(posedge clk)
    \$signal$95  <= \$signal$95$next ;
  always @(posedge clk)
    \$signal$100  <= \$signal$100$next ;
  always @(posedge clk)
    \$signal$105  <= \$signal$105$next ;
  always @(posedge clk)
    \$signal$110  <= \$signal$110$next ;
  always @(posedge clk)
    \$signal$115  <= \$signal$115$next ;
  always @(posedge clk)
    \$signal$120  <= \$signal$120$next ;
  always @(posedge clk)
    \$signal$125  <= \$signal$125$next ;
  always @(posedge clk)
    \$signal$130  <= \$signal$130$next ;
  always @(posedge clk)
    \$signal$135  <= \$signal$135$next ;
  always @(posedge clk)
    \$signal$140  <= \$signal$140$next ;
  always @(posedge clk)
    \$signal$145  <= \$signal$145$next ;
  always @(posedge clk)
    \$signal$150  <= \$signal$150$next ;
  always @(posedge clk)
    \$signal$155  <= \$signal$155$next ;
  always @(posedge clk)
    \$signal$160  <= \$signal$160$next ;
  always @(posedge clk)
    \$signal$165  <= \$signal$165$next ;
  always @(posedge clk)
    \$signal$170  <= \$signal$170$next ;
  always @(posedge clk)
    \$signal$175  <= \$signal$175$next ;
  always @(posedge clk)
    \$signal$1  <= \$signal$1$next ;
  always @(posedge clk)
    \$signal$2  <= \$signal$2$next ;
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
  assign \$23  = \$signal$21  * (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *) \$signal$22 ;
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
    \$signal$81  <= \$signal$81$next ;
  always @(posedge clk)
    \$signal$82  <= \$signal$82$next ;
  always @(posedge clk)
    \$signal$86  <= \$signal$86$next ;
  always @(posedge clk)
    \$signal$87  <= \$signal$87$next ;
  always @(posedge clk)
    \$signal$91  <= \$signal$91$next ;
  always @(posedge clk)
    \$signal$92  <= \$signal$92$next ;
  always @(posedge clk)
    \$signal$96  <= \$signal$96$next ;
  always @(posedge clk)
    \$signal$97  <= \$signal$97$next ;
  always @(posedge clk)
    \$signal$101  <= \$signal$101$next ;
  always @(posedge clk)
    \$signal$102  <= \$signal$102$next ;
  always @(posedge clk)
    \$signal$106  <= \$signal$106$next ;
  always @(posedge clk)
    \$signal$107  <= \$signal$107$next ;
  always @(posedge clk)
    \$signal$111  <= \$signal$111$next ;
  always @(posedge clk)
    \$signal$112  <= \$signal$112$next ;
  always @(posedge clk)
    \$signal$116  <= \$signal$116$next ;
  always @(posedge clk)
    \$signal$117  <= \$signal$117$next ;
  always @(posedge clk)
    \$signal$121  <= \$signal$121$next ;
  always @(posedge clk)
    \$signal$122  <= \$signal$122$next ;
  always @(posedge clk)
    \$signal$126  <= \$signal$126$next ;
  always @(posedge clk)
    \$signal$127  <= \$signal$127$next ;
  always @(posedge clk)
    \$signal$131  <= \$signal$131$next ;
  always @(posedge clk)
    \$signal$132  <= \$signal$132$next ;
  always @(posedge clk)
    \$signal$136  <= \$signal$136$next ;
  always @(posedge clk)
    \$signal$137  <= \$signal$137$next ;
  always @(posedge clk)
    \$signal$141  <= \$signal$141$next ;
  always @(posedge clk)
    \$signal$142  <= \$signal$142$next ;
  always @(posedge clk)
    \$signal$146  <= \$signal$146$next ;
  always @(posedge clk)
    \$signal$147  <= \$signal$147$next ;
  always @(posedge clk)
    \$signal$151  <= \$signal$151$next ;
  always @(posedge clk)
    \$signal$152  <= \$signal$152$next ;
  always @(posedge clk)
    \$signal$156  <= \$signal$156$next ;
  always @(posedge clk)
    \$signal$157  <= \$signal$157$next ;
  always @(posedge clk)
    \$signal$161  <= \$signal$161$next ;
  always @(posedge clk)
    \$signal$162  <= \$signal$162$next ;
  always @(posedge clk)
    \$signal$166  <= \$signal$166$next ;
  always @(posedge clk)
    \$signal$167  <= \$signal$167$next ;
  always @(posedge clk)
    \$signal$171  <= \$signal$171$next ;
  always @(posedge clk)
    \$signal$172  <= \$signal$172$next ;
  always @(posedge clk)
    \$signal$176  <= \$signal$176$next ;
  always @(posedge clk)
    \$signal$177  <= \$signal$177$next ;
  assign \$28  = \$signal$26  * (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *) \$signal$27 ;
  always @(posedge clk)
    ack <= \ack$next ;
  assign \$33  = \$signal$31  * (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *) \$signal$32 ;
  assign \$38  = \$signal$36  * (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *) \$signal$37 ;
  assign \$3  = \$signal$1  * (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *) \$signal$2 ;
  assign \$43  = \$signal$41  * (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *) \$signal$42 ;
  assign \$48  = \$signal$46  * (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *) \$signal$47 ;
  assign \$53  = \$signal$51  * (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *) \$signal$52 ;
  assign \$58  = \$signal$56  * (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *) \$signal$57 ;
  assign \$63  = \$signal$61  * (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *) \$signal$62 ;
  assign \$68  = \$signal$66  * (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *) \$signal$67 ;
  assign \$73  = \$signal$71  * (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *) \$signal$72 ;
  assign \$78  = \$signal$76  * (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *) \$signal$77 ;
  assign \$83  = \$signal$81  * (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *) \$signal$82 ;
  assign \$88  = \$signal$86  * (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *) \$signal$87 ;
  assign \$8  = \$signal$6  * (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *) \$signal$7 ;
  assign \$93  = \$signal$91  * (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *) \$signal$92 ;
  assign \$98  = \$signal$96  * (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:21" *) \$signal$97 ;
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
    \$signal$157$next  = \$signal$157 ;
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd81:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd46:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd82:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd47:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd83:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd48:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd84:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd13:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd49:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd85:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd14:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd50:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd86:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd15:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd51:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd87:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd16:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd52:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd88:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd17:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd53:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd89:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd18:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd54:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd90:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd19:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd55:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd91:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd20:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd56:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd92:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd21:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd57:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd93:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd22:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd58:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd94:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd23:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd59:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd95:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd24:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd60:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd96:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd25:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd61:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd97:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd26:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd62:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd98:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd27:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd63:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd99:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd28:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd64:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd100:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd29:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd65:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd101:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd30:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd66:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd102:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd31:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd67:
          \$signal$157$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$157$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$161$next  = \$signal$161 ;
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd81:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd46:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd82:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd47:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd83:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd48:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd84:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd13:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd49:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd85:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd14:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd50:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd86:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd15:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd51:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd87:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd16:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd52:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd88:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd17:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd53:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd89:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd18:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd54:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd90:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd19:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd55:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd91:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd20:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd56:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd92:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd21:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd57:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd93:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd22:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd58:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd94:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd23:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd59:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd95:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd24:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd60:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd96:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd25:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd61:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd97:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd26:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd62:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd98:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd27:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd63:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd99:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd28:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd64:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd100:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd29:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd65:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd101:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd30:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd66:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd102:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd31:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd67:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd103:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd32:
          \$signal$161$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$161$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$162$next  = \$signal$162 ;
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd81:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd46:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd82:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd47:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd83:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd48:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd84:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd13:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd49:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd85:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd14:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd50:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd86:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd15:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd51:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd87:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd16:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd52:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd88:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd17:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd53:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd89:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd18:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd54:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd90:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd19:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd55:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd91:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd20:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd56:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd92:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd21:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd57:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd93:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd22:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd58:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd94:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd23:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd59:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd95:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd24:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd60:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd96:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd25:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd61:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd97:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd26:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd62:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd98:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd27:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd63:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd99:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd28:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd64:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd100:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd29:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd65:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd101:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd30:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd66:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd102:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd31:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd67:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd103:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd32:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd68:
          \$signal$162$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$162$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$166$next  = \$signal$166 ;
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd81:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd46:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd82:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd47:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd83:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd48:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd84:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd13:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd49:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd85:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd14:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd50:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd86:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd15:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd51:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd87:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd16:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd52:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd88:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd17:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd53:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd89:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd18:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd54:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd90:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd19:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd55:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd91:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd20:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd56:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd92:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd21:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd57:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd93:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd22:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd58:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd94:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd23:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd59:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd95:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd24:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd60:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd96:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd25:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd61:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd97:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd26:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd62:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd98:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd27:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd63:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd99:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd28:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd64:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd100:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd29:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd65:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd101:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd30:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd66:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd102:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd31:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd67:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd103:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd32:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd68:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd104:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd33:
          \$signal$166$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$166$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$167$next  = \$signal$167 ;
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd81:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd46:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd82:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd47:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd83:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd48:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd84:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd13:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd49:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd85:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd14:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd50:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd86:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd15:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd51:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd87:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd16:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd52:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd88:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd17:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd53:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd89:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd18:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd54:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd90:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd19:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd55:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd91:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd20:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd56:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd92:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd21:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd57:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd93:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd22:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd58:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd94:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd23:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd59:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd95:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd24:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd60:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd96:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd25:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd61:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd97:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd26:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd62:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd98:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd27:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd63:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd99:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd28:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd64:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd100:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd29:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd65:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd101:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd30:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd66:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd102:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd31:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd67:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd103:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd32:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd68:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd104:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd33:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd69:
          \$signal$167$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$167$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$171$next  = \$signal$171 ;
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd81:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd46:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd82:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd47:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd83:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd48:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd84:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd13:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd49:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd85:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd14:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd50:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd86:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd15:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd51:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd87:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd16:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd52:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd88:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd17:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd53:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd89:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd18:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd54:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd90:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd19:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd55:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd91:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd20:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd56:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd92:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd21:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd57:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd93:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd22:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd58:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd94:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd23:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd59:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd95:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd24:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd60:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd96:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd25:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd61:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd97:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd26:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd62:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd98:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd27:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd63:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd99:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd28:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd64:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd100:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd29:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd65:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd101:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd30:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd66:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd102:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd31:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd67:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd103:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd32:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd68:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd104:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd33:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd69:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd105:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd34:
          \$signal$171$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$171$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$172$next  = \$signal$172 ;
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd81:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd46:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd82:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd47:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd83:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd48:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd84:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd13:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd49:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd85:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd14:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd50:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd86:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd15:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd51:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd87:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd16:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd52:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd88:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd17:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd53:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd89:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd18:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd54:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd90:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd19:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd55:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd91:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd20:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd56:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd92:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd21:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd57:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd93:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd22:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd58:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd94:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd23:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd59:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd95:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd24:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd60:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd96:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd25:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd61:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd97:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd26:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd62:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd98:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd27:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd63:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd99:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd28:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd64:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd100:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd29:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd65:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd101:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd30:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd66:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd102:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd31:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd67:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd103:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd32:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd68:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd104:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd33:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd69:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd105:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd34:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd70:
          \$signal$172$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$172$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$176$next  = \$signal$176 ;
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd81:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd46:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd82:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd47:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd83:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd48:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd84:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd13:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd49:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd85:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd14:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd50:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd86:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd15:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd51:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd87:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd16:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd52:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd88:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd17:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd53:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd89:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd18:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd54:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd90:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd19:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd55:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd91:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd20:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd56:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd92:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd21:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd57:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd93:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd22:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd58:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd94:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd23:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd59:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd95:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd24:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd60:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd96:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd25:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd61:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd97:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd26:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd62:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd98:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd27:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd63:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd99:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd28:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd64:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd100:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd29:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd65:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd101:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd30:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd66:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd102:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd31:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd67:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd103:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd32:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd68:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd104:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd33:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd69:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd105:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd34:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd70:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd106:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd35:
          \$signal$176$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$176$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$177$next  = \$signal$177 ;
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd81:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd46:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd82:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd47:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd83:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd48:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd84:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd13:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd49:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd85:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd14:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd50:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd86:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd15:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd51:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd87:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd16:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd52:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd88:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd17:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd53:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd89:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd18:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd54:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd90:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd19:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd55:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd91:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd20:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd56:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd92:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd21:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd57:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd93:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd22:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd58:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd94:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd23:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd59:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd95:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd24:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd60:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd96:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd25:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd61:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd97:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd26:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd62:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd98:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd27:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd63:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd99:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd28:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd64:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd100:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd29:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd65:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd101:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd30:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd66:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd102:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd31:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd67:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd103:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd32:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd68:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd104:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd33:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd69:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd105:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd34:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd70:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd106:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd35:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd71:
          \$signal$177$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$177$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \ack$next  = ack;
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:34" *)
    casez (\$180 )
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:34" */
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
    \$signal$80$next  = \$83 ;
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$80$next  = 32'd0;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$85$next  = \$88 ;
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$85$next  = 32'd0;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$90$next  = \$93 ;
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$90$next  = 32'd0;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$95$next  = \$98 ;
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$95$next  = 32'd0;
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
    \$signal$100$next  = \$103 ;
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$100$next  = 32'd0;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$105$next  = \$108 ;
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$105$next  = 32'd0;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$110$next  = \$113 ;
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$110$next  = 32'd0;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$115$next  = \$118 ;
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$115$next  = 32'd0;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$120$next  = \$123 ;
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$120$next  = 32'd0;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$125$next  = \$128 ;
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$125$next  = 32'd0;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$130$next  = \$133 ;
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$130$next  = 32'd0;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$135$next  = \$138 ;
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$135$next  = 32'd0;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$140$next  = \$143 ;
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$140$next  = 32'd0;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$145$next  = \$148 ;
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$145$next  = 32'd0;
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
    \$signal$150$next  = \$153 ;
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$150$next  = 32'd0;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$155$next  = \$158 ;
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$155$next  = 32'd0;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$160$next  = \$163 ;
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$160$next  = 32'd0;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$165$next  = \$168 ;
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$165$next  = 32'd0;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$170$next  = \$173 ;
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$170$next  = 32'd0;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$175$next  = \$178 ;
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$175$next  = 32'd0;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$1$next  = \$signal$1 ;
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
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
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
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
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          dat_r = \$signal ;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          dat_r = \$signal$5 ;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          dat_r = \$signal$10 ;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          dat_r = \$signal$15 ;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          dat_r = \$signal$20 ;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          dat_r = \$signal$25 ;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          dat_r = \$signal$30 ;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          dat_r = \$signal$35 ;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          dat_r = \$signal$40 ;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd81:
          dat_r = \$signal$45 ;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd46:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd82:
          dat_r = \$signal$50 ;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd47:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd83:
          dat_r = \$signal$55 ;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd48:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd84:
          dat_r = \$signal$60 ;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd13:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd49:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd85:
          dat_r = \$signal$65 ;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd14:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd50:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd86:
          dat_r = \$signal$70 ;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd15:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd51:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd87:
          dat_r = \$signal$75 ;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd16:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd52:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd88:
          dat_r = \$signal$80 ;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd17:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd53:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd89:
          dat_r = \$signal$85 ;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd18:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd54:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd90:
          dat_r = \$signal$90 ;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd19:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd55:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd91:
          dat_r = \$signal$95 ;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd20:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd56:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd92:
          dat_r = \$signal$100 ;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd21:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd57:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd93:
          dat_r = \$signal$105 ;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd22:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd58:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd94:
          dat_r = \$signal$110 ;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd23:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd59:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd95:
          dat_r = \$signal$115 ;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd24:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd60:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd96:
          dat_r = \$signal$120 ;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd25:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd61:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd97:
          dat_r = \$signal$125 ;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd26:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd62:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd98:
          dat_r = \$signal$130 ;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd27:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd63:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd99:
          dat_r = \$signal$135 ;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd28:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd64:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd100:
          dat_r = \$signal$140 ;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd29:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd65:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd101:
          dat_r = \$signal$145 ;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd30:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd66:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd102:
          dat_r = \$signal$150 ;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd31:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd67:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd103:
          dat_r = \$signal$155 ;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd32:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd68:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd104:
          dat_r = \$signal$160 ;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd33:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd69:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd105:
          dat_r = \$signal$165 ;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd34:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd70:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd106:
          dat_r = \$signal$170 ;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd35:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd71:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd107:
          dat_r = \$signal$175 ;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$6$next  = \$signal$6 ;
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
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
    \$signal$20$next  = \$23 ;
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$20$next  = 32'd0;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$7$next  = \$signal$7 ;
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
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
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
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
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
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
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
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
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
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
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
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
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
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
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
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
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
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
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
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
    \$signal$25$next  = \$28 ;
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$25$next  = 32'd0;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$32$next  = \$signal$32 ;
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
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
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
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
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
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
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
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
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
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
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
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
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
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
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd81:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
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
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd81:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd46:
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
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd81:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd46:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd82:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
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
    \$signal$30$next  = \$33 ;
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$30$next  = 32'd0;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$57$next  = \$signal$57 ;
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd81:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd46:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd82:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd47:
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
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd81:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd46:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd82:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd47:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd83:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
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
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd81:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd46:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd82:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd47:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd83:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd48:
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
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd81:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd46:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd82:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd47:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd83:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd48:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd84:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
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
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd81:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd46:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd82:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd47:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd83:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd48:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd84:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd13:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd49:
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
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd81:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd46:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd82:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd47:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd83:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd48:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd84:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd13:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd49:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd85:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
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
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd81:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd46:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd82:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd47:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd83:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd48:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd84:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd13:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd49:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd85:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd14:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd50:
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
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd81:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd46:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd82:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd47:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd83:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd48:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd84:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd13:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd49:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd85:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd14:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd50:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd86:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
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
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd81:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd46:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd82:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd47:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd83:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd48:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd84:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd13:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd49:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd85:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd14:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd50:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd86:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd15:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd51:
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
    \$signal$81$next  = \$signal$81 ;
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd81:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd46:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd82:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd47:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd83:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd48:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd84:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd13:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd49:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd85:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd14:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd50:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd86:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd15:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd51:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd87:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd16:
          \$signal$81$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$81$next  = 16'h0000;
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
    \$signal$82$next  = \$signal$82 ;
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd81:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd46:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd82:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd47:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd83:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd48:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd84:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd13:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd49:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd85:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd14:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd50:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd86:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd15:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd51:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd87:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd16:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd52:
          \$signal$82$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$82$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$86$next  = \$signal$86 ;
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd81:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd46:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd82:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd47:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd83:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd48:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd84:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd13:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd49:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd85:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd14:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd50:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd86:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd15:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd51:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd87:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd16:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd52:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd88:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd17:
          \$signal$86$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$86$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$87$next  = \$signal$87 ;
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd81:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd46:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd82:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd47:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd83:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd48:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd84:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd13:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd49:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd85:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd14:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd50:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd86:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd15:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd51:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd87:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd16:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd52:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd88:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd17:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd53:
          \$signal$87$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$87$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$91$next  = \$signal$91 ;
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd81:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd46:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd82:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd47:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd83:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd48:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd84:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd13:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd49:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd85:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd14:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd50:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd86:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd15:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd51:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd87:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd16:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd52:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd88:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd17:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd53:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd89:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd18:
          \$signal$91$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$91$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$92$next  = \$signal$92 ;
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd81:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd46:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd82:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd47:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd83:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd48:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd84:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd13:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd49:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd85:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd14:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd50:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd86:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd15:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd51:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd87:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd16:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd52:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd88:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd17:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd53:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd89:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd18:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd54:
          \$signal$92$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$92$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$96$next  = \$signal$96 ;
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd81:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd46:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd82:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd47:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd83:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd48:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd84:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd13:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd49:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd85:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd14:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd50:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd86:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd15:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd51:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd87:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd16:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd52:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd88:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd17:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd53:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd89:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd18:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd54:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd90:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd19:
          \$signal$96$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$96$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$97$next  = \$signal$97 ;
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd81:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd46:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd82:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd47:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd83:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd48:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd84:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd13:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd49:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd85:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd14:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd50:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd86:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd15:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd51:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd87:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd16:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd52:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd88:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd17:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd53:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd89:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd18:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd54:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd90:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd19:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd55:
          \$signal$97$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$97$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$101$next  = \$signal$101 ;
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd81:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd46:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd82:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd47:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd83:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd48:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd84:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd13:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd49:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd85:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd14:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd50:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd86:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd15:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd51:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd87:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd16:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd52:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd88:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd17:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd53:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd89:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd18:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd54:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd90:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd19:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd55:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd91:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd20:
          \$signal$101$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$101$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$102$next  = \$signal$102 ;
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd81:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd46:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd82:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd47:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd83:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd48:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd84:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd13:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd49:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd85:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd14:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd50:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd86:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd15:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd51:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd87:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd16:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd52:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd88:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd17:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd53:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd89:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd18:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd54:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd90:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd19:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd55:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd91:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd20:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd56:
          \$signal$102$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$102$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$106$next  = \$signal$106 ;
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd81:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd46:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd82:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd47:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd83:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd48:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd84:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd13:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd49:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd85:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd14:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd50:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd86:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd15:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd51:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd87:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd16:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd52:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd88:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd17:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd53:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd89:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd18:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd54:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd90:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd19:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd55:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd91:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd20:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd56:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd92:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd21:
          \$signal$106$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$106$next  = 16'h0000;
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
    \$signal$107$next  = \$signal$107 ;
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd81:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd46:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd82:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd47:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd83:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd48:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd84:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd13:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd49:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd85:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd14:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd50:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd86:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd15:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd51:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd87:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd16:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd52:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd88:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd17:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd53:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd89:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd18:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd54:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd90:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd19:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd55:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd91:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd20:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd56:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd92:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd21:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd57:
          \$signal$107$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$107$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$111$next  = \$signal$111 ;
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd81:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd46:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd82:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd47:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd83:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd48:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd84:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd13:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd49:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd85:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd14:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd50:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd86:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd15:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd51:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd87:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd16:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd52:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd88:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd17:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd53:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd89:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd18:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd54:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd90:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd19:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd55:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd91:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd20:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd56:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd92:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd21:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd57:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd93:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd22:
          \$signal$111$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$111$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$112$next  = \$signal$112 ;
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd81:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd46:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd82:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd47:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd83:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd48:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd84:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd13:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd49:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd85:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd14:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd50:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd86:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd15:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd51:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd87:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd16:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd52:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd88:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd17:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd53:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd89:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd18:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd54:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd90:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd19:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd55:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd91:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd20:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd56:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd92:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd21:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd57:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd93:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd22:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd58:
          \$signal$112$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$112$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$116$next  = \$signal$116 ;
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd81:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd46:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd82:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd47:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd83:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd48:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd84:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd13:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd49:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd85:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd14:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd50:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd86:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd15:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd51:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd87:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd16:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd52:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd88:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd17:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd53:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd89:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd18:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd54:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd90:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd19:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd55:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd91:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd20:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd56:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd92:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd21:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd57:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd93:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd22:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd58:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd94:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd23:
          \$signal$116$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$116$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$117$next  = \$signal$117 ;
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd81:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd46:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd82:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd47:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd83:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd48:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd84:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd13:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd49:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd85:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd14:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd50:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd86:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd15:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd51:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd87:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd16:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd52:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd88:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd17:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd53:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd89:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd18:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd54:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd90:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd19:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd55:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd91:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd20:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd56:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd92:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd21:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd57:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd93:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd22:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd58:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd94:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd23:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd59:
          \$signal$117$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$117$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$121$next  = \$signal$121 ;
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd81:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd46:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd82:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd47:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd83:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd48:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd84:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd13:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd49:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd85:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd14:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd50:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd86:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd15:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd51:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd87:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd16:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd52:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd88:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd17:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd53:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd89:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd18:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd54:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd90:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd19:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd55:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd91:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd20:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd56:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd92:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd21:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd57:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd93:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd22:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd58:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd94:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd23:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd59:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd95:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd24:
          \$signal$121$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$121$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$122$next  = \$signal$122 ;
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd81:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd46:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd82:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd47:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd83:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd48:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd84:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd13:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd49:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd85:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd14:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd50:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd86:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd15:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd51:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd87:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd16:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd52:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd88:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd17:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd53:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd89:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd18:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd54:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd90:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd19:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd55:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd91:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd20:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd56:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd92:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd21:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd57:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd93:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd22:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd58:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd94:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd23:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd59:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd95:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd24:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd60:
          \$signal$122$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$122$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$126$next  = \$signal$126 ;
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd81:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd46:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd82:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd47:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd83:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd48:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd84:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd13:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd49:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd85:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd14:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd50:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd86:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd15:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd51:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd87:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd16:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd52:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd88:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd17:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd53:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd89:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd18:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd54:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd90:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd19:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd55:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd91:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd20:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd56:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd92:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd21:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd57:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd93:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd22:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd58:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd94:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd23:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd59:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd95:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd24:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd60:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd96:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd25:
          \$signal$126$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$126$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$127$next  = \$signal$127 ;
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd81:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd46:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd82:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd47:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd83:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd48:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd84:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd13:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd49:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd85:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd14:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd50:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd86:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd15:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd51:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd87:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd16:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd52:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd88:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd17:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd53:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd89:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd18:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd54:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd90:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd19:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd55:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd91:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd20:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd56:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd92:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd21:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd57:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd93:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd22:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd58:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd94:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd23:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd59:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd95:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd24:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd60:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd96:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd25:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd61:
          \$signal$127$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$127$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$131$next  = \$signal$131 ;
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd81:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd46:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd82:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd47:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd83:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd48:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd84:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd13:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd49:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd85:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd14:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd50:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd86:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd15:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd51:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd87:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd16:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd52:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd88:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd17:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd53:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd89:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd18:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd54:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd90:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd19:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd55:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd91:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd20:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd56:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd92:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd21:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd57:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd93:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd22:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd58:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd94:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd23:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd59:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd95:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd24:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd60:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd96:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd25:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd61:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd97:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd26:
          \$signal$131$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$131$next  = 16'h0000;
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
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$132$next  = \$signal$132 ;
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd81:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd46:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd82:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd47:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd83:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd48:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd84:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd13:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd49:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd85:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd14:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd50:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd86:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd15:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd51:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd87:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd16:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd52:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd88:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd17:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd53:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd89:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd18:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd54:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd90:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd19:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd55:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd91:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd20:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd56:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd92:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd21:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd57:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd93:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd22:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd58:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd94:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd23:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd59:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd95:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd24:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd60:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd96:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd25:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd61:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd97:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd26:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd62:
          \$signal$132$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$132$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$136$next  = \$signal$136 ;
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd81:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd46:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd82:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd47:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd83:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd48:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd84:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd13:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd49:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd85:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd14:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd50:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd86:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd15:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd51:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd87:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd16:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd52:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd88:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd17:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd53:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd89:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd18:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd54:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd90:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd19:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd55:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd91:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd20:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd56:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd92:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd21:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd57:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd93:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd22:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd58:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd94:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd23:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd59:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd95:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd24:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd60:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd96:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd25:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd61:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd97:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd26:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd62:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd98:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd27:
          \$signal$136$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$136$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$137$next  = \$signal$137 ;
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd81:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd46:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd82:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd47:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd83:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd48:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd84:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd13:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd49:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd85:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd14:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd50:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd86:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd15:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd51:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd87:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd16:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd52:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd88:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd17:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd53:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd89:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd18:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd54:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd90:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd19:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd55:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd91:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd20:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd56:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd92:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd21:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd57:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd93:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd22:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd58:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd94:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd23:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd59:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd95:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd24:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd60:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd96:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd25:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd61:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd97:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd26:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd62:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd98:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd27:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd63:
          \$signal$137$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$137$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$141$next  = \$signal$141 ;
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd81:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd46:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd82:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd47:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd83:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd48:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd84:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd13:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd49:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd85:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd14:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd50:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd86:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd15:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd51:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd87:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd16:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd52:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd88:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd17:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd53:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd89:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd18:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd54:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd90:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd19:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd55:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd91:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd20:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd56:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd92:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd21:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd57:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd93:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd22:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd58:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd94:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd23:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd59:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd95:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd24:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd60:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd96:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd25:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd61:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd97:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd26:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd62:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd98:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd27:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd63:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd99:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd28:
          \$signal$141$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$141$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$142$next  = \$signal$142 ;
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd81:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd46:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd82:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd47:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd83:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd48:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd84:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd13:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd49:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd85:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd14:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd50:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd86:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd15:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd51:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd87:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd16:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd52:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd88:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd17:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd53:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd89:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd18:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd54:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd90:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd19:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd55:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd91:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd20:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd56:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd92:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd21:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd57:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd93:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd22:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd58:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd94:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd23:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd59:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd95:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd24:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd60:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd96:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd25:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd61:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd97:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd26:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd62:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd98:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd27:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd63:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd99:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd28:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd64:
          \$signal$142$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$142$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$146$next  = \$signal$146 ;
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd81:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd46:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd82:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd47:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd83:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd48:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd84:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd13:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd49:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd85:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd14:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd50:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd86:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd15:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd51:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd87:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd16:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd52:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd88:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd17:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd53:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd89:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd18:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd54:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd90:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd19:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd55:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd91:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd20:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd56:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd92:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd21:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd57:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd93:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd22:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd58:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd94:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd23:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd59:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd95:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd24:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd60:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd96:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd25:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd61:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd97:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd26:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd62:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd98:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd27:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd63:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd99:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd28:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd64:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd100:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd29:
          \$signal$146$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$146$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$147$next  = \$signal$147 ;
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd81:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd46:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd82:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd47:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd83:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd48:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd84:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd13:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd49:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd85:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd14:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd50:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd86:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd15:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd51:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd87:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd16:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd52:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd88:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd17:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd53:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd89:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd18:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd54:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd90:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd19:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd55:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd91:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd20:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd56:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd92:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd21:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd57:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd93:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd22:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd58:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd94:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd23:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd59:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd95:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd24:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd60:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd96:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd25:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd61:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd97:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd26:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd62:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd98:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd27:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd63:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd99:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd28:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd64:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd100:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd29:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd65:
          \$signal$147$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$147$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$151$next  = \$signal$151 ;
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd81:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd46:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd82:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd47:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd83:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd48:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd84:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd13:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd49:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd85:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd14:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd50:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd86:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd15:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd51:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd87:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd16:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd52:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd88:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd17:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd53:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd89:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd18:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd54:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd90:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd19:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd55:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd91:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd20:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd56:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd92:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd21:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd57:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd93:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd22:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd58:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd94:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd23:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd59:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd95:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd24:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd60:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd96:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd25:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd61:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd97:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd26:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd62:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd98:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd27:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd63:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd99:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd28:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd64:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd100:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd29:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd65:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd101:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd30:
          \$signal$151$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$151$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$152$next  = \$signal$152 ;
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd81:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd46:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd82:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd47:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd83:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd48:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd84:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd13:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd49:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd85:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd14:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd50:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd86:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd15:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd51:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd87:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd16:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd52:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd88:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd17:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd53:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd89:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd18:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd54:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd90:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd19:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd55:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd91:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd20:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd56:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd92:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd21:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd57:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd93:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd22:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd58:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd94:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd23:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd59:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd95:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd24:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd60:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd96:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd25:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd61:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd97:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd26:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd62:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd98:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd27:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd63:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd99:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd28:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd64:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd100:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd29:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd65:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd101:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd30:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd66:
          \$signal$152$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$152$next  = 16'h0000;
    endcase
  end
  always @* begin
    if (\$auto$verilog_backend.cc:2097:dump_module$1 ) begin end
    \$signal$156$next  = \$signal$156 ;
    (* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:24" *)
    casez (adr)
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd0:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd36:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd72:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd1:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd37:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd73:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd2:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd38:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd74:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd3:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd39:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd75:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd4:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd40:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd76:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd5:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd41:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd77:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd6:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd42:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd78:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd7:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd43:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd79:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd8:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd44:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd80:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd9:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd45:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd81:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd10:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd46:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd82:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd11:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd47:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd83:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd12:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd48:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd84:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd13:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd49:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd85:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd14:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd50:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd86:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd15:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd51:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd87:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd16:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd52:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd88:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd17:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd53:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd89:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd18:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd54:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd90:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd19:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd55:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd91:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd20:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd56:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd92:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd21:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd57:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd93:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd22:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd58:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd94:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd23:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd59:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd95:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd24:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd60:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd96:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd25:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd61:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd97:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd26:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd62:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd98:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd27:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd63:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd99:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd28:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd64:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd100:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd29:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd65:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd101:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd30:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:28" */
      32'd66:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:30" */
      32'd102:
          /* empty */;
      /* src = "/home/james/Desktop/Efabless/Project/caravel_user_project/Generate-Systolic-Array.py:26" */
      32'd31:
          \$signal$156$next  = dat_w[15:0];
    endcase
    (* src = "/home/james/.local/lib/python3.10/site-packages/amaranth/hdl/xfrm.py:503" *)
    casez (rst)
      1'h1:
          \$signal$156$next  = 16'h0000;
    endcase
  end
endmodule


`default_nettype wire