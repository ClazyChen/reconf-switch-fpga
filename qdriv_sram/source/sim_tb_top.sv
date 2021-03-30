

/******************************************************************************
// (c) Copyright 2013 - 2014 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
******************************************************************************/
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor             : Xilinx
// \   \   \/     Version            : 1.2
//  \   \         Application        : QDRIV
//  /   /         Filename           : sim_tb_top.sv
// /___/   /\     Date Last Modified : $Date: 2014/09/03 $
// \   \  /  \    Date Created       : Thu Apr 18 2013
//  \___\/\___\
//
// Device           : UltraScale
// Design Name      : QDRIV_SRAM
// Purpose          :
//                   Top-level testbench for testing Memory interface.
//                   Instantiates:
//                     1. IP_TOP (top-level representing FPGA, contains core,
//                        clocking, built-in testbench/memory checker and other
//                        support structures)
//                     2. Memory Model
//                     3. Miscellaneous clock generation and reset logic
// Reference        :
// Revision History :
//*****************************************************************************

`timescale 1ps/1ps

`ifdef XILINX_SIMULATOR
module short(in1, in1);
inout in1;
endmodule
`endif

module sim_tb_top;

// Input clock period
  localparam NUM_DEVICES      = 1;
  localparam MEM_DEVICE_WIDTH = 36;
  localparam BURST_LEN        = 2;
  localparam ADDR_WIDTH       = 21;
  localparam DATA_WIDTH       = 36;
  localparam MEM_LATENCY      = "8";
  localparam APP_DATA_WIDTH   = 288;
  localparam APP_ADDR_WIDTH   = 21;
  localparam CLKIN_PERIOD     = 14259;
  localparam tCK              = 938;


reg                       sys_rst;
reg                       sys_clk_i;


wire          c0_sys_clk_p;
wire          c0_sys_clk_n;
wire [NUM_DEVICES -1:0]    c0_qdriv_ck_p;
wire [NUM_DEVICES -1:0]    c0_qdriv_ck_n;
wire [ADDR_WIDTH -1 :0 ]   c0_qdriv_a;
wire                       c0_qdriv_ainv;
wire                       c0_qdriv_lda_n;
wire                       c0_qdriv_ldb_n;
wire                       c0_qdriv_rwa_n;
wire                       c0_qdriv_rwb_n;
wire                       c0_qdriv_ap;
wire                       c0_qdriv_pe_n;
wire                       c0_qdriv_cfg_n;
wire                       c0_qdriv_rst_n;
wire                       c0_qdriv_lbk0_n;
wire                       c0_qdriv_lbk1_n;
wire [(NUM_DEVICES*2)-1:0] c0_qdriv_dka_p;
wire [(NUM_DEVICES*2)-1:0] c0_qdriv_dka_n;
wire [(NUM_DEVICES*2)-1:0] c0_qdriv_dkb_p;
wire [(NUM_DEVICES*2)-1:0] c0_qdriv_dkb_n;
wire [(NUM_DEVICES*2)-1:0] c0_qdriv_qka_p;
wire [(NUM_DEVICES*2)-1:0] c0_qdriv_qka_n;
wire [(NUM_DEVICES*2)-1:0] c0_qdriv_qkb_p;
wire [(NUM_DEVICES*2)-1:0] c0_qdriv_qkb_n;
reg [(NUM_DEVICES*2)-1:0] c0_qdriv_qka_p_delay;
reg [(NUM_DEVICES*2)-1:0] c0_qdriv_qka_n_delay;
reg [(NUM_DEVICES*2)-1:0] c0_qdriv_qkb_p_delay;
reg [(NUM_DEVICES*2)-1:0] c0_qdriv_qkb_n_delay;
wire [DATA_WIDTH -1 :0]    c0_qdriv_dqa;
wire [DATA_WIDTH -1 :0]    c0_qdriv_dqb;
//wire [(NUM_DEVICES*2)-1:0] c0_qdriv_dinva;
//wire [(NUM_DEVICES*2)-1:0] c0_qdriv_dinvb;
wire [(NUM_DEVICES*2)-1:0] c0_qdriv_qvlda;
wire [(NUM_DEVICES*2)-1:0] c0_qdriv_qvldb;
wire          c0_init_calib_complete;
wire          c0_data_compare_error;



  //**************************************************************************//
  // Reset Generation
  //**************************************************************************//
  initial begin
     sys_rst = 1'b0;
     #200
     sys_rst = 1'b1;
     #200;
     sys_rst = 1'b0;
     #100;
  end

  //**************************************************************************//
  // Clock Generation
  //**************************************************************************//

  initial
    sys_clk_i = 1'b0;
  always
    sys_clk_i = #(CLKIN_PERIOD/2.0) ~sys_clk_i;

  assign c0_sys_clk_p = sys_clk_i;
  assign c0_sys_clk_n = ~sys_clk_i;
  //===========================================================================
  //                         FPGA Memory Controller instantiation
  //===========================================================================

  example_top # (
    .NUM_DEVICES    (NUM_DEVICES),
    .ADDR_WIDTH     (ADDR_WIDTH),
    .DATA_WIDTH     (DATA_WIDTH),
    .APP_DATA_WIDTH (APP_DATA_WIDTH),
    .APP_ADDR_WIDTH (APP_ADDR_WIDTH)
  ) u_example_top (
    .sys_rst           (sys_rst),
    .c0_sys_clk_p                  (c0_sys_clk_p),
    .c0_sys_clk_n                  (c0_sys_clk_n),
    .c0_qdriv_ck_p          (c0_qdriv_ck_p),
    .c0_qdriv_ck_n          (c0_qdriv_ck_n),
    .c0_qdriv_a             (c0_qdriv_a),
    .c0_qdriv_ainv          (c0_qdriv_ainv),
    .c0_qdriv_lda_n         (c0_qdriv_lda_n),
    .c0_qdriv_ldb_n         (c0_qdriv_ldb_n),
    .c0_qdriv_rwa_n         (c0_qdriv_rwa_n),
    .c0_qdriv_rwb_n         (c0_qdriv_rwb_n),
    .c0_qdriv_ap            (c0_qdriv_ap),
    .c0_qdriv_pe_n          (c0_qdriv_pe_n),
    .c0_qdriv_cfg_n         (c0_qdriv_cfg_n),
    .c0_qdriv_rst_n         (c0_qdriv_rst_n),
    .c0_qdriv_lbk0_n        (c0_qdriv_lbk0_n),
    .c0_qdriv_lbk1_n        (c0_qdriv_lbk1_n),
    .c0_qdriv_dka_p         (c0_qdriv_dka_p),
    .c0_qdriv_dka_n         (c0_qdriv_dka_n),
    .c0_qdriv_dkb_p         (c0_qdriv_dkb_p),
    .c0_qdriv_dkb_n         (c0_qdriv_dkb_n),
//    .c0_qdriv_qka_p         (c0_qdriv_qka_p),
//    .c0_qdriv_qka_n         (c0_qdriv_qka_n),
//    .c0_qdriv_qkb_p         (c0_qdriv_qkb_p),
//    .c0_qdriv_qkb_n         (c0_qdriv_qkb_n),
    .c0_qdriv_qka_p         (c0_qdriv_qka_p_delay),
    .c0_qdriv_qka_n         (c0_qdriv_qka_n_delay),
    .c0_qdriv_qkb_p         (c0_qdriv_qkb_p_delay),
    .c0_qdriv_qkb_n         (c0_qdriv_qkb_n_delay),
    .c0_qdriv_dqa           (c0_qdriv_dqa),
    .c0_qdriv_dqb           (c0_qdriv_dqb),
//    .c0_qdriv_dinva         (c0_qdriv_dinva),
//    .c0_qdriv_dinvb         (c0_qdriv_dinvb),
    .c0_qdriv_qvlda         (c0_qdriv_qvlda),
    .c0_qdriv_qvldb         (c0_qdriv_qvldb),
    .c0_init_calib_complete        (c0_init_calib_complete),
    .c0_data_compare_error    (c0_data_compare_error)
    );

  always @(*) begin
    c0_qdriv_qka_p_delay <= #(tCK/4) c0_qdriv_qka_p;
    c0_qdriv_qka_n_delay <= #(tCK/4) c0_qdriv_qka_n;
    c0_qdriv_qkb_p_delay <= #(tCK/4) c0_qdriv_qkb_p;
    c0_qdriv_qkb_n_delay <= #(tCK/4) c0_qdriv_qkb_n;
  end
	
  //===========================================================================
  //                         Memory Model instantiation
  //==========================================================================
   qdr4_beh QDRIV_MEM (
     .ck    (c0_qdriv_ck_p),
     .ck_   (c0_qdriv_ck_n),
     .addr  (c0_qdriv_a),
     .ainv  (c0_qdriv_ainv),
     .ap    (c0_qdriv_ap),
     .pe_   (c0_qdriv_pe_n),
     .lda_  (c0_qdriv_lda_n),
     .ldb_  (c0_qdriv_ldb_n),
     .rwa_  (c0_qdriv_rwa_n),
     .rwb_  (c0_qdriv_rwb_n),
     .dka   (c0_qdriv_dka_p),
     .dka_  (c0_qdriv_dka_n),
     .dkb   (c0_qdriv_dkb_p),
     .dkb_  (c0_qdriv_dkb_n),
     .qka   (c0_qdriv_qka_p),
     .qka_  (c0_qdriv_qka_n),
     .qkb   (c0_qdriv_qkb_p),
     .qkb_  (c0_qdriv_qkb_n),
     .qvlda (c0_qdriv_qvlda),
     .qvldb (c0_qdriv_qvldb),
     .dqa   (c0_qdriv_dqa),
//     .dinva (c0_qdriv_dinva),
     .dinva (),
     .dqb   (c0_qdriv_dqb),
//     .dinvb (c0_qdriv_dinvb),
     .dinvb (),
     .zq    (),
     .rst_  (c0_qdriv_rst_n),
     .cfg_  (c0_qdriv_cfg_n),
     .lbk0_ (c0_qdriv_lbk0_n),
     .lbk1_ (c0_qdriv_lbk1_n),
     .trst_ (1'b0),
     .tck   (1'b0),
     .tms   (1'b0),
     .tdi   (1'b0),
     .tdo   ()
     );



endmodule
