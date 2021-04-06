

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
// \   \   \/     Version            : 2.0
//  \   \         Application        : QDRIV
//  /   /         Filename           : example_top.sv
// /___/   /\     Date Last Modified : $Date: 2014/09/03 $
// \   \  /  \    Date Created       : Thu Apr 18 2013
//  \___\/\___\
//
// Device           : UltraScale
// Design Name      : QDRIV_SRAM
// Purpose          :
//                    Top-level  module. This module serves both as an example,
//                    and allows the user to synthesize a self-contained
//                    design, which they can be used to test their hardware.
//                    In addition to the memory controller,
//                    the module instantiates:
//                      1. Synthesizable testbench - used to model
//                      user's backend logic and generate different
//                      traffic patterns
//
// Reference        :
// Revision History :
//*****************************************************************************
`ifdef MODEL_TECH
    `ifndef CALIB_SIM
       `define SIMULATION
     `endif
`elsif INCA
    `ifndef CALIB_SIM
       `define SIMULATION
     `endif
`elsif VCS
    `ifndef CALIB_SIM
       `define SIMULATION
     `endif
`elsif XILINX_SIMULATOR
    `ifndef CALIB_SIM
       `define SIMULATION
     `endif
`elsif _VCP
    `ifndef CALIB_SIM
       `define SIMULATION
     `endif
`endif
`ifdef MODEL_TECH
    `define SIMULATION_MODE
`elsif INCA
    `define SIMULATION_MODE
`elsif VCS
    `define SIMULATION_MODE
`elsif XILINX_SIMULATOR
    `define SIMULATION_MODE
`elsif _VCP
    `define SIMULATION_MODE
`endif

`timescale 1ps/1ps
module example_top # (
  `ifdef SIMULATION_MODE
  parameter SIMULATION            = "TRUE", 
  `else
  parameter SIMULATION            = "FALSE",
  `endif
  parameter NUM_DEVICES    = 1,
  parameter ADDR_WIDTH     = 21,
  parameter DATA_WIDTH     = 36,
  parameter APP_DATA_WIDTH = 288,
  parameter APP_ADDR_WIDTH = 21,
  parameter tCK            = 938,
