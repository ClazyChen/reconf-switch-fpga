module SRAM(
  input         clock,
  input         reset,
  input         io_mem_a_ce,
  input         io_mem_a_we,
  input  [31:0] io_mem_a_addr,
  input  [3:0]  io_mem_a_sel,
  input  [31:0] io_mem_a_wdata,
  output [31:0] io_mem_a_rdata,
  input         io_mem_b_ce,
  input         io_mem_b_we,
  input  [31:0] io_mem_b_addr,
  input  [3:0]  io_mem_b_sel,
  input  [31:0] io_mem_b_wdata,
  output [31:0] io_mem_b_rdata
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] mem [0:1023]; // @[sram.scala 16:26]
  wire [31:0] mem_io_mem_a_rdata_MPORT_data; // @[sram.scala 16:26]
  wire [9:0] mem_io_mem_a_rdata_MPORT_addr; // @[sram.scala 16:26]
  wire [31:0] mem_io_mem_b_rdata_MPORT_data; // @[sram.scala 16:26]
  wire [9:0] mem_io_mem_b_rdata_MPORT_addr; // @[sram.scala 16:26]
  wire [31:0] mem_MPORT_data; // @[sram.scala 16:26]
  wire [9:0] mem_MPORT_addr; // @[sram.scala 16:26]
  wire  mem_MPORT_mask; // @[sram.scala 16:26]
  wire  mem_MPORT_en; // @[sram.scala 16:26]
  wire [31:0] mem_MPORT_1_data; // @[sram.scala 16:26]
  wire [9:0] mem_MPORT_1_addr; // @[sram.scala 16:26]
  wire  mem_MPORT_1_mask; // @[sram.scala 16:26]
  wire  mem_MPORT_1_en; // @[sram.scala 16:26]
  reg  mem_io_mem_a_rdata_MPORT_en_pipe_0;
  reg [9:0] mem_io_mem_a_rdata_MPORT_addr_pipe_0;
  reg  mem_io_mem_b_rdata_MPORT_en_pipe_0;
  reg [9:0] mem_io_mem_b_rdata_MPORT_addr_pipe_0;
  reg [31:0] wdata_a; // @[sram.scala 17:22]
  reg  we_a; // @[sram.scala 18:19]
  reg [31:0] wdata_b; // @[sram.scala 19:22]
  reg  we_b; // @[sram.scala 20:19]
  assign mem_io_mem_a_rdata_MPORT_addr = mem_io_mem_a_rdata_MPORT_addr_pipe_0;
  assign mem_io_mem_a_rdata_MPORT_data = mem[mem_io_mem_a_rdata_MPORT_addr]; // @[sram.scala 16:26]
  assign mem_io_mem_b_rdata_MPORT_addr = mem_io_mem_b_rdata_MPORT_addr_pipe_0;
  assign mem_io_mem_b_rdata_MPORT_data = mem[mem_io_mem_b_rdata_MPORT_addr]; // @[sram.scala 16:26]
  assign mem_MPORT_data = io_mem_a_wdata;
  assign mem_MPORT_addr = io_mem_a_addr[9:0];
  assign mem_MPORT_mask = 1'h1;
  assign mem_MPORT_en = io_mem_a_ce & io_mem_a_we;
  assign mem_MPORT_1_data = io_mem_b_wdata;
  assign mem_MPORT_1_addr = io_mem_b_addr[9:0];
  assign mem_MPORT_1_mask = 1'h1;
  assign mem_MPORT_1_en = io_mem_b_ce & io_mem_b_we;
  assign io_mem_a_rdata = we_a ? wdata_a : mem_io_mem_a_rdata_MPORT_data; // @[sram.scala 48:26]
  assign io_mem_b_rdata = we_b ? wdata_b : mem_io_mem_b_rdata_MPORT_data; // @[sram.scala 49:26]
  always @(posedge clock) begin
    if(mem_MPORT_en & mem_MPORT_mask) begin
      mem[mem_MPORT_addr] <= mem_MPORT_data; // @[sram.scala 16:26]
    end
    if(mem_MPORT_1_en & mem_MPORT_1_mask) begin
      mem[mem_MPORT_1_addr] <= mem_MPORT_1_data; // @[sram.scala 16:26]
    end
    mem_io_mem_a_rdata_MPORT_en_pipe_0 <= ~io_mem_a_we;
    if (~io_mem_a_we) begin
      mem_io_mem_a_rdata_MPORT_addr_pipe_0 <= io_mem_a_addr[9:0];
    end
    mem_io_mem_b_rdata_MPORT_en_pipe_0 <= ~io_mem_b_we;
    if (~io_mem_b_we) begin
      mem_io_mem_b_rdata_MPORT_addr_pipe_0 <= io_mem_b_addr[9:0];
    end
    if (io_mem_a_ce) begin // @[sram.scala 22:24]
      if (io_mem_a_we) begin // @[sram.scala 23:28]
        wdata_a <= io_mem_a_wdata; // @[sram.scala 26:21]
      end
    end else begin
      wdata_a <= 32'h0; // @[sram.scala 32:17]
    end
    we_a <= io_mem_a_ce & io_mem_a_we; // @[sram.scala 22:24 sram.scala 16:26]
    if (io_mem_b_ce) begin // @[sram.scala 35:24]
      if (io_mem_b_we) begin // @[sram.scala 36:28]
        wdata_b <= io_mem_b_wdata; // @[sram.scala 39:21]
      end
    end else begin
      wdata_b <= 32'h0; // @[sram.scala 45:17]
    end
    we_b <= io_mem_b_ce & io_mem_b_we; // @[sram.scala 35:24 sram.scala 16:26]
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1024; initvar = initvar+1)
    mem[initvar] = _RAND_0[31:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  mem_io_mem_a_rdata_MPORT_en_pipe_0 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  mem_io_mem_a_rdata_MPORT_addr_pipe_0 = _RAND_2[9:0];
  _RAND_3 = {1{`RANDOM}};
  mem_io_mem_b_rdata_MPORT_en_pipe_0 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  mem_io_mem_b_rdata_MPORT_addr_pipe_0 = _RAND_4[9:0];
  _RAND_5 = {1{`RANDOM}};
  wdata_a = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  we_a = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  wdata_b = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  we_b = _RAND_8[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
