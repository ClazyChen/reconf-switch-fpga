module SRAMCluster(
  input         clock,
  input  [3:0]  io_w_wcs,
  input         io_w_w_en,
  input  [7:0]  io_w_w_addr,
  input  [63:0] io_w_w_data,
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
  input         io_r_0_cluster_8_en,
  input  [7:0]  io_r_0_cluster_8_addr,
  output [63:0] io_r_0_cluster_8_data,
  input         io_r_0_cluster_9_en,
  input  [7:0]  io_r_0_cluster_9_addr,
  output [63:0] io_r_0_cluster_9_data,
  input         io_r_0_cluster_10_en,
  input  [7:0]  io_r_0_cluster_10_addr,
  output [63:0] io_r_0_cluster_10_data,
  input         io_r_0_cluster_11_en,
  input  [7:0]  io_r_0_cluster_11_addr,
  output [63:0] io_r_0_cluster_11_data,
  input         io_r_0_cluster_12_en,
  input  [7:0]  io_r_0_cluster_12_addr,
  output [63:0] io_r_0_cluster_12_data,
  input         io_r_0_cluster_13_en,
  input  [7:0]  io_r_0_cluster_13_addr,
  output [63:0] io_r_0_cluster_13_data,
  input         io_r_0_cluster_14_en,
  input  [7:0]  io_r_0_cluster_14_addr,
  output [63:0] io_r_0_cluster_14_data,
  input         io_r_0_cluster_15_en,
  input  [7:0]  io_r_0_cluster_15_addr,
  output [63:0] io_r_0_cluster_15_data,
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
  input         io_r_1_cluster_8_en,
  input  [7:0]  io_r_1_cluster_8_addr,
  output [63:0] io_r_1_cluster_8_data,
  input         io_r_1_cluster_9_en,
  input  [7:0]  io_r_1_cluster_9_addr,
  output [63:0] io_r_1_cluster_9_data,
  input         io_r_1_cluster_10_en,
  input  [7:0]  io_r_1_cluster_10_addr,
  output [63:0] io_r_1_cluster_10_data,
  input         io_r_1_cluster_11_en,
  input  [7:0]  io_r_1_cluster_11_addr,
  output [63:0] io_r_1_cluster_11_data,
  input         io_r_1_cluster_12_en,
  input  [7:0]  io_r_1_cluster_12_addr,
  output [63:0] io_r_1_cluster_12_data,
  input         io_r_1_cluster_13_en,
  input  [7:0]  io_r_1_cluster_13_addr,
  output [63:0] io_r_1_cluster_13_data,
  input         io_r_1_cluster_14_en,
  input  [7:0]  io_r_1_cluster_14_addr,
  output [63:0] io_r_1_cluster_14_data,
  input         io_r_1_cluster_15_en,
  input  [7:0]  io_r_1_cluster_15_addr,
  output [63:0] io_r_1_cluster_15_data
);
  wire  sram_0_clock; // @[sram_cluster.scala 24:25]
  wire  sram_0_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_0_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_0_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_0_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_0_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_0_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_1_clock; // @[sram_cluster.scala 24:25]
  wire  sram_1_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_1_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_1_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_1_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_1_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_1_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_2_clock; // @[sram_cluster.scala 24:25]
  wire  sram_2_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_2_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_2_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_2_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_2_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_2_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_3_clock; // @[sram_cluster.scala 24:25]
  wire  sram_3_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_3_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_3_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_3_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_3_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_3_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_4_clock; // @[sram_cluster.scala 24:25]
  wire  sram_4_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_4_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_4_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_4_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_4_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_4_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_5_clock; // @[sram_cluster.scala 24:25]
  wire  sram_5_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_5_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_5_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_5_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_5_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_5_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_6_clock; // @[sram_cluster.scala 24:25]
  wire  sram_6_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_6_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_6_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_6_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_6_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_6_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_7_clock; // @[sram_cluster.scala 24:25]
  wire  sram_7_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_7_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_7_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_7_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_7_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_7_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_8_clock; // @[sram_cluster.scala 24:25]
  wire  sram_8_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_8_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_8_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_8_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_8_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_8_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_9_clock; // @[sram_cluster.scala 24:25]
  wire  sram_9_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_9_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_9_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_9_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_9_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_9_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_10_clock; // @[sram_cluster.scala 24:25]
  wire  sram_10_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_10_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_10_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_10_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_10_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_10_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_11_clock; // @[sram_cluster.scala 24:25]
  wire  sram_11_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_11_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_11_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_11_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_11_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_11_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_12_clock; // @[sram_cluster.scala 24:25]
  wire  sram_12_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_12_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_12_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_12_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_12_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_12_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_13_clock; // @[sram_cluster.scala 24:25]
  wire  sram_13_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_13_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_13_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_13_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_13_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_13_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_14_clock; // @[sram_cluster.scala 24:25]
  wire  sram_14_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_14_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_14_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_14_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_14_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_14_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_15_clock; // @[sram_cluster.scala 24:25]
  wire  sram_15_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_15_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_15_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_15_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_15_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_15_io_r_data; // @[sram_cluster.scala 24:25]
  wire [7:0] _GEN_17 = io_r_0_cluster_0_en ? io_r_0_cluster_0_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_21 = io_r_0_cluster_1_en ? io_r_0_cluster_1_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_25 = io_r_0_cluster_2_en ? io_r_0_cluster_2_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_29 = io_r_0_cluster_3_en ? io_r_0_cluster_3_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_33 = io_r_0_cluster_4_en ? io_r_0_cluster_4_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_37 = io_r_0_cluster_5_en ? io_r_0_cluster_5_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_41 = io_r_0_cluster_6_en ? io_r_0_cluster_6_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_45 = io_r_0_cluster_7_en ? io_r_0_cluster_7_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_49 = io_r_0_cluster_8_en ? io_r_0_cluster_8_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_53 = io_r_0_cluster_9_en ? io_r_0_cluster_9_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_57 = io_r_0_cluster_10_en ? io_r_0_cluster_10_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_61 = io_r_0_cluster_11_en ? io_r_0_cluster_11_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_65 = io_r_0_cluster_12_en ? io_r_0_cluster_12_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_69 = io_r_0_cluster_13_en ? io_r_0_cluster_13_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_73 = io_r_0_cluster_14_en ? io_r_0_cluster_14_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_77 = io_r_0_cluster_15_en ? io_r_0_cluster_15_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  SRAM sram_0 ( // @[sram_cluster.scala 24:25]
    .clock(sram_0_clock),
    .io_w_en(sram_0_io_w_en),
    .io_w_addr(sram_0_io_w_addr),
    .io_w_data(sram_0_io_w_data),
    .io_r_en(sram_0_io_r_en),
    .io_r_addr(sram_0_io_r_addr),
    .io_r_data(sram_0_io_r_data)
  );
  SRAM sram_1 ( // @[sram_cluster.scala 24:25]
    .clock(sram_1_clock),
    .io_w_en(sram_1_io_w_en),
    .io_w_addr(sram_1_io_w_addr),
    .io_w_data(sram_1_io_w_data),
    .io_r_en(sram_1_io_r_en),
    .io_r_addr(sram_1_io_r_addr),
    .io_r_data(sram_1_io_r_data)
  );
  SRAM sram_2 ( // @[sram_cluster.scala 24:25]
    .clock(sram_2_clock),
    .io_w_en(sram_2_io_w_en),
    .io_w_addr(sram_2_io_w_addr),
    .io_w_data(sram_2_io_w_data),
    .io_r_en(sram_2_io_r_en),
    .io_r_addr(sram_2_io_r_addr),
    .io_r_data(sram_2_io_r_data)
  );
  SRAM sram_3 ( // @[sram_cluster.scala 24:25]
    .clock(sram_3_clock),
    .io_w_en(sram_3_io_w_en),
    .io_w_addr(sram_3_io_w_addr),
    .io_w_data(sram_3_io_w_data),
    .io_r_en(sram_3_io_r_en),
    .io_r_addr(sram_3_io_r_addr),
    .io_r_data(sram_3_io_r_data)
  );
  SRAM sram_4 ( // @[sram_cluster.scala 24:25]
    .clock(sram_4_clock),
    .io_w_en(sram_4_io_w_en),
    .io_w_addr(sram_4_io_w_addr),
    .io_w_data(sram_4_io_w_data),
    .io_r_en(sram_4_io_r_en),
    .io_r_addr(sram_4_io_r_addr),
    .io_r_data(sram_4_io_r_data)
  );
  SRAM sram_5 ( // @[sram_cluster.scala 24:25]
    .clock(sram_5_clock),
    .io_w_en(sram_5_io_w_en),
    .io_w_addr(sram_5_io_w_addr),
    .io_w_data(sram_5_io_w_data),
    .io_r_en(sram_5_io_r_en),
    .io_r_addr(sram_5_io_r_addr),
    .io_r_data(sram_5_io_r_data)
  );
  SRAM sram_6 ( // @[sram_cluster.scala 24:25]
    .clock(sram_6_clock),
    .io_w_en(sram_6_io_w_en),
    .io_w_addr(sram_6_io_w_addr),
    .io_w_data(sram_6_io_w_data),
    .io_r_en(sram_6_io_r_en),
    .io_r_addr(sram_6_io_r_addr),
    .io_r_data(sram_6_io_r_data)
  );
  SRAM sram_7 ( // @[sram_cluster.scala 24:25]
    .clock(sram_7_clock),
    .io_w_en(sram_7_io_w_en),
    .io_w_addr(sram_7_io_w_addr),
    .io_w_data(sram_7_io_w_data),
    .io_r_en(sram_7_io_r_en),
    .io_r_addr(sram_7_io_r_addr),
    .io_r_data(sram_7_io_r_data)
  );
  SRAM sram_8 ( // @[sram_cluster.scala 24:25]
    .clock(sram_8_clock),
    .io_w_en(sram_8_io_w_en),
    .io_w_addr(sram_8_io_w_addr),
    .io_w_data(sram_8_io_w_data),
    .io_r_en(sram_8_io_r_en),
    .io_r_addr(sram_8_io_r_addr),
    .io_r_data(sram_8_io_r_data)
  );
  SRAM sram_9 ( // @[sram_cluster.scala 24:25]
    .clock(sram_9_clock),
    .io_w_en(sram_9_io_w_en),
    .io_w_addr(sram_9_io_w_addr),
    .io_w_data(sram_9_io_w_data),
    .io_r_en(sram_9_io_r_en),
    .io_r_addr(sram_9_io_r_addr),
    .io_r_data(sram_9_io_r_data)
  );
  SRAM sram_10 ( // @[sram_cluster.scala 24:25]
    .clock(sram_10_clock),
    .io_w_en(sram_10_io_w_en),
    .io_w_addr(sram_10_io_w_addr),
    .io_w_data(sram_10_io_w_data),
    .io_r_en(sram_10_io_r_en),
    .io_r_addr(sram_10_io_r_addr),
    .io_r_data(sram_10_io_r_data)
  );
  SRAM sram_11 ( // @[sram_cluster.scala 24:25]
    .clock(sram_11_clock),
    .io_w_en(sram_11_io_w_en),
    .io_w_addr(sram_11_io_w_addr),
    .io_w_data(sram_11_io_w_data),
    .io_r_en(sram_11_io_r_en),
    .io_r_addr(sram_11_io_r_addr),
    .io_r_data(sram_11_io_r_data)
  );
  SRAM sram_12 ( // @[sram_cluster.scala 24:25]
    .clock(sram_12_clock),
    .io_w_en(sram_12_io_w_en),
    .io_w_addr(sram_12_io_w_addr),
    .io_w_data(sram_12_io_w_data),
    .io_r_en(sram_12_io_r_en),
    .io_r_addr(sram_12_io_r_addr),
    .io_r_data(sram_12_io_r_data)
  );
  SRAM sram_13 ( // @[sram_cluster.scala 24:25]
    .clock(sram_13_clock),
    .io_w_en(sram_13_io_w_en),
    .io_w_addr(sram_13_io_w_addr),
    .io_w_data(sram_13_io_w_data),
    .io_r_en(sram_13_io_r_en),
    .io_r_addr(sram_13_io_r_addr),
    .io_r_data(sram_13_io_r_data)
  );
  SRAM sram_14 ( // @[sram_cluster.scala 24:25]
    .clock(sram_14_clock),
    .io_w_en(sram_14_io_w_en),
    .io_w_addr(sram_14_io_w_addr),
    .io_w_data(sram_14_io_w_data),
    .io_r_en(sram_14_io_r_en),
    .io_r_addr(sram_14_io_r_addr),
    .io_r_data(sram_14_io_r_data)
  );
  SRAM sram_15 ( // @[sram_cluster.scala 24:25]
    .clock(sram_15_clock),
    .io_w_en(sram_15_io_w_en),
    .io_w_addr(sram_15_io_w_addr),
    .io_w_data(sram_15_io_w_data),
    .io_r_en(sram_15_io_r_en),
    .io_r_addr(sram_15_io_r_addr),
    .io_r_data(sram_15_io_r_data)
  );
  assign io_r_0_cluster_0_data = sram_0_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_1_data = sram_1_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_2_data = sram_2_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_3_data = sram_3_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_4_data = sram_4_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_5_data = sram_5_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_6_data = sram_6_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_7_data = sram_7_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_8_data = sram_8_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_9_data = sram_9_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_10_data = sram_10_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_11_data = sram_11_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_12_data = sram_12_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_13_data = sram_13_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_14_data = sram_14_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_15_data = sram_15_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_0_data = sram_0_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_1_data = sram_1_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_2_data = sram_2_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_3_data = sram_3_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_4_data = sram_4_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_5_data = sram_5_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_6_data = sram_6_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_7_data = sram_7_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_8_data = sram_8_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_9_data = sram_9_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_10_data = sram_10_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_11_data = sram_11_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_12_data = sram_12_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_13_data = sram_13_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_14_data = sram_14_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_15_data = sram_15_io_r_data; // @[sram_cluster.scala 45:37]
  assign sram_0_clock = clock;
  assign sram_0_io_w_en = 4'h0 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_0_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_0_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_0_io_r_en = io_r_1_cluster_0_en | io_r_0_cluster_0_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_0_io_r_addr = io_r_1_cluster_0_en ? io_r_1_cluster_0_addr : _GEN_17; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_1_clock = clock;
  assign sram_1_io_w_en = 4'h1 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_1_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_1_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_1_io_r_en = io_r_1_cluster_1_en | io_r_0_cluster_1_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_1_io_r_addr = io_r_1_cluster_1_en ? io_r_1_cluster_1_addr : _GEN_21; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_2_clock = clock;
  assign sram_2_io_w_en = 4'h2 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_2_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_2_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_2_io_r_en = io_r_1_cluster_2_en | io_r_0_cluster_2_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_2_io_r_addr = io_r_1_cluster_2_en ? io_r_1_cluster_2_addr : _GEN_25; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_3_clock = clock;
  assign sram_3_io_w_en = 4'h3 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_3_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_3_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_3_io_r_en = io_r_1_cluster_3_en | io_r_0_cluster_3_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_3_io_r_addr = io_r_1_cluster_3_en ? io_r_1_cluster_3_addr : _GEN_29; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_4_clock = clock;
  assign sram_4_io_w_en = 4'h4 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_4_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_4_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_4_io_r_en = io_r_1_cluster_4_en | io_r_0_cluster_4_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_4_io_r_addr = io_r_1_cluster_4_en ? io_r_1_cluster_4_addr : _GEN_33; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_5_clock = clock;
  assign sram_5_io_w_en = 4'h5 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_5_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_5_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_5_io_r_en = io_r_1_cluster_5_en | io_r_0_cluster_5_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_5_io_r_addr = io_r_1_cluster_5_en ? io_r_1_cluster_5_addr : _GEN_37; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_6_clock = clock;
  assign sram_6_io_w_en = 4'h6 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_6_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_6_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_6_io_r_en = io_r_1_cluster_6_en | io_r_0_cluster_6_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_6_io_r_addr = io_r_1_cluster_6_en ? io_r_1_cluster_6_addr : _GEN_41; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_7_clock = clock;
  assign sram_7_io_w_en = 4'h7 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_7_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_7_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_7_io_r_en = io_r_1_cluster_7_en | io_r_0_cluster_7_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_7_io_r_addr = io_r_1_cluster_7_en ? io_r_1_cluster_7_addr : _GEN_45; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_8_clock = clock;
  assign sram_8_io_w_en = 4'h8 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_8_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_8_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_8_io_r_en = io_r_1_cluster_8_en | io_r_0_cluster_8_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_8_io_r_addr = io_r_1_cluster_8_en ? io_r_1_cluster_8_addr : _GEN_49; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_9_clock = clock;
  assign sram_9_io_w_en = 4'h9 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_9_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_9_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_9_io_r_en = io_r_1_cluster_9_en | io_r_0_cluster_9_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_9_io_r_addr = io_r_1_cluster_9_en ? io_r_1_cluster_9_addr : _GEN_53; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_10_clock = clock;
  assign sram_10_io_w_en = 4'ha != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_10_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_10_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_10_io_r_en = io_r_1_cluster_10_en | io_r_0_cluster_10_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_10_io_r_addr = io_r_1_cluster_10_en ? io_r_1_cluster_10_addr : _GEN_57; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_11_clock = clock;
  assign sram_11_io_w_en = 4'hb != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_11_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_11_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_11_io_r_en = io_r_1_cluster_11_en | io_r_0_cluster_11_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_11_io_r_addr = io_r_1_cluster_11_en ? io_r_1_cluster_11_addr : _GEN_61; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_12_clock = clock;
  assign sram_12_io_w_en = 4'hc != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_12_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_12_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_12_io_r_en = io_r_1_cluster_12_en | io_r_0_cluster_12_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_12_io_r_addr = io_r_1_cluster_12_en ? io_r_1_cluster_12_addr : _GEN_65; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_13_clock = clock;
  assign sram_13_io_w_en = 4'hd != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_13_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_13_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_13_io_r_en = io_r_1_cluster_13_en | io_r_0_cluster_13_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_13_io_r_addr = io_r_1_cluster_13_en ? io_r_1_cluster_13_addr : _GEN_69; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_14_clock = clock;
  assign sram_14_io_w_en = 4'he != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_14_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_14_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_14_io_r_en = io_r_1_cluster_14_en | io_r_0_cluster_14_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_14_io_r_addr = io_r_1_cluster_14_en ? io_r_1_cluster_14_addr : _GEN_73; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_15_clock = clock;
  assign sram_15_io_w_en = 4'hf != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_15_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_15_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_15_io_r_en = io_r_1_cluster_15_en | io_r_0_cluster_15_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_15_io_r_addr = io_r_1_cluster_15_en ? io_r_1_cluster_15_addr : _GEN_77; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
endmodule
