//*****************************************************************************
//*****************************************************************************
// This model is the property of Cypress Semiconductor Corp. and is protected**
// by the US copyright laws, any unauthorized copying and distribution is    **	
// prohibited. Cypress reserves the right to change any of the functional    **
// specifications without any prior notice.Cypress is not liable for any     **
// damages which may result from the use of this functional model.           **
//									     **
//  									     **	
// File name		:		qdr4_beh.v			     **
//									     **
// Date			:		May 12, 2014		     **	
//									     ** 									 
// Model		:		qdr4_beh.v (Two word burst   	     **
//					with QDR-IV Architecture)            **
// Part         :   CY7C4142KV13 (4Mx36, 144-Mbit QDR?-IV XP SRAM)     					                                     **
//									     **
// Revision		:		Rev 1.1             **
//									     **
//Revision history:							     **
//						1.0: Created new model	     **
//						1.1: Assigned dqa[16:9] = 8'ff and qvlda[1:0] = 2'b01 during configuration mode 			     **
// 									     **
// Queries		:		MID Applications		     **
//									     **
//					Webpage: www.cypress.com/support     **
//									     **
// Comments		: This is a functional model with most of the timings**
//			  and closely emulates the actual device. Select the **
//			  timing bin which you use from the below table.     **
//			  The model would still function even if the timings **
//			  are violated, but these are notified. 	     **
// Note			: The timing parameters given are PRELIMINARY  	     **
//			  and may change.				     **
//*****************************************************************************
//***************************************************************************** 
`timescale 1ns/1ps

`define Addrbits 22                             // (4M x 36)
`define Databits 36

`define M_B2A2B   1           	 // 1=B2A2b 0=B2A2
`define X36                   	 // X36 / X18
//`define M72                   	 // 72M option
//`define EN_GLOBAL_ODT  	         // Enable ODT
//`define EN_ADDR_INV          		 // Enable Address Invert
//`define EN_DATA_INV          		 // Enable Data Invert
//`define EN_ADDR_PARITY   		 // Enalbe Address Parity
`define EN_PORT              		 // Both A & B
//`define DISEN_PORT           		 // Disable PortA/B, not support
//`define EN_PORTA_ONLY        		 // Enable PortA only
//`define EN_PORTA_READ_ONLY    	 // PortA Read, PortB Write
`define READ_LATENCY   8      	 // =5 / 8 
`define WRITE_LATENCY  5      	 // =3 / 5 

/*************************************************************************/

module qdr4_beh (ck, ck_, addr, ainv, ap, pe_, lda_, ldb_, rwa_, rwb_,
		  dka, dka_, dkb, dkb_, qka, qka_, qkb, qkb_, qvlda, qvldb,
		  dqa, dinva, dqb, dinvb,
		  zq, rst_, cfg_, lbk0_, lbk1_,
		  trst_, tck, tms, tdi, tdo);

        parameter       addrbits = `Addrbits - 1;	  // Count Burst 2
        parameter       databits = `Databits;
        parameter       memsizes = 1 << `Addrbits;
        parameter       regdelay = 0.01;                   // 10ps
	parameter	RLATENCY = `READ_LATENCY;
	parameter	WLATENCY = `WRITE_LATENCY;
	parameter	RWLD = `READ_LATENCY - `WRITE_LATENCY;	//Delta of Read Write Latency

input ck;					// Addr/Command input clock
input ck_;          	                        // Addr/Command input diff clock
input [(addrbits - 1) : 0] addr;                // external address
input ainv;					// address inversion state
input ap;					// address parity
output pe_;					// address parity error
input lda_;					// portA load, sample at rising edge of ck
input ldb_;					// portB load, sample at falling edge of ck
input rwa_;					// portA read/write, sample at rising edge of ck
input rwb_;					// portB read/write, sample at falling edge of ck
input [1:0] dka;				// portA din clock, 0 for dqa[17:0], 1 for dqa[35:18]
input [1:0] dka_;				// portA din diff clock, 0 for dqa[17:0], 1 for dqa[35:18]
input [1:0] dkb;				// portB din clock, 0 for dqb[17:0], 1 for dqb[35:18]
input [1:0] dkb_;				// portB din diff clock, 0 for dqb[17:0], 1 for dqb[35:18]
output [1:0] qka;				// portA dout clock, 0 for dqa[17:0], 1 for dqa[35:18]
output [1:0] qka_;				// portA dout diff clock, 0 for dqa[17:0], 1 for dqa[35:18]
output [1:0] qkb;				// portB dout clock, 0 for dqb[17:0], 1 for dqb[35:18]
output [1:0] qkb_;				// portB dout diff clock, 0 for dqb[17:0], 1 for dqb[35:18]
output [1:0] qvlda;				// portA dout valid clock, 0 for dqa[17:0], 1 for dqa[35:18]
output [1:0] qvldb;				// portB dout valid clock, 0 for dqb[17:0], 1 for dqb[35:18]

inout [(databits - 1) : 0] dqa;                 // portA input/output data
inout [(databits - 1) : 0] dqb;                 // portB input/output data

inout [1:0] dinva;				// portA invert bit
inout [1:0] dinvb;				// portB invert bit

input zq;					// input/output impedance matching input
input rst_;					// Chip asynchronous reset
input cfg_;					// Config mode registers
input lbk0_;					// loopback mode for low count 00-(A[12:0]->DQA[12:0])
						// 			       01-(AINV, A[24:13]->DQA[12:0])
input lbk1_;					// loopback mode for command/clocks  10-(DK, LD, RW, AP->DQA)
input trst_;					// JTAG reset
input tck;					// JTAG clock
input tms;					// JTAG Mode control
input tdi;					// JTAG data input
output tdo;					// JTAG data output


reg [(databits - 1) : 0] marray [(memsizes - 1) : 0]; // Memory Array

reg [(addrbits - 1) : 0] rwa_addr_pipe[17:0];	// portA Address buffer input 
reg [(addrbits - 1) : 0] rwb_addr_pipe[17:0];	// portB Address buffer input 

reg ainva_reg;					// PortA address invert bit register
reg ainvb_reg;					// PortB address invert bit register

reg [21:0] apa_pipe;				// PortA address parity register
reg [21:0] apb_pipe;				// PortB address parity register

reg apa_reg;					// PE error register
reg apb_reg;					// PE error register

reg [21:0] ra_pipe;				// portA read pipe	N cycles Read Latency 
reg [21:0] rb_pipe;				// portB read pipe
reg [17:0] wa_pipe;				// portA write pipe	N-2 cycles Write Latency
reg [17:0] wb_pipe;				// portB write pipe

reg [(databits - 1) : 0] dina_reg;             // PortA Data input register
reg [(databits - 1) : 0] dinb_reg;             // PortB Data input register

reg [4 : 0] douta_inv [7 : 0];			// Data Out buffer
reg [4 : 0] doutb_inv [7 : 0];			// Data Out buffer

reg [(databits - 1) : 0] douta_reg0 [7 : 0];	// Data Out buffer
reg [(databits - 1) : 0] douta_reg1 [8 : 0];	// Data Out buffer
reg [(databits - 1) : 0] doutb_reg0 [7 : 0];	// Data Out buffer
reg [(databits - 1) : 0] doutb_reg1 [8 : 0];	// Data Out buffer
reg [(databits - 1) : 0] douta_reg;		// Data Out Register
reg [(databits - 1) : 0] doutb_reg;		// Data Out Register
reg [1:0] dinva_reg;				// Data invert register
reg [1:0] dinvb_reg;				// Data invert register
reg [1:0] dinva_buf;				// Data invert input register
reg [1:0] dinvb_buf;				// Data invert input register

reg [1:0] qvlda_reg;				// portA dout valid clock, 0 for dqa[17:0], 1 for dqa[35:18]
reg [1:0] qvldb_reg;				// portB dout valid clock, 0 for dqb[17:0], 1 for dqb[35:18]
assign qvlda = qvlda_reg;
assign qvldb = qvldb_reg;
reg pe_reg;					// Parity error output
assign pe_ = pe_reg;

reg bank_violate;				// Internal flag

wire [(addrbits - 1) : 0] addr_inv;		// Inverting address
wire [(databits - 1) : 0] dina_inv;             // PortA Data input invert
wire [(databits - 1) : 0] dinb_inv;             // PortB Data input invert 
wire ap_inv;					// Address parity invert

wire parity_err;
wire [1:0] port_en;

reg porta_r_only;
reg portb_w_only;
reg porta_r_en;
reg porta_w_en;
reg portb_r_en;
reg portb_w_en;

reg dk_chk;
reg [3:0] dka0_cnt;
reg [3:0] dka1_cnt;
reg [3:0] dkb0_cnt;
reg [3:0] dkb1_cnt;

//******** Loop Back ***********************************************
reg [12:0] lp_reg [32:0];

//******** Probe ***********************************************
wire [(addrbits - 1) : 0] addr_buf0 = rwa_addr_pipe[0]; 
wire [(databits - 1) : 0] douta_buf0 = douta_reg0[0];		// Data Out Register
wire [(databits - 1) : 0] douta_buf1 = douta_reg1[1];		// Data Out Register
wire [(databits - 1) : 0] douta_buf5 = douta_reg0[5];		// Data Out Register
wire [12:0] lp_reg_buf = lp_reg[0];


//*******************************************************
// Configuration
//*****************************************************************
reg pub;					// Internal power on reset
wire pub_trstb;

wire addr_ins;
wire read_ins;
wire write_ins;
wire intf_ins;
wire tmrs_ins;


wire [7:0] tm_data;

wire tmclk;
wire tmrst;
wire tmsel;
wire [7:0] tmdata;
wire [7:0] tmaddr;
wire tmrwb;

reg [7:0] i;

// Internal configuration registers
reg [7:0] cfg_term_ctl_0;                         // Termination control
                                                        // 7-ODT global enable 
                                                        // 6-ODT Auto update  
                                                        // 5-Addr/Cmd IU2      
                                                        // 4-Addr/Cmd IU1      
                                                        // 3-Addr/Cmd IU0
                                                        // 2-Clock Input KU2
                                                        // 1-Clock Input KU1
                                                        // 0-Clock Input KU0
reg [7:0] cfg_impd_ctl_1;                         // Impedance control
                                                        // 7-Pull Down PD1      
                                                        // 6-Pull Down PD0
                                                        // 5-Pull Up PU1
                                                        // 4-Pull Up PU0
							// 3-Unused
                                                        // 2-Data Input QU2
                                                        // 1-Data Input QU1
                                                        // 0-Data Input QU0
reg [7:0] cfg_opt_ctl_2;                          // Option control 
                                                        // 7-Write train enable
                                                        // 6-Data Inv enable
                                                        // 5-Addr Inv enable
                                                        // 4-Addr Parity enable
                                                        // 3-PLL disable
							// 2-I/O Type
                                                        // 1-Port enable pen1
                                                        // 0-Port enable pen0
reg [7:0] cfg_func_ctl_3;                         // Function control
                                                        // 7-Unused
                                                        // 6-Unused
                                                        // 5-Unused
                                                        // 4-Unused
                                                        // 3-Unused
                                                        // 2-Unused
                                                        // 1-Unused
                                                        // 0-Addr parity clear
reg [7:0] parity_status_0;                      // Address parity status register0
							// 7-Unused
                                                        // 6-PortB Error Count1
                                                        // 5-PortB Error Count0
                                                        // 4-PortA Error Count1
                                                        // 3-PortA Error Count0
                                                        // 2-PortA/B Error 
                                                        // 1:0-Address 25:24
reg [7:0] parity_status_1;                      // Address parity status register1
                                                        // 7:0-Address 23:16
reg [7:0] parity_status_2;                      // Address parity status register2
                                                        // 7:0-Address 15:8
reg [7:0] parity_status_3;                      // Address parity status register3
                                                        // 7:0-Address 7:0


reg [1:0] parity_cnt_a;				// portA address parity error count
reg [1:0] parity_cnt_b;				// portB address parity error count
wire key_en;
reg [7:0] rdata, rdata_buf;			
reg r_en;

wire [(databits-1) : 0] data_0;			// zero data bus

wire [7:0] probe_0;				
wire [(addrbits+3) : 0] probe_1;		// Content address memory bank7 probe

// ********************************************************************************
`ifdef EN_PORT
  assign port_en = 2'b11;
