module SRAMCluster(
  input         clock,
  input  [5:0]  io_w_wcs,
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
  input         io_r_0_cluster_16_en,
  input  [7:0]  io_r_0_cluster_16_addr,
  output [63:0] io_r_0_cluster_16_data,
  input         io_r_0_cluster_17_en,
  input  [7:0]  io_r_0_cluster_17_addr,
  output [63:0] io_r_0_cluster_17_data,
  input         io_r_0_cluster_18_en,
  input  [7:0]  io_r_0_cluster_18_addr,
  output [63:0] io_r_0_cluster_18_data,
  input         io_r_0_cluster_19_en,
  input  [7:0]  io_r_0_cluster_19_addr,
  output [63:0] io_r_0_cluster_19_data,
  input         io_r_0_cluster_20_en,
  input  [7:0]  io_r_0_cluster_20_addr,
  output [63:0] io_r_0_cluster_20_data,
  input         io_r_0_cluster_21_en,
  input  [7:0]  io_r_0_cluster_21_addr,
  output [63:0] io_r_0_cluster_21_data,
  input         io_r_0_cluster_22_en,
  input  [7:0]  io_r_0_cluster_22_addr,
  output [63:0] io_r_0_cluster_22_data,
  input         io_r_0_cluster_23_en,
  input  [7:0]  io_r_0_cluster_23_addr,
  output [63:0] io_r_0_cluster_23_data,
  input         io_r_0_cluster_24_en,
  input  [7:0]  io_r_0_cluster_24_addr,
  output [63:0] io_r_0_cluster_24_data,
  input         io_r_0_cluster_25_en,
  input  [7:0]  io_r_0_cluster_25_addr,
  output [63:0] io_r_0_cluster_25_data,
  input         io_r_0_cluster_26_en,
  input  [7:0]  io_r_0_cluster_26_addr,
  output [63:0] io_r_0_cluster_26_data,
  input         io_r_0_cluster_27_en,
  input  [7:0]  io_r_0_cluster_27_addr,
  output [63:0] io_r_0_cluster_27_data,
  input         io_r_0_cluster_28_en,
  input  [7:0]  io_r_0_cluster_28_addr,
  output [63:0] io_r_0_cluster_28_data,
  input         io_r_0_cluster_29_en,
  input  [7:0]  io_r_0_cluster_29_addr,
  output [63:0] io_r_0_cluster_29_data,
  input         io_r_0_cluster_30_en,
  input  [7:0]  io_r_0_cluster_30_addr,
  output [63:0] io_r_0_cluster_30_data,
  input         io_r_0_cluster_31_en,
  input  [7:0]  io_r_0_cluster_31_addr,
  output [63:0] io_r_0_cluster_31_data,
  input         io_r_0_cluster_32_en,
  input  [7:0]  io_r_0_cluster_32_addr,
  output [63:0] io_r_0_cluster_32_data,
  input         io_r_0_cluster_33_en,
  input  [7:0]  io_r_0_cluster_33_addr,
  output [63:0] io_r_0_cluster_33_data,
  input         io_r_0_cluster_34_en,
  input  [7:0]  io_r_0_cluster_34_addr,
  output [63:0] io_r_0_cluster_34_data,
  input         io_r_0_cluster_35_en,
  input  [7:0]  io_r_0_cluster_35_addr,
  output [63:0] io_r_0_cluster_35_data,
  input         io_r_0_cluster_36_en,
  input  [7:0]  io_r_0_cluster_36_addr,
  output [63:0] io_r_0_cluster_36_data,
  input         io_r_0_cluster_37_en,
  input  [7:0]  io_r_0_cluster_37_addr,
  output [63:0] io_r_0_cluster_37_data,
  input         io_r_0_cluster_38_en,
  input  [7:0]  io_r_0_cluster_38_addr,
  output [63:0] io_r_0_cluster_38_data,
  input         io_r_0_cluster_39_en,
  input  [7:0]  io_r_0_cluster_39_addr,
  output [63:0] io_r_0_cluster_39_data,
  input         io_r_0_cluster_40_en,
  input  [7:0]  io_r_0_cluster_40_addr,
  output [63:0] io_r_0_cluster_40_data,
  input         io_r_0_cluster_41_en,
  input  [7:0]  io_r_0_cluster_41_addr,
  output [63:0] io_r_0_cluster_41_data,
  input         io_r_0_cluster_42_en,
  input  [7:0]  io_r_0_cluster_42_addr,
  output [63:0] io_r_0_cluster_42_data,
  input         io_r_0_cluster_43_en,
  input  [7:0]  io_r_0_cluster_43_addr,
  output [63:0] io_r_0_cluster_43_data,
  input         io_r_0_cluster_44_en,
  input  [7:0]  io_r_0_cluster_44_addr,
  output [63:0] io_r_0_cluster_44_data,
  input         io_r_0_cluster_45_en,
  input  [7:0]  io_r_0_cluster_45_addr,
  output [63:0] io_r_0_cluster_45_data,
  input         io_r_0_cluster_46_en,
  input  [7:0]  io_r_0_cluster_46_addr,
  output [63:0] io_r_0_cluster_46_data,
  input         io_r_0_cluster_47_en,
  input  [7:0]  io_r_0_cluster_47_addr,
  output [63:0] io_r_0_cluster_47_data,
  input         io_r_0_cluster_48_en,
  input  [7:0]  io_r_0_cluster_48_addr,
  output [63:0] io_r_0_cluster_48_data,
  input         io_r_0_cluster_49_en,
  input  [7:0]  io_r_0_cluster_49_addr,
  output [63:0] io_r_0_cluster_49_data,
  input         io_r_0_cluster_50_en,
  input  [7:0]  io_r_0_cluster_50_addr,
  output [63:0] io_r_0_cluster_50_data,
  input         io_r_0_cluster_51_en,
  input  [7:0]  io_r_0_cluster_51_addr,
  output [63:0] io_r_0_cluster_51_data,
  input         io_r_0_cluster_52_en,
  input  [7:0]  io_r_0_cluster_52_addr,
  output [63:0] io_r_0_cluster_52_data,
  input         io_r_0_cluster_53_en,
  input  [7:0]  io_r_0_cluster_53_addr,
  output [63:0] io_r_0_cluster_53_data,
  input         io_r_0_cluster_54_en,
  input  [7:0]  io_r_0_cluster_54_addr,
  output [63:0] io_r_0_cluster_54_data,
  input         io_r_0_cluster_55_en,
  input  [7:0]  io_r_0_cluster_55_addr,
  output [63:0] io_r_0_cluster_55_data,
  input         io_r_0_cluster_56_en,
  input  [7:0]  io_r_0_cluster_56_addr,
  output [63:0] io_r_0_cluster_56_data,
  input         io_r_0_cluster_57_en,
  input  [7:0]  io_r_0_cluster_57_addr,
  output [63:0] io_r_0_cluster_57_data,
  input         io_r_0_cluster_58_en,
  input  [7:0]  io_r_0_cluster_58_addr,
  output [63:0] io_r_0_cluster_58_data,
  input         io_r_0_cluster_59_en,
  input  [7:0]  io_r_0_cluster_59_addr,
  output [63:0] io_r_0_cluster_59_data,
  input         io_r_0_cluster_60_en,
  input  [7:0]  io_r_0_cluster_60_addr,
  output [63:0] io_r_0_cluster_60_data,
  input         io_r_0_cluster_61_en,
  input  [7:0]  io_r_0_cluster_61_addr,
  output [63:0] io_r_0_cluster_61_data,
  input         io_r_0_cluster_62_en,
  input  [7:0]  io_r_0_cluster_62_addr,
  output [63:0] io_r_0_cluster_62_data,
  input         io_r_0_cluster_63_en,
  input  [7:0]  io_r_0_cluster_63_addr,
  output [63:0] io_r_0_cluster_63_data
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
  wire  sram_16_clock; // @[sram_cluster.scala 24:25]
  wire  sram_16_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_16_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_16_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_16_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_16_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_16_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_17_clock; // @[sram_cluster.scala 24:25]
  wire  sram_17_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_17_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_17_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_17_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_17_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_17_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_18_clock; // @[sram_cluster.scala 24:25]
  wire  sram_18_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_18_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_18_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_18_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_18_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_18_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_19_clock; // @[sram_cluster.scala 24:25]
  wire  sram_19_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_19_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_19_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_19_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_19_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_19_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_20_clock; // @[sram_cluster.scala 24:25]
  wire  sram_20_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_20_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_20_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_20_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_20_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_20_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_21_clock; // @[sram_cluster.scala 24:25]
  wire  sram_21_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_21_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_21_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_21_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_21_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_21_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_22_clock; // @[sram_cluster.scala 24:25]
  wire  sram_22_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_22_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_22_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_22_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_22_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_22_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_23_clock; // @[sram_cluster.scala 24:25]
  wire  sram_23_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_23_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_23_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_23_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_23_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_23_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_24_clock; // @[sram_cluster.scala 24:25]
  wire  sram_24_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_24_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_24_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_24_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_24_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_24_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_25_clock; // @[sram_cluster.scala 24:25]
  wire  sram_25_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_25_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_25_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_25_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_25_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_25_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_26_clock; // @[sram_cluster.scala 24:25]
  wire  sram_26_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_26_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_26_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_26_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_26_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_26_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_27_clock; // @[sram_cluster.scala 24:25]
  wire  sram_27_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_27_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_27_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_27_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_27_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_27_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_28_clock; // @[sram_cluster.scala 24:25]
  wire  sram_28_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_28_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_28_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_28_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_28_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_28_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_29_clock; // @[sram_cluster.scala 24:25]
  wire  sram_29_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_29_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_29_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_29_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_29_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_29_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_30_clock; // @[sram_cluster.scala 24:25]
  wire  sram_30_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_30_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_30_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_30_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_30_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_30_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_31_clock; // @[sram_cluster.scala 24:25]
  wire  sram_31_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_31_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_31_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_31_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_31_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_31_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_32_clock; // @[sram_cluster.scala 24:25]
  wire  sram_32_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_32_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_32_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_32_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_32_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_32_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_33_clock; // @[sram_cluster.scala 24:25]
  wire  sram_33_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_33_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_33_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_33_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_33_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_33_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_34_clock; // @[sram_cluster.scala 24:25]
  wire  sram_34_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_34_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_34_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_34_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_34_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_34_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_35_clock; // @[sram_cluster.scala 24:25]
  wire  sram_35_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_35_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_35_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_35_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_35_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_35_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_36_clock; // @[sram_cluster.scala 24:25]
  wire  sram_36_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_36_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_36_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_36_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_36_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_36_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_37_clock; // @[sram_cluster.scala 24:25]
  wire  sram_37_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_37_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_37_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_37_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_37_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_37_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_38_clock; // @[sram_cluster.scala 24:25]
  wire  sram_38_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_38_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_38_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_38_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_38_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_38_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_39_clock; // @[sram_cluster.scala 24:25]
  wire  sram_39_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_39_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_39_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_39_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_39_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_39_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_40_clock; // @[sram_cluster.scala 24:25]
  wire  sram_40_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_40_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_40_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_40_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_40_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_40_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_41_clock; // @[sram_cluster.scala 24:25]
  wire  sram_41_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_41_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_41_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_41_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_41_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_41_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_42_clock; // @[sram_cluster.scala 24:25]
  wire  sram_42_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_42_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_42_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_42_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_42_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_42_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_43_clock; // @[sram_cluster.scala 24:25]
  wire  sram_43_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_43_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_43_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_43_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_43_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_43_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_44_clock; // @[sram_cluster.scala 24:25]
  wire  sram_44_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_44_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_44_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_44_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_44_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_44_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_45_clock; // @[sram_cluster.scala 24:25]
  wire  sram_45_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_45_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_45_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_45_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_45_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_45_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_46_clock; // @[sram_cluster.scala 24:25]
  wire  sram_46_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_46_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_46_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_46_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_46_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_46_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_47_clock; // @[sram_cluster.scala 24:25]
  wire  sram_47_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_47_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_47_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_47_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_47_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_47_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_48_clock; // @[sram_cluster.scala 24:25]
  wire  sram_48_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_48_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_48_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_48_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_48_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_48_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_49_clock; // @[sram_cluster.scala 24:25]
  wire  sram_49_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_49_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_49_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_49_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_49_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_49_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_50_clock; // @[sram_cluster.scala 24:25]
  wire  sram_50_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_50_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_50_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_50_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_50_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_50_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_51_clock; // @[sram_cluster.scala 24:25]
  wire  sram_51_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_51_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_51_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_51_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_51_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_51_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_52_clock; // @[sram_cluster.scala 24:25]
  wire  sram_52_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_52_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_52_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_52_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_52_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_52_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_53_clock; // @[sram_cluster.scala 24:25]
  wire  sram_53_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_53_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_53_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_53_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_53_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_53_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_54_clock; // @[sram_cluster.scala 24:25]
  wire  sram_54_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_54_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_54_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_54_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_54_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_54_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_55_clock; // @[sram_cluster.scala 24:25]
  wire  sram_55_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_55_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_55_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_55_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_55_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_55_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_56_clock; // @[sram_cluster.scala 24:25]
  wire  sram_56_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_56_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_56_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_56_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_56_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_56_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_57_clock; // @[sram_cluster.scala 24:25]
  wire  sram_57_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_57_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_57_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_57_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_57_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_57_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_58_clock; // @[sram_cluster.scala 24:25]
  wire  sram_58_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_58_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_58_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_58_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_58_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_58_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_59_clock; // @[sram_cluster.scala 24:25]
  wire  sram_59_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_59_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_59_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_59_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_59_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_59_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_60_clock; // @[sram_cluster.scala 24:25]
  wire  sram_60_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_60_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_60_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_60_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_60_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_60_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_61_clock; // @[sram_cluster.scala 24:25]
  wire  sram_61_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_61_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_61_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_61_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_61_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_61_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_62_clock; // @[sram_cluster.scala 24:25]
  wire  sram_62_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_62_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_62_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_62_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_62_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_62_io_r_data; // @[sram_cluster.scala 24:25]
  wire  sram_63_clock; // @[sram_cluster.scala 24:25]
  wire  sram_63_io_w_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_63_io_w_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_63_io_w_data; // @[sram_cluster.scala 24:25]
  wire  sram_63_io_r_en; // @[sram_cluster.scala 24:25]
  wire [7:0] sram_63_io_r_addr; // @[sram_cluster.scala 24:25]
  wire [63:0] sram_63_io_r_data; // @[sram_cluster.scala 24:25]
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
  SRAM sram_16 ( // @[sram_cluster.scala 24:25]
    .clock(sram_16_clock),
    .io_w_en(sram_16_io_w_en),
    .io_w_addr(sram_16_io_w_addr),
    .io_w_data(sram_16_io_w_data),
    .io_r_en(sram_16_io_r_en),
    .io_r_addr(sram_16_io_r_addr),
    .io_r_data(sram_16_io_r_data)
  );
  SRAM sram_17 ( // @[sram_cluster.scala 24:25]
    .clock(sram_17_clock),
    .io_w_en(sram_17_io_w_en),
    .io_w_addr(sram_17_io_w_addr),
    .io_w_data(sram_17_io_w_data),
    .io_r_en(sram_17_io_r_en),
    .io_r_addr(sram_17_io_r_addr),
    .io_r_data(sram_17_io_r_data)
  );
  SRAM sram_18 ( // @[sram_cluster.scala 24:25]
    .clock(sram_18_clock),
    .io_w_en(sram_18_io_w_en),
    .io_w_addr(sram_18_io_w_addr),
    .io_w_data(sram_18_io_w_data),
    .io_r_en(sram_18_io_r_en),
    .io_r_addr(sram_18_io_r_addr),
    .io_r_data(sram_18_io_r_data)
  );
  SRAM sram_19 ( // @[sram_cluster.scala 24:25]
    .clock(sram_19_clock),
    .io_w_en(sram_19_io_w_en),
    .io_w_addr(sram_19_io_w_addr),
    .io_w_data(sram_19_io_w_data),
    .io_r_en(sram_19_io_r_en),
    .io_r_addr(sram_19_io_r_addr),
    .io_r_data(sram_19_io_r_data)
  );
  SRAM sram_20 ( // @[sram_cluster.scala 24:25]
    .clock(sram_20_clock),
    .io_w_en(sram_20_io_w_en),
    .io_w_addr(sram_20_io_w_addr),
    .io_w_data(sram_20_io_w_data),
    .io_r_en(sram_20_io_r_en),
    .io_r_addr(sram_20_io_r_addr),
    .io_r_data(sram_20_io_r_data)
  );
  SRAM sram_21 ( // @[sram_cluster.scala 24:25]
    .clock(sram_21_clock),
    .io_w_en(sram_21_io_w_en),
    .io_w_addr(sram_21_io_w_addr),
    .io_w_data(sram_21_io_w_data),
    .io_r_en(sram_21_io_r_en),
    .io_r_addr(sram_21_io_r_addr),
    .io_r_data(sram_21_io_r_data)
  );
  SRAM sram_22 ( // @[sram_cluster.scala 24:25]
    .clock(sram_22_clock),
    .io_w_en(sram_22_io_w_en),
    .io_w_addr(sram_22_io_w_addr),
    .io_w_data(sram_22_io_w_data),
    .io_r_en(sram_22_io_r_en),
    .io_r_addr(sram_22_io_r_addr),
    .io_r_data(sram_22_io_r_data)
  );
  SRAM sram_23 ( // @[sram_cluster.scala 24:25]
    .clock(sram_23_clock),
    .io_w_en(sram_23_io_w_en),
    .io_w_addr(sram_23_io_w_addr),
    .io_w_data(sram_23_io_w_data),
    .io_r_en(sram_23_io_r_en),
    .io_r_addr(sram_23_io_r_addr),
    .io_r_data(sram_23_io_r_data)
  );
  SRAM sram_24 ( // @[sram_cluster.scala 24:25]
    .clock(sram_24_clock),
    .io_w_en(sram_24_io_w_en),
    .io_w_addr(sram_24_io_w_addr),
    .io_w_data(sram_24_io_w_data),
    .io_r_en(sram_24_io_r_en),
    .io_r_addr(sram_24_io_r_addr),
    .io_r_data(sram_24_io_r_data)
  );
  SRAM sram_25 ( // @[sram_cluster.scala 24:25]
    .clock(sram_25_clock),
    .io_w_en(sram_25_io_w_en),
    .io_w_addr(sram_25_io_w_addr),
    .io_w_data(sram_25_io_w_data),
    .io_r_en(sram_25_io_r_en),
    .io_r_addr(sram_25_io_r_addr),
    .io_r_data(sram_25_io_r_data)
  );
  SRAM sram_26 ( // @[sram_cluster.scala 24:25]
    .clock(sram_26_clock),
    .io_w_en(sram_26_io_w_en),
    .io_w_addr(sram_26_io_w_addr),
    .io_w_data(sram_26_io_w_data),
    .io_r_en(sram_26_io_r_en),
    .io_r_addr(sram_26_io_r_addr),
    .io_r_data(sram_26_io_r_data)
  );
  SRAM sram_27 ( // @[sram_cluster.scala 24:25]
    .clock(sram_27_clock),
    .io_w_en(sram_27_io_w_en),
    .io_w_addr(sram_27_io_w_addr),
    .io_w_data(sram_27_io_w_data),
    .io_r_en(sram_27_io_r_en),
    .io_r_addr(sram_27_io_r_addr),
    .io_r_data(sram_27_io_r_data)
  );
  SRAM sram_28 ( // @[sram_cluster.scala 24:25]
    .clock(sram_28_clock),
    .io_w_en(sram_28_io_w_en),
    .io_w_addr(sram_28_io_w_addr),
    .io_w_data(sram_28_io_w_data),
    .io_r_en(sram_28_io_r_en),
    .io_r_addr(sram_28_io_r_addr),
    .io_r_data(sram_28_io_r_data)
  );
  SRAM sram_29 ( // @[sram_cluster.scala 24:25]
    .clock(sram_29_clock),
    .io_w_en(sram_29_io_w_en),
    .io_w_addr(sram_29_io_w_addr),
    .io_w_data(sram_29_io_w_data),
    .io_r_en(sram_29_io_r_en),
    .io_r_addr(sram_29_io_r_addr),
    .io_r_data(sram_29_io_r_data)
  );
  SRAM sram_30 ( // @[sram_cluster.scala 24:25]
    .clock(sram_30_clock),
    .io_w_en(sram_30_io_w_en),
    .io_w_addr(sram_30_io_w_addr),
    .io_w_data(sram_30_io_w_data),
    .io_r_en(sram_30_io_r_en),
    .io_r_addr(sram_30_io_r_addr),
    .io_r_data(sram_30_io_r_data)
  );
  SRAM sram_31 ( // @[sram_cluster.scala 24:25]
    .clock(sram_31_clock),
    .io_w_en(sram_31_io_w_en),
    .io_w_addr(sram_31_io_w_addr),
    .io_w_data(sram_31_io_w_data),
    .io_r_en(sram_31_io_r_en),
    .io_r_addr(sram_31_io_r_addr),
    .io_r_data(sram_31_io_r_data)
  );
  SRAM sram_32 ( // @[sram_cluster.scala 24:25]
    .clock(sram_32_clock),
    .io_w_en(sram_32_io_w_en),
    .io_w_addr(sram_32_io_w_addr),
    .io_w_data(sram_32_io_w_data),
    .io_r_en(sram_32_io_r_en),
    .io_r_addr(sram_32_io_r_addr),
    .io_r_data(sram_32_io_r_data)
  );
  SRAM sram_33 ( // @[sram_cluster.scala 24:25]
    .clock(sram_33_clock),
    .io_w_en(sram_33_io_w_en),
    .io_w_addr(sram_33_io_w_addr),
    .io_w_data(sram_33_io_w_data),
    .io_r_en(sram_33_io_r_en),
    .io_r_addr(sram_33_io_r_addr),
    .io_r_data(sram_33_io_r_data)
  );
  SRAM sram_34 ( // @[sram_cluster.scala 24:25]
    .clock(sram_34_clock),
    .io_w_en(sram_34_io_w_en),
    .io_w_addr(sram_34_io_w_addr),
    .io_w_data(sram_34_io_w_data),
    .io_r_en(sram_34_io_r_en),
    .io_r_addr(sram_34_io_r_addr),
    .io_r_data(sram_34_io_r_data)
  );
  SRAM sram_35 ( // @[sram_cluster.scala 24:25]
    .clock(sram_35_clock),
    .io_w_en(sram_35_io_w_en),
    .io_w_addr(sram_35_io_w_addr),
    .io_w_data(sram_35_io_w_data),
    .io_r_en(sram_35_io_r_en),
    .io_r_addr(sram_35_io_r_addr),
    .io_r_data(sram_35_io_r_data)
  );
  SRAM sram_36 ( // @[sram_cluster.scala 24:25]
    .clock(sram_36_clock),
    .io_w_en(sram_36_io_w_en),
    .io_w_addr(sram_36_io_w_addr),
    .io_w_data(sram_36_io_w_data),
    .io_r_en(sram_36_io_r_en),
    .io_r_addr(sram_36_io_r_addr),
    .io_r_data(sram_36_io_r_data)
  );
  SRAM sram_37 ( // @[sram_cluster.scala 24:25]
    .clock(sram_37_clock),
    .io_w_en(sram_37_io_w_en),
    .io_w_addr(sram_37_io_w_addr),
    .io_w_data(sram_37_io_w_data),
    .io_r_en(sram_37_io_r_en),
    .io_r_addr(sram_37_io_r_addr),
    .io_r_data(sram_37_io_r_data)
  );
  SRAM sram_38 ( // @[sram_cluster.scala 24:25]
    .clock(sram_38_clock),
    .io_w_en(sram_38_io_w_en),
    .io_w_addr(sram_38_io_w_addr),
    .io_w_data(sram_38_io_w_data),
    .io_r_en(sram_38_io_r_en),
    .io_r_addr(sram_38_io_r_addr),
    .io_r_data(sram_38_io_r_data)
  );
  SRAM sram_39 ( // @[sram_cluster.scala 24:25]
    .clock(sram_39_clock),
    .io_w_en(sram_39_io_w_en),
    .io_w_addr(sram_39_io_w_addr),
    .io_w_data(sram_39_io_w_data),
    .io_r_en(sram_39_io_r_en),
    .io_r_addr(sram_39_io_r_addr),
    .io_r_data(sram_39_io_r_data)
  );
  SRAM sram_40 ( // @[sram_cluster.scala 24:25]
    .clock(sram_40_clock),
    .io_w_en(sram_40_io_w_en),
    .io_w_addr(sram_40_io_w_addr),
    .io_w_data(sram_40_io_w_data),
    .io_r_en(sram_40_io_r_en),
    .io_r_addr(sram_40_io_r_addr),
    .io_r_data(sram_40_io_r_data)
  );
  SRAM sram_41 ( // @[sram_cluster.scala 24:25]
    .clock(sram_41_clock),
    .io_w_en(sram_41_io_w_en),
    .io_w_addr(sram_41_io_w_addr),
    .io_w_data(sram_41_io_w_data),
    .io_r_en(sram_41_io_r_en),
    .io_r_addr(sram_41_io_r_addr),
    .io_r_data(sram_41_io_r_data)
  );
  SRAM sram_42 ( // @[sram_cluster.scala 24:25]
    .clock(sram_42_clock),
    .io_w_en(sram_42_io_w_en),
    .io_w_addr(sram_42_io_w_addr),
    .io_w_data(sram_42_io_w_data),
    .io_r_en(sram_42_io_r_en),
    .io_r_addr(sram_42_io_r_addr),
    .io_r_data(sram_42_io_r_data)
  );
  SRAM sram_43 ( // @[sram_cluster.scala 24:25]
    .clock(sram_43_clock),
    .io_w_en(sram_43_io_w_en),
    .io_w_addr(sram_43_io_w_addr),
    .io_w_data(sram_43_io_w_data),
    .io_r_en(sram_43_io_r_en),
    .io_r_addr(sram_43_io_r_addr),
    .io_r_data(sram_43_io_r_data)
  );
  SRAM sram_44 ( // @[sram_cluster.scala 24:25]
    .clock(sram_44_clock),
    .io_w_en(sram_44_io_w_en),
    .io_w_addr(sram_44_io_w_addr),
    .io_w_data(sram_44_io_w_data),
    .io_r_en(sram_44_io_r_en),
    .io_r_addr(sram_44_io_r_addr),
    .io_r_data(sram_44_io_r_data)
  );
  SRAM sram_45 ( // @[sram_cluster.scala 24:25]
    .clock(sram_45_clock),
    .io_w_en(sram_45_io_w_en),
    .io_w_addr(sram_45_io_w_addr),
    .io_w_data(sram_45_io_w_data),
    .io_r_en(sram_45_io_r_en),
    .io_r_addr(sram_45_io_r_addr),
    .io_r_data(sram_45_io_r_data)
  );
  SRAM sram_46 ( // @[sram_cluster.scala 24:25]
    .clock(sram_46_clock),
    .io_w_en(sram_46_io_w_en),
    .io_w_addr(sram_46_io_w_addr),
    .io_w_data(sram_46_io_w_data),
    .io_r_en(sram_46_io_r_en),
    .io_r_addr(sram_46_io_r_addr),
    .io_r_data(sram_46_io_r_data)
  );
  SRAM sram_47 ( // @[sram_cluster.scala 24:25]
    .clock(sram_47_clock),
    .io_w_en(sram_47_io_w_en),
    .io_w_addr(sram_47_io_w_addr),
    .io_w_data(sram_47_io_w_data),
    .io_r_en(sram_47_io_r_en),
    .io_r_addr(sram_47_io_r_addr),
    .io_r_data(sram_47_io_r_data)
  );
  SRAM sram_48 ( // @[sram_cluster.scala 24:25]
    .clock(sram_48_clock),
    .io_w_en(sram_48_io_w_en),
    .io_w_addr(sram_48_io_w_addr),
    .io_w_data(sram_48_io_w_data),
    .io_r_en(sram_48_io_r_en),
    .io_r_addr(sram_48_io_r_addr),
    .io_r_data(sram_48_io_r_data)
  );
  SRAM sram_49 ( // @[sram_cluster.scala 24:25]
    .clock(sram_49_clock),
    .io_w_en(sram_49_io_w_en),
    .io_w_addr(sram_49_io_w_addr),
    .io_w_data(sram_49_io_w_data),
    .io_r_en(sram_49_io_r_en),
    .io_r_addr(sram_49_io_r_addr),
    .io_r_data(sram_49_io_r_data)
  );
  SRAM sram_50 ( // @[sram_cluster.scala 24:25]
    .clock(sram_50_clock),
    .io_w_en(sram_50_io_w_en),
    .io_w_addr(sram_50_io_w_addr),
    .io_w_data(sram_50_io_w_data),
    .io_r_en(sram_50_io_r_en),
    .io_r_addr(sram_50_io_r_addr),
    .io_r_data(sram_50_io_r_data)
  );
  SRAM sram_51 ( // @[sram_cluster.scala 24:25]
    .clock(sram_51_clock),
    .io_w_en(sram_51_io_w_en),
    .io_w_addr(sram_51_io_w_addr),
    .io_w_data(sram_51_io_w_data),
    .io_r_en(sram_51_io_r_en),
    .io_r_addr(sram_51_io_r_addr),
    .io_r_data(sram_51_io_r_data)
  );
  SRAM sram_52 ( // @[sram_cluster.scala 24:25]
    .clock(sram_52_clock),
    .io_w_en(sram_52_io_w_en),
    .io_w_addr(sram_52_io_w_addr),
    .io_w_data(sram_52_io_w_data),
    .io_r_en(sram_52_io_r_en),
    .io_r_addr(sram_52_io_r_addr),
    .io_r_data(sram_52_io_r_data)
  );
  SRAM sram_53 ( // @[sram_cluster.scala 24:25]
    .clock(sram_53_clock),
    .io_w_en(sram_53_io_w_en),
    .io_w_addr(sram_53_io_w_addr),
    .io_w_data(sram_53_io_w_data),
    .io_r_en(sram_53_io_r_en),
    .io_r_addr(sram_53_io_r_addr),
    .io_r_data(sram_53_io_r_data)
  );
  SRAM sram_54 ( // @[sram_cluster.scala 24:25]
    .clock(sram_54_clock),
    .io_w_en(sram_54_io_w_en),
    .io_w_addr(sram_54_io_w_addr),
    .io_w_data(sram_54_io_w_data),
    .io_r_en(sram_54_io_r_en),
    .io_r_addr(sram_54_io_r_addr),
    .io_r_data(sram_54_io_r_data)
  );
  SRAM sram_55 ( // @[sram_cluster.scala 24:25]
    .clock(sram_55_clock),
    .io_w_en(sram_55_io_w_en),
    .io_w_addr(sram_55_io_w_addr),
    .io_w_data(sram_55_io_w_data),
    .io_r_en(sram_55_io_r_en),
    .io_r_addr(sram_55_io_r_addr),
    .io_r_data(sram_55_io_r_data)
  );
  SRAM sram_56 ( // @[sram_cluster.scala 24:25]
    .clock(sram_56_clock),
    .io_w_en(sram_56_io_w_en),
    .io_w_addr(sram_56_io_w_addr),
    .io_w_data(sram_56_io_w_data),
    .io_r_en(sram_56_io_r_en),
    .io_r_addr(sram_56_io_r_addr),
    .io_r_data(sram_56_io_r_data)
  );
  SRAM sram_57 ( // @[sram_cluster.scala 24:25]
    .clock(sram_57_clock),
    .io_w_en(sram_57_io_w_en),
    .io_w_addr(sram_57_io_w_addr),
    .io_w_data(sram_57_io_w_data),
    .io_r_en(sram_57_io_r_en),
    .io_r_addr(sram_57_io_r_addr),
    .io_r_data(sram_57_io_r_data)
  );
  SRAM sram_58 ( // @[sram_cluster.scala 24:25]
    .clock(sram_58_clock),
    .io_w_en(sram_58_io_w_en),
    .io_w_addr(sram_58_io_w_addr),
    .io_w_data(sram_58_io_w_data),
    .io_r_en(sram_58_io_r_en),
    .io_r_addr(sram_58_io_r_addr),
    .io_r_data(sram_58_io_r_data)
  );
  SRAM sram_59 ( // @[sram_cluster.scala 24:25]
    .clock(sram_59_clock),
    .io_w_en(sram_59_io_w_en),
    .io_w_addr(sram_59_io_w_addr),
    .io_w_data(sram_59_io_w_data),
    .io_r_en(sram_59_io_r_en),
    .io_r_addr(sram_59_io_r_addr),
    .io_r_data(sram_59_io_r_data)
  );
  SRAM sram_60 ( // @[sram_cluster.scala 24:25]
    .clock(sram_60_clock),
    .io_w_en(sram_60_io_w_en),
    .io_w_addr(sram_60_io_w_addr),
    .io_w_data(sram_60_io_w_data),
    .io_r_en(sram_60_io_r_en),
    .io_r_addr(sram_60_io_r_addr),
    .io_r_data(sram_60_io_r_data)
  );
  SRAM sram_61 ( // @[sram_cluster.scala 24:25]
    .clock(sram_61_clock),
    .io_w_en(sram_61_io_w_en),
    .io_w_addr(sram_61_io_w_addr),
    .io_w_data(sram_61_io_w_data),
    .io_r_en(sram_61_io_r_en),
    .io_r_addr(sram_61_io_r_addr),
    .io_r_data(sram_61_io_r_data)
  );
  SRAM sram_62 ( // @[sram_cluster.scala 24:25]
    .clock(sram_62_clock),
    .io_w_en(sram_62_io_w_en),
    .io_w_addr(sram_62_io_w_addr),
    .io_w_data(sram_62_io_w_data),
    .io_r_en(sram_62_io_r_en),
    .io_r_addr(sram_62_io_r_addr),
    .io_r_data(sram_62_io_r_data)
  );
  SRAM sram_63 ( // @[sram_cluster.scala 24:25]
    .clock(sram_63_clock),
    .io_w_en(sram_63_io_w_en),
    .io_w_addr(sram_63_io_w_addr),
    .io_w_data(sram_63_io_w_data),
    .io_r_en(sram_63_io_r_en),
    .io_r_addr(sram_63_io_r_addr),
    .io_r_data(sram_63_io_r_data)
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
  assign io_r_0_cluster_16_data = sram_16_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_17_data = sram_17_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_18_data = sram_18_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_19_data = sram_19_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_20_data = sram_20_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_21_data = sram_21_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_22_data = sram_22_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_23_data = sram_23_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_24_data = sram_24_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_25_data = sram_25_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_26_data = sram_26_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_27_data = sram_27_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_28_data = sram_28_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_29_data = sram_29_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_30_data = sram_30_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_31_data = sram_31_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_32_data = sram_32_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_33_data = sram_33_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_34_data = sram_34_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_35_data = sram_35_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_36_data = sram_36_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_37_data = sram_37_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_38_data = sram_38_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_39_data = sram_39_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_40_data = sram_40_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_41_data = sram_41_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_42_data = sram_42_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_43_data = sram_43_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_44_data = sram_44_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_45_data = sram_45_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_46_data = sram_46_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_47_data = sram_47_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_48_data = sram_48_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_49_data = sram_49_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_50_data = sram_50_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_51_data = sram_51_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_52_data = sram_52_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_53_data = sram_53_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_54_data = sram_54_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_55_data = sram_55_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_56_data = sram_56_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_57_data = sram_57_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_58_data = sram_58_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_59_data = sram_59_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_60_data = sram_60_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_61_data = sram_61_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_62_data = sram_62_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_0_cluster_63_data = sram_63_io_r_data; // @[sram_cluster.scala 45:37]
  assign sram_0_clock = clock;
  assign sram_0_io_w_en = 6'h0 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_0_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_0_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_0_io_r_en = io_r_0_cluster_0_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_0_io_r_addr = io_r_0_cluster_0_en ? io_r_0_cluster_0_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_1_clock = clock;
  assign sram_1_io_w_en = 6'h1 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_1_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_1_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_1_io_r_en = io_r_0_cluster_1_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_1_io_r_addr = io_r_0_cluster_1_en ? io_r_0_cluster_1_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_2_clock = clock;
  assign sram_2_io_w_en = 6'h2 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_2_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_2_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_2_io_r_en = io_r_0_cluster_2_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_2_io_r_addr = io_r_0_cluster_2_en ? io_r_0_cluster_2_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_3_clock = clock;
  assign sram_3_io_w_en = 6'h3 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_3_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_3_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_3_io_r_en = io_r_0_cluster_3_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_3_io_r_addr = io_r_0_cluster_3_en ? io_r_0_cluster_3_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_4_clock = clock;
  assign sram_4_io_w_en = 6'h4 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_4_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_4_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_4_io_r_en = io_r_0_cluster_4_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_4_io_r_addr = io_r_0_cluster_4_en ? io_r_0_cluster_4_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_5_clock = clock;
  assign sram_5_io_w_en = 6'h5 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_5_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_5_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_5_io_r_en = io_r_0_cluster_5_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_5_io_r_addr = io_r_0_cluster_5_en ? io_r_0_cluster_5_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_6_clock = clock;
  assign sram_6_io_w_en = 6'h6 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_6_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_6_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_6_io_r_en = io_r_0_cluster_6_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_6_io_r_addr = io_r_0_cluster_6_en ? io_r_0_cluster_6_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_7_clock = clock;
  assign sram_7_io_w_en = 6'h7 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_7_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_7_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_7_io_r_en = io_r_0_cluster_7_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_7_io_r_addr = io_r_0_cluster_7_en ? io_r_0_cluster_7_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_8_clock = clock;
  assign sram_8_io_w_en = 6'h8 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_8_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_8_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_8_io_r_en = io_r_0_cluster_8_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_8_io_r_addr = io_r_0_cluster_8_en ? io_r_0_cluster_8_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_9_clock = clock;
  assign sram_9_io_w_en = 6'h9 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_9_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_9_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_9_io_r_en = io_r_0_cluster_9_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_9_io_r_addr = io_r_0_cluster_9_en ? io_r_0_cluster_9_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_10_clock = clock;
  assign sram_10_io_w_en = 6'ha != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_10_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_10_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_10_io_r_en = io_r_0_cluster_10_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_10_io_r_addr = io_r_0_cluster_10_en ? io_r_0_cluster_10_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_11_clock = clock;
  assign sram_11_io_w_en = 6'hb != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_11_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_11_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_11_io_r_en = io_r_0_cluster_11_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_11_io_r_addr = io_r_0_cluster_11_en ? io_r_0_cluster_11_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_12_clock = clock;
  assign sram_12_io_w_en = 6'hc != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_12_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_12_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_12_io_r_en = io_r_0_cluster_12_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_12_io_r_addr = io_r_0_cluster_12_en ? io_r_0_cluster_12_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_13_clock = clock;
  assign sram_13_io_w_en = 6'hd != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_13_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_13_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_13_io_r_en = io_r_0_cluster_13_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_13_io_r_addr = io_r_0_cluster_13_en ? io_r_0_cluster_13_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_14_clock = clock;
  assign sram_14_io_w_en = 6'he != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_14_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_14_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_14_io_r_en = io_r_0_cluster_14_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_14_io_r_addr = io_r_0_cluster_14_en ? io_r_0_cluster_14_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_15_clock = clock;
  assign sram_15_io_w_en = 6'hf != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_15_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_15_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_15_io_r_en = io_r_0_cluster_15_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_15_io_r_addr = io_r_0_cluster_15_en ? io_r_0_cluster_15_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_16_clock = clock;
  assign sram_16_io_w_en = 6'h10 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_16_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_16_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_16_io_r_en = io_r_0_cluster_16_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_16_io_r_addr = io_r_0_cluster_16_en ? io_r_0_cluster_16_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_17_clock = clock;
  assign sram_17_io_w_en = 6'h11 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_17_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_17_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_17_io_r_en = io_r_0_cluster_17_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_17_io_r_addr = io_r_0_cluster_17_en ? io_r_0_cluster_17_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_18_clock = clock;
  assign sram_18_io_w_en = 6'h12 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_18_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_18_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_18_io_r_en = io_r_0_cluster_18_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_18_io_r_addr = io_r_0_cluster_18_en ? io_r_0_cluster_18_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_19_clock = clock;
  assign sram_19_io_w_en = 6'h13 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_19_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_19_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_19_io_r_en = io_r_0_cluster_19_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_19_io_r_addr = io_r_0_cluster_19_en ? io_r_0_cluster_19_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_20_clock = clock;
  assign sram_20_io_w_en = 6'h14 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_20_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_20_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_20_io_r_en = io_r_0_cluster_20_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_20_io_r_addr = io_r_0_cluster_20_en ? io_r_0_cluster_20_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_21_clock = clock;
  assign sram_21_io_w_en = 6'h15 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_21_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_21_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_21_io_r_en = io_r_0_cluster_21_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_21_io_r_addr = io_r_0_cluster_21_en ? io_r_0_cluster_21_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_22_clock = clock;
  assign sram_22_io_w_en = 6'h16 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_22_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_22_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_22_io_r_en = io_r_0_cluster_22_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_22_io_r_addr = io_r_0_cluster_22_en ? io_r_0_cluster_22_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_23_clock = clock;
  assign sram_23_io_w_en = 6'h17 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_23_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_23_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_23_io_r_en = io_r_0_cluster_23_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_23_io_r_addr = io_r_0_cluster_23_en ? io_r_0_cluster_23_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_24_clock = clock;
  assign sram_24_io_w_en = 6'h18 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_24_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_24_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_24_io_r_en = io_r_0_cluster_24_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_24_io_r_addr = io_r_0_cluster_24_en ? io_r_0_cluster_24_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_25_clock = clock;
  assign sram_25_io_w_en = 6'h19 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_25_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_25_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_25_io_r_en = io_r_0_cluster_25_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_25_io_r_addr = io_r_0_cluster_25_en ? io_r_0_cluster_25_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_26_clock = clock;
  assign sram_26_io_w_en = 6'h1a != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_26_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_26_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_26_io_r_en = io_r_0_cluster_26_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_26_io_r_addr = io_r_0_cluster_26_en ? io_r_0_cluster_26_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_27_clock = clock;
  assign sram_27_io_w_en = 6'h1b != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_27_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_27_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_27_io_r_en = io_r_0_cluster_27_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_27_io_r_addr = io_r_0_cluster_27_en ? io_r_0_cluster_27_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_28_clock = clock;
  assign sram_28_io_w_en = 6'h1c != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_28_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_28_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_28_io_r_en = io_r_0_cluster_28_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_28_io_r_addr = io_r_0_cluster_28_en ? io_r_0_cluster_28_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_29_clock = clock;
  assign sram_29_io_w_en = 6'h1d != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_29_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_29_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_29_io_r_en = io_r_0_cluster_29_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_29_io_r_addr = io_r_0_cluster_29_en ? io_r_0_cluster_29_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_30_clock = clock;
  assign sram_30_io_w_en = 6'h1e != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_30_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_30_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_30_io_r_en = io_r_0_cluster_30_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_30_io_r_addr = io_r_0_cluster_30_en ? io_r_0_cluster_30_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_31_clock = clock;
  assign sram_31_io_w_en = 6'h1f != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_31_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_31_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_31_io_r_en = io_r_0_cluster_31_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_31_io_r_addr = io_r_0_cluster_31_en ? io_r_0_cluster_31_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_32_clock = clock;
  assign sram_32_io_w_en = 6'h20 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_32_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_32_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_32_io_r_en = io_r_0_cluster_32_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_32_io_r_addr = io_r_0_cluster_32_en ? io_r_0_cluster_32_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_33_clock = clock;
  assign sram_33_io_w_en = 6'h21 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_33_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_33_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_33_io_r_en = io_r_0_cluster_33_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_33_io_r_addr = io_r_0_cluster_33_en ? io_r_0_cluster_33_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_34_clock = clock;
  assign sram_34_io_w_en = 6'h22 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_34_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_34_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_34_io_r_en = io_r_0_cluster_34_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_34_io_r_addr = io_r_0_cluster_34_en ? io_r_0_cluster_34_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_35_clock = clock;
  assign sram_35_io_w_en = 6'h23 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_35_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_35_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_35_io_r_en = io_r_0_cluster_35_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_35_io_r_addr = io_r_0_cluster_35_en ? io_r_0_cluster_35_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_36_clock = clock;
  assign sram_36_io_w_en = 6'h24 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_36_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_36_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_36_io_r_en = io_r_0_cluster_36_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_36_io_r_addr = io_r_0_cluster_36_en ? io_r_0_cluster_36_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_37_clock = clock;
  assign sram_37_io_w_en = 6'h25 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_37_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_37_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_37_io_r_en = io_r_0_cluster_37_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_37_io_r_addr = io_r_0_cluster_37_en ? io_r_0_cluster_37_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_38_clock = clock;
  assign sram_38_io_w_en = 6'h26 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_38_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_38_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_38_io_r_en = io_r_0_cluster_38_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_38_io_r_addr = io_r_0_cluster_38_en ? io_r_0_cluster_38_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_39_clock = clock;
  assign sram_39_io_w_en = 6'h27 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_39_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_39_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_39_io_r_en = io_r_0_cluster_39_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_39_io_r_addr = io_r_0_cluster_39_en ? io_r_0_cluster_39_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_40_clock = clock;
  assign sram_40_io_w_en = 6'h28 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_40_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_40_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_40_io_r_en = io_r_0_cluster_40_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_40_io_r_addr = io_r_0_cluster_40_en ? io_r_0_cluster_40_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_41_clock = clock;
  assign sram_41_io_w_en = 6'h29 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_41_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_41_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_41_io_r_en = io_r_0_cluster_41_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_41_io_r_addr = io_r_0_cluster_41_en ? io_r_0_cluster_41_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_42_clock = clock;
  assign sram_42_io_w_en = 6'h2a != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_42_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_42_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_42_io_r_en = io_r_0_cluster_42_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_42_io_r_addr = io_r_0_cluster_42_en ? io_r_0_cluster_42_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_43_clock = clock;
  assign sram_43_io_w_en = 6'h2b != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_43_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_43_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_43_io_r_en = io_r_0_cluster_43_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_43_io_r_addr = io_r_0_cluster_43_en ? io_r_0_cluster_43_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_44_clock = clock;
  assign sram_44_io_w_en = 6'h2c != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_44_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_44_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_44_io_r_en = io_r_0_cluster_44_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_44_io_r_addr = io_r_0_cluster_44_en ? io_r_0_cluster_44_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_45_clock = clock;
  assign sram_45_io_w_en = 6'h2d != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_45_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_45_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_45_io_r_en = io_r_0_cluster_45_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_45_io_r_addr = io_r_0_cluster_45_en ? io_r_0_cluster_45_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_46_clock = clock;
  assign sram_46_io_w_en = 6'h2e != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_46_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_46_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_46_io_r_en = io_r_0_cluster_46_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_46_io_r_addr = io_r_0_cluster_46_en ? io_r_0_cluster_46_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_47_clock = clock;
  assign sram_47_io_w_en = 6'h2f != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_47_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_47_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_47_io_r_en = io_r_0_cluster_47_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_47_io_r_addr = io_r_0_cluster_47_en ? io_r_0_cluster_47_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_48_clock = clock;
  assign sram_48_io_w_en = 6'h30 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_48_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_48_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_48_io_r_en = io_r_0_cluster_48_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_48_io_r_addr = io_r_0_cluster_48_en ? io_r_0_cluster_48_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_49_clock = clock;
  assign sram_49_io_w_en = 6'h31 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_49_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_49_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_49_io_r_en = io_r_0_cluster_49_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_49_io_r_addr = io_r_0_cluster_49_en ? io_r_0_cluster_49_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_50_clock = clock;
  assign sram_50_io_w_en = 6'h32 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_50_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_50_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_50_io_r_en = io_r_0_cluster_50_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_50_io_r_addr = io_r_0_cluster_50_en ? io_r_0_cluster_50_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_51_clock = clock;
  assign sram_51_io_w_en = 6'h33 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_51_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_51_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_51_io_r_en = io_r_0_cluster_51_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_51_io_r_addr = io_r_0_cluster_51_en ? io_r_0_cluster_51_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_52_clock = clock;
  assign sram_52_io_w_en = 6'h34 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_52_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_52_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_52_io_r_en = io_r_0_cluster_52_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_52_io_r_addr = io_r_0_cluster_52_en ? io_r_0_cluster_52_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_53_clock = clock;
  assign sram_53_io_w_en = 6'h35 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_53_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_53_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_53_io_r_en = io_r_0_cluster_53_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_53_io_r_addr = io_r_0_cluster_53_en ? io_r_0_cluster_53_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_54_clock = clock;
  assign sram_54_io_w_en = 6'h36 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_54_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_54_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_54_io_r_en = io_r_0_cluster_54_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_54_io_r_addr = io_r_0_cluster_54_en ? io_r_0_cluster_54_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_55_clock = clock;
  assign sram_55_io_w_en = 6'h37 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_55_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_55_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_55_io_r_en = io_r_0_cluster_55_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_55_io_r_addr = io_r_0_cluster_55_en ? io_r_0_cluster_55_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_56_clock = clock;
  assign sram_56_io_w_en = 6'h38 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_56_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_56_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_56_io_r_en = io_r_0_cluster_56_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_56_io_r_addr = io_r_0_cluster_56_en ? io_r_0_cluster_56_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_57_clock = clock;
  assign sram_57_io_w_en = 6'h39 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_57_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_57_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_57_io_r_en = io_r_0_cluster_57_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_57_io_r_addr = io_r_0_cluster_57_en ? io_r_0_cluster_57_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_58_clock = clock;
  assign sram_58_io_w_en = 6'h3a != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_58_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_58_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_58_io_r_en = io_r_0_cluster_58_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_58_io_r_addr = io_r_0_cluster_58_en ? io_r_0_cluster_58_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_59_clock = clock;
  assign sram_59_io_w_en = 6'h3b != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_59_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_59_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_59_io_r_en = io_r_0_cluster_59_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_59_io_r_addr = io_r_0_cluster_59_en ? io_r_0_cluster_59_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_60_clock = clock;
  assign sram_60_io_w_en = 6'h3c != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_60_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_60_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_60_io_r_en = io_r_0_cluster_60_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_60_io_r_addr = io_r_0_cluster_60_en ? io_r_0_cluster_60_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_61_clock = clock;
  assign sram_61_io_w_en = 6'h3d != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_61_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_61_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_61_io_r_en = io_r_0_cluster_61_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_61_io_r_addr = io_r_0_cluster_61_en ? io_r_0_cluster_61_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_62_clock = clock;
  assign sram_62_io_w_en = 6'h3e != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_62_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_62_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_62_io_r_en = io_r_0_cluster_62_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_62_io_r_addr = io_r_0_cluster_62_en ? io_r_0_cluster_62_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  assign sram_63_clock = clock;
  assign sram_63_io_w_en = 6'h3f != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_63_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_63_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_63_io_r_en = io_r_0_cluster_63_en; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_63_io_r_addr = io_r_0_cluster_63_en ? io_r_0_cluster_63_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
endmodule