//  parameter TCQ            = tCK/2,
  parameter TCQ            = 100,
  parameter nCK_PER_CLK    = 4,
  parameter TG_MODE        = 2'b01
  ) (
  input                  sys_rst, // Common port for all controllers
    output                hbm_catrip_output,
  input                  c0_sys_clk_p,
  input                  c0_sys_clk_n,

  output [NUM_DEVICES -1:0]       c0_qdriv_ck_p,
  output [NUM_DEVICES -1:0]       c0_qdriv_ck_n,
  output [ADDR_WIDTH -1 :0 ]      c0_qdriv_a,
  output                          c0_qdriv_ainv,
  output                          c0_qdriv_lda_n,
  output                          c0_qdriv_ldb_n,

  output                          c0_qdriv_rwa_n,
  output                          c0_qdriv_rwb_n,

  output                          c0_qdriv_ap,

  input                           c0_qdriv_pe_n,
  output                          c0_qdriv_cfg_n,
  output                          c0_qdriv_rst_n,
  output                          c0_qdriv_lbk0_n,
  output                          c0_qdriv_lbk1_n,

  output [(NUM_DEVICES*2)-1:0]    c0_qdriv_dka_p,
  output [(NUM_DEVICES*2)-1:0]    c0_qdriv_dka_n,
  output [(NUM_DEVICES*2)-1:0]    c0_qdriv_dkb_p,
  output [(NUM_DEVICES*2)-1:0]    c0_qdriv_dkb_n,

  input  [(NUM_DEVICES*2)-1:0]    c0_qdriv_qka_p,
  input  [(NUM_DEVICES*2)-1:0]    c0_qdriv_qka_n,
  input  [(NUM_DEVICES*2)-1:0]    c0_qdriv_qkb_p,
  input  [(NUM_DEVICES*2)-1:0]    c0_qdriv_qkb_n,

  inout  [DATA_WIDTH -1 :0]       c0_qdriv_dqa,
  inout  [DATA_WIDTH -1 :0]       c0_qdriv_dqb,

//  inout  [(NUM_DEVICES*2)-1:0]    c0_qdriv_dinva,
//  inout  [(NUM_DEVICES*2)-1:0]    c0_qdriv_dinvb,

  input  [(NUM_DEVICES*2)-1:0]    c0_qdriv_qvlda,
  input  [(NUM_DEVICES*2)-1:0]    c0_qdriv_qvldb,

  output                          c0_init_calib_complete,
  output                          c0_data_compare_error
  );


  localparam NUM_PORT = 2;


  wire                          dbg_clk;
  (*mark_debug = "TRUE" *) wire [1023:0]                 dbg_bus;
  wire c0_qdriv_clk;
  wire c0_qdriv_rst_clk;

  wire [APP_ADDR_WIDTH-1:0] c0_qdriv_app_addr_a_ch0;
  wire [APP_ADDR_WIDTH-1:0] c0_qdriv_app_addr_a_ch1;
  wire [APP_ADDR_WIDTH-1:0] c0_qdriv_app_addr_a_ch2;
  wire [APP_ADDR_WIDTH-1:0] c0_qdriv_app_addr_a_ch3;
  wire [1:0] c0_qdriv_app_cmd_a_ch0;
  wire [1:0] c0_qdriv_app_cmd_a_ch1;
  wire [1:0] c0_qdriv_app_cmd_a_ch2;
  wire [1:0] c0_qdriv_app_cmd_a_ch3;
  wire c0_qdriv_app_cmd_en_a;
  wire [DATA_WIDTH*2-1:0] c0_qdriv_app_wrdata_a_ch0;
  wire [DATA_WIDTH*2-1:0] c0_qdriv_app_wrdata_a_ch1;
  wire [DATA_WIDTH*2-1:0] c0_qdriv_app_wrdata_a_ch2;
  wire [DATA_WIDTH*2-1:0] c0_qdriv_app_wrdata_a_ch3;
  wire c0_qdriv_app_cmd_rdy_a;
  wire [DATA_WIDTH*2-1:0] c0_qdriv_app_rddata_a_ch0;
  wire [DATA_WIDTH*2-1:0] c0_qdriv_app_rddata_a_ch1;
  wire [DATA_WIDTH*2-1:0] c0_qdriv_app_rddata_a_ch2;
  wire [DATA_WIDTH*2-1:0] c0_qdriv_app_rddata_a_ch3;
  wire c0_qdriv_app_rddata_valid_a_ch0;
  wire c0_qdriv_app_rddata_valid_a_ch1;
  wire c0_qdriv_app_rddata_valid_a_ch2;
  wire c0_qdriv_app_rddata_valid_a_ch3;
  wire [APP_ADDR_WIDTH-1:0] c0_qdriv_app_addr_b_ch0;
  wire [APP_ADDR_WIDTH-1:0] c0_qdriv_app_addr_b_ch1;
  wire [APP_ADDR_WIDTH-1:0] c0_qdriv_app_addr_b_ch2;
  wire [APP_ADDR_WIDTH-1:0] c0_qdriv_app_addr_b_ch3;
  wire [1:0] c0_qdriv_app_cmd_b_ch0;
  wire [1:0] c0_qdriv_app_cmd_b_ch1;
  wire [1:0] c0_qdriv_app_cmd_b_ch2;
  wire [1:0] c0_qdriv_app_cmd_b_ch3;
  wire c0_qdriv_app_cmd_en_b;
  wire [DATA_WIDTH*2-1:0] c0_qdriv_app_wrdata_b_ch0;
  wire [DATA_WIDTH*2-1:0] c0_qdriv_app_wrdata_b_ch1;
  wire [DATA_WIDTH*2-1:0] c0_qdriv_app_wrdata_b_ch2;
  wire [DATA_WIDTH*2-1:0] c0_qdriv_app_wrdata_b_ch3;
  wire c0_qdriv_app_cmd_rdy_b;
  wire [DATA_WIDTH*2-1:0] c0_qdriv_app_rddata_b_ch0;
  wire [DATA_WIDTH*2-1:0] c0_qdriv_app_rddata_b_ch1;
  wire [DATA_WIDTH*2-1:0] c0_qdriv_app_rddata_b_ch2;
  wire [DATA_WIDTH*2-1:0] c0_qdriv_app_rddata_b_ch3;
  wire c0_qdriv_app_rddata_valid_b_ch0;
  wire c0_qdriv_app_rddata_valid_b_ch1;
  wire c0_qdriv_app_rddata_valid_b_ch2;
  wire c0_qdriv_app_rddata_valid_b_ch3;

  wire                                      app_cmd_en_a_f1;
  wire [7:0]                                app_cmd_a_f1;
  wire [4*ADDR_WIDTH-1:0]                   app_addr_a_f1;
  wire [(DATA_WIDTH*nCK_PER_CLK*2)-1:0]     app_wrdata_a_f1;
  wire                                      app_cmd_en_b_f1;
  wire [7:0]                                app_cmd_b_f1;
  wire [4*ADDR_WIDTH-1:0]                   app_addr_b_f1;
  wire [(DATA_WIDTH*nCK_PER_CLK*2)-1:0]     app_wrdata_b_f1;
  wire [nCK_PER_CLK -1 :0]                  c0_qdriv_app_rddata_valid_a;
  wire [nCK_PER_CLK -1 :0]                  c0_qdriv_app_rddata_valid_b;
  wire [(DATA_WIDTH*nCK_PER_CLK*2)-1:0]     c0_qdriv_app_rddata_a;
  wire [(DATA_WIDTH*nCK_PER_CLK*2)-1:0]     c0_qdriv_app_rddata_b;
  wire        c0_qdriv_mb2tg_rst;
  wire        c0_qdriv_mb2tg_restart;
  wire [1:0]  c0_qdriv_tg2mb_status_first_err_bit_valid;
  wire [DATA_WIDTH-1:0] c0_qdriv_tg2mb_status_first_err_bit_portA;
  wire [DATA_WIDTH-1:0] c0_qdriv_tg2mb_status_first_err_bit_portB;
