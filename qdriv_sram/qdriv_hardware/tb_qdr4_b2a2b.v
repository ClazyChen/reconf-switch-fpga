//
//                              QDR-IV (x36) 
//                      Simulation of Verilog model 

`timescale 1 ns/10 ps 

`define Addrbits 22                             // (4M x 36)
`define Databits 36
`define X36
`define M_B2A2B 1
`define READ_LATENCY 8
`define WRITE_LATENCY 5
//`define EN_GLOBAL_ODT
//`define EN_ADDR_INV
//`define EN_DATA_INV
//`define EN_ADDR_PARITY
`define EN_PORT
//`define DISEN_PORT
//`define EN_PORTA_ONLY
//`define EN_PORTA_READ_ONLY


module tb_qdr4_b2a2b;

`define num_vectors 52   
`define inp {RST_n, A[18:0], LD_n, R_W_n , DCWR[1:0], Data_in[17:0], test_data[17:0]}

reg     [60:1]  lsim_vectors    [1:`num_vectors];

reg     [35:0]  Data_in;
reg     [20:0]  A;
reg		           data_cycle_write;
reg		           data_cycle_read;
reg     [35:0]  Data_expected; 
reg     [35:0]  test_data; 
reg             strb,j;
reg		           echo, echo_n;
integer         vector,i,k;
wire 		         TDO; 
reg		           K, K_n, LD_n, R_W_n,ZQ,DOFF_n, LBK0_n,LBK1_n, TRST_n, RST_n, CFG_n, AP;
reg     [1:0]   DCWR; // Data Cycle write or read

reg       	TCK, TMS, TDI;
real		half_tcyc;
real  strb_del;

wire	[35:0]	Data_IO = data_cycle_write ? Data_in[35:0] : 36'bZ;
wire [1:0]  DINVA   = data_cycle_write ? 2'b0          : 2'bZ;

wire [1:0]   QKA, QKA_n, QKB, QKB_n;
wire [1:0]  DKA, DKA_n, DKB, DKB_n;
wire [1:0]   QVLDB;
wire [1:0]   QVLD;
wire [35:0]  DQB;
wire [1:0]   DINVB;
wire         RWB_n;
wire         AINV;

qdr4_beh testfile(K, K_n, A, AINV, AP, PE_n, LD_n, LDB_n, R_W_n, RWB_n,
		  DKA, DKA_n, DKB, DKB_n, QKA, QKA_n, QKB, QKB_n, QVLD, QVLDB,
		  Data_IO, DINVA, DQB, DINVB,
		  ZQ, RST_n, CFG_n, LBK0_n, LBK1_n,
		  TRST_n, TCK, TMS, TDI, TDO);


assign       DQB = 36'bZ;
assign       DINVB = 2'bZ;
assign       DKA = {K,K};
assign       DKA_n = {K_n,K_n};
assign       DKB = {K,K};
assign       DKB_n = {K_n,K_n};
assign       LDB_n = 1'b1;
assign       RWB_n = 1'b1;
assign       AINV  = 1'b0;

//Create a dump file for the outputs
initial
begin
  $dumpfile("vectors.dump");
  $dumpvars;
end

//specify cycle time of operation
initial
begin
     half_tcyc = 0.469;  //1066 GHz clk 
     strb_del  = 0.2; //  strb is (half_tcyc - strb_del) ns before the K clock
end

//Initialization of signals

initial
  begin

	strb        =        1'b0;
	K	          =        1'b0;
	K_n	        =        1'b1;
	DOFF_n	     =        1'b1;
	A	          =	      21'b0;
	LBK0_n      =        1'b1;
	LBK1_n      =        1'b1;
	RST_n       =        1'b0;
	TRST_n      =        1'b1;
	CFG_n       =        1'b1;
	
  end

//JTAG Variable Initialization
initial
begin
	TCK= 0;
	TMS = 1;
	TDI = 1'bx;
end

initial
begin
	for(k = 0; k <= 1000; k=k+1)
	begin
		#10 TCK = 0;
		#90 TCK = 1;
	end
end

//***********************************************************************
///Initialization
initial
  begin
        #strb_del
        forever #half_tcyc strb = ~strb;
  end

// The clocks are generated here.
initial
  begin
	#half_tcyc;
        forever #half_tcyc K =~K;
  end

initial
  begin
	#half_tcyc;
        forever #half_tcyc K_n = ~K_n;
  end


//------------------------------------------------------------------------------
initial
begin
	#100	TMS = 1;	
	#10	TMS = 1;	
	#10	TMS = 0;	// Go to idle (on next TCLK)
	#10	TMS = 0;
	#10	TMS = 0;
	#10	TMS = 1;	// Go to Sel-DR Scan
	TDI = 0;
   	#10	TMS = 0;	// Go to Capture-DR (should load bsr, all I/O)
	#10	TMS = 0;	// Go to Shift-DR
	#100	TMS = 1;
	#100	TMS = 0;
//	#10000	$finish;
end

initial
 begin
 
 $readmemb("qdr4_burst2_vectors.txt", lsim_vectors);     //load input vector file
 for (vector = 1; vector <= `num_vectors; vector = vector + 1)
   @(strb)
    begin
         `inp = lsim_vectors[vector];
          A[20] = A[18];
          A[19] = A[18];
      	   Data_in[35:18] = Data_in[17:0];
          Data_in[17:0]  = Data_in[17:0];
  	       test_data[35:18] = test_data[17:0];
   	      AP = A[18]^A[18]^A[18]^A[17]^A[16]^A[15]^A[14]^A[13]^A[12]^A[11]^A[10]^A[9]^A[8]^A[7]^A[6]^A[5]^A[4]^A[3]^A[2]^A[1]^A[0];
	        data_cycle_write = DCWR[1];
	        #(half_tcyc - strb_del) data_cycle_read =  DCWR[0];
	  
    end
  #1 $finish; // This prevents simulation beyond end of test patterns
 end

always @(posedge QKA[0])
fork
    #0.08 echo <= QKA[0];
     #(half_tcyc -0.08) echo <= 0;
join

always @(posedge QKA_n[0])
fork
    #0.08 echo_n <= QKA_n[0];
     #(half_tcyc -0.08) echo_n <= 0;
join

always@(posedge echo)
begin
      #0.08 Data_expected[35:0] = test_data[35:0];

      if (data_cycle_write)
	 $display("Data Write cycle : line =%d  data_in  = %h",	vector - 1, Data_in);
      else
	begin
	  if ((Data_IO === Data_expected) & data_cycle_read)
	    $display("Pass     :Read   : line =%d  data_out = %h expected_data = %h", vector -1, Data_IO, Data_expected); 
	  else if ((Data_IO != Data_expected) & data_cycle_read)
	    $display("Fail     :Read   : line =%d  data_out = %h expected_data = %h", vector -1, Data_IO, Data_expected);   
	  end
        end
        
always@(posedge echo)
begin
    #(half_tcyc -0.08) Data_expected[35:0] = 36'bZ;
end

always@(posedge echo_n)
begin
      #0.08 Data_expected[35:0] = test_data[35:0];
      if (data_cycle_write)
	 $display("Data Write cycle : line =%d  data_in  = %h",	vector - 1, Data_in);
      else
	begin
    	  if ((Data_IO === Data_expected) & data_cycle_read)
	    $display("Pass     :Read   : line =%d  data_out = %h expected_data = %h", vector -1, Data_IO, Data_expected); 
	  else if ((Data_IO != Data_expected) & data_cycle_read)
	    $display("FAIL  :Read      : line =%d  data_out = %h expected_data = %h", vector -1, Data_IO, Data_expected);  
	  end
        end
        
always@(posedge echo_n)
begin
    #(half_tcyc -0.08) Data_expected[35:0] = 36'bZ;
end     

endmodule


