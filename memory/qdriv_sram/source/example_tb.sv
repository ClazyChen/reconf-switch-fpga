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
// \   \   \/     Version            : 1.1
//  \   \         Application        : QDRIV STB
//  /   /         Filename           : example_tb.sv
// /___/   /\     Date Last Modified : $Date: 2014/09/03 $
// \   \  /  \    Date Created       : Thu Apr 18 2013
//  \___\/\___\
//
// Device           : UltraScale 
// Design Name      : QDRIV SRAM EXAMPLE TB
// Purpose          : This is an  example test-bench that shows how to interface
//                    to the Memory controller (MC) User Interface (UI). This  
//                    example works for QDRIV memory controller generated 
//                    from Vivado. 
//                    This module waits for the calibration complete 
//                    (init_calib_complete) to pass the traffic to the MC.
//
//                    This TB generates 10 write transactions 
//                    followed by 10 read transactions to the MC.
//                    Checks if the data that is read back from the 
//                    memory is correct. After 10 writes and reads, no other
//                    commands will be issued by this TG.
//
//                    All READ and WRITE transactions in this example TB are of 
//                    QDRIV BURST LENGTH (BL) 2. In a single clock cycle 1 BL2
//                    transaction will be generated
//
//                    The fabric to DRAM clock ratio is 4:1. In each fabric 
//                    clock cycle 8 beats of data will be written during 
//                    WRITE transactions and 8 beats of data will be received 
//                    during READ transactions.
// Reference        :
// Revision History :
//*****************************************************************************