//  wire                  c0_qdriv_mb2tg_enable;
//  wire                         c0_qdriv_mb2tg_margin_chk_end;
//  wire                         c0_qdriv_tg2mb_margin_chk_start;
//  wire [1:0]                   c0_qdriv_tg2mb_tg_mode;
  (*mark_debug = "TRUE" *) wire vio_win_end;
  (*mark_debug = "TRUE" *) wire vio_win_start;
  wire tg_mode_0;
  wire tg_mode_1;
	   
  wire [DATA_WIDTH-1:0]       exp_rd_data_A_rise0;
  wire [DATA_WIDTH-1:0]       exp_rd_data_A_rise1;
  wire [DATA_WIDTH-1:0]       exp_rd_data_A_rise2;
  wire [DATA_WIDTH-1:0]       exp_rd_data_A_rise3;
  wire [DATA_WIDTH-1:0]       exp_rd_data_A_fall0;
  wire [DATA_WIDTH-1:0]       exp_rd_data_A_fall1;
  wire [DATA_WIDTH-1:0]       exp_rd_data_A_fall2;
  wire [DATA_WIDTH-1:0]       exp_rd_data_A_fall3;

  wire [DATA_WIDTH-1:0]       exp_rd_data_B_rise0;
  wire [DATA_WIDTH-1:0]       exp_rd_data_B_rise1;
  wire [DATA_WIDTH-1:0]       exp_rd_data_B_rise2;
  wire [DATA_WIDTH-1:0]       exp_rd_data_B_rise3;
  wire [DATA_WIDTH-1:0]       exp_rd_data_B_fall0;
  wire [DATA_WIDTH-1:0]       exp_rd_data_B_fall1;
  wire [DATA_WIDTH-1:0]       exp_rd_data_B_fall2;
  wire [DATA_WIDTH-1:0]       exp_rd_data_B_fall3;

  assign vio_win_start = 1'b0;

