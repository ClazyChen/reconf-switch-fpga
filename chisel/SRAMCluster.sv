module SRAM(
  input         clock,
  input         io_w_en,
  input  [7:0]  io_w_addr,
  input  [63:0] io_w_data,
  input         io_r_en,
  input  [7:0]  io_r_addr,
  output [63:0] io_r_data
);
`ifdef RANDOMIZE_MEM_INIT
  reg [63:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [63:0] mem [0:255]; // @[sram.scala 30:26]
  wire [63:0] mem_io_r_data_MPORT_data; // @[sram.scala 30:26]
  wire [7:0] mem_io_r_data_MPORT_addr; // @[sram.scala 30:26]
  wire [63:0] mem_MPORT_data; // @[sram.scala 30:26]
  wire [7:0] mem_MPORT_addr; // @[sram.scala 30:26]
  wire  mem_MPORT_mask; // @[sram.scala 30:26]
  wire  mem_MPORT_en; // @[sram.scala 30:26]
  reg  mem_io_r_data_MPORT_en_pipe_0;
  reg [7:0] mem_io_r_data_MPORT_addr_pipe_0;
  assign mem_io_r_data_MPORT_addr = mem_io_r_data_MPORT_addr_pipe_0;
  assign mem_io_r_data_MPORT_data = mem[mem_io_r_data_MPORT_addr]; // @[sram.scala 30:26]
  assign mem_MPORT_data = io_w_data;
  assign mem_MPORT_addr = io_w_addr;
  assign mem_MPORT_mask = 1'h1;
  assign mem_MPORT_en = io_w_en;
  assign io_r_data = mem_io_r_data_MPORT_data; // @[sram.scala 37:24 sram.scala 38:23]
  always @(posedge clock) begin
    if(mem_MPORT_en & mem_MPORT_mask) begin
      mem[mem_MPORT_addr] <= mem_MPORT_data; // @[sram.scala 30:26]
    end
    if (io_w_en) begin
      mem_io_r_data_MPORT_en_pipe_0 <= 1'h0;
    end else begin
      mem_io_r_data_MPORT_en_pipe_0 <= io_r_en;
    end
    if (io_w_en ? 1'h0 : io_r_en) begin
      mem_io_r_data_MPORT_addr_pipe_0 <= io_r_addr;
    end
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
  _RAND_0 = {2{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    mem[initvar] = _RAND_0[63:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  mem_io_r_data_MPORT_en_pipe_0 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  mem_io_r_data_MPORT_addr_pipe_0 = _RAND_2[7:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module SRAMCluster(
  input         clock,
  input         reset,
  input  [2:0]  io_wcs,
  input         io_w_en,
  input  [7:0]  io_w_addr,
  input  [63:0] io_w_data,
  input         io_r_0_cluster_0_en,
  input  [7:0]  io_r_0_cluster_0_addr,
  output [63:0] io_r_0_cluster_0_data,
  input         io_r_0_cluster_1_en,
  input  [7:0]  io_r_0_cluster_1_addr,
  output [63:0] io_r_0_cluster_1_data,
  input         io_r_0_cluster_2_en,
  input  [7:0]  io_r_0_cluster_2_addr,
  output [63:0] io_r_0_cluster_2_data,
  input         io_r_0_cluster_3_en,
  input  [7:0]  io_r_0_cluster_3_addr,
  output [63:0] io_r_0_cluster_3_data,
  input         io_r_0_cluster_4_en,
  input  [7:0]  io_r_0_cluster_4_addr,
  output [63:0] io_r_0_cluster_4_data,
  input         io_r_0_cluster_5_en,
  input  [7:0]  io_r_0_cluster_5_addr,
  output [63:0] io_r_0_cluster_5_data,
  input         io_r_0_cluster_6_en,
  input  [7:0]  io_r_0_cluster_6_addr,
  output [63:0] io_r_0_cluster_6_data,
  input         io_r_0_cluster_7_en,
  input  [7:0]  io_r_0_cluster_7_addr,
  output [63:0] io_r_0_cluster_7_data,
  input         io_r_1_cluster_0_en,
  input  [7:0]  io_r_1_cluster_0_addr,
  output [63:0] io_r_1_cluster_0_data,
  input         io_r_1_cluster_1_en,
  input  [7:0]  io_r_1_cluster_1_addr,
  output [63:0] io_r_1_cluster_1_data,
  input         io_r_1_cluster_2_en,
  input  [7:0]  io_r_1_cluster_2_addr,
  output [63:0] io_r_1_cluster_2_data,
  input         io_r_1_cluster_3_en,
  input  [7:0]  io_r_1_cluster_3_addr,
  output [63:0] io_r_1_cluster_3_data,
  input         io_r_1_cluster_4_en,
  input  [7:0]  io_r_1_cluster_4_addr,
  output [63:0] io_r_1_cluster_4_data,
  input         io_r_1_cluster_5_en,
  input  [7:0]  io_r_1_cluster_5_addr,
  output [63:0] io_r_1_cluster_5_data,
  input         io_r_1_cluster_6_en,
  input  [7:0]  io_r_1_cluster_6_addr,
  output [63:0] io_r_1_cluster_6_data,
  input         io_r_1_cluster_7_en,
  input  [7:0]  io_r_1_cluster_7_addr,
  output [63:0] io_r_1_cluster_7_data,
  input         io_r_2_cluster_0_en,
  input  [7:0]  io_r_2_cluster_0_addr,
  output [63:0] io_r_2_cluster_0_data,
  input         io_r_2_cluster_1_en,
  input  [7:0]  io_r_2_cluster_1_addr,
  output [63:0] io_r_2_cluster_1_data,
  input         io_r_2_cluster_2_en,
  input  [7:0]  io_r_2_cluster_2_addr,
  output [63:0] io_r_2_cluster_2_data,
  input         io_r_2_cluster_3_en,
  input  [7:0]  io_r_2_cluster_3_addr,
  output [63:0] io_r_2_cluster_3_data,
  input         io_r_2_cluster_4_en,
  input  [7:0]  io_r_2_cluster_4_addr,
  output [63:0] io_r_2_cluster_4_data,
  input         io_r_2_cluster_5_en,
  input  [7:0]  io_r_2_cluster_5_addr,
  output [63:0] io_r_2_cluster_5_data,
  input         io_r_2_cluster_6_en,
  input  [7:0]  io_r_2_cluster_6_addr,
  output [63:0] io_r_2_cluster_6_data,
  input         io_r_2_cluster_7_en,
  input  [7:0]  io_r_2_cluster_7_addr,
  output [63:0] io_r_2_cluster_7_data,
  input         io_r_3_cluster_0_en,
  input  [7:0]  io_r_3_cluster_0_addr,
  output [63:0] io_r_3_cluster_0_data,
  input         io_r_3_cluster_1_en,
  input  [7:0]  io_r_3_cluster_1_addr,
  output [63:0] io_r_3_cluster_1_data,
  input         io_r_3_cluster_2_en,
  input  [7:0]  io_r_3_cluster_2_addr,
  output [63:0] io_r_3_cluster_2_data,
  input         io_r_3_cluster_3_en,
  input  [7:0]  io_r_3_cluster_3_addr,
  output [63:0] io_r_3_cluster_3_data,
  input         io_r_3_cluster_4_en,
  input  [7:0]  io_r_3_cluster_4_addr,
  output [63:0] io_r_3_cluster_4_data,
  input         io_r_3_cluster_5_en,
  input  [7:0]  io_r_3_cluster_5_addr,
  output [63:0] io_r_3_cluster_5_data,
  input         io_r_3_cluster_6_en,
  input  [7:0]  io_r_3_cluster_6_addr,
  output [63:0] io_r_3_cluster_6_data,
  input         io_r_3_cluster_7_en,
  input  [7:0]  io_r_3_cluster_7_addr,
  output [63:0] io_r_3_cluster_7_data
);
  wire  sram_0_clock; // @[sram_cluster.scala 21:25]
  wire  sram_0_io_w_en; // @[sram_cluster.scala 21:25]
  wire [7:0] sram_0_io_w_addr; // @[sram_cluster.scala 21:25]
  wire [63:0] sram_0_io_w_data; // @[sram_cluster.scala 21:25]
  wire  sram_0_io_r_en; // @[sram_cluster.scala 21:25]
  wire [7:0] sram_0_io_r_addr; // @[sram_cluster.scala 21:25]
  wire [63:0] sram_0_io_r_data; // @[sram_cluster.scala 21:25]
  wire  sram_1_clock; // @[sram_cluster.scala 21:25]
  wire  sram_1_io_w_en; // @[sram_cluster.scala 21:25]
  wire [7:0] sram_1_io_w_addr; // @[sram_cluster.scala 21:25]
  wire [63:0] sram_1_io_w_data; // @[sram_cluster.scala 21:25]
  wire  sram_1_io_r_en; // @[sram_cluster.scala 21:25]
  wire [7:0] sram_1_io_r_addr; // @[sram_cluster.scala 21:25]
  wire [63:0] sram_1_io_r_data; // @[sram_cluster.scala 21:25]
  wire  sram_2_clock; // @[sram_cluster.scala 21:25]
  wire  sram_2_io_w_en; // @[sram_cluster.scala 21:25]
  wire [7:0] sram_2_io_w_addr; // @[sram_cluster.scala 21:25]
  wire [63:0] sram_2_io_w_data; // @[sram_cluster.scala 21:25]
  wire  sram_2_io_r_en; // @[sram_cluster.scala 21:25]
  wire [7:0] sram_2_io_r_addr; // @[sram_cluster.scala 21:25]
  wire [63:0] sram_2_io_r_data; // @[sram_cluster.scala 21:25]
  wire  sram_3_clock; // @[sram_cluster.scala 21:25]
  wire  sram_3_io_w_en; // @[sram_cluster.scala 21:25]
  wire [7:0] sram_3_io_w_addr; // @[sram_cluster.scala 21:25]
  wire [63:0] sram_3_io_w_data; // @[sram_cluster.scala 21:25]
  wire  sram_3_io_r_en; // @[sram_cluster.scala 21:25]
  wire [7:0] sram_3_io_r_addr; // @[sram_cluster.scala 21:25]
  wire [63:0] sram_3_io_r_data; // @[sram_cluster.scala 21:25]
  wire  sram_4_clock; // @[sram_cluster.scala 21:25]
  wire  sram_4_io_w_en; // @[sram_cluster.scala 21:25]
  wire [7:0] sram_4_io_w_addr; // @[sram_cluster.scala 21:25]
  wire [63:0] sram_4_io_w_data; // @[sram_cluster.scala 21:25]
  wire  sram_4_io_r_en; // @[sram_cluster.scala 21:25]
  wire [7:0] sram_4_io_r_addr; // @[sram_cluster.scala 21:25]
  wire [63:0] sram_4_io_r_data; // @[sram_cluster.scala 21:25]
  wire  sram_5_clock; // @[sram_cluster.scala 21:25]
  wire  sram_5_io_w_en; // @[sram_cluster.scala 21:25]
  wire [7:0] sram_5_io_w_addr; // @[sram_cluster.scala 21:25]
  wire [63:0] sram_5_io_w_data; // @[sram_cluster.scala 21:25]
  wire  sram_5_io_r_en; // @[sram_cluster.scala 21:25]
  wire [7:0] sram_5_io_r_addr; // @[sram_cluster.scala 21:25]
  wire [63:0] sram_5_io_r_data; // @[sram_cluster.scala 21:25]
  wire  sram_6_clock; // @[sram_cluster.scala 21:25]
  wire  sram_6_io_w_en; // @[sram_cluster.scala 21:25]
  wire [7:0] sram_6_io_w_addr; // @[sram_cluster.scala 21:25]
  wire [63:0] sram_6_io_w_data; // @[sram_cluster.scala 21:25]
  wire  sram_6_io_r_en; // @[sram_cluster.scala 21:25]
  wire [7:0] sram_6_io_r_addr; // @[sram_cluster.scala 21:25]
  wire [63:0] sram_6_io_r_data; // @[sram_cluster.scala 21:25]
  wire  sram_7_clock; // @[sram_cluster.scala 21:25]
  wire  sram_7_io_w_en; // @[sram_cluster.scala 21:25]
  wire [7:0] sram_7_io_w_addr; // @[sram_cluster.scala 21:25]
  wire [63:0] sram_7_io_w_data; // @[sram_cluster.scala 21:25]
  wire  sram_7_io_r_en; // @[sram_cluster.scala 21:25]
  wire [7:0] sram_7_io_r_addr; // @[sram_cluster.scala 21:25]
  wire [63:0] sram_7_io_r_data; // @[sram_cluster.scala 21:25]
  wire [7:0] _GEN_9 = io_r_0_cluster_0_en ? io_r_0_cluster_0_addr : 8'h0; // @[sram_cluster.scala 38:42 sram_cluster.scala 40:35 sram_cluster.scala 36:27]
  wire [7:0] _GEN_11 = io_r_1_cluster_0_en ? io_r_1_cluster_0_addr : _GEN_9; // @[sram_cluster.scala 38:42 sram_cluster.scala 40:35]
  wire [7:0] _GEN_13 = io_r_2_cluster_0_en ? io_r_2_cluster_0_addr : _GEN_11; // @[sram_cluster.scala 38:42 sram_cluster.scala 40:35]
  wire [7:0] _GEN_17 = io_r_0_cluster_1_en ? io_r_0_cluster_1_addr : 8'h0; // @[sram_cluster.scala 38:42 sram_cluster.scala 40:35 sram_cluster.scala 36:27]
  wire [7:0] _GEN_19 = io_r_1_cluster_1_en ? io_r_1_cluster_1_addr : _GEN_17; // @[sram_cluster.scala 38:42 sram_cluster.scala 40:35]
  wire [7:0] _GEN_21 = io_r_2_cluster_1_en ? io_r_2_cluster_1_addr : _GEN_19; // @[sram_cluster.scala 38:42 sram_cluster.scala 40:35]
  wire [7:0] _GEN_25 = io_r_0_cluster_2_en ? io_r_0_cluster_2_addr : 8'h0; // @[sram_cluster.scala 38:42 sram_cluster.scala 40:35 sram_cluster.scala 36:27]
  wire [7:0] _GEN_27 = io_r_1_cluster_2_en ? io_r_1_cluster_2_addr : _GEN_25; // @[sram_cluster.scala 38:42 sram_cluster.scala 40:35]
  wire [7:0] _GEN_29 = io_r_2_cluster_2_en ? io_r_2_cluster_2_addr : _GEN_27; // @[sram_cluster.scala 38:42 sram_cluster.scala 40:35]
  wire [7:0] _GEN_33 = io_r_0_cluster_3_en ? io_r_0_cluster_3_addr : 8'h0; // @[sram_cluster.scala 38:42 sram_cluster.scala 40:35 sram_cluster.scala 36:27]
  wire [7:0] _GEN_35 = io_r_1_cluster_3_en ? io_r_1_cluster_3_addr : _GEN_33; // @[sram_cluster.scala 38:42 sram_cluster.scala 40:35]
  wire [7:0] _GEN_37 = io_r_2_cluster_3_en ? io_r_2_cluster_3_addr : _GEN_35; // @[sram_cluster.scala 38:42 sram_cluster.scala 40:35]
  wire [7:0] _GEN_41 = io_r_0_cluster_4_en ? io_r_0_cluster_4_addr : 8'h0; // @[sram_cluster.scala 38:42 sram_cluster.scala 40:35 sram_cluster.scala 36:27]
  wire [7:0] _GEN_43 = io_r_1_cluster_4_en ? io_r_1_cluster_4_addr : _GEN_41; // @[sram_cluster.scala 38:42 sram_cluster.scala 40:35]
  wire [7:0] _GEN_45 = io_r_2_cluster_4_en ? io_r_2_cluster_4_addr : _GEN_43; // @[sram_cluster.scala 38:42 sram_cluster.scala 40:35]
  wire [7:0] _GEN_49 = io_r_0_cluster_5_en ? io_r_0_cluster_5_addr : 8'h0; // @[sram_cluster.scala 38:42 sram_cluster.scala 40:35 sram_cluster.scala 36:27]
  wire [7:0] _GEN_51 = io_r_1_cluster_5_en ? io_r_1_cluster_5_addr : _GEN_49; // @[sram_cluster.scala 38:42 sram_cluster.scala 40:35]
  wire [7:0] _GEN_53 = io_r_2_cluster_5_en ? io_r_2_cluster_5_addr : _GEN_51; // @[sram_cluster.scala 38:42 sram_cluster.scala 40:35]
  wire [7:0] _GEN_57 = io_r_0_cluster_6_en ? io_r_0_cluster_6_addr : 8'h0; // @[sram_cluster.scala 38:42 sram_cluster.scala 40:35 sram_cluster.scala 36:27]
  wire [7:0] _GEN_59 = io_r_1_cluster_6_en ? io_r_1_cluster_6_addr : _GEN_57; // @[sram_cluster.scala 38:42 sram_cluster.scala 40:35]
  wire [7:0] _GEN_61 = io_r_2_cluster_6_en ? io_r_2_cluster_6_addr : _GEN_59; // @[sram_cluster.scala 38:42 sram_cluster.scala 40:35]
  wire [7:0] _GEN_65 = io_r_0_cluster_7_en ? io_r_0_cluster_7_addr : 8'h0; // @[sram_cluster.scala 38:42 sram_cluster.scala 40:35 sram_cluster.scala 36:27]
  wire [7:0] _GEN_67 = io_r_1_cluster_7_en ? io_r_1_cluster_7_addr : _GEN_65; // @[sram_cluster.scala 38:42 sram_cluster.scala 40:35]
  wire [7:0] _GEN_69 = io_r_2_cluster_7_en ? io_r_2_cluster_7_addr : _GEN_67; // @[sram_cluster.scala 38:42 sram_cluster.scala 40:35]
  SRAM sram_0 ( // @[sram_cluster.scala 21:25]
    .clock(sram_0_clock),
    .io_w_en(sram_0_io_w_en),
    .io_w_addr(sram_0_io_w_addr),
    .io_w_data(sram_0_io_w_data),
    .io_r_en(sram_0_io_r_en),
    .io_r_addr(sram_0_io_r_addr),
    .io_r_data(sram_0_io_r_data)
  );
  SRAM sram_1 ( // @[sram_cluster.scala 21:25]
    .clock(sram_1_clock),
    .io_w_en(sram_1_io_w_en),
    .io_w_addr(sram_1_io_w_addr),
    .io_w_data(sram_1_io_w_data),
    .io_r_en(sram_1_io_r_en),
    .io_r_addr(sram_1_io_r_addr),
    .io_r_data(sram_1_io_r_data)
  );
  SRAM sram_2 ( // @[sram_cluster.scala 21:25]
    .clock(sram_2_clock),
    .io_w_en(sram_2_io_w_en),
    .io_w_addr(sram_2_io_w_addr),
    .io_w_data(sram_2_io_w_data),
    .io_r_en(sram_2_io_r_en),
    .io_r_addr(sram_2_io_r_addr),
    .io_r_data(sram_2_io_r_data)
  );
  SRAM sram_3 ( // @[sram_cluster.scala 21:25]
    .clock(sram_3_clock),
    .io_w_en(sram_3_io_w_en),
    .io_w_addr(sram_3_io_w_addr),
    .io_w_data(sram_3_io_w_data),
    .io_r_en(sram_3_io_r_en),
    .io_r_addr(sram_3_io_r_addr),
    .io_r_data(sram_3_io_r_data)
  );
  SRAM sram_4 ( // @[sram_cluster.scala 21:25]
    .clock(sram_4_clock),
    .io_w_en(sram_4_io_w_en),
    .io_w_addr(sram_4_io_w_addr),
    .io_w_data(sram_4_io_w_data),
    .io_r_en(sram_4_io_r_en),
    .io_r_addr(sram_4_io_r_addr),
    .io_r_data(sram_4_io_r_data)
  );
  SRAM sram_5 ( // @[sram_cluster.scala 21:25]
    .clock(sram_5_clock),
    .io_w_en(sram_5_io_w_en),
    .io_w_addr(sram_5_io_w_addr),
    .io_w_data(sram_5_io_w_data),
    .io_r_en(sram_5_io_r_en),
    .io_r_addr(sram_5_io_r_addr),
    .io_r_data(sram_5_io_r_data)
  );
  SRAM sram_6 ( // @[sram_cluster.scala 21:25]
    .clock(sram_6_clock),
    .io_w_en(sram_6_io_w_en),
    .io_w_addr(sram_6_io_w_addr),
    .io_w_data(sram_6_io_w_data),
    .io_r_en(sram_6_io_r_en),
    .io_r_addr(sram_6_io_r_addr),
    .io_r_data(sram_6_io_r_data)
  );
  SRAM sram_7 ( // @[sram_cluster.scala 21:25]
    .clock(sram_7_clock),
    .io_w_en(sram_7_io_w_en),
    .io_w_addr(sram_7_io_w_addr),
    .io_w_data(sram_7_io_w_data),
    .io_r_en(sram_7_io_r_en),
    .io_r_addr(sram_7_io_r_addr),
    .io_r_data(sram_7_io_r_data)
  );
  assign io_r_0_cluster_0_data = sram_0_io_r_data; // @[sram_cluster.scala 42:37]
  assign io_r_0_cluster_1_data = sram_1_io_r_data; // @[sram_cluster.scala 42:37]
  assign io_r_0_cluster_2_data = sram_2_io_r_data; // @[sram_cluster.scala 42:37]
  assign io_r_0_cluster_3_data = sram_3_io_r_data; // @[sram_cluster.scala 42:37]
  assign io_r_0_cluster_4_data = sram_4_io_r_data; // @[sram_cluster.scala 42:37]
  assign io_r_0_cluster_5_data = sram_5_io_r_data; // @[sram_cluster.scala 42:37]
  assign io_r_0_cluster_6_data = sram_6_io_r_data; // @[sram_cluster.scala 42:37]
  assign io_r_0_cluster_7_data = sram_7_io_r_data; // @[sram_cluster.scala 42:37]
  assign io_r_1_cluster_0_data = sram_0_io_r_data; // @[sram_cluster.scala 42:37]
  assign io_r_1_cluster_1_data = sram_1_io_r_data; // @[sram_cluster.scala 42:37]
  assign io_r_1_cluster_2_data = sram_2_io_r_data; // @[sram_cluster.scala 42:37]
  assign io_r_1_cluster_3_data = sram_3_io_r_data; // @[sram_cluster.scala 42:37]
  assign io_r_1_cluster_4_data = sram_4_io_r_data; // @[sram_cluster.scala 42:37]
  assign io_r_1_cluster_5_data = sram_5_io_r_data; // @[sram_cluster.scala 42:37]
  assign io_r_1_cluster_6_data = sram_6_io_r_data; // @[sram_cluster.scala 42:37]
  assign io_r_1_cluster_7_data = sram_7_io_r_data; // @[sram_cluster.scala 42:37]
  assign io_r_2_cluster_0_data = sram_0_io_r_data; // @[sram_cluster.scala 42:37]
  assign io_r_2_cluster_1_data = sram_1_io_r_data; // @[sram_cluster.scala 42:37]
  assign io_r_2_cluster_2_data = sram_2_io_r_data; // @[sram_cluster.scala 42:37]
  assign io_r_2_cluster_3_data = sram_3_io_r_data; // @[sram_cluster.scala 42:37]
  assign io_r_2_cluster_4_data = sram_4_io_r_data; // @[sram_cluster.scala 42:37]
  assign io_r_2_cluster_5_data = sram_5_io_r_data; // @[sram_cluster.scala 42:37]
  assign io_r_2_cluster_6_data = sram_6_io_r_data; // @[sram_cluster.scala 42:37]
  assign io_r_2_cluster_7_data = sram_7_io_r_data; // @[sram_cluster.scala 42:37]
  assign io_r_3_cluster_0_data = sram_0_io_r_data; // @[sram_cluster.scala 42:37]
  assign io_r_3_cluster_1_data = sram_1_io_r_data; // @[sram_cluster.scala 42:37]
  assign io_r_3_cluster_2_data = sram_2_io_r_data; // @[sram_cluster.scala 42:37]
  assign io_r_3_cluster_3_data = sram_3_io_r_data; // @[sram_cluster.scala 42:37]
  assign io_r_3_cluster_4_data = sram_4_io_r_data; // @[sram_cluster.scala 42:37]
  assign io_r_3_cluster_5_data = sram_5_io_r_data; // @[sram_cluster.scala 42:37]
  assign io_r_3_cluster_6_data = sram_6_io_r_data; // @[sram_cluster.scala 42:37]
  assign io_r_3_cluster_7_data = sram_7_io_r_data; // @[sram_cluster.scala 42:37]
  assign sram_0_clock = clock;
  assign sram_0_io_w_en = 3'h0 != io_wcs ? 1'h0 : io_w_en; // @[sram_cluster.scala 28:59 sram_cluster.scala 29:29 sram_cluster.scala 27:22]
  assign sram_0_io_w_addr = io_w_addr; // @[sram_cluster.scala 27:22]
  assign sram_0_io_w_data = io_w_data; // @[sram_cluster.scala 27:22]
  assign sram_0_io_r_en = io_r_3_cluster_0_en | (io_r_2_cluster_0_en | (io_r_1_cluster_0_en | io_r_0_cluster_0_en)); // @[sram_cluster.scala 38:42 sram_cluster.scala 39:35]
  assign sram_0_io_r_addr = io_r_3_cluster_0_en ? io_r_3_cluster_0_addr : _GEN_13; // @[sram_cluster.scala 38:42 sram_cluster.scala 40:35]
  assign sram_1_clock = clock;
  assign sram_1_io_w_en = 3'h1 != io_wcs ? 1'h0 : io_w_en; // @[sram_cluster.scala 28:59 sram_cluster.scala 29:29 sram_cluster.scala 27:22]
  assign sram_1_io_w_addr = io_w_addr; // @[sram_cluster.scala 27:22]
  assign sram_1_io_w_data = io_w_data; // @[sram_cluster.scala 27:22]
  assign sram_1_io_r_en = io_r_3_cluster_1_en | (io_r_2_cluster_1_en | (io_r_1_cluster_1_en | io_r_0_cluster_1_en)); // @[sram_cluster.scala 38:42 sram_cluster.scala 39:35]
  assign sram_1_io_r_addr = io_r_3_cluster_1_en ? io_r_3_cluster_1_addr : _GEN_21; // @[sram_cluster.scala 38:42 sram_cluster.scala 40:35]
  assign sram_2_clock = clock;
  assign sram_2_io_w_en = 3'h2 != io_wcs ? 1'h0 : io_w_en; // @[sram_cluster.scala 28:59 sram_cluster.scala 29:29 sram_cluster.scala 27:22]
  assign sram_2_io_w_addr = io_w_addr; // @[sram_cluster.scala 27:22]
  assign sram_2_io_w_data = io_w_data; // @[sram_cluster.scala 27:22]
  assign sram_2_io_r_en = io_r_3_cluster_2_en | (io_r_2_cluster_2_en | (io_r_1_cluster_2_en | io_r_0_cluster_2_en)); // @[sram_cluster.scala 38:42 sram_cluster.scala 39:35]
  assign sram_2_io_r_addr = io_r_3_cluster_2_en ? io_r_3_cluster_2_addr : _GEN_29; // @[sram_cluster.scala 38:42 sram_cluster.scala 40:35]
  assign sram_3_clock = clock;
  assign sram_3_io_w_en = 3'h3 != io_wcs ? 1'h0 : io_w_en; // @[sram_cluster.scala 28:59 sram_cluster.scala 29:29 sram_cluster.scala 27:22]
  assign sram_3_io_w_addr = io_w_addr; // @[sram_cluster.scala 27:22]
  assign sram_3_io_w_data = io_w_data; // @[sram_cluster.scala 27:22]
  assign sram_3_io_r_en = io_r_3_cluster_3_en | (io_r_2_cluster_3_en | (io_r_1_cluster_3_en | io_r_0_cluster_3_en)); // @[sram_cluster.scala 38:42 sram_cluster.scala 39:35]
  assign sram_3_io_r_addr = io_r_3_cluster_3_en ? io_r_3_cluster_3_addr : _GEN_37; // @[sram_cluster.scala 38:42 sram_cluster.scala 40:35]
  assign sram_4_clock = clock;
  assign sram_4_io_w_en = 3'h4 != io_wcs ? 1'h0 : io_w_en; // @[sram_cluster.scala 28:59 sram_cluster.scala 29:29 sram_cluster.scala 27:22]
  assign sram_4_io_w_addr = io_w_addr; // @[sram_cluster.scala 27:22]
  assign sram_4_io_w_data = io_w_data; // @[sram_cluster.scala 27:22]
  assign sram_4_io_r_en = io_r_3_cluster_4_en | (io_r_2_cluster_4_en | (io_r_1_cluster_4_en | io_r_0_cluster_4_en)); // @[sram_cluster.scala 38:42 sram_cluster.scala 39:35]
  assign sram_4_io_r_addr = io_r_3_cluster_4_en ? io_r_3_cluster_4_addr : _GEN_45; // @[sram_cluster.scala 38:42 sram_cluster.scala 40:35]
  assign sram_5_clock = clock;
  assign sram_5_io_w_en = 3'h5 != io_wcs ? 1'h0 : io_w_en; // @[sram_cluster.scala 28:59 sram_cluster.scala 29:29 sram_cluster.scala 27:22]
  assign sram_5_io_w_addr = io_w_addr; // @[sram_cluster.scala 27:22]
  assign sram_5_io_w_data = io_w_data; // @[sram_cluster.scala 27:22]
  assign sram_5_io_r_en = io_r_3_cluster_5_en | (io_r_2_cluster_5_en | (io_r_1_cluster_5_en | io_r_0_cluster_5_en)); // @[sram_cluster.scala 38:42 sram_cluster.scala 39:35]
  assign sram_5_io_r_addr = io_r_3_cluster_5_en ? io_r_3_cluster_5_addr : _GEN_53; // @[sram_cluster.scala 38:42 sram_cluster.scala 40:35]
  assign sram_6_clock = clock;
  assign sram_6_io_w_en = 3'h6 != io_wcs ? 1'h0 : io_w_en; // @[sram_cluster.scala 28:59 sram_cluster.scala 29:29 sram_cluster.scala 27:22]
  assign sram_6_io_w_addr = io_w_addr; // @[sram_cluster.scala 27:22]
  assign sram_6_io_w_data = io_w_data; // @[sram_cluster.scala 27:22]
  assign sram_6_io_r_en = io_r_3_cluster_6_en | (io_r_2_cluster_6_en | (io_r_1_cluster_6_en | io_r_0_cluster_6_en)); // @[sram_cluster.scala 38:42 sram_cluster.scala 39:35]
  assign sram_6_io_r_addr = io_r_3_cluster_6_en ? io_r_3_cluster_6_addr : _GEN_61; // @[sram_cluster.scala 38:42 sram_cluster.scala 40:35]
  assign sram_7_clock = clock;
  assign sram_7_io_w_en = 3'h7 != io_wcs ? 1'h0 : io_w_en; // @[sram_cluster.scala 28:59 sram_cluster.scala 29:29 sram_cluster.scala 27:22]
  assign sram_7_io_w_addr = io_w_addr; // @[sram_cluster.scala 27:22]
  assign sram_7_io_w_data = io_w_data; // @[sram_cluster.scala 27:22]
  assign sram_7_io_r_en = io_r_3_cluster_7_en | (io_r_2_cluster_7_en | (io_r_1_cluster_7_en | io_r_0_cluster_7_en)); // @[sram_cluster.scala 38:42 sram_cluster.scala 39:35]
  assign sram_7_io_r_addr = io_r_3_cluster_7_en ? io_r_3_cluster_7_addr : _GEN_69; // @[sram_cluster.scala 38:42 sram_cluster.scala 40:35]
endmodule