`else
  `ifdef DISEN_PORT
     assign port_en = 2'b10;
  `else
     `ifdef EN_PORTA_ONLY
         assign port_en = 2'b01;
     `else
        `ifdef EN_PORTA_READ_ONLY
            assign port_en = 2'b00;
	`else
            assign port_en = cfg_opt_ctl_2[1:0];
	`endif
    `endif
  `endif
`endif

assign data_0 = 0;

assign dqa = (port_en[0] == 1'b0) ? ((lbk0_ & lbk1_) ? (cfg_ ? douta_reg[(databits-1):0] : {douta_reg[35:8], tm_data}) : {data_0[(databits-1):13],lp_reg[0]}) :
        ((lbk0_ & lbk1_) ? (cfg_ ? douta_reg[(databits-1):0] : {douta_reg[35:26],8'hff, douta_reg[17:8], tm_data}) : {data_0[(databits-1):13],lp_reg[0]});
assign dqb = (lbk0_ & lbk1_) ? doutb_reg : data_0[(databits-1): 0];
assign dinva = dinva_reg;
assign dinvb = dinvb_reg;

assign qka = {ck, ck};
assign qka_ = {ck_, ck_};
assign qkb = {ck, ck};
assign qkb_ = {ck_, ck_};

`ifdef EN_DATA_INV
	assign dina_inv = {(dinva[1] ? ~dqa[databits-1 : databits/2] : dqa[databits-1 : databits/2]),
       		            (dinva[0] ? ~dqa[databits/2-1 : 0 ] : dqa[databits/2 - 1 : 0])};
	assign dinb_inv = {(dinvb[1] ? ~dqb[databits-1 : databits/2] : dqb[databits-1 : databits/2]),
                    	    (dinvb[0] ? ~dqb[databits/2-1 : 0 ] : dqb[databits/2 - 1 : 0])};
`else
	assign dina_inv = (cfg_opt_ctl_2[6] && ~cfg_opt_ctl_2[7]) ? 
			   ({(dinva[1] ? ~dqa[databits-1 : databits/2] : dqa[databits-1 : databits/2]),
       		             (dinva[0] ? ~dqa[databits/2-1 : 0 ] : dqa[databits/2 - 1 : 0])}) : dqa;
        assign dinb_inv = (cfg_opt_ctl_2[6] && ~cfg_opt_ctl_2[7]) ?
			   ({(dinvb[1] ? ~dqb[databits-1 : databits/2] : dqb[databits-1 : databits/2]),
                    	     (dinvb[0] ? ~dqb[databits/2-1 : 0 ] : dqb[databits/2 - 1 : 0])}) : dqb;
`endif

`ifdef EN_ADDR_INV
	assign addr_inv = ainv ? ~addr : addr;
	assign ap_inv = ainv ? ~ap : ap;
`else
	assign addr_inv = cfg_opt_ctl_2[5] ? (ainv ? ~addr : addr) : addr;
	assign ap_inv = cfg_opt_ctl_2[5] ? (ainv ? ~ap : ap) : ap;
`endif

`ifdef EN_ADDR_PARITY
	assign parity_err = (^addr_inv)^ap_inv;
`else
	assign parity_err = cfg_opt_ctl_2[4] ? (^addr_inv)^ap_inv : 1'b0;
`endif