//***************************************************************************
// The example testbench module instantiated below drives traffic (patterns)
// on the application interface of the memory controller
//***************************************************************************
// In QDRIV, there are two test generators (TG) available for user to select:
//  1) Simple Test Generator (STG)
//  2) Advanced Test Generator (ATG)
//

    wire c0_data_compare_error_a;
    wire c0_wr_rd_complete_a;
    wire c0_data_compare_error_b;
    wire c0_wr_rd_complete_b;

    assign app_cmd_en_a_f1 = c0_qdriv_app_cmd_en_a;
    assign app_cmd_a_f1    = {c0_qdriv_app_cmd_a_ch3,c0_qdriv_app_cmd_a_ch2,c0_qdriv_app_cmd_a_ch1,c0_qdriv_app_cmd_a_ch0};
    assign app_addr_a_f1   = {c0_qdriv_app_addr_a_ch3,c0_qdriv_app_addr_a_ch2,c0_qdriv_app_addr_a_ch1,c0_qdriv_app_addr_a_ch0};
    assign app_wrdata_a_f1 = {c0_qdriv_app_wrdata_a_ch3[(DATA_WIDTH*2)-1:0],c0_qdriv_app_wrdata_a_ch2[(DATA_WIDTH*2)-1:0],c0_qdriv_app_wrdata_a_ch1[(DATA_WIDTH*2)-1:0],c0_qdriv_app_wrdata_a_ch0[(DATA_WIDTH*2)-1:0]};

    assign app_cmd_en_b_f1 = c0_qdriv_app_cmd_en_b;
    assign app_cmd_b_f1    = {c0_qdriv_app_cmd_b_ch3,c0_qdriv_app_cmd_b_ch2,c0_qdriv_app_cmd_b_ch1,c0_qdriv_app_cmd_b_ch0};
    assign app_addr_b_f1   = {c0_qdriv_app_addr_b_ch3,c0_qdriv_app_addr_b_ch2,c0_qdriv_app_addr_b_ch1,c0_qdriv_app_addr_b_ch0};
    assign app_wrdata_b_f1 = {c0_qdriv_app_wrdata_b_ch3[(DATA_WIDTH*2)-1:0],c0_qdriv_app_wrdata_b_ch2[(DATA_WIDTH*2)-1:0],c0_qdriv_app_wrdata_b_ch1[(DATA_WIDTH*2)-1:0],c0_qdriv_app_wrdata_b_ch0[(DATA_WIDTH*2)-1:0]};

    assign c0_qdriv_app_rddata_valid_a_ch0 = c0_qdriv_app_rddata_valid_a[0];
    assign c0_qdriv_app_rddata_valid_a_ch1 = c0_qdriv_app_rddata_valid_a[1] ;
    assign c0_qdriv_app_rddata_valid_a_ch2 = c0_qdriv_app_rddata_valid_a[2] ;
    assign c0_qdriv_app_rddata_valid_a_ch3 = c0_qdriv_app_rddata_valid_a[3] ;

    assign c0_qdriv_app_rddata_a_ch0 = c0_qdriv_app_rddata_a[DATA_WIDTH*0+DATA_WIDTH*2-1:DATA_WIDTH*0];
    assign c0_qdriv_app_rddata_a_ch1 = c0_qdriv_app_rddata_a[DATA_WIDTH*2+DATA_WIDTH*2-1:DATA_WIDTH*2];
    assign c0_qdriv_app_rddata_a_ch2 = c0_qdriv_app_rddata_a[DATA_WIDTH*4+DATA_WIDTH*2-1:DATA_WIDTH*4];
    assign c0_qdriv_app_rddata_a_ch3 = c0_qdriv_app_rddata_a[DATA_WIDTH*6+DATA_WIDTH*2-1:DATA_WIDTH*6];

    assign c0_qdriv_app_rddata_valid_b_ch0 = c0_qdriv_app_rddata_valid_b[0] ;
    assign c0_qdriv_app_rddata_valid_b_ch1 = c0_qdriv_app_rddata_valid_b[1] ;
    assign c0_qdriv_app_rddata_valid_b_ch2 = c0_qdriv_app_rddata_valid_b[2] ;
    assign c0_qdriv_app_rddata_valid_b_ch3 = c0_qdriv_app_rddata_valid_b[3] ;

    assign c0_qdriv_app_rddata_b_ch0 = c0_qdriv_app_rddata_b[DATA_WIDTH*0+DATA_WIDTH*2-1:DATA_WIDTH*0];
    assign c0_qdriv_app_rddata_b_ch1 = c0_qdriv_app_rddata_b[DATA_WIDTH*2+DATA_WIDTH*2-1:DATA_WIDTH*2];
    assign c0_qdriv_app_rddata_b_ch2 = c0_qdriv_app_rddata_b[DATA_WIDTH*4+DATA_WIDTH*2-1:DATA_WIDTH*4];
    assign c0_qdriv_app_rddata_b_ch3 = c0_qdriv_app_rddata_b[DATA_WIDTH*6+DATA_WIDTH*2-1:DATA_WIDTH*6];

    //assign c0_qdriv_mb2tg_rst                        = 1'd0;
    //assign c0_qdriv_mb2tg_restart                    = 1'd0;
    assign c0_qdriv_tg2mb_status_first_err_bit_valid = 2'd0;
    assign c0_qdriv_tg2mb_status_first_err_bit_portA = {DATA_WIDTH{1'b0}};
    assign c0_qdriv_tg2mb_status_first_err_bit_portB = {DATA_WIDTH{1'b0}};

    assign exp_rd_data_A_rise0 = {DATA_WIDTH{1'b0}};
    assign exp_rd_data_A_fall0 = {DATA_WIDTH{1'b0}};
    assign exp_rd_data_A_rise1 = {DATA_WIDTH{1'b0}};
    assign exp_rd_data_A_fall1 = {DATA_WIDTH{1'b0}};
    assign exp_rd_data_A_rise2 = {DATA_WIDTH{1'b0}};
    assign exp_rd_data_A_fall2 = {DATA_WIDTH{1'b0}};
    assign exp_rd_data_A_rise3 = {DATA_WIDTH{1'b0}};
    assign exp_rd_data_A_fall3 = {DATA_WIDTH{1'b0}};

    assign exp_rd_data_B_rise0 = {DATA_WIDTH{1'b0}};
    assign exp_rd_data_B_fall0 = {DATA_WIDTH{1'b0}};
    assign exp_rd_data_B_rise1 = {DATA_WIDTH{1'b0}};
    assign exp_rd_data_B_fall1 = {DATA_WIDTH{1'b0}};
    assign exp_rd_data_B_rise2 = {DATA_WIDTH{1'b0}};
    assign exp_rd_data_B_fall2 = {DATA_WIDTH{1'b0}};
    assign exp_rd_data_B_rise3 = {DATA_WIDTH{1'b0}};
    assign exp_rd_data_B_fall3 = {DATA_WIDTH{1'b0}};

    assign tg_mode_0   = 1'b0;
    assign tg_mode_1   = 1'b0;
	  
    example_tb # (
      .TCQ            (TCQ),
      .PORT_TYPE      ("A"),
      .SIMULATION     (SIMULATION),
      .APP_DATA_WIDTH (DATA_WIDTH*2),
      .APP_ADDR_WIDTH (APP_ADDR_WIDTH)
    ) u_example_tb_A (
      .clk                   (c0_qdriv_clk),
      .rst                   (c0_qdriv_rst_clk),
      .init_calib_complete   (c0_init_calib_complete),
      .app_rdy               (c0_qdriv_app_cmd_rdy_a),
      .app_cmd_en            (c0_qdriv_app_cmd_en_a),
      .app_cmd_ch0           (c0_qdriv_app_cmd_a_ch0),
      .app_cmd_ch1           (c0_qdriv_app_cmd_a_ch1),
      .app_cmd_ch2           (c0_qdriv_app_cmd_a_ch2),
      .app_cmd_ch3           (c0_qdriv_app_cmd_a_ch3),
      .app_addr_ch0          (c0_qdriv_app_addr_a_ch0),
      .app_addr_ch1          (c0_qdriv_app_addr_a_ch1),
      .app_addr_ch2          (c0_qdriv_app_addr_a_ch2),
      .app_addr_ch3          (c0_qdriv_app_addr_a_ch3),
      .app_wr_data_ch0       (c0_qdriv_app_wrdata_a_ch0),
      .app_wr_data_ch1       (c0_qdriv_app_wrdata_a_ch1),
      .app_wr_data_ch2       (c0_qdriv_app_wrdata_a_ch2),
      .app_wr_data_ch3       (c0_qdriv_app_wrdata_a_ch3),
      .app_rd_data_valid_ch0 (c0_qdriv_app_rddata_valid_a_ch0),
      .app_rd_data_ch0       (c0_qdriv_app_rddata_a_ch0),
      .app_rd_data_ch1       (c0_qdriv_app_rddata_a_ch1),
      .app_rd_data_ch2       (c0_qdriv_app_rddata_a_ch2),
      .app_rd_data_ch3       (c0_qdriv_app_rddata_a_ch3),
      .compare_error         (c0_data_compare_error_a),
      .wr_rd_complete        (c0_wr_rd_complete_a)
    );

    example_tb # (
      .TCQ            (TCQ),
      .PORT_TYPE      ("B"),
      .SIMULATION     (SIMULATION),
      .APP_DATA_WIDTH (DATA_WIDTH*2),
      .APP_ADDR_WIDTH (APP_ADDR_WIDTH)
    ) u_example_tb_B (
      .clk                   (c0_qdriv_clk),
      .rst                   (c0_qdriv_rst_clk),
      .init_calib_complete   (c0_init_calib_complete),
      .app_rdy               (c0_qdriv_app_cmd_rdy_b),
      .app_cmd_en            (c0_qdriv_app_cmd_en_b),
      .app_cmd_ch0           (c0_qdriv_app_cmd_b_ch0),
      .app_cmd_ch1           (c0_qdriv_app_cmd_b_ch1),
      .app_cmd_ch2           (c0_qdriv_app_cmd_b_ch2),
      .app_cmd_ch3           (c0_qdriv_app_cmd_b_ch3),
      .app_addr_ch0          (c0_qdriv_app_addr_b_ch0),
      .app_addr_ch1          (c0_qdriv_app_addr_b_ch1),
      .app_addr_ch2          (c0_qdriv_app_addr_b_ch2),
      .app_addr_ch3          (c0_qdriv_app_addr_b_ch3),
      .app_wr_data_ch0       (c0_qdriv_app_wrdata_b_ch0),
      .app_wr_data_ch1       (c0_qdriv_app_wrdata_b_ch1),
      .app_wr_data_ch2       (c0_qdriv_app_wrdata_b_ch2),
      .app_wr_data_ch3       (c0_qdriv_app_wrdata_b_ch3),
      .app_rd_data_valid_ch0 (c0_qdriv_app_rddata_valid_b_ch0),
      .app_rd_data_ch0       (c0_qdriv_app_rddata_b_ch0),
      .app_rd_data_ch1       (c0_qdriv_app_rddata_b_ch1),
      .app_rd_data_ch2       (c0_qdriv_app_rddata_b_ch2),
      .app_rd_data_ch3       (c0_qdriv_app_rddata_b_ch3),
      .compare_error         (c0_data_compare_error_b),
      .wr_rd_complete        (c0_wr_rd_complete_b)
    );

    assign c0_data_compare_error = c0_data_compare_error_a | c0_data_compare_error_b;
    initial
    begin : Logging
     wait(c0_wr_rd_complete_b && c0_wr_rd_complete_a);
     if (!c0_data_compare_error) begin
        $display("Test Completed Successfully");
        $display("TEST PASSED");
     end
     else begin
       $display("TEST FAILED: DATA ERROR");
     end
     $display("INFO: Timing violations reported by memory model could be incorrect due to model issue. Please check the violations and contact Cypress for further assistance.");
//     $finish;
    end

    OBUF HBM_CATRIP_INST (
    .I (1'b0),
    .O (hbm_catrip_output)
    ); 
  //***************************************************************************
  // The User design is instantiated below. The memory interface ports are
  // connected to the top-level and the application interface ports are
  // connected to the traffic generator module. This provides a reference
  // for connecting the memory controller to system.
  //***************************************************************************
qdriv_0  u_qdriv_0 (
    .sys_rst                     (sys_rst),
    .c0_sys_clk_p                   (c0_sys_clk_p),
    .c0_sys_clk_n                   (c0_sys_clk_n),
    .c0_qdriv_mb2tg_rst                         (c0_qdriv_mb2tg_rst),
    .c0_qdriv_mb2tg_restart                     (c0_qdriv_mb2tg_restart),
    .c0_qdriv_tg2mb_status_first_err_bit_portA  (c0_qdriv_tg2mb_status_first_err_bit_portA), // input
    .c0_qdriv_tg2mb_status_first_err_bit_portB  (c0_qdriv_tg2mb_status_first_err_bit_portB), // input
    .c0_qdriv_tg2mb_status_first_err_bit_valid  (c0_qdriv_tg2mb_status_first_err_bit_valid), // input
//    .c0_qdriv_mb2tg_enable                      (c0_qdriv_mb2tg_enable),
//    .c0_qdriv_mb2tg_margin_chk_in_progress      (),
    .c0_qdriv_mb2tg_margin_chk_end              (vio_win_end), // output
    .c0_qdriv_tg2mb_margin_chk_start            (vio_win_start), // input
    .c0_qdriv_tg2mb_tg_mode                     ({tg_mode_1,tg_mode_0}), // input
    .c0_qdriv_app_addr_a_ch0                    (app_addr_a_f1[ADDR_WIDTH-1+ADDR_WIDTH*0:ADDR_WIDTH*0]),
    .c0_qdriv_app_addr_a_ch1                    (app_addr_a_f1[ADDR_WIDTH-1+ADDR_WIDTH*1:ADDR_WIDTH*1]),
    .c0_qdriv_app_addr_a_ch2                    (app_addr_a_f1[ADDR_WIDTH-1+ADDR_WIDTH*2:ADDR_WIDTH*2]),
    .c0_qdriv_app_addr_a_ch3                    (app_addr_a_f1[ADDR_WIDTH-1+ADDR_WIDTH*3:ADDR_WIDTH*3]),
    .c0_qdriv_app_cmd_a_ch0                     (app_cmd_a_f1[1:0]),
    .c0_qdriv_app_cmd_a_ch1                     (app_cmd_a_f1[3:2]),
    .c0_qdriv_app_cmd_a_ch2                     (app_cmd_a_f1[5:4]),
    .c0_qdriv_app_cmd_a_ch3                     (app_cmd_a_f1[7:6]),
    .c0_qdriv_app_cmd_en_a                      (app_cmd_en_a_f1),
    .c0_qdriv_app_wrdata_a_ch0                  (app_wrdata_a_f1[DATA_WIDTH*0+DATA_WIDTH*2-1:DATA_WIDTH*0]),
    .c0_qdriv_app_wrdata_a_ch1                  (app_wrdata_a_f1[DATA_WIDTH*2+DATA_WIDTH*2-1:DATA_WIDTH*2]),
    .c0_qdriv_app_wrdata_a_ch2                  (app_wrdata_a_f1[DATA_WIDTH*4+DATA_WIDTH*2-1:DATA_WIDTH*4]),
    .c0_qdriv_app_wrdata_a_ch3                  (app_wrdata_a_f1[DATA_WIDTH*6+DATA_WIDTH*2-1:DATA_WIDTH*6]),
    .c0_qdriv_app_cmd_rdy_a                     (c0_qdriv_app_cmd_rdy_a),
    .c0_qdriv_app_rddata_a_ch0                  (c0_qdriv_app_rddata_a[DATA_WIDTH*0+DATA_WIDTH*2-1:DATA_WIDTH*0]),
    .c0_qdriv_app_rddata_a_ch1                  (c0_qdriv_app_rddata_a[DATA_WIDTH*2+DATA_WIDTH*2-1:DATA_WIDTH*2]),
    .c0_qdriv_app_rddata_a_ch2                  (c0_qdriv_app_rddata_a[DATA_WIDTH*4+DATA_WIDTH*2-1:DATA_WIDTH*4]),
    .c0_qdriv_app_rddata_a_ch3                  (c0_qdriv_app_rddata_a[DATA_WIDTH*6+DATA_WIDTH*2-1:DATA_WIDTH*6]),
    .c0_qdriv_app_rddata_valid_a_ch0            (c0_qdriv_app_rddata_valid_a[0]),
    .c0_qdriv_app_rddata_valid_a_ch1            (c0_qdriv_app_rddata_valid_a[1]),
    .c0_qdriv_app_rddata_valid_a_ch2            (c0_qdriv_app_rddata_valid_a[2]),
    .c0_qdriv_app_rddata_valid_a_ch3            (c0_qdriv_app_rddata_valid_a[3]),
    .c0_qdriv_app_addr_b_ch0                    (app_addr_b_f1[ADDR_WIDTH-1+ADDR_WIDTH*0:ADDR_WIDTH*0]),
    .c0_qdriv_app_addr_b_ch1                    (app_addr_b_f1[ADDR_WIDTH-1+ADDR_WIDTH*1:ADDR_WIDTH*1]),
    .c0_qdriv_app_addr_b_ch2                    (app_addr_b_f1[ADDR_WIDTH-1+ADDR_WIDTH*2:ADDR_WIDTH*2]),
    .c0_qdriv_app_addr_b_ch3                    (app_addr_b_f1[ADDR_WIDTH-1+ADDR_WIDTH*3:ADDR_WIDTH*3]),
    .c0_qdriv_app_cmd_b_ch0                     (app_cmd_b_f1[1:0]),
    .c0_qdriv_app_cmd_b_ch1                     (app_cmd_b_f1[3:2]),
    .c0_qdriv_app_cmd_b_ch2                     (app_cmd_b_f1[5:4]),
    .c0_qdriv_app_cmd_b_ch3                     (app_cmd_b_f1[7:6]),
    .c0_qdriv_app_cmd_en_b                      (app_cmd_en_b_f1),
    .c0_qdriv_app_wrdata_b_ch0                  (app_wrdata_b_f1[DATA_WIDTH*0+DATA_WIDTH*2-1:DATA_WIDTH*0]),
    .c0_qdriv_app_wrdata_b_ch1                  (app_wrdata_b_f1[DATA_WIDTH*2+DATA_WIDTH*2-1:DATA_WIDTH*2]),
    .c0_qdriv_app_wrdata_b_ch2                  (app_wrdata_b_f1[DATA_WIDTH*4+DATA_WIDTH*2-1:DATA_WIDTH*4]),
    .c0_qdriv_app_wrdata_b_ch3                  (app_wrdata_b_f1[DATA_WIDTH*6+DATA_WIDTH*2-1:DATA_WIDTH*6]),
    .c0_qdriv_app_cmd_rdy_b                     (c0_qdriv_app_cmd_rdy_b),
    .c0_qdriv_app_rddata_b_ch0                  (c0_qdriv_app_rddata_b[DATA_WIDTH*0+DATA_WIDTH*2-1:DATA_WIDTH*0]),
    .c0_qdriv_app_rddata_b_ch1                  (c0_qdriv_app_rddata_b[DATA_WIDTH*2+DATA_WIDTH*2-1:DATA_WIDTH*2]),
    .c0_qdriv_app_rddata_b_ch2                  (c0_qdriv_app_rddata_b[DATA_WIDTH*4+DATA_WIDTH*2-1:DATA_WIDTH*4]),
    .c0_qdriv_app_rddata_b_ch3                  (c0_qdriv_app_rddata_b[DATA_WIDTH*6+DATA_WIDTH*2-1:DATA_WIDTH*6]),
    .c0_qdriv_app_rddata_valid_b_ch0            (c0_qdriv_app_rddata_valid_b[0]),
    .c0_qdriv_app_rddata_valid_b_ch1            (c0_qdriv_app_rddata_valid_b[1]),
    .c0_qdriv_app_rddata_valid_b_ch2            (c0_qdriv_app_rddata_valid_b[2]),
    .c0_qdriv_app_rddata_valid_b_ch3            (c0_qdriv_app_rddata_valid_b[3]),
    .c0_qdriv_ck_p                              (c0_qdriv_ck_p),
    .c0_qdriv_ck_n                              (c0_qdriv_ck_n),
    .c0_qdriv_a                                 (c0_qdriv_a),
    .c0_qdriv_ainv                              (c0_qdriv_ainv),
    .c0_qdriv_lda_n                             (c0_qdriv_lda_n),
    .c0_qdriv_ldb_n                             (c0_qdriv_ldb_n),
    .c0_qdriv_rwa_n                             (c0_qdriv_rwa_n),
    .c0_qdriv_rwb_n                             (c0_qdriv_rwb_n),
    .c0_qdriv_ap                                (c0_qdriv_ap),
    .c0_qdriv_pe_n                              (c0_qdriv_pe_n),
    .c0_qdriv_cfg_n                             (c0_qdriv_cfg_n),
    .c0_qdriv_rst_n                             (c0_qdriv_rst_n),
    .c0_qdriv_lbk0_n                            (c0_qdriv_lbk0_n),
    .c0_qdriv_lbk1_n                            (c0_qdriv_lbk1_n),
    .c0_qdriv_dka_p                             (c0_qdriv_dka_p),
    .c0_qdriv_dka_n                             (c0_qdriv_dka_n),
    .c0_qdriv_dkb_p                             (c0_qdriv_dkb_p),
    .c0_qdriv_dkb_n                             (c0_qdriv_dkb_n),
    .c0_qdriv_qka_p                             (c0_qdriv_qka_p),
    .c0_qdriv_qka_n                             (c0_qdriv_qka_n),
    .c0_qdriv_qkb_p                             (c0_qdriv_qkb_p),
    .c0_qdriv_qkb_n                             (c0_qdriv_qkb_n),
    .c0_qdriv_dqa                               (c0_qdriv_dqa),
    .c0_qdriv_dqb                               (c0_qdriv_dqb),
//    .c0_qdriv_dinva                             (c0_qdriv_dinva),
//    .c0_qdriv_dinvb                             (c0_qdriv_dinvb),
    .c0_qdriv_qvlda                             (c0_qdriv_qvlda),
    .c0_qdriv_qvldb                             (c0_qdriv_qvldb),
    .dbg_clk                                                                          (dbg_clk),
    .dbg_bus                                                                          (dbg_bus),
    .c0_qdriv_clk                               (c0_qdriv_clk),
    .c0_qdriv_rst_clk                           (c0_qdriv_rst_clk),
    .c0_init_calib_complete                                                      (c0_init_calib_complete)

  );
// End of User Design top instance

endmodule