`timescale 1ps/1ps

module example_tb #(
  parameter TCQ              = 10,
  parameter PORT_TYPE        = "A",
  parameter SIMULATION       = "FALSE",   // This parameter must be
                                          // TRUE for simulations and 
                                          // FALSE for implementation.
                                          //
  parameter APP_DATA_WIDTH   = 32,        // QDRIV data bus width.
  parameter APP_ADDR_WIDTH   = 32         // Address bus width of the 
                                          //memory controller user interface.
  )
  (
  // ********* ALL SIGNALS AT THIS INTERFACE ARE ACTIVE HIGH SIGNALS ********/
  input                           clk,                 // MC UI clock
  input                           rst,                 // MC UI reset signal.
  input                           init_calib_complete, // MC calibration done signal coming from MC UI.

  input                           app_rdy,             // cmd fifo ready signal coming from MC UI.
  output reg                      app_cmd_en,      // command enable signal to MC UI.
  output reg [1:0]                    app_cmd_ch0,     // command bus to the MC UI
  output reg [1:0]                    app_cmd_ch1,     // command bus to the MC UI
  output reg [1:0]                    app_cmd_ch2,     // command bus to the MC UI
  output reg [1:0]                    app_cmd_ch3,     // command bus to the MC UI
  output reg [APP_ADDR_WIDTH-1: 0]    app_addr_ch0,    // address bus to the MC UI
  output reg [APP_ADDR_WIDTH-1: 0]    app_addr_ch1,    // address bus to the MC UI
  output reg [APP_ADDR_WIDTH-1: 0]    app_addr_ch2,    // address bus to the MC UI
  output reg [APP_ADDR_WIDTH-1: 0]    app_addr_ch3,    // address bus to the MC UI
  output     [APP_DATA_WIDTH-1: 0]    app_wr_data_ch0, // write data bus to MC UI.
  output     [APP_DATA_WIDTH-1: 0]    app_wr_data_ch1, // write data bus to MC UI.
  output     [APP_DATA_WIDTH-1: 0]    app_wr_data_ch2, // write data bus to MC UI.
  output     [APP_DATA_WIDTH-1: 0]    app_wr_data_ch3, // write data bus to MC UI.
  input                           app_rd_data_valid_ch0,   // read data valid signal coming from MC UI
  input  [APP_DATA_WIDTH-1 : 0]   app_rd_data_ch0, // read data bus coming from MC UI
  input  [APP_DATA_WIDTH-1 : 0]   app_rd_data_ch1, // read data bus coming from MC UI
  input  [APP_DATA_WIDTH-1 : 0]   app_rd_data_ch2, // read data bus coming from MC UI
  input  [APP_DATA_WIDTH-1 : 0]   app_rd_data_ch3, // read data bus coming from MC UI
                                              //
  output reg                      compare_error,// Memory READ_DATA and example TB
                                              // WRITE_DATA compare error.
  output                          wr_rd_complete                                              
);


reg        [3:0] ps;
localparam [3:0] WR_RDY_CHK = 0;
localparam [3:0] RD_RDY_CHK = 1;
localparam [3:0] WR_CMD     = 2;
localparam [3:0] RD_CMD     = 3;
localparam [3:0] CMDS_DONE  = 4;
reg                       wr_mode;
reg                       wr_mode_r1;
reg                       rd_mode;
reg                       rd_mode_r1;
wire                      wr_mode_en;
wire                      rd_mode_en;
wire                      wr_cmd_done;
wire                      rd_cmd_done;
reg  [4:0]               wr_cmds_cnt;
reg  [4:0]               rd_cmds_cnt;
reg  [1:0]                cmd;
reg                       cmd_en;
wire  [APP_ADDR_WIDTH-4:0] addr;             
reg  [APP_ADDR_WIDTH-4:0] addr_r1;             
reg  [APP_DATA_WIDTH-1:0] exp_rd_data;
reg  [APP_DATA_WIDTH-1:0] rd_data_cnt;   
wire                      rd_data_done;
reg                       rd_data_done_r;
reg                       rd_data_done_r1;
wire [APP_DATA_WIDTH-1:0] exp_rd_data_ch0;
wire [APP_DATA_WIDTH-1:0] exp_rd_data_ch1;
wire [APP_DATA_WIDTH-1:0] exp_rd_data_ch2;
wire [APP_DATA_WIDTH-1:0] exp_rd_data_ch3;
    
wire repeat_reads;
assign repeat_reads = 0;

always@(posedge clk) begin
   if(rst) begin
      cmd_en     <= #TCQ 1'b0; 
      cmd        <= #TCQ 2'b00;
      wr_mode    <= #TCQ 1'b0;
      rd_mode    <= #TCQ 1'b0;
      ps         <= #TCQ WR_RDY_CHK;
   end else begin
      case(ps)
         WR_RDY_CHK: begin
            cmd_en <= #TCQ 1'b0; 
            cmd    <= #TCQ 2'b00;
            wr_mode<= #TCQ 1'b1;
            rd_mode<= #TCQ 1'b0;
            if(app_rdy && init_calib_complete)
               ps <= #TCQ WR_CMD;
         end
         WR_CMD: begin
            cmd_en <= #TCQ 1'b1; 
            cmd    <= #TCQ 2'b11; 
            wr_mode<= #TCQ 1'b1; 
            rd_mode<= #TCQ 1'b0;
            if(wr_cmd_done)
               ps <= #TCQ RD_RDY_CHK;
            else if(!app_rdy)
               ps <= #TCQ WR_RDY_CHK;
         end
         RD_RDY_CHK: begin
            cmd_en <= #TCQ 1'b0; 
            cmd    <= #TCQ 2'b00;
            if(app_rdy)
	    begin			    
               ps <= #TCQ RD_CMD; 
               wr_mode<= #TCQ 1'b0;
               rd_mode<= #TCQ 1'b1;
	    end	       
	    else if(!app_rdy && wr_mode == 1'b1)	       
	    begin			    
	       ps <= #TCQ WR_CMD;		    
               wr_mode<= #TCQ 1'b1;
               rd_mode<= #TCQ 1'b0;
	    end
         end
         RD_CMD: begin
            cmd_en <= #TCQ 1'b1; 
            cmd    <= #TCQ 2'b10;
            wr_mode<= #TCQ 1'b0;
            rd_mode<= #TCQ 1'b1;
            if(rd_cmd_done)
               ps <= #TCQ CMDS_DONE;
            else if(!app_rdy)
               ps <= #TCQ RD_RDY_CHK;
         end
         CMDS_DONE: begin
            cmd_en <= #TCQ 1'b0; 
            cmd    <= #TCQ 2'b00;
            wr_mode<= #TCQ 1'b0;
            rd_mode<= #TCQ 1'b0;
            if(repeat_reads)
               ps <= #TCQ RD_RDY_CHK; 
            else
               ps <= #TCQ WR_RDY_CHK;
         end
         default: begin
            cmd_en <= #TCQ 1'b0; 
            cmd    <= #TCQ 2'b00;
            wr_mode<= #TCQ 1'b0;
            rd_mode<= #TCQ 1'b0;
            ps <= #TCQ WR_RDY_CHK;
         end
      endcase
   end
end

always@(posedge clk) begin
   wr_mode_r1 <= #TCQ wr_mode;
end
assign wr_mode_en = wr_mode_r1 & (~wr_mode);

always@(posedge clk) begin
   rd_mode_r1 <= #TCQ rd_mode;
end

assign rd_mode_en = rd_mode_r1 & (~rd_mode);
assign app_cmd_en = cmd_en && app_rdy ;
assign addr =  (app_rdy == 1) ? addr_r1 : 0;

always@(posedge clk) begin
   if(rst || rd_mode_en || wr_mode_en) begin
      addr_r1           <= #TCQ 0; 
   end else if(app_cmd_en) begin 
      addr_r1           <= #TCQ addr_r1+1;
   end else begin
      addr_r1           <= #TCQ addr_r1 ;
   end 
end


assign app_addr_ch0 = (PORT_TYPE == "A") ? {1'b0,addr[APP_ADDR_WIDTH-4:0],2'b00} : {1'b1,addr[APP_ADDR_WIDTH-4:0],2'b00} ; 
assign app_addr_ch1 = (PORT_TYPE == "A") ? {1'b0,addr[APP_ADDR_WIDTH-4:0],2'b01} : {1'b1,addr[APP_ADDR_WIDTH-4:0],2'b01} ; 
assign app_addr_ch2 = (PORT_TYPE == "A") ? {1'b0,addr[APP_ADDR_WIDTH-4:0],2'b10} : {1'b1,addr[APP_ADDR_WIDTH-4:0],2'b10} ; 
assign app_addr_ch3 = (PORT_TYPE == "A") ? {1'b0,addr[APP_ADDR_WIDTH-4:0],2'b11} : {1'b1,addr[APP_ADDR_WIDTH-4:0],2'b11} ; 

assign   app_cmd_ch0 =  cmd;
assign   app_cmd_ch1 =  cmd;
assign   app_cmd_ch2 =  cmd;
assign   app_cmd_ch3 =  cmd;


assign app_wr_data_ch0 = app_addr_ch0;
assign app_wr_data_ch1 = app_addr_ch1;
assign app_wr_data_ch2 = app_addr_ch2;
assign app_wr_data_ch3 = app_addr_ch3;

assign rd_data_done = (rd_data_cnt[4] == 1'b1) ? 1'b1 : 1'b0;
//floping #(.DEPTH(2), .WIDTH(1)) floping_rd_data_done (.in(rd_data_done),     .out(rd_data_done_r),     .clk(clk), .rst(1'b0));
assign wr_rd_complete = rd_data_done_r;

assign exp_rd_data_ch0 = {exp_rd_data,2'b00};
assign exp_rd_data_ch1 = {exp_rd_data,2'b01};
assign exp_rd_data_ch2 = {exp_rd_data,2'b10};
assign exp_rd_data_ch3 = {exp_rd_data,2'b11};

// Count Write Commands
always@(posedge clk) begin
   if(rst || (!wr_mode)) begin
      wr_cmds_cnt <= #TCQ 0;
   end else if (app_cmd_en && (cmd == 2'b11) && (!wr_cmd_done) && app_rdy) begin
      wr_cmds_cnt <= #TCQ wr_cmds_cnt + 1'b1;
   end
end

assign wr_cmd_done = (wr_cmds_cnt[4] == 1'b1) ? 1'b1 : 1'b0;

// Count Read Commands
always@(posedge clk) begin
   if(rst || (!rd_mode)) begin
      rd_cmds_cnt <= #TCQ 0;
   end else if (app_cmd_en && (cmd == 2'b10) && (!rd_cmd_done) && app_rdy) begin
      rd_cmds_cnt <= #TCQ rd_cmds_cnt + 1'b1;
   end
end

assign rd_cmd_done = (rd_cmds_cnt[4] == 1'b1) ? 1'b1 : 1'b0;

//*******************************************************************************
// SIMULATION ONLY
//*******************************************************************************
reg compare_error_r;
always@(posedge clk) begin
  if(rst || rd_data_done_r || !init_calib_complete) begin
    rd_data_cnt <= #TCQ 0;
      if(PORT_TYPE == "A") begin
        exp_rd_data <= #TCQ 'h0;
      end else begin 
      	exp_rd_data[APP_DATA_WIDTH-1:APP_ADDR_WIDTH-2] <= 'h0; 
        exp_rd_data[APP_ADDR_WIDTH-3] <= #TCQ 1'b1;
        exp_rd_data[APP_ADDR_WIDTH-4:0] <= #TCQ 'h0;
      end
    compare_error_r <= #TCQ 1'b0;
  end else if (app_rd_data_valid_ch0) begin
    rd_data_done_r1 <= #TCQ rd_data_done;
    rd_data_done_r  <= #TCQ rd_data_done_r1;
    rd_data_cnt <= #TCQ rd_data_cnt + 1'b1;
    exp_rd_data <= #TCQ exp_rd_data + 1'b1;
    if((exp_rd_data_ch0  != app_rd_data_ch0) && (exp_rd_data_ch1  != app_rd_data_ch1) && (exp_rd_data_ch2  != app_rd_data_ch2) && (exp_rd_data_ch3  != app_rd_data_ch3) && init_calib_complete) begin		      
      compare_error_r  <= #TCQ 1'b1;
//synthesis translate_off
	  $display ("ERROR: PORT %s Expected data Vs Received Data = %h:%h:%h:%h::%h:%h:%h:%h @ %t",PORT_TYPE,exp_rd_data_ch0,exp_rd_data_ch1,exp_rd_data_ch2,exp_rd_data_ch3,app_rd_data_ch0,app_rd_data_ch1,app_rd_data_ch2,app_rd_data_ch3,$time);
//synthesis translate_on
    end		   
  end
end

always@(posedge clk) begin
  if(rst) compare_error <= 1'b0;
  else if(compare_error_r) compare_error <= 1'b1;
  else compare_error <= compare_error;
end
   
//*******************************************************************************

endmodule
