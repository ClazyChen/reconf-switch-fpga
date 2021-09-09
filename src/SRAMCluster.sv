module SRAMCluster(
  input   clock
);
  wire  sram_0_clock; // @[sram_cluster.scala 24:25]
  wire  sram_0_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_0_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_0_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_1_clock; // @[sram_cluster.scala 24:25]
  wire  sram_1_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_1_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_1_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_2_clock; // @[sram_cluster.scala 24:25]
  wire  sram_2_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_2_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_2_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_3_clock; // @[sram_cluster.scala 24:25]
  wire  sram_3_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_3_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_3_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_4_clock; // @[sram_cluster.scala 24:25]
  wire  sram_4_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_4_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_4_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_5_clock; // @[sram_cluster.scala 24:25]
  wire  sram_5_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_5_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_5_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_6_clock; // @[sram_cluster.scala 24:25]
  wire  sram_6_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_6_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_6_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_7_clock; // @[sram_cluster.scala 24:25]
  wire  sram_7_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_7_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_7_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_8_clock; // @[sram_cluster.scala 24:25]
  wire  sram_8_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_8_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_8_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_9_clock; // @[sram_cluster.scala 24:25]
  wire  sram_9_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_9_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_9_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_10_clock; // @[sram_cluster.scala 24:25]
  wire  sram_10_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_10_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_10_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_11_clock; // @[sram_cluster.scala 24:25]
  wire  sram_11_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_11_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_11_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_12_clock; // @[sram_cluster.scala 24:25]
  wire  sram_12_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_12_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_12_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_13_clock; // @[sram_cluster.scala 24:25]
  wire  sram_13_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_13_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_13_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_14_clock; // @[sram_cluster.scala 24:25]
  wire  sram_14_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_14_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_14_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_15_clock; // @[sram_cluster.scala 24:25]
  wire  sram_15_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_15_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_15_io_r_data; // @[sram_cluster.scala 24:25]
  SRAM sram_0 ( // @[sram_cluster.scala 24:25]
    .clock(sram_0_clock),
    .io_r_en(sram_0_io_r_en),
    .io_r_addr(sram_0_io_r_addr),
    .io_r_data(sram_0_io_r_data)
  );
  SRAM sram_1 ( // @[sram_cluster.scala 24:25]
    .clock(sram_1_clock),
    .io_r_en(sram_1_io_r_en),
    .io_r_addr(sram_1_io_r_addr),
    .io_r_data(sram_1_io_r_data)
  );
  SRAM sram_2 ( // @[sram_cluster.scala 24:25]
    .clock(sram_2_clock),
    .io_r_en(sram_2_io_r_en),
    .io_r_addr(sram_2_io_r_addr),
    .io_r_data(sram_2_io_r_data)
  );
  SRAM sram_3 ( // @[sram_cluster.scala 24:25]
    .clock(sram_3_clock),
    .io_r_en(sram_3_io_r_en),
    .io_r_addr(sram_3_io_r_addr),
    .io_r_data(sram_3_io_r_data)
  );
  SRAM sram_4 ( // @[sram_cluster.scala 24:25]
    .clock(sram_4_clock),
    .io_r_en(sram_4_io_r_en),
    .io_r_addr(sram_4_io_r_addr),
    .io_r_data(sram_4_io_r_data)
  );
  SRAM sram_5 ( // @[sram_cluster.scala 24:25]
    .clock(sram_5_clock),
    .io_r_en(sram_5_io_r_en),
    .io_r_addr(sram_5_io_r_addr),
    .io_r_data(sram_5_io_r_data)
  );
  SRAM sram_6 ( // @[sram_cluster.scala 24:25]
    .clock(sram_6_clock),
    .io_r_en(sram_6_io_r_en),
    .io_r_addr(sram_6_io_r_addr),
    .io_r_data(sram_6_io_r_data)
  );
  SRAM sram_7 ( // @[sram_cluster.scala 24:25]
    .clock(sram_7_clock),
    .io_r_en(sram_7_io_r_en),
    .io_r_addr(sram_7_io_r_addr),
    .io_r_data(sram_7_io_r_data)
  );
  SRAM sram_8 ( // @[sram_cluster.scala 24:25]
    .clock(sram_8_clock),
    .io_r_en(sram_8_io_r_en),
    .io_r_addr(sram_8_io_r_addr),
    .io_r_data(sram_8_io_r_data)
  );
  SRAM sram_9 ( // @[sram_cluster.scala 24:25]
    .clock(sram_9_clock),
    .io_r_en(sram_9_io_r_en),
    .io_r_addr(sram_9_io_r_addr),
    .io_r_data(sram_9_io_r_data)
  );
  SRAM sram_10 ( // @[sram_cluster.scala 24:25]
    .clock(sram_10_clock),
    .io_r_en(sram_10_io_r_en),
    .io_r_addr(sram_10_io_r_addr),
    .io_r_data(sram_10_io_r_data)
  );
  SRAM sram_11 ( // @[sram_cluster.scala 24:25]
    .clock(sram_11_clock),
    .io_r_en(sram_11_io_r_en),
    .io_r_addr(sram_11_io_r_addr),
    .io_r_data(sram_11_io_r_data)
  );
  SRAM sram_12 ( // @[sram_cluster.scala 24:25]
    .clock(sram_12_clock),
    .io_r_en(sram_12_io_r_en),
    .io_r_addr(sram_12_io_r_addr),
    .io_r_data(sram_12_io_r_data)
  );
  SRAM sram_13 ( // @[sram_cluster.scala 24:25]
    .clock(sram_13_clock),
    .io_r_en(sram_13_io_r_en),
    .io_r_addr(sram_13_io_r_addr),
    .io_r_data(sram_13_io_r_data)
  );
  SRAM sram_14 ( // @[sram_cluster.scala 24:25]
    .clock(sram_14_clock),
    .io_r_en(sram_14_io_r_en),
    .io_r_addr(sram_14_io_r_addr),
    .io_r_data(sram_14_io_r_data)
  );
  SRAM sram_15 ( // @[sram_cluster.scala 24:25]
    .clock(sram_15_clock),
    .io_r_en(sram_15_io_r_en),
    .io_r_addr(sram_15_io_r_addr),
    .io_r_data(sram_15_io_r_data)
  );
  assign sram_0_clock = clock;
  assign sram_0_io_r_en = 1'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_0_io_r_addr = 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_1_clock = clock;
  assign sram_1_io_r_en = 1'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_1_io_r_addr = 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_2_clock = clock;
  assign sram_2_io_r_en = 1'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_2_io_r_addr = 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_3_clock = clock;
  assign sram_3_io_r_en = 1'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_3_io_r_addr = 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_4_clock = clock;
  assign sram_4_io_r_en = 1'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_4_io_r_addr = 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_5_clock = clock;
  assign sram_5_io_r_en = 1'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_5_io_r_addr = 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_6_clock = clock;
  assign sram_6_io_r_en = 1'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_6_io_r_addr = 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_7_clock = clock;
  assign sram_7_io_r_en = 1'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_7_io_r_addr = 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_8_clock = clock;
  assign sram_8_io_r_en = 1'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_8_io_r_addr = 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_9_clock = clock;
  assign sram_9_io_r_en = 1'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_9_io_r_addr = 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_10_clock = clock;
  assign sram_10_io_r_en = 1'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_10_io_r_addr = 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_11_clock = clock;
  assign sram_11_io_r_en = 1'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_11_io_r_addr = 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_12_clock = clock;
  assign sram_12_io_r_en = 1'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_12_io_r_addr = 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_13_clock = clock;
  assign sram_13_io_r_en = 1'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_13_io_r_addr = 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_14_clock = clock;
  assign sram_14_io_r_en = 1'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_14_io_r_addr = 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_15_clock = clock;
  assign sram_15_io_r_en = 1'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_15_io_r_addr = 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
endmodule