wire odta_ctl = (port_en[0] === 1'b1) ? 1'b0 : 1'b1;
wire odtb_ctl = ((port_en === 2'b00) || (port_en === 2'b11)) ? 1'b0 : 1'b1;

// ODT is not significant with functionality check 

/*
`ifdef EN_GLOBAL_ODT
      rpmos iODT_QA[(databits-1):0] (dqa, ~data_0[(databits-1):0],  (odta_ctl || ~(cfg_opt_ctl_2[2]===1'b1)) );
      rpmos iODT_DINVA[1:0] (dinva, 2'b11, (odta_ctl || ~(cfg_opt_ctl_2[2]===1'b1)) );
      rpmos iODT_QB[(databits-1):0] (dqb, ~data_0[(databits-1):0],  (odtb_ctl || ~(cfg_opt_ctl_2[2]===1'b1)) );
      rpmos iODT_DINVB[1:0] (dinvb, 2'b11, (odtb_ctl || ~(cfg_opt_ctl_2[2]===1'b1)) );
`else
      rpmos iODT_QA[(databits-1):0] (dqa, ~data_0[(databits-1):0],  (odta_ctl || ~(cfg_term_ctl_0[7] === 1'b1) || ~(cfg_opt_ctl_2[2]===1'b1)) );
      rpmos iODT_DINVA[1:0] (dinva, 2'b11, (odta_ctl || ~(cfg_term_ctl_0[7] === 1'b1) || ~(cfg_opt_ctl_2[2]===1'b1)) );
      rpmos iODT_QB[(databits-1):0] (dqb, ~data_0[(databits-1):0], (odta_ctl || ~(cfg_term_ctl_0[7] === 1'b1) || ~(cfg_opt_ctl_2[2]===1'b1)) );
      rpmos iODT_DINVB[1:0] (dinvb, 2'b11, (odta_ctl || ~(cfg_term_ctl_0[7] === 1'b1)|| ~(cfg_opt_ctl_2[2]===1'b1)) );
`endif
*/
assign pub_trstb = pub & trst_;
		
initial
   begin
	  pub = 1'b0;
          pe_reg = 1'b1;
          qvlda_reg = 2'b00;
          qvldb_reg = 2'b00;
          dka0_cnt = 4'h0;
          dka1_cnt = 4'h0;
          dkb0_cnt = 4'h0;
          dkb1_cnt = 4'h0;

	  parity_cnt_a = 2'b00;
	  parity_cnt_b = 2'b00;

	  dk_chk = 1'b0;
	  #1
	  pub = 1'b1;
	  #10000000				// do DK check after 10mS
	  dk_chk = 1'b1;
   end

always @(posedge dka[0] or posedge dka_[0])
     if (dka0_cnt <= 4'hd)
        dka0_cnt = dka0_cnt + 1;

always @(posedge dka[1] or posedge dka_[1])
     if (dka1_cnt <= 4'hd) 
        dka1_cnt = dka1_cnt + 1;
    
always @(posedge dkb[0] or posedge dkb_[0])
     if (dkb0_cnt <= 4'hd)
        dkb0_cnt = dkb0_cnt + 1;

always @(posedge dkb[1] or posedge dkb_[1])
     if (dkb1_cnt <= 4'hd)
        dkb1_cnt = dkb1_cnt + 1;

always @(posedge ck or posedge ck_)
  if (dk_chk === 1'b1)
   begin
 
	 if ((dka0_cnt < 4'h8) && (port_en != 2'b00))
       begin
        $display("Missing dka[0] clock \n");
     	$finish;
       end
     if ((dka1_cnt < 4'h8) && (port_en != 2'b00))  
       begin
        $display("Missing dka[1] clock \n");
     	$finish;
       end
     if ((dkb0_cnt < 4'h8) && (~^port_en))
       begin
        $display("Missing dkb[0] clock \n");
     	$finish;
       end
     if ((dkb1_cnt < 4'h8) && (~^port_en))
       begin
        $display("Missing dkb[1] clock \n");
     	$finish;
       end
   end 


always @(posedge ck or posedge ck_ or negedge rst_ or negedge pub or negedge cfg_ or negedge lbk0_ or negedge lbk1_ or r_en)
begin
  if (pub === 1'b0)
   begin 
	apa_reg = 1'b0;
	apb_reg = 1'b0;
	qvlda_reg = 2'bzz;
	qvldb_reg = 2'bzz;
  	porta_r_only = 1'b0;
  	portb_w_only = 1'b0;
  	porta_r_en = 1'b1;
  	porta_w_en = 1'b1;
  	portb_r_en = 1'b1;
  	portb_w_en = 1'b1;
   end
  else
   if (rst_ === 1'b0)
     begin
	  apa_reg = 1'b0;
	  apb_reg = 1'b0;
	  if (port_en == 2'b00)
	     begin
  		porta_r_only = 1'b1;
  		portb_w_only = 1'b1;
	  	porta_r_en = 1'b1;
	  	porta_w_en = 1'b0;
	  	portb_r_en = 1'b0;
	  	portb_w_en = 1'b1;
	  	qvlda_reg = 2'b00;
	  	qvldb_reg = 2'bzz;
	     end
	  else
	     if (port_en == 2'b01)
	    	 begin
  			porta_r_only = 1'b0;
  			portb_w_only = 1'b0;
	  		porta_r_en = 1'b1;
	  		porta_w_en = 1'b1;
	  		portb_r_en = 1'b0;
	  		portb_w_en = 1'b0;
	  		qvlda_reg = 2'b00;
	  		qvldb_reg = 2'bzz;
	     	end
	     else
	       if (port_en == 2'b10)
	    	 begin
  			porta_r_only = 1'b0;
  			portb_w_only = 1'b0;
	  		porta_r_en = 1'b0;
	  		porta_w_en = 1'b0;
	  		portb_r_en = 1'b0;
	  		portb_w_en = 1'b0;
	  		qvlda_reg = 2'bzz;
	  		qvldb_reg = 2'bzz;
	     	 end
	     else
	    	 begin
  			porta_r_only = 1'b0;
  			portb_w_only = 1'b0;
	  		porta_r_en = 1'b1;
	  		porta_w_en = 1'b1;
	  		portb_r_en = 1'b1;
	  		portb_w_en = 1'b1;
	  		qvlda_reg = 2'b00;
	  		qvldb_reg = 2'b00;
	     	 end
      end
    else
if (cfg_ === 1'b0)
	  begin
	   #0.1;
	      if (r_en === 1'b1)
	  	 qvlda_reg = 2'b01;
	      else
	  	 qvlda_reg = 2'b00;

	      qvldb_reg = 2'bzz;
	  end
	else
          if ((lbk0_ === 1'b0) || (lbk1_ === 1'b0))
	    begin

	  	qvlda_reg = 2'bzz;
	  	qvldb_reg = 2'bzz;
	    end
	end

always @(posedge ck or posedge ck_)
  begin
	#regdelay;
	#regdelay;

 	dina_reg = dina_inv;
 	dinb_reg = dinb_inv;

	dinva_buf = dinva;
	dinvb_buf = dinvb;
  end

always @(posedge ck)
  begin
	#regdelay;
	#regdelay;
	bank_violate = 1'b0;
	// need check lbk0_/lbk1_ conditions
  	if ((lda_ === 1'b0) && ((porta_r_en === 1'b1) || (porta_w_en === 1'b1)) && cfg_ && (lbk0_ & lbk1_))
	 begin
	  if ((rwa_ === 1'b0) && (porta_w_en === 1'b1))
	     begin
		wa_pipe[WLATENCY*2+1] = 1'b1;
	     end
	  else
	     if (((rwa_ === 1'b1) && (porta_r_en === 1'b1)) || (porta_r_only === 1'b1))
		    ra_pipe[RLATENCY*2+1] = 1'b1;
 	  rwa_addr_pipe[WLATENCY*2+1] = addr_inv;
	
	  if (parity_err === 1'b0)
	     begin
	 	apa_pipe[RLATENCY*2+1] = 1'b0;
		apa_reg = 1'b0;
	     end
	  else
	     begin
	       	apa_pipe[RLATENCY*2+1] = 1'b1;
		apa_reg = 1'b1;
	     end

	  if (parity_err === 1'b1)
	   begin
	    if ((parity_cnt_a === 2'b00) && (parity_cnt_b === 2'b00))
	       begin
		    parity_status_0 = {parity_cnt_b, parity_cnt_a, 1'b0, ainv, 1'b0, 1'b0};
		    `ifdef X36
		      parity_status_1 = {3'b000, addr[(addrbits-1):16]};
 		    `else
		      parity_status_1 = {2'b00, addr[(addrbits-1):16]};
		    `endif
		    parity_status_2 = addr[15:8];
		    parity_status_3 = addr[7:0];
	       end

	    if (parity_cnt_a !== 2'b11)
		parity_cnt_a = parity_cnt_a + 1;

	    parity_status_0[5:4] = parity_cnt_a;
	   end

         end
  end
	  
always @(posedge ck_)
  begin
	#regdelay;
	#regdelay;
	// lbk0_/lbk1_ conditions will not block memory access
  	if ((ldb_ === 1'b0) && ((portb_r_en == 1'b1) || (portb_w_en === 1'b1)) && cfg_ && (lbk0_ & lbk1_))
         begin
	   if ((rwa_addr_pipe[WLATENCY*2][2:0] == addr_inv[2:0]) && (`M_B2A2B === 1))
		bank_violate = 1'b1;				//block access, no qvalid
	   else
	      begin
	        if (((rwb_ === 1'b0) && (portb_w_en === 1'b1)) || (portb_w_only === 1'b1))
		   begin
		   	wb_pipe[WLATENCY*2+1] = 1'b1;
		   end
	  	else
	  	   if ((rwb_ === 1'b1) && (portb_r_en === 1'b1))
			rb_pipe[RLATENCY*2+1] = 1'b1;
	  	rwb_addr_pipe[WLATENCY*2+1] = addr_inv;
	      end

	    if (parity_err === 1'b0)				//block write, read is still continue
	      begin
	         apb_pipe[RLATENCY*2+1] = 1'b0;
		 apb_reg = 1'b0;
	      end
	    else
	      begin
	         apb_pipe[RLATENCY*2+1] = 1'b1;
		 apb_reg = 1'b1;
	      end

          if (parity_err === 1'b1)
           begin
            if ((parity_cnt_a === 2'b00) && (parity_cnt_b === 2'b00))
               begin
                    parity_status_0 = {parity_cnt_b, parity_cnt_a, 1'b1, ainv, 2'b00};
                    `ifdef X36
                      parity_status_1 = {3'b000, addr[(addrbits-1):16]};
                    `else
                      parity_status_1 = {2'b00, addr[(addrbits-1):16]};
                    `endif
                    parity_status_2 = addr[15:8];
                    parity_status_3 = addr[7:0];
               end

            if (parity_cnt_b !== 2'b11)
                parity_cnt_b = parity_cnt_b + 1;
	    
	    parity_status_0[7:6] = parity_cnt_b;
	   end

	  end
   end
         
always @(posedge ck or posedge ck_)
  begin
        #regdelay;

	wa_pipe[0] = wa_pipe[1];			// PortA Write control pipe
	wa_pipe[1] = wa_pipe[2];
	wa_pipe[2] = wa_pipe[3];
	wa_pipe[3] = wa_pipe[4];
	wa_pipe[4] = wa_pipe[5];
	wa_pipe[5] = wa_pipe[6];
	wa_pipe[6] = wa_pipe[7];
	wa_pipe[7] = wa_pipe[8];
	wa_pipe[8] = wa_pipe[9];
	wa_pipe[9] = wa_pipe[10];
	wa_pipe[10] = wa_pipe[11];
	wa_pipe[11] = wa_pipe[12];
	wa_pipe[12] = wa_pipe[13];
	wa_pipe[13] = wa_pipe[14];
	wa_pipe[14] = wa_pipe[15];
	wa_pipe[15] = wa_pipe[16];
	wa_pipe[16] = wa_pipe[17];
	wa_pipe[17] = 1'bx;

	wb_pipe[0] = wb_pipe[1];			// PortB Write control pipe
	wb_pipe[1] = wb_pipe[2];
	wb_pipe[2] = wb_pipe[3];
	wb_pipe[3] = wb_pipe[4];
	wb_pipe[4] = wb_pipe[5];
	wb_pipe[5] = wb_pipe[6];
	wb_pipe[6] = wb_pipe[7];
	wb_pipe[7] = wb_pipe[8];
	wb_pipe[8] = wb_pipe[9];
	wb_pipe[9] = wb_pipe[10];
	wb_pipe[10] = wb_pipe[11];
	wb_pipe[11] = wb_pipe[12];
	wb_pipe[12] = wb_pipe[13];
	wb_pipe[13] = wb_pipe[14];
	wb_pipe[14] = wb_pipe[15];
	wb_pipe[15] = wb_pipe[16];
	wb_pipe[16] = wb_pipe[17];
	wb_pipe[17] = 1'bx;

	ra_pipe[0] = ra_pipe[1];			// PortA Read control pipe
	ra_pipe[1] = ra_pipe[2];
	ra_pipe[2] = ra_pipe[3];
	ra_pipe[3] = ra_pipe[4];
	ra_pipe[4] = ra_pipe[5];
	ra_pipe[5] = ra_pipe[6];
	ra_pipe[6] = ra_pipe[7];
	ra_pipe[7] = ra_pipe[8];
	ra_pipe[8] = ra_pipe[9];
	ra_pipe[9] = ra_pipe[10];
	ra_pipe[10] = ra_pipe[11];
	ra_pipe[11] = ra_pipe[12];
	ra_pipe[12] = ra_pipe[13];
	ra_pipe[13] = ra_pipe[14];
	ra_pipe[14] = ra_pipe[15];
	ra_pipe[15] = ra_pipe[16];
	ra_pipe[16] = ra_pipe[17];
	ra_pipe[17] = ra_pipe[18];
	ra_pipe[18] = ra_pipe[19];
	ra_pipe[19] = ra_pipe[20];
	ra_pipe[20] = ra_pipe[21];
	ra_pipe[21] = 1'bx;

	rb_pipe[0] = rb_pipe[1];			// PortB read control pipe
	rb_pipe[1] = rb_pipe[2];
	rb_pipe[2] = rb_pipe[3];
	rb_pipe[3] = rb_pipe[4];
	rb_pipe[4] = rb_pipe[5];
	rb_pipe[5] = rb_pipe[6];
	rb_pipe[6] = rb_pipe[7];
	rb_pipe[7] = rb_pipe[8];
	rb_pipe[8] = rb_pipe[9];
	rb_pipe[9] = rb_pipe[10];
	rb_pipe[10] = rb_pipe[11];
	rb_pipe[11] = rb_pipe[12];
	rb_pipe[12] = rb_pipe[13];
	rb_pipe[13] = rb_pipe[14];
	rb_pipe[14] = rb_pipe[15];
	rb_pipe[15] = rb_pipe[16];
	rb_pipe[16] = rb_pipe[17];
	rb_pipe[17] = rb_pipe[18];
	rb_pipe[18] = rb_pipe[19];
	rb_pipe[19] = rb_pipe[20];
	rb_pipe[20] = rb_pipe[21];
	rb_pipe[21] = 1'bx;

	rwa_addr_pipe[0] = rwa_addr_pipe[1];		// PortA address pipe
	rwa_addr_pipe[1] = rwa_addr_pipe[2];
	rwa_addr_pipe[2] = rwa_addr_pipe[3];
	rwa_addr_pipe[3] = rwa_addr_pipe[4];
	rwa_addr_pipe[4] = rwa_addr_pipe[5];
	rwa_addr_pipe[5] = rwa_addr_pipe[6];
	rwa_addr_pipe[6] = rwa_addr_pipe[7];
	rwa_addr_pipe[7] = rwa_addr_pipe[8];
	rwa_addr_pipe[8] = rwa_addr_pipe[9];
	rwa_addr_pipe[9] = rwa_addr_pipe[10];
	rwa_addr_pipe[10] = rwa_addr_pipe[11];
	rwa_addr_pipe[11] = rwa_addr_pipe[12];
	rwa_addr_pipe[12] = rwa_addr_pipe[13];
	rwa_addr_pipe[13] = rwa_addr_pipe[14];
	rwa_addr_pipe[14] = rwa_addr_pipe[15];
	rwa_addr_pipe[15] = rwa_addr_pipe[16];
	rwa_addr_pipe[16] = rwa_addr_pipe[17];
	rwa_addr_pipe[17] = {addrbits{1'bx}};

	rwb_addr_pipe[0] = rwb_addr_pipe[1];		// PortB address pipe
	rwb_addr_pipe[1] = rwb_addr_pipe[2];
	rwb_addr_pipe[2] = rwb_addr_pipe[3];
	rwb_addr_pipe[3] = rwb_addr_pipe[4];
	rwb_addr_pipe[4] = rwb_addr_pipe[5];
	rwb_addr_pipe[5] = rwb_addr_pipe[6];
	rwb_addr_pipe[6] = rwb_addr_pipe[7];
	rwb_addr_pipe[7] = rwb_addr_pipe[8];
	rwb_addr_pipe[8] = rwb_addr_pipe[9];
	rwb_addr_pipe[9] = rwb_addr_pipe[10];
	rwb_addr_pipe[10] = rwb_addr_pipe[11];
	rwb_addr_pipe[11] = rwb_addr_pipe[12];
	rwb_addr_pipe[12] = rwb_addr_pipe[13];
	rwb_addr_pipe[13] = rwb_addr_pipe[14];
	rwb_addr_pipe[14] = rwb_addr_pipe[15];
	rwb_addr_pipe[15] = rwb_addr_pipe[16];
	rwb_addr_pipe[16] = rwb_addr_pipe[17];
	rwb_addr_pipe[17] = {addrbits{1'bx}};

	apa_pipe[0] = apa_pipe[1];			// PortA address parity error pipe
	apa_pipe[1] = apa_pipe[2];
	apa_pipe[2] = apa_pipe[3];
	apa_pipe[3] = apa_pipe[4];
	apa_pipe[4] = apa_pipe[5];
	apa_pipe[5] = apa_pipe[6];
	apa_pipe[6] = apa_pipe[7];
	apa_pipe[7] = apa_pipe[8];
	apa_pipe[8] = apa_pipe[9];
	apa_pipe[9] = apa_pipe[10];
	apa_pipe[10] = apa_pipe[11];
	apa_pipe[11] = apa_pipe[12];
	apa_pipe[12] = apa_pipe[13];
	apa_pipe[13] = apa_pipe[14];
	apa_pipe[14] = apa_pipe[15];
	apa_pipe[15] = apa_pipe[16];
	apa_pipe[16] = apa_pipe[17];
	apa_pipe[17] = apa_pipe[18];
	apa_pipe[18] = apa_pipe[19];
	apa_pipe[19] = apa_pipe[20];
	apa_pipe[20] = apa_pipe[21];
	apa_pipe[21] = 1'b0;

	apb_pipe[0] = apb_pipe[1];			// PortB address parity error pipe
	apb_pipe[1] = apb_pipe[2];
	apb_pipe[2] = apb_pipe[3];
	apb_pipe[3] = apb_pipe[4];
	apb_pipe[4] = apb_pipe[5];
	apb_pipe[5] = apb_pipe[6];
	apb_pipe[6] = apb_pipe[7];
	apb_pipe[7] = apb_pipe[8];
	apb_pipe[8] = apb_pipe[9];
	apb_pipe[9] = apb_pipe[10];
	apb_pipe[10] = apb_pipe[11];
	apb_pipe[11] = apb_pipe[12];
	apb_pipe[12] = apb_pipe[13];
	apb_pipe[13] = apb_pipe[14];
	apb_pipe[14] = apb_pipe[15];
	apb_pipe[15] = apb_pipe[16];
	apb_pipe[16] = apb_pipe[17];
	apb_pipe[17] = apb_pipe[18];
	apb_pipe[18] = apb_pipe[19];
	apb_pipe[19] = apb_pipe[20];
	apb_pipe[20] = apb_pipe[21];
	apb_pipe[21] = 1'b0;

	douta_inv[0] = douta_inv[1];
	douta_inv[1] = douta_inv[2];
	douta_inv[2] = douta_inv[3];
	douta_inv[3] = douta_inv[4];
	douta_inv[4] = douta_inv[5];
	douta_inv[5] = douta_inv[6];
	douta_inv[6] = douta_inv[7];
	douta_inv[7] = 5'bxxxx0; 

	doutb_inv[0] = doutb_inv[1];
	doutb_inv[1] = doutb_inv[2];
	doutb_inv[2] = doutb_inv[3];
	doutb_inv[3] = doutb_inv[4];
	doutb_inv[4] = doutb_inv[5];
	doutb_inv[5] = doutb_inv[6];
	doutb_inv[6] = doutb_inv[7];
	doutb_inv[7] = 5'bxxxx0; 

	douta_reg0[0] = douta_reg0[1];			// PortA output data phase 0 pipe
	douta_reg0[1] = douta_reg0[2];	
	douta_reg0[2] = douta_reg0[3];
	douta_reg0[3] = douta_reg0[4];		
	douta_reg0[4] = douta_reg0[5];	
	douta_reg0[5] = douta_reg0[6];
	douta_reg0[6] = douta_reg0[7];
	douta_reg0[7] = 1'b0;

	douta_reg1[0] = douta_reg1[1];			// PortA output data phase 1 pipe
	douta_reg1[1] = douta_reg1[2];		
	douta_reg1[2] = douta_reg1[3];			
	douta_reg1[3] = douta_reg1[4];		
	douta_reg1[4] = douta_reg1[5];
	douta_reg1[5] = douta_reg1[6];
	douta_reg1[6] = douta_reg1[7];
	douta_reg1[7] = douta_reg1[8];
	douta_reg1[8] = 1'b0;

	doutb_reg0[0] = doutb_reg0[1];			// PortB output data phase 0 pipe
	doutb_reg0[1] = doutb_reg0[2];
	doutb_reg0[2] = doutb_reg0[3];			
	doutb_reg0[3] = doutb_reg0[4];
	doutb_reg0[4] = doutb_reg0[5];
	doutb_reg0[5] = doutb_reg0[6];
	doutb_reg0[6] = doutb_reg0[7];
	doutb_reg0[7] = 1'b0;

	doutb_reg1[0] = doutb_reg1[1];			// PortB output data phase 1 pipe
	doutb_reg1[1] = doutb_reg1[2];
	doutb_reg1[2] = doutb_reg1[3];	
	doutb_reg1[3] = doutb_reg1[4];			
	doutb_reg1[4] = doutb_reg1[5];		
	doutb_reg1[5] = doutb_reg1[6];
	doutb_reg1[6] = doutb_reg1[7];
	doutb_reg1[7] = doutb_reg1[8];
	doutb_reg1[8] = 1'b0;

 	// internal write
	if ((wa_pipe[0] === 1'b1) && (apa_pipe[RWLD*2] === 1'b0))
	   begin
		marray[{rwa_addr_pipe[0],1'b0}] = dina_reg;		// phase 0
		if (cfg_opt_ctl_2[7] === 1'b1)				// Write Training enable
		   marray[{rwa_addr_pipe[0],1'b1}] = ~dina_reg;
		else
		   marray[{rwa_addr_pipe[0],1'b1}] = dina_inv;		// phase 1
	   end

	if ((wb_pipe[0] === 1'b1) && (apb_pipe[RWLD*2] === 1'b0))
	   begin
		marray[{rwb_addr_pipe[0],1'b0}] = dinb_reg;
		if (cfg_opt_ctl_2[7] === 1'b1)				// Write Training enable
		   marray[{rwb_addr_pipe[0],1'b1}] = ~dinb_reg;
	 	else
		   marray[{rwb_addr_pipe[0],1'b1}] = dinb_inv;
	   end

	// internal read
	if (ra_pipe[RWLD*2] === 1'b1)
	   begin
    		douta_reg0[RWLD*2] = marray[{rwa_addr_pipe[0],1'b0}];	// phase 0
    		douta_reg1[RWLD*2] = marray[{rwa_addr_pipe[0],1'b1}];	// phase 1
	   end

	if (rb_pipe[RWLD*2] === 1'b1)
	   begin
    		doutb_reg0[RWLD*2] = marray[{rwb_addr_pipe[0],1'b0}];
    		doutb_reg1[RWLD*2] = marray[{rwb_addr_pipe[0],1'b1}];
	   end

	if (ra_pipe[2] === 1'b1)
		qvlda_reg = 2'b11;
        else
	  if ((ra_pipe[1] !== 1'b1) && (qvlda_reg === 2'b11))
		qvlda_reg = 2'b00;
	  
	if (ra_pipe[1] === 1'b1)
	  begin
	    `ifdef EN_DATA_INV
	       begin
		if (douta_inv[1][0] === 1'b1)
		   begin
			douta_reg = {(douta_inv[1][4] ? ~(douta_reg0[1][databits-1:databits/2]) : 
				               		 (douta_reg0[1][databits-1:databits/2])), 
				     (douta_inv[1][3] ? ~(douta_reg0[1][databits/2-1:0]) : 
							 (douta_reg0[1][databits/2-1:0]))};
			dinva_reg = douta_inv[1][4:3];
		   end
		else
		   begin
			douta_reg = {func_inv_data(douta_reg0[1][databits-1:databits/2]),
		      		     func_inv_data(douta_reg0[1][databits/2-1:0]) };
			dinva_reg = {func_inv_bit(douta_reg0[1][databits-1:databits/2]),
				     func_inv_bit(douta_reg0[1][databits/2-1:0]) };
		   end
               end
	    `else
	      if ((cfg_opt_ctl_2[6] === 1'b1) && (cfg_opt_ctl_2[7] === 1'b0))
		if (douta_inv[1][0] === 1'b1)
		   begin
			douta_reg = {(douta_inv[1][4] ? ~(douta_reg0[1][databits-1:databits/2]) : 
				               		 (douta_reg0[1][databits-1:databits/2])), 
				     (douta_inv[1][3] ? ~(douta_reg0[1][databits/2-1:0]) : 
							 (douta_reg0[1][databits/2-1:0]))};
			dinva_reg = douta_inv[1][4:3];
		   end
		else
	           begin
		        douta_reg = {func_inv_data(douta_reg0[1][databits-1:databits/2]),
		      		     func_inv_data(douta_reg0[1][databits/2-1:0]) };
			dinva_reg = {func_inv_bit(douta_reg0[1][databits-1:databits/2]),
				     func_inv_bit(douta_reg0[1][databits/2-1:0]) };
                   end
	      else
	       begin
		douta_reg = douta_reg0[1];
		dinva_reg = 2'b00;
	       end
	    `endif
	 end
	else
	    begin
	   	 if (ra_pipe[0] === 1'b1)
		   begin
	    	   `ifdef EN_DATA_INV
			if (douta_inv[0][0] === 1'b1)
		   	  begin
				douta_reg = {(douta_inv[0][2] ? ~(douta_reg1[0][databits-1:databits/2]) : 
					               		 (douta_reg1[0][databits-1:databits/2])), 
					     (douta_inv[0][1] ? ~(douta_reg1[0][databits/2-1:0]) : 
								 (douta_reg1[0][databits/2-1:0]))};
				dinva_reg = douta_inv[0][2:1];
		          end
		        else
		          begin
				douta_reg = {func_inv_data(douta_reg1[0][databits-1:databits/2]),
		      	  	   	     func_inv_data(douta_reg1[0][databits/2-1:0]) };
				dinva_reg = {func_inv_bit(douta_reg1[0][databits-1:databits/2]),
					     func_inv_bit(douta_reg1[0][databits/2-1:0]) };
		          end
		   `else
	      	     if ((cfg_opt_ctl_2[6] === 1'b1) && (cfg_opt_ctl_2[7] === 1'b0))
			if (douta_inv[0][0] === 1'b1)
		   	  begin
				douta_reg = {(douta_inv[0][2] ? ~(douta_reg1[0][databits-1:databits/2]) : 
					               		 (douta_reg1[0][databits-1:databits/2])), 
					     (douta_inv[0][1] ? ~(douta_reg1[0][databits/2-1:0]) : 
								 (douta_reg1[0][databits/2-1:0]))};
				dinva_reg = douta_inv[0][2:1];
		          end
		        else
		          begin
				douta_reg = {func_inv_data(douta_reg1[0][databits-1:databits/2]),
		      	     		     func_inv_data(douta_reg1[0][databits/2-1:0]) };
				dinva_reg = {func_inv_bit(douta_reg1[0][databits-1:databits/2]),
					     func_inv_bit(douta_reg1[0][databits/2-1:0]) };
		          end
		     else
		      begin
			douta_reg = douta_reg1[0];
			if (cfg_opt_ctl_2[7] === 1'b1)
				dinva_reg = 2'b11;
			else
			      	dinva_reg = 2'b00;
		      end
		   `endif
		  end
	    	 else
		    begin
			douta_reg = {databits{1'bz}};
        		if ((lbk0_ === 1'b0) || (lbk1_ === 1'b0))
				dinva_reg = 2'b00;
			else
				dinva_reg = 2'bzz;
		    end
	     end

	if (rb_pipe[2] === 1'b1)
		qvldb_reg = 2'b11;
        else
	   if ((rb_pipe[1] !== 1'b1) && (qvldb_reg === 2'b11))
		qvldb_reg = 2'b00;

	if (rb_pipe[1] === 1'b1)
	  begin
	    `ifdef EN_DATA_INV
		if (doutb_inv[1][0] === 1'b1)
		   begin
			doutb_reg = {(doutb_inv[1][4] ? ~(doutb_reg0[1][databits-1:databits/2]) : 
				               		 (doutb_reg0[1][databits-1:databits/2])), 
				     (doutb_inv[1][3] ? ~(doutb_reg0[1][databits/2-1:0]) : 
							 (doutb_reg0[1][databits/2-1:0]))};
			dinvb_reg = doutb_inv[1][4:3];
		   end
		else
	           begin
			doutb_reg = {func_inv_data(doutb_reg0[1][databits-1:databits/2]),
		      		     func_inv_data(doutb_reg0[1][databits/2-1:0]) };
			dinvb_reg = {func_inv_bit(doutb_reg0[1][databits-1:databits/2]),
				     func_inv_bit(doutb_reg0[1][databits/2-1:0]) };
                   end
	    `else
	      if ((cfg_opt_ctl_2[6] === 1'b1) && (cfg_opt_ctl_2[7] === 1'b0))
		if (doutb_inv[1][0] === 1'b1)
		   begin
			doutb_reg = {(doutb_inv[1][4] ? ~(doutb_reg0[1][databits-1:databits/2]) : 
				               		 (doutb_reg0[1][databits-1:databits/2])), 
				     (doutb_inv[1][3] ? ~(doutb_reg0[1][databits/2-1:0]) : 
							 (doutb_reg0[1][databits/2-1:0]))};
			dinvb_reg = doutb_inv[1][4:3];
		   end
		else
	           begin
			doutb_reg = {func_inv_data(doutb_reg0[1][databits-1:databits/2]),
		      		     func_inv_data(doutb_reg0[1][databits/2-1:0]) };
			dinvb_reg = {func_inv_bit(doutb_reg0[1][databits-1:databits/2]),
				     func_inv_bit(doutb_reg0[1][databits/2-1:0]) };
                   end
	      else
	       begin
		doutb_reg = doutb_reg0[1];
		dinvb_reg = 2'b00;
	       end
	    `endif
	    end
           else
            begin
	        if (rb_pipe[0] === 1'b1)
		  begin
	    	  `ifdef EN_DATA_INV
			if (doutb_inv[0][0] === 1'b1)
		   	 begin
				doutb_reg = {(doutb_inv[0][2] ? ~(doutb_reg1[0][databits-1:databits/2]) : 
				               		 (doutb_reg1[0][databits-1:databits/2])), 
					     (doutb_inv[0][1] ? ~(doutb_reg1[0][databits/2-1:0]) : 
							 (doutb_reg1[0][databits/2-1:0]))};
				dinvb_reg = doutb_inv[0][2:1];
		   	 end
			else
	     	         begin
				doutb_reg = {func_inv_data(doutb_reg1[0][databits-1:databits/2]),
		      	     			func_inv_data(doutb_reg1[0][databits/2-1:0]) };
				dinvb_reg = {func_inv_bit(doutb_reg1[0][databits-1:databits/2]),
			     			func_inv_bit(doutb_reg1[0][databits/2-1:0]) };
             	         end
		  `else
		    if ((cfg_opt_ctl_2[6] === 1'b1) && (cfg_opt_ctl_2[7] === 1'b0))
			if (doutb_inv[0][0] === 1'b1)
		   	 begin
				doutb_reg = {(doutb_inv[0][2] ? ~(doutb_reg1[0][databits-1:databits/2]) : 
				               		 (doutb_reg1[0][databits-1:databits/2])), 
					     (doutb_inv[0][1] ? ~(doutb_reg1[0][databits/2-1:0]) : 
							 (doutb_reg1[0][databits/2-1:0]))};
				dinvb_reg = doutb_inv[0][2:1];
		   	 end
			else
	     	         begin
				doutb_reg = {func_inv_data(doutb_reg1[0][databits-1:databits/2]),
		      	     			func_inv_data(doutb_reg1[0][databits/2-1:0]) };
			        dinvb_reg = {func_inv_bit(doutb_reg1[0][databits-1:databits/2]),
			     			func_inv_bit(doutb_reg1[0][databits/2-1:0]) };
             	         end
		    else
		     begin
			doutb_reg = doutb_reg1[0];
			if (cfg_opt_ctl_2[7] === 1'b1)
				dinvb_reg = 2'b11;
			else
				dinvb_reg = 2'b00;
		     end
		  `endif
		  end
	        else
		  begin
		   	doutb_reg = {databits{1'bz}};
        		if ((lbk0_ === 1'b0) || (lbk1_ === 1'b0))
				dinvb_reg = 2'b00;
			else
				dinvb_reg = 2'bzz;
		  end
	     end
	   
 end

always @(apa_reg or apb_reg)
  begin
	if ((apa_reg === 1'b1) || (apb_reg === 1'b1))
	 `ifdef EN_ADDR_PARITY
 	     pe_reg = 1'b0;
	 `else
	   if (cfg_opt_ctl_2[4] === 1'b1)	// Address parity enable
 	     pe_reg = 1'b0;
	   else
 	     pe_reg = 1'b1;
	 `endif
  end
	
// data bus invert generator
function [(databits/2)-1 : 0] func_inv_data;
input [(databits/2)-1 : 0] din;

reg [(databits/2)-1 : 0] dout;

reg [4:0] i;
reg [4:0]  cnt;

begin
           cnt = 5'b00000;
           for (i=0;i<databits/2;i=i+1)
             if (din[i] == 1'b0)
                  cnt = cnt + 1;
           if (cnt > (databits/4))
             begin
                dout = ~din;
             end 
           else
             begin
                dout = din;
             end 
        func_inv_data = dout;
end
endfunction

// data invert bit generator
function func_inv_bit;
input [(databits/2)-1 : 0] din;

reg dout_inv;

reg [4:0] i;
reg [4:0]  cnt;

begin
           cnt = 5'b00000;
           for (i=0;i<databits/2;i=i+1)
             if (din[i] == 1'b0)
                  cnt = cnt + 1;
           if (cnt > (databits/4))
             begin
                dout_inv = 1'b1;
             end
           else
             begin
                dout_inv = 1'b0;
             end
        func_inv_bit = dout_inv;
end
endfunction



//****  Loop back **************************************
initial 
     begin 
	lp_reg[15] = 13'hzzzz;
     end

always @(posedge ck)
    begin
   	lp_reg[0] = lp_reg[1];
   	lp_reg[1] = lp_reg[2];
   	lp_reg[2] = lp_reg[3];
   	lp_reg[3] = lp_reg[4];
   	lp_reg[4] = lp_reg[5];
   	lp_reg[5] = lp_reg[6];
   	lp_reg[6] = lp_reg[7];
   	lp_reg[7] = lp_reg[8];
   	lp_reg[8] = lp_reg[9];
   	lp_reg[9] = lp_reg[10];
   	lp_reg[10] = lp_reg[11];
   	lp_reg[11] = lp_reg[12];
   	lp_reg[12] = lp_reg[13];
   	lp_reg[13] = lp_reg[14];
   	lp_reg[14] = lp_reg[15];
   	lp_reg[15] = lp_reg[16];
   	lp_reg[16] = lp_reg[17];
   	lp_reg[17] = lp_reg[18];
   	lp_reg[18] = lp_reg[19];
   	lp_reg[19] = lp_reg[20];
   	lp_reg[20] = lp_reg[21];
   	lp_reg[21] = lp_reg[22];
   	lp_reg[22] = lp_reg[23];
   	lp_reg[23] = lp_reg[24];
   	lp_reg[24] = lp_reg[25];
   	lp_reg[25] = lp_reg[26];
   	lp_reg[26] = lp_reg[27];
   	lp_reg[27] = lp_reg[28];
   	lp_reg[28] = lp_reg[29];
   	lp_reg[29] = lp_reg[30];
   	lp_reg[30] = lp_reg[31];
   	lp_reg[31] = lp_reg[32];

	if ((lbk0_ === 1'b0) && (lbk1_ === 1'b0))
	  	lp_reg[32] = addr[12:0];
	else
	   if ((lbk0_ === 1'b0) && (lbk1_ === 1'b1))
	    `ifdef X36
		`ifdef M72
	  	    lp_reg[32] = {ainv, 5'hz, addr[addrbits-1:13]};
		`else
	  	    lp_reg[32] = {ainv, 4'hz, addr[addrbits-1:13]};
		`endif
	    `else
		`ifdef M72
	  	    lp_reg[32] = {ainv, 4'hz, addr[addrbits-1:13]};
		`else
	  	    lp_reg[32] = {ainv, 3'hz, addr[addrbits-1:13]};
		`endif
	    `endif
	   else
	      if ((lbk0_ === 1'b1) && (lbk1_ === 1'b0))
	  	lp_reg[32] = {ap, rwb_, ldb_, dkb_[1], dkb[1], dkb_[0], dkb[0], 
				rwa_, lda_, dka_[1], dka[1], dka_[0], dka[0]};
	      else
		lp_reg[32] = 13'bzzzz;

   end

always @(posedge ck_)
    begin
        lp_reg[0] = lp_reg[1];
        lp_reg[1] = lp_reg[2];
        lp_reg[2] = lp_reg[3];
        lp_reg[3] = lp_reg[4];
        lp_reg[4] = lp_reg[5];
        lp_reg[5] = lp_reg[6];
        lp_reg[6] = lp_reg[7];
        lp_reg[7] = lp_reg[8];
        lp_reg[8] = lp_reg[9];
        lp_reg[9] = lp_reg[10];
        lp_reg[10] = lp_reg[11];
        lp_reg[11] = lp_reg[12];
        lp_reg[12] = lp_reg[13];
        lp_reg[13] = lp_reg[14];
        lp_reg[14] = lp_reg[15];
        lp_reg[15] = lp_reg[16];
        lp_reg[16] = lp_reg[17];
        lp_reg[17] = lp_reg[18];
        lp_reg[18] = lp_reg[19];
        lp_reg[19] = lp_reg[20];
        lp_reg[20] = lp_reg[21];
        lp_reg[21] = lp_reg[22];
        lp_reg[22] = lp_reg[23];
        lp_reg[23] = lp_reg[24];
        lp_reg[24] = lp_reg[25];
        lp_reg[25] = lp_reg[26];
        lp_reg[26] = lp_reg[27];
        lp_reg[27] = lp_reg[28];
        lp_reg[28] = lp_reg[29];
        lp_reg[29] = lp_reg[30];
        lp_reg[30] = lp_reg[31];
        lp_reg[31] = lp_reg[32];

        if ((lbk0_ === 1'b0) && (lbk1_ === 1'b0))
                lp_reg[32] = ~addr[12:0];
        else
           if ((lbk0_ === 1'b0) && (lbk1_ === 1'b1))
	    `ifdef X36
		`ifdef M72
	  	  lp_reg[32] = {~ainv, 5'hz, ~addr[addrbits-1:13]};
		`else
	  	   lp_reg[32] = {~ainv, 4'hz, ~addr[addrbits-1:13]};
		`endif
	    `else
		`ifdef M72
	  	    lp_reg[32] = {~ainv, 4'hz, ~addr[addrbits-1:13]};
		`else
	  	    lp_reg[32] = {~ainv, 3'hz, ~addr[addrbits-1:13]};
		`endif
	    `endif
           else
              if ((lbk0_ === 1'b1) && (lbk1_ === 1'b0))
                lp_reg[32] = ~{ap, rwb_, ldb_, dkb_[1], dkb[1], dkb_[0], dkb[0], 
                                rwa_, lda_, dka_[1], dka[1], dka_[0], dka[0]};
              else
	        lp_reg[32] = 13'hzzzz;
    end

// Configuration
//********************************************************************************************
assign tmclk = ~lda_ & lbk0_ & lbk1_ & ~cfg_;
assign tmsel = ~cfg_ & ~lda_;
assign tmrwb = ~cfg_ & rwa_;
assign tmdata = cfg_ ? 8'h00 : addr[7:0];
assign tmaddr = cfg_ ? 8'h00 : (addr[12] ? 8'h00 : {4'hf,addr[11:8]});

assign tm_data = r_en ?  ((rdata === 8'hzz) ? rdata_buf : rdata)  : 8'hzz;

task dummy_reg_read;
 begin
	 if (tmsel == 1'b1)
             if (tmrwb == 1'b1)
         	rdata = 8'hzz;
 end
endtask

always @(posedge tmclk) 
	if (rdata !== 8'hzz)
	   rdata_buf <= rdata;

/*
always @(posedge tmclk)    // Forcing values to configuration registers
     
      begin
        cfg_term_ctl_0 = 8'h24;
        cfg_impd_ctl_1 = 8'hA4;
        cfg_opt_ctl_2 =  8'h07;
        cfg_func_ctl_3 = 8'h00;
        parity_status_0 = 8'h00;
        parity_status_1 = 8'h00;
        parity_status_2 = 8'h00;
        parity_status_3 = 8'h00;

      end
*/
always @(posedge rst_)            // configuration during RESET
       begin
        	cfg_term_ctl_0 = addr[7:0];
        	cfg_impd_ctl_1 = {5'b10100,addr[10:8]};
        	cfg_opt_ctl_2 = {5'h00,addr[13:11]};
        	cfg_func_ctl_3 = 8'h00;
        	parity_status_0 = 8'h00;
        	parity_status_1 = 8'h00;
        	parity_status_2 = 8'h00;
        	parity_status_3 = 8'h00;
       end

always @(posedge tmclk or negedge pub or posedge cfg_)
        if (pub === 1'b0)
          r_en = 1'b0;
	else
	 if (cfg_ === 1'b1)
	      r_en = 1'b0;
	 else
	  if (tmrst)
              r_en = 1'b0;
          else
            if ((tmrwb === 1'b1) & (tmsel === 1'b1))

               r_en = 1'b1;
            else
               r_en = 1'b0;

always @(posedge tmclk)
  begin
    rdata = 8'hzz;
    casez (tmaddr)
    8'hf0:  begin
            if (tmsel == 1'b1)
                if (tmrwb == 1'b0)
                        cfg_term_ctl_0 = tmdata;
                else
                        rdata = cfg_term_ctl_0;
            end

    8'hf1:  begin
	    if (tmsel == 1'b1)
            	if (tmrwb == 1'b0)
               		cfg_impd_ctl_1 = tmdata;
            	else
               		rdata = cfg_impd_ctl_1;
            end

    8'hf2:  begin
	    if (tmsel == 1'b1)
            	if (tmrwb == 1'b0)
               		cfg_opt_ctl_2 = tmdata;
            	else
               		rdata = cfg_opt_ctl_2;
            end

    8'hf3:  begin
	    if (tmsel == 1'b1)
            	if (tmrwb == 1'b0)
	         begin
              		cfg_func_ctl_3 = tmdata;
	       		if (cfg_func_ctl_3[0] === 1'b1)
		  	begin
		    		cfg_func_ctl_3[0] = 1'b0;
		     		parity_status_0 = 8'h00;
		     		parity_status_1 = 8'h00;
		     		parity_status_2 = 8'h00;
		     		parity_status_3 = 8'h00;
				parity_cnt_a = 2'b00;
				parity_cnt_b = 2'b00;
				apa_reg = 1'b0;
				apb_reg = 1'b0;
		     		pe_reg = 1'b1;
		  	end
	      	end
            	else
               		rdata = 8'h00;
            end

    8'hf4:  begin
	    if (tmsel == 1'b1)
            	if (tmrwb == 1'b0)
               		parity_status_0 = tmdata;
            	else
               		rdata = parity_status_0;
            end

    8'hf5:  begin
	    if (tmsel == 1'b1)
            	if (tmrwb == 1'b0)
               		parity_status_1 = tmdata;
            	else
               		rdata = parity_status_1;
            end

    8'hf6:  begin
	     if (tmsel == 1'b1)
            	if (tmrwb == 1'b0)
               		parity_status_2 = tmdata;
            	else
               		rdata = parity_status_2;
            end
    
    8'hf7:  begin
	     if (tmsel == 1'b1)
           	 if (tmrwb == 1'b0)
               		parity_status_3 = tmdata;
            	 else
               		rdata = parity_status_3;
            end

    default: begin
	     if (tmsel == 1'b1)
	        begin
             	   if (tmrwb == 1'b1)
               		rdata = 8'hzz;
                end
	    end
    endcase
  end


  specify
      specparam

      // Timing Check for (0.9 ns / 1066 MHz)
       tCK   = 0.938,     // Clock        - Clock Cycle Time
       tCKL = 0.422,    // Clock	- clock High low Time

       tAS   = 0.125,     // Setup Times  - Address
       tAH   = 0.125,     // Hold Times  - Address
       tCS   = 0.150,     // Setup Times  - Control
       tCH   = 0.150,     // Hold Times  - Control
       tIS   = 0.125,     // Setup Times  - Data
       tIH   = 0.125,     // Hold Times  - Data
       tCKDK = 0.15,    //   CK to DKx skew             

       tCKQK  = 0.225, 	  // Output Times - CK to QK skew
       tQKQ   = 0.075,    // 		  - Clock To Output Valid
       tQH   = 0.375,     //              - Clock To Output In High-Z
       tQKQV   = 0.112,   //              - QK to QVLD
       tPE = 2.50;	  // 		  - PE output

  // Input check
    $period     (posedge ck, tCK);
    $period     (posedge ck_, tCK);
    $period     (posedge dka, tCK);
    $period     (posedge dka_, tCK);
    $period     (posedge dkb, tCK);
    $period     (posedge dkb_, tCK);
    $width      (posedge ck, tCKL);
    $width      (posedge ck_, tCKL);
    $width      (posedge dka, tCKL);
    $width      (posedge dka_, tCKL);
    $width      (posedge dkb, tCKL);
    $width      (posedge dkb_, tCKL);
    $setuphold  (posedge ck, addr, tAS, tAH);
    $setuphold  (posedge ck, ainv, tAS, tAH);
    $setuphold  (posedge ck, ap, tAS, tAH);
    $setuphold  (posedge ck, lda_, tCS, tCH);
    $setuphold  (posedge ck, ldb_, tCS, tCH);
    $setuphold  (posedge ck, rwa_, tCS, tCH);
    $setuphold  (posedge ck, rwb_, tCS, tCH);
    $setuphold  (posedge dka &&& wa_pipe[0], dqa, tIS, tIH);
    $setuphold  (posedge dka &&& wa_pipe[0], dinva, tIS, tIH);
    $setuphold  (posedge dkb &&& wb_pipe[0], dqb, tIS, tIH);
    $setuphold  (posedge dkb &&& wb_pipe[0], dinvb, tIS, tIH); 

    // Output Delayb

    (ck *> qka) = tCKQK;
    (ck *> qkb) = tCKQK;
    (ck_ *> qka_) = tCKQK;
    (ck_ *> qkb_) = tCKQK;
    (ck *> dqa) = tCKQK + tQKQ;
    (ck *> dqb) = tCKQK + tQKQ;
    (ck *> dinva) = tCKQK + tQKQ;
    (ck *> dinvb) = tCKQK + tQKQ;
    (ck *> qvlda) = tCKQK + tQKQV;
    (ck *> qvldb) = tCKQK + tQKQV;
    (ck *> pe_) = tPE;
  endspecify

endmodule

