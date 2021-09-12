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
  output [63:0] io_r_0_cluster_63_data,
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
  output [63:0] io_r_1_cluster_15_data,
  input         io_r_1_cluster_16_en,
  input  [7:0]  io_r_1_cluster_16_addr,
  output [63:0] io_r_1_cluster_16_data,
  input         io_r_1_cluster_17_en,
  input  [7:0]  io_r_1_cluster_17_addr,
  output [63:0] io_r_1_cluster_17_data,
  input         io_r_1_cluster_18_en,
  input  [7:0]  io_r_1_cluster_18_addr,
  output [63:0] io_r_1_cluster_18_data,
  input         io_r_1_cluster_19_en,
  input  [7:0]  io_r_1_cluster_19_addr,
  output [63:0] io_r_1_cluster_19_data,
  input         io_r_1_cluster_20_en,
  input  [7:0]  io_r_1_cluster_20_addr,
  output [63:0] io_r_1_cluster_20_data,
  input         io_r_1_cluster_21_en,
  input  [7:0]  io_r_1_cluster_21_addr,
  output [63:0] io_r_1_cluster_21_data,
  input         io_r_1_cluster_22_en,
  input  [7:0]  io_r_1_cluster_22_addr,
  output [63:0] io_r_1_cluster_22_data,
  input         io_r_1_cluster_23_en,
  input  [7:0]  io_r_1_cluster_23_addr,
  output [63:0] io_r_1_cluster_23_data,
  input         io_r_1_cluster_24_en,
  input  [7:0]  io_r_1_cluster_24_addr,
  output [63:0] io_r_1_cluster_24_data,
  input         io_r_1_cluster_25_en,
  input  [7:0]  io_r_1_cluster_25_addr,
  output [63:0] io_r_1_cluster_25_data,
  input         io_r_1_cluster_26_en,
  input  [7:0]  io_r_1_cluster_26_addr,
  output [63:0] io_r_1_cluster_26_data,
  input         io_r_1_cluster_27_en,
  input  [7:0]  io_r_1_cluster_27_addr,
  output [63:0] io_r_1_cluster_27_data,
  input         io_r_1_cluster_28_en,
  input  [7:0]  io_r_1_cluster_28_addr,
  output [63:0] io_r_1_cluster_28_data,
  input         io_r_1_cluster_29_en,
  input  [7:0]  io_r_1_cluster_29_addr,
  output [63:0] io_r_1_cluster_29_data,
  input         io_r_1_cluster_30_en,
  input  [7:0]  io_r_1_cluster_30_addr,
  output [63:0] io_r_1_cluster_30_data,
  input         io_r_1_cluster_31_en,
  input  [7:0]  io_r_1_cluster_31_addr,
  output [63:0] io_r_1_cluster_31_data,
  input         io_r_1_cluster_32_en,
  input  [7:0]  io_r_1_cluster_32_addr,
  output [63:0] io_r_1_cluster_32_data,
  input         io_r_1_cluster_33_en,
  input  [7:0]  io_r_1_cluster_33_addr,
  output [63:0] io_r_1_cluster_33_data,
  input         io_r_1_cluster_34_en,
  input  [7:0]  io_r_1_cluster_34_addr,
  output [63:0] io_r_1_cluster_34_data,
  input         io_r_1_cluster_35_en,
  input  [7:0]  io_r_1_cluster_35_addr,
  output [63:0] io_r_1_cluster_35_data,
  input         io_r_1_cluster_36_en,
  input  [7:0]  io_r_1_cluster_36_addr,
  output [63:0] io_r_1_cluster_36_data,
  input         io_r_1_cluster_37_en,
  input  [7:0]  io_r_1_cluster_37_addr,
  output [63:0] io_r_1_cluster_37_data,
  input         io_r_1_cluster_38_en,
  input  [7:0]  io_r_1_cluster_38_addr,
  output [63:0] io_r_1_cluster_38_data,
  input         io_r_1_cluster_39_en,
  input  [7:0]  io_r_1_cluster_39_addr,
  output [63:0] io_r_1_cluster_39_data,
  input         io_r_1_cluster_40_en,
  input  [7:0]  io_r_1_cluster_40_addr,
  output [63:0] io_r_1_cluster_40_data,
  input         io_r_1_cluster_41_en,
  input  [7:0]  io_r_1_cluster_41_addr,
  output [63:0] io_r_1_cluster_41_data,
  input         io_r_1_cluster_42_en,
  input  [7:0]  io_r_1_cluster_42_addr,
  output [63:0] io_r_1_cluster_42_data,
  input         io_r_1_cluster_43_en,
  input  [7:0]  io_r_1_cluster_43_addr,
  output [63:0] io_r_1_cluster_43_data,
  input         io_r_1_cluster_44_en,
  input  [7:0]  io_r_1_cluster_44_addr,
  output [63:0] io_r_1_cluster_44_data,
  input         io_r_1_cluster_45_en,
  input  [7:0]  io_r_1_cluster_45_addr,
  output [63:0] io_r_1_cluster_45_data,
  input         io_r_1_cluster_46_en,
  input  [7:0]  io_r_1_cluster_46_addr,
  output [63:0] io_r_1_cluster_46_data,
  input         io_r_1_cluster_47_en,
  input  [7:0]  io_r_1_cluster_47_addr,
  output [63:0] io_r_1_cluster_47_data,
  input         io_r_1_cluster_48_en,
  input  [7:0]  io_r_1_cluster_48_addr,
  output [63:0] io_r_1_cluster_48_data,
  input         io_r_1_cluster_49_en,
  input  [7:0]  io_r_1_cluster_49_addr,
  output [63:0] io_r_1_cluster_49_data,
  input         io_r_1_cluster_50_en,
  input  [7:0]  io_r_1_cluster_50_addr,
  output [63:0] io_r_1_cluster_50_data,
  input         io_r_1_cluster_51_en,
  input  [7:0]  io_r_1_cluster_51_addr,
  output [63:0] io_r_1_cluster_51_data,
  input         io_r_1_cluster_52_en,
  input  [7:0]  io_r_1_cluster_52_addr,
  output [63:0] io_r_1_cluster_52_data,
  input         io_r_1_cluster_53_en,
  input  [7:0]  io_r_1_cluster_53_addr,
  output [63:0] io_r_1_cluster_53_data,
  input         io_r_1_cluster_54_en,
  input  [7:0]  io_r_1_cluster_54_addr,
  output [63:0] io_r_1_cluster_54_data,
  input         io_r_1_cluster_55_en,
  input  [7:0]  io_r_1_cluster_55_addr,
  output [63:0] io_r_1_cluster_55_data,
  input         io_r_1_cluster_56_en,
  input  [7:0]  io_r_1_cluster_56_addr,
  output [63:0] io_r_1_cluster_56_data,
  input         io_r_1_cluster_57_en,
  input  [7:0]  io_r_1_cluster_57_addr,
  output [63:0] io_r_1_cluster_57_data,
  input         io_r_1_cluster_58_en,
  input  [7:0]  io_r_1_cluster_58_addr,
  output [63:0] io_r_1_cluster_58_data,
  input         io_r_1_cluster_59_en,
  input  [7:0]  io_r_1_cluster_59_addr,
  output [63:0] io_r_1_cluster_59_data,
  input         io_r_1_cluster_60_en,
  input  [7:0]  io_r_1_cluster_60_addr,
  output [63:0] io_r_1_cluster_60_data,
  input         io_r_1_cluster_61_en,
  input  [7:0]  io_r_1_cluster_61_addr,
  output [63:0] io_r_1_cluster_61_data,
  input         io_r_1_cluster_62_en,
  input  [7:0]  io_r_1_cluster_62_addr,
  output [63:0] io_r_1_cluster_62_data,
  input         io_r_1_cluster_63_en,
  input  [7:0]  io_r_1_cluster_63_addr,
  output [63:0] io_r_1_cluster_63_data,
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
  input         io_r_2_cluster_8_en,
  input  [7:0]  io_r_2_cluster_8_addr,
  output [63:0] io_r_2_cluster_8_data,
  input         io_r_2_cluster_9_en,
  input  [7:0]  io_r_2_cluster_9_addr,
  output [63:0] io_r_2_cluster_9_data,
  input         io_r_2_cluster_10_en,
  input  [7:0]  io_r_2_cluster_10_addr,
  output [63:0] io_r_2_cluster_10_data,
  input         io_r_2_cluster_11_en,
  input  [7:0]  io_r_2_cluster_11_addr,
  output [63:0] io_r_2_cluster_11_data,
  input         io_r_2_cluster_12_en,
  input  [7:0]  io_r_2_cluster_12_addr,
  output [63:0] io_r_2_cluster_12_data,
  input         io_r_2_cluster_13_en,
  input  [7:0]  io_r_2_cluster_13_addr,
  output [63:0] io_r_2_cluster_13_data,
  input         io_r_2_cluster_14_en,
  input  [7:0]  io_r_2_cluster_14_addr,
  output [63:0] io_r_2_cluster_14_data,
  input         io_r_2_cluster_15_en,
  input  [7:0]  io_r_2_cluster_15_addr,
  output [63:0] io_r_2_cluster_15_data,
  input         io_r_2_cluster_16_en,
  input  [7:0]  io_r_2_cluster_16_addr,
  output [63:0] io_r_2_cluster_16_data,
  input         io_r_2_cluster_17_en,
  input  [7:0]  io_r_2_cluster_17_addr,
  output [63:0] io_r_2_cluster_17_data,
  input         io_r_2_cluster_18_en,
  input  [7:0]  io_r_2_cluster_18_addr,
  output [63:0] io_r_2_cluster_18_data,
  input         io_r_2_cluster_19_en,
  input  [7:0]  io_r_2_cluster_19_addr,
  output [63:0] io_r_2_cluster_19_data,
  input         io_r_2_cluster_20_en,
  input  [7:0]  io_r_2_cluster_20_addr,
  output [63:0] io_r_2_cluster_20_data,
  input         io_r_2_cluster_21_en,
  input  [7:0]  io_r_2_cluster_21_addr,
  output [63:0] io_r_2_cluster_21_data,
  input         io_r_2_cluster_22_en,
  input  [7:0]  io_r_2_cluster_22_addr,
  output [63:0] io_r_2_cluster_22_data,
  input         io_r_2_cluster_23_en,
  input  [7:0]  io_r_2_cluster_23_addr,
  output [63:0] io_r_2_cluster_23_data,
  input         io_r_2_cluster_24_en,
  input  [7:0]  io_r_2_cluster_24_addr,
  output [63:0] io_r_2_cluster_24_data,
  input         io_r_2_cluster_25_en,
  input  [7:0]  io_r_2_cluster_25_addr,
  output [63:0] io_r_2_cluster_25_data,
  input         io_r_2_cluster_26_en,
  input  [7:0]  io_r_2_cluster_26_addr,
  output [63:0] io_r_2_cluster_26_data,
  input         io_r_2_cluster_27_en,
  input  [7:0]  io_r_2_cluster_27_addr,
  output [63:0] io_r_2_cluster_27_data,
  input         io_r_2_cluster_28_en,
  input  [7:0]  io_r_2_cluster_28_addr,
  output [63:0] io_r_2_cluster_28_data,
  input         io_r_2_cluster_29_en,
  input  [7:0]  io_r_2_cluster_29_addr,
  output [63:0] io_r_2_cluster_29_data,
  input         io_r_2_cluster_30_en,
  input  [7:0]  io_r_2_cluster_30_addr,
  output [63:0] io_r_2_cluster_30_data,
  input         io_r_2_cluster_31_en,
  input  [7:0]  io_r_2_cluster_31_addr,
  output [63:0] io_r_2_cluster_31_data,
  input         io_r_2_cluster_32_en,
  input  [7:0]  io_r_2_cluster_32_addr,
  output [63:0] io_r_2_cluster_32_data,
  input         io_r_2_cluster_33_en,
  input  [7:0]  io_r_2_cluster_33_addr,
  output [63:0] io_r_2_cluster_33_data,
  input         io_r_2_cluster_34_en,
  input  [7:0]  io_r_2_cluster_34_addr,
  output [63:0] io_r_2_cluster_34_data,
  input         io_r_2_cluster_35_en,
  input  [7:0]  io_r_2_cluster_35_addr,
  output [63:0] io_r_2_cluster_35_data,
  input         io_r_2_cluster_36_en,
  input  [7:0]  io_r_2_cluster_36_addr,
  output [63:0] io_r_2_cluster_36_data,
  input         io_r_2_cluster_37_en,
  input  [7:0]  io_r_2_cluster_37_addr,
  output [63:0] io_r_2_cluster_37_data,
  input         io_r_2_cluster_38_en,
  input  [7:0]  io_r_2_cluster_38_addr,
  output [63:0] io_r_2_cluster_38_data,
  input         io_r_2_cluster_39_en,
  input  [7:0]  io_r_2_cluster_39_addr,
  output [63:0] io_r_2_cluster_39_data,
  input         io_r_2_cluster_40_en,
  input  [7:0]  io_r_2_cluster_40_addr,
  output [63:0] io_r_2_cluster_40_data,
  input         io_r_2_cluster_41_en,
  input  [7:0]  io_r_2_cluster_41_addr,
  output [63:0] io_r_2_cluster_41_data,
  input         io_r_2_cluster_42_en,
  input  [7:0]  io_r_2_cluster_42_addr,
  output [63:0] io_r_2_cluster_42_data,
  input         io_r_2_cluster_43_en,
  input  [7:0]  io_r_2_cluster_43_addr,
  output [63:0] io_r_2_cluster_43_data,
  input         io_r_2_cluster_44_en,
  input  [7:0]  io_r_2_cluster_44_addr,
  output [63:0] io_r_2_cluster_44_data,
  input         io_r_2_cluster_45_en,
  input  [7:0]  io_r_2_cluster_45_addr,
  output [63:0] io_r_2_cluster_45_data,
  input         io_r_2_cluster_46_en,
  input  [7:0]  io_r_2_cluster_46_addr,
  output [63:0] io_r_2_cluster_46_data,
  input         io_r_2_cluster_47_en,
  input  [7:0]  io_r_2_cluster_47_addr,
  output [63:0] io_r_2_cluster_47_data,
  input         io_r_2_cluster_48_en,
  input  [7:0]  io_r_2_cluster_48_addr,
  output [63:0] io_r_2_cluster_48_data,
  input         io_r_2_cluster_49_en,
  input  [7:0]  io_r_2_cluster_49_addr,
  output [63:0] io_r_2_cluster_49_data,
  input         io_r_2_cluster_50_en,
  input  [7:0]  io_r_2_cluster_50_addr,
  output [63:0] io_r_2_cluster_50_data,
  input         io_r_2_cluster_51_en,
  input  [7:0]  io_r_2_cluster_51_addr,
  output [63:0] io_r_2_cluster_51_data,
  input         io_r_2_cluster_52_en,
  input  [7:0]  io_r_2_cluster_52_addr,
  output [63:0] io_r_2_cluster_52_data,
  input         io_r_2_cluster_53_en,
  input  [7:0]  io_r_2_cluster_53_addr,
  output [63:0] io_r_2_cluster_53_data,
  input         io_r_2_cluster_54_en,
  input  [7:0]  io_r_2_cluster_54_addr,
  output [63:0] io_r_2_cluster_54_data,
  input         io_r_2_cluster_55_en,
  input  [7:0]  io_r_2_cluster_55_addr,
  output [63:0] io_r_2_cluster_55_data,
  input         io_r_2_cluster_56_en,
  input  [7:0]  io_r_2_cluster_56_addr,
  output [63:0] io_r_2_cluster_56_data,
  input         io_r_2_cluster_57_en,
  input  [7:0]  io_r_2_cluster_57_addr,
  output [63:0] io_r_2_cluster_57_data,
  input         io_r_2_cluster_58_en,
  input  [7:0]  io_r_2_cluster_58_addr,
  output [63:0] io_r_2_cluster_58_data,
  input         io_r_2_cluster_59_en,
  input  [7:0]  io_r_2_cluster_59_addr,
  output [63:0] io_r_2_cluster_59_data,
  input         io_r_2_cluster_60_en,
  input  [7:0]  io_r_2_cluster_60_addr,
  output [63:0] io_r_2_cluster_60_data,
  input         io_r_2_cluster_61_en,
  input  [7:0]  io_r_2_cluster_61_addr,
  output [63:0] io_r_2_cluster_61_data,
  input         io_r_2_cluster_62_en,
  input  [7:0]  io_r_2_cluster_62_addr,
  output [63:0] io_r_2_cluster_62_data,
  input         io_r_2_cluster_63_en,
  input  [7:0]  io_r_2_cluster_63_addr,
  output [63:0] io_r_2_cluster_63_data,
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
  output [63:0] io_r_3_cluster_7_data,
  input         io_r_3_cluster_8_en,
  input  [7:0]  io_r_3_cluster_8_addr,
  output [63:0] io_r_3_cluster_8_data,
  input         io_r_3_cluster_9_en,
  input  [7:0]  io_r_3_cluster_9_addr,
  output [63:0] io_r_3_cluster_9_data,
  input         io_r_3_cluster_10_en,
  input  [7:0]  io_r_3_cluster_10_addr,
  output [63:0] io_r_3_cluster_10_data,
  input         io_r_3_cluster_11_en,
  input  [7:0]  io_r_3_cluster_11_addr,
  output [63:0] io_r_3_cluster_11_data,
  input         io_r_3_cluster_12_en,
  input  [7:0]  io_r_3_cluster_12_addr,
  output [63:0] io_r_3_cluster_12_data,
  input         io_r_3_cluster_13_en,
  input  [7:0]  io_r_3_cluster_13_addr,
  output [63:0] io_r_3_cluster_13_data,
  input         io_r_3_cluster_14_en,
  input  [7:0]  io_r_3_cluster_14_addr,
  output [63:0] io_r_3_cluster_14_data,
  input         io_r_3_cluster_15_en,
  input  [7:0]  io_r_3_cluster_15_addr,
  output [63:0] io_r_3_cluster_15_data,
  input         io_r_3_cluster_16_en,
  input  [7:0]  io_r_3_cluster_16_addr,
  output [63:0] io_r_3_cluster_16_data,
  input         io_r_3_cluster_17_en,
  input  [7:0]  io_r_3_cluster_17_addr,
  output [63:0] io_r_3_cluster_17_data,
  input         io_r_3_cluster_18_en,
  input  [7:0]  io_r_3_cluster_18_addr,
  output [63:0] io_r_3_cluster_18_data,
  input         io_r_3_cluster_19_en,
  input  [7:0]  io_r_3_cluster_19_addr,
  output [63:0] io_r_3_cluster_19_data,
  input         io_r_3_cluster_20_en,
  input  [7:0]  io_r_3_cluster_20_addr,
  output [63:0] io_r_3_cluster_20_data,
  input         io_r_3_cluster_21_en,
  input  [7:0]  io_r_3_cluster_21_addr,
  output [63:0] io_r_3_cluster_21_data,
  input         io_r_3_cluster_22_en,
  input  [7:0]  io_r_3_cluster_22_addr,
  output [63:0] io_r_3_cluster_22_data,
  input         io_r_3_cluster_23_en,
  input  [7:0]  io_r_3_cluster_23_addr,
  output [63:0] io_r_3_cluster_23_data,
  input         io_r_3_cluster_24_en,
  input  [7:0]  io_r_3_cluster_24_addr,
  output [63:0] io_r_3_cluster_24_data,
  input         io_r_3_cluster_25_en,
  input  [7:0]  io_r_3_cluster_25_addr,
  output [63:0] io_r_3_cluster_25_data,
  input         io_r_3_cluster_26_en,
  input  [7:0]  io_r_3_cluster_26_addr,
  output [63:0] io_r_3_cluster_26_data,
  input         io_r_3_cluster_27_en,
  input  [7:0]  io_r_3_cluster_27_addr,
  output [63:0] io_r_3_cluster_27_data,
  input         io_r_3_cluster_28_en,
  input  [7:0]  io_r_3_cluster_28_addr,
  output [63:0] io_r_3_cluster_28_data,
  input         io_r_3_cluster_29_en,
  input  [7:0]  io_r_3_cluster_29_addr,
  output [63:0] io_r_3_cluster_29_data,
  input         io_r_3_cluster_30_en,
  input  [7:0]  io_r_3_cluster_30_addr,
  output [63:0] io_r_3_cluster_30_data,
  input         io_r_3_cluster_31_en,
  input  [7:0]  io_r_3_cluster_31_addr,
  output [63:0] io_r_3_cluster_31_data,
  input         io_r_3_cluster_32_en,
  input  [7:0]  io_r_3_cluster_32_addr,
  output [63:0] io_r_3_cluster_32_data,
  input         io_r_3_cluster_33_en,
  input  [7:0]  io_r_3_cluster_33_addr,
  output [63:0] io_r_3_cluster_33_data,
  input         io_r_3_cluster_34_en,
  input  [7:0]  io_r_3_cluster_34_addr,
  output [63:0] io_r_3_cluster_34_data,
  input         io_r_3_cluster_35_en,
  input  [7:0]  io_r_3_cluster_35_addr,
  output [63:0] io_r_3_cluster_35_data,
  input         io_r_3_cluster_36_en,
  input  [7:0]  io_r_3_cluster_36_addr,
  output [63:0] io_r_3_cluster_36_data,
  input         io_r_3_cluster_37_en,
  input  [7:0]  io_r_3_cluster_37_addr,
  output [63:0] io_r_3_cluster_37_data,
  input         io_r_3_cluster_38_en,
  input  [7:0]  io_r_3_cluster_38_addr,
  output [63:0] io_r_3_cluster_38_data,
  input         io_r_3_cluster_39_en,
  input  [7:0]  io_r_3_cluster_39_addr,
  output [63:0] io_r_3_cluster_39_data,
  input         io_r_3_cluster_40_en,
  input  [7:0]  io_r_3_cluster_40_addr,
  output [63:0] io_r_3_cluster_40_data,
  input         io_r_3_cluster_41_en,
  input  [7:0]  io_r_3_cluster_41_addr,
  output [63:0] io_r_3_cluster_41_data,
  input         io_r_3_cluster_42_en,
  input  [7:0]  io_r_3_cluster_42_addr,
  output [63:0] io_r_3_cluster_42_data,
  input         io_r_3_cluster_43_en,
  input  [7:0]  io_r_3_cluster_43_addr,
  output [63:0] io_r_3_cluster_43_data,
  input         io_r_3_cluster_44_en,
  input  [7:0]  io_r_3_cluster_44_addr,
  output [63:0] io_r_3_cluster_44_data,
  input         io_r_3_cluster_45_en,
  input  [7:0]  io_r_3_cluster_45_addr,
  output [63:0] io_r_3_cluster_45_data,
  input         io_r_3_cluster_46_en,
  input  [7:0]  io_r_3_cluster_46_addr,
  output [63:0] io_r_3_cluster_46_data,
  input         io_r_3_cluster_47_en,
  input  [7:0]  io_r_3_cluster_47_addr,
  output [63:0] io_r_3_cluster_47_data,
  input         io_r_3_cluster_48_en,
  input  [7:0]  io_r_3_cluster_48_addr,
  output [63:0] io_r_3_cluster_48_data,
  input         io_r_3_cluster_49_en,
  input  [7:0]  io_r_3_cluster_49_addr,
  output [63:0] io_r_3_cluster_49_data,
  input         io_r_3_cluster_50_en,
  input  [7:0]  io_r_3_cluster_50_addr,
  output [63:0] io_r_3_cluster_50_data,
  input         io_r_3_cluster_51_en,
  input  [7:0]  io_r_3_cluster_51_addr,
  output [63:0] io_r_3_cluster_51_data,
  input         io_r_3_cluster_52_en,
  input  [7:0]  io_r_3_cluster_52_addr,
  output [63:0] io_r_3_cluster_52_data,
  input         io_r_3_cluster_53_en,
  input  [7:0]  io_r_3_cluster_53_addr,
  output [63:0] io_r_3_cluster_53_data,
  input         io_r_3_cluster_54_en,
  input  [7:0]  io_r_3_cluster_54_addr,
  output [63:0] io_r_3_cluster_54_data,
  input         io_r_3_cluster_55_en,
  input  [7:0]  io_r_3_cluster_55_addr,
  output [63:0] io_r_3_cluster_55_data,
  input         io_r_3_cluster_56_en,
  input  [7:0]  io_r_3_cluster_56_addr,
  output [63:0] io_r_3_cluster_56_data,
  input         io_r_3_cluster_57_en,
  input  [7:0]  io_r_3_cluster_57_addr,
  output [63:0] io_r_3_cluster_57_data,
  input         io_r_3_cluster_58_en,
  input  [7:0]  io_r_3_cluster_58_addr,
  output [63:0] io_r_3_cluster_58_data,
  input         io_r_3_cluster_59_en,
  input  [7:0]  io_r_3_cluster_59_addr,
  output [63:0] io_r_3_cluster_59_data,
  input         io_r_3_cluster_60_en,
  input  [7:0]  io_r_3_cluster_60_addr,
  output [63:0] io_r_3_cluster_60_data,
  input         io_r_3_cluster_61_en,
  input  [7:0]  io_r_3_cluster_61_addr,
  output [63:0] io_r_3_cluster_61_data,
  input         io_r_3_cluster_62_en,
  input  [7:0]  io_r_3_cluster_62_addr,
  output [63:0] io_r_3_cluster_62_data,
  input         io_r_3_cluster_63_en,
  input  [7:0]  io_r_3_cluster_63_addr,
  output [63:0] io_r_3_cluster_63_data
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
  wire [7:0] _GEN_65 = io_r_0_cluster_0_en ? io_r_0_cluster_0_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_67 = io_r_1_cluster_0_en ? io_r_1_cluster_0_addr : _GEN_65; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_69 = io_r_2_cluster_0_en ? io_r_2_cluster_0_addr : _GEN_67; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_73 = io_r_0_cluster_1_en ? io_r_0_cluster_1_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_75 = io_r_1_cluster_1_en ? io_r_1_cluster_1_addr : _GEN_73; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_77 = io_r_2_cluster_1_en ? io_r_2_cluster_1_addr : _GEN_75; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_81 = io_r_0_cluster_2_en ? io_r_0_cluster_2_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_83 = io_r_1_cluster_2_en ? io_r_1_cluster_2_addr : _GEN_81; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_85 = io_r_2_cluster_2_en ? io_r_2_cluster_2_addr : _GEN_83; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_89 = io_r_0_cluster_3_en ? io_r_0_cluster_3_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_91 = io_r_1_cluster_3_en ? io_r_1_cluster_3_addr : _GEN_89; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_93 = io_r_2_cluster_3_en ? io_r_2_cluster_3_addr : _GEN_91; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_97 = io_r_0_cluster_4_en ? io_r_0_cluster_4_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_99 = io_r_1_cluster_4_en ? io_r_1_cluster_4_addr : _GEN_97; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_101 = io_r_2_cluster_4_en ? io_r_2_cluster_4_addr : _GEN_99; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_105 = io_r_0_cluster_5_en ? io_r_0_cluster_5_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_107 = io_r_1_cluster_5_en ? io_r_1_cluster_5_addr : _GEN_105; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_109 = io_r_2_cluster_5_en ? io_r_2_cluster_5_addr : _GEN_107; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_113 = io_r_0_cluster_6_en ? io_r_0_cluster_6_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_115 = io_r_1_cluster_6_en ? io_r_1_cluster_6_addr : _GEN_113; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_117 = io_r_2_cluster_6_en ? io_r_2_cluster_6_addr : _GEN_115; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_121 = io_r_0_cluster_7_en ? io_r_0_cluster_7_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_123 = io_r_1_cluster_7_en ? io_r_1_cluster_7_addr : _GEN_121; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_125 = io_r_2_cluster_7_en ? io_r_2_cluster_7_addr : _GEN_123; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_129 = io_r_0_cluster_8_en ? io_r_0_cluster_8_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_131 = io_r_1_cluster_8_en ? io_r_1_cluster_8_addr : _GEN_129; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_133 = io_r_2_cluster_8_en ? io_r_2_cluster_8_addr : _GEN_131; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_137 = io_r_0_cluster_9_en ? io_r_0_cluster_9_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_139 = io_r_1_cluster_9_en ? io_r_1_cluster_9_addr : _GEN_137; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_141 = io_r_2_cluster_9_en ? io_r_2_cluster_9_addr : _GEN_139; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_145 = io_r_0_cluster_10_en ? io_r_0_cluster_10_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_147 = io_r_1_cluster_10_en ? io_r_1_cluster_10_addr : _GEN_145; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_149 = io_r_2_cluster_10_en ? io_r_2_cluster_10_addr : _GEN_147; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_153 = io_r_0_cluster_11_en ? io_r_0_cluster_11_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_155 = io_r_1_cluster_11_en ? io_r_1_cluster_11_addr : _GEN_153; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_157 = io_r_2_cluster_11_en ? io_r_2_cluster_11_addr : _GEN_155; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_161 = io_r_0_cluster_12_en ? io_r_0_cluster_12_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_163 = io_r_1_cluster_12_en ? io_r_1_cluster_12_addr : _GEN_161; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_165 = io_r_2_cluster_12_en ? io_r_2_cluster_12_addr : _GEN_163; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_169 = io_r_0_cluster_13_en ? io_r_0_cluster_13_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_171 = io_r_1_cluster_13_en ? io_r_1_cluster_13_addr : _GEN_169; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_173 = io_r_2_cluster_13_en ? io_r_2_cluster_13_addr : _GEN_171; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_177 = io_r_0_cluster_14_en ? io_r_0_cluster_14_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_179 = io_r_1_cluster_14_en ? io_r_1_cluster_14_addr : _GEN_177; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_181 = io_r_2_cluster_14_en ? io_r_2_cluster_14_addr : _GEN_179; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_185 = io_r_0_cluster_15_en ? io_r_0_cluster_15_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_187 = io_r_1_cluster_15_en ? io_r_1_cluster_15_addr : _GEN_185; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_189 = io_r_2_cluster_15_en ? io_r_2_cluster_15_addr : _GEN_187; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_193 = io_r_0_cluster_16_en ? io_r_0_cluster_16_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_195 = io_r_1_cluster_16_en ? io_r_1_cluster_16_addr : _GEN_193; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_197 = io_r_2_cluster_16_en ? io_r_2_cluster_16_addr : _GEN_195; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_201 = io_r_0_cluster_17_en ? io_r_0_cluster_17_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_203 = io_r_1_cluster_17_en ? io_r_1_cluster_17_addr : _GEN_201; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_205 = io_r_2_cluster_17_en ? io_r_2_cluster_17_addr : _GEN_203; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_209 = io_r_0_cluster_18_en ? io_r_0_cluster_18_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_211 = io_r_1_cluster_18_en ? io_r_1_cluster_18_addr : _GEN_209; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_213 = io_r_2_cluster_18_en ? io_r_2_cluster_18_addr : _GEN_211; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_217 = io_r_0_cluster_19_en ? io_r_0_cluster_19_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_219 = io_r_1_cluster_19_en ? io_r_1_cluster_19_addr : _GEN_217; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_221 = io_r_2_cluster_19_en ? io_r_2_cluster_19_addr : _GEN_219; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_225 = io_r_0_cluster_20_en ? io_r_0_cluster_20_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_227 = io_r_1_cluster_20_en ? io_r_1_cluster_20_addr : _GEN_225; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_229 = io_r_2_cluster_20_en ? io_r_2_cluster_20_addr : _GEN_227; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_233 = io_r_0_cluster_21_en ? io_r_0_cluster_21_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_235 = io_r_1_cluster_21_en ? io_r_1_cluster_21_addr : _GEN_233; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_237 = io_r_2_cluster_21_en ? io_r_2_cluster_21_addr : _GEN_235; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_241 = io_r_0_cluster_22_en ? io_r_0_cluster_22_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_243 = io_r_1_cluster_22_en ? io_r_1_cluster_22_addr : _GEN_241; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_245 = io_r_2_cluster_22_en ? io_r_2_cluster_22_addr : _GEN_243; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_249 = io_r_0_cluster_23_en ? io_r_0_cluster_23_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_251 = io_r_1_cluster_23_en ? io_r_1_cluster_23_addr : _GEN_249; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_253 = io_r_2_cluster_23_en ? io_r_2_cluster_23_addr : _GEN_251; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_257 = io_r_0_cluster_24_en ? io_r_0_cluster_24_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_259 = io_r_1_cluster_24_en ? io_r_1_cluster_24_addr : _GEN_257; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_261 = io_r_2_cluster_24_en ? io_r_2_cluster_24_addr : _GEN_259; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_265 = io_r_0_cluster_25_en ? io_r_0_cluster_25_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_267 = io_r_1_cluster_25_en ? io_r_1_cluster_25_addr : _GEN_265; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_269 = io_r_2_cluster_25_en ? io_r_2_cluster_25_addr : _GEN_267; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_273 = io_r_0_cluster_26_en ? io_r_0_cluster_26_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_275 = io_r_1_cluster_26_en ? io_r_1_cluster_26_addr : _GEN_273; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_277 = io_r_2_cluster_26_en ? io_r_2_cluster_26_addr : _GEN_275; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_281 = io_r_0_cluster_27_en ? io_r_0_cluster_27_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_283 = io_r_1_cluster_27_en ? io_r_1_cluster_27_addr : _GEN_281; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_285 = io_r_2_cluster_27_en ? io_r_2_cluster_27_addr : _GEN_283; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_289 = io_r_0_cluster_28_en ? io_r_0_cluster_28_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_291 = io_r_1_cluster_28_en ? io_r_1_cluster_28_addr : _GEN_289; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_293 = io_r_2_cluster_28_en ? io_r_2_cluster_28_addr : _GEN_291; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_297 = io_r_0_cluster_29_en ? io_r_0_cluster_29_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_299 = io_r_1_cluster_29_en ? io_r_1_cluster_29_addr : _GEN_297; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_301 = io_r_2_cluster_29_en ? io_r_2_cluster_29_addr : _GEN_299; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_305 = io_r_0_cluster_30_en ? io_r_0_cluster_30_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_307 = io_r_1_cluster_30_en ? io_r_1_cluster_30_addr : _GEN_305; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_309 = io_r_2_cluster_30_en ? io_r_2_cluster_30_addr : _GEN_307; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_313 = io_r_0_cluster_31_en ? io_r_0_cluster_31_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_315 = io_r_1_cluster_31_en ? io_r_1_cluster_31_addr : _GEN_313; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_317 = io_r_2_cluster_31_en ? io_r_2_cluster_31_addr : _GEN_315; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_321 = io_r_0_cluster_32_en ? io_r_0_cluster_32_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_323 = io_r_1_cluster_32_en ? io_r_1_cluster_32_addr : _GEN_321; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_325 = io_r_2_cluster_32_en ? io_r_2_cluster_32_addr : _GEN_323; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_329 = io_r_0_cluster_33_en ? io_r_0_cluster_33_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_331 = io_r_1_cluster_33_en ? io_r_1_cluster_33_addr : _GEN_329; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_333 = io_r_2_cluster_33_en ? io_r_2_cluster_33_addr : _GEN_331; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_337 = io_r_0_cluster_34_en ? io_r_0_cluster_34_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_339 = io_r_1_cluster_34_en ? io_r_1_cluster_34_addr : _GEN_337; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_341 = io_r_2_cluster_34_en ? io_r_2_cluster_34_addr : _GEN_339; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_345 = io_r_0_cluster_35_en ? io_r_0_cluster_35_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_347 = io_r_1_cluster_35_en ? io_r_1_cluster_35_addr : _GEN_345; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_349 = io_r_2_cluster_35_en ? io_r_2_cluster_35_addr : _GEN_347; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_353 = io_r_0_cluster_36_en ? io_r_0_cluster_36_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_355 = io_r_1_cluster_36_en ? io_r_1_cluster_36_addr : _GEN_353; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_357 = io_r_2_cluster_36_en ? io_r_2_cluster_36_addr : _GEN_355; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_361 = io_r_0_cluster_37_en ? io_r_0_cluster_37_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_363 = io_r_1_cluster_37_en ? io_r_1_cluster_37_addr : _GEN_361; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_365 = io_r_2_cluster_37_en ? io_r_2_cluster_37_addr : _GEN_363; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_369 = io_r_0_cluster_38_en ? io_r_0_cluster_38_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_371 = io_r_1_cluster_38_en ? io_r_1_cluster_38_addr : _GEN_369; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_373 = io_r_2_cluster_38_en ? io_r_2_cluster_38_addr : _GEN_371; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_377 = io_r_0_cluster_39_en ? io_r_0_cluster_39_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_379 = io_r_1_cluster_39_en ? io_r_1_cluster_39_addr : _GEN_377; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_381 = io_r_2_cluster_39_en ? io_r_2_cluster_39_addr : _GEN_379; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_385 = io_r_0_cluster_40_en ? io_r_0_cluster_40_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_387 = io_r_1_cluster_40_en ? io_r_1_cluster_40_addr : _GEN_385; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_389 = io_r_2_cluster_40_en ? io_r_2_cluster_40_addr : _GEN_387; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_393 = io_r_0_cluster_41_en ? io_r_0_cluster_41_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_395 = io_r_1_cluster_41_en ? io_r_1_cluster_41_addr : _GEN_393; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_397 = io_r_2_cluster_41_en ? io_r_2_cluster_41_addr : _GEN_395; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_401 = io_r_0_cluster_42_en ? io_r_0_cluster_42_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_403 = io_r_1_cluster_42_en ? io_r_1_cluster_42_addr : _GEN_401; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_405 = io_r_2_cluster_42_en ? io_r_2_cluster_42_addr : _GEN_403; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_409 = io_r_0_cluster_43_en ? io_r_0_cluster_43_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_411 = io_r_1_cluster_43_en ? io_r_1_cluster_43_addr : _GEN_409; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_413 = io_r_2_cluster_43_en ? io_r_2_cluster_43_addr : _GEN_411; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_417 = io_r_0_cluster_44_en ? io_r_0_cluster_44_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_419 = io_r_1_cluster_44_en ? io_r_1_cluster_44_addr : _GEN_417; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_421 = io_r_2_cluster_44_en ? io_r_2_cluster_44_addr : _GEN_419; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_425 = io_r_0_cluster_45_en ? io_r_0_cluster_45_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_427 = io_r_1_cluster_45_en ? io_r_1_cluster_45_addr : _GEN_425; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_429 = io_r_2_cluster_45_en ? io_r_2_cluster_45_addr : _GEN_427; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_433 = io_r_0_cluster_46_en ? io_r_0_cluster_46_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_435 = io_r_1_cluster_46_en ? io_r_1_cluster_46_addr : _GEN_433; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_437 = io_r_2_cluster_46_en ? io_r_2_cluster_46_addr : _GEN_435; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_441 = io_r_0_cluster_47_en ? io_r_0_cluster_47_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_443 = io_r_1_cluster_47_en ? io_r_1_cluster_47_addr : _GEN_441; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_445 = io_r_2_cluster_47_en ? io_r_2_cluster_47_addr : _GEN_443; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_449 = io_r_0_cluster_48_en ? io_r_0_cluster_48_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_451 = io_r_1_cluster_48_en ? io_r_1_cluster_48_addr : _GEN_449; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_453 = io_r_2_cluster_48_en ? io_r_2_cluster_48_addr : _GEN_451; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_457 = io_r_0_cluster_49_en ? io_r_0_cluster_49_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_459 = io_r_1_cluster_49_en ? io_r_1_cluster_49_addr : _GEN_457; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_461 = io_r_2_cluster_49_en ? io_r_2_cluster_49_addr : _GEN_459; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_465 = io_r_0_cluster_50_en ? io_r_0_cluster_50_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_467 = io_r_1_cluster_50_en ? io_r_1_cluster_50_addr : _GEN_465; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_469 = io_r_2_cluster_50_en ? io_r_2_cluster_50_addr : _GEN_467; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_473 = io_r_0_cluster_51_en ? io_r_0_cluster_51_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_475 = io_r_1_cluster_51_en ? io_r_1_cluster_51_addr : _GEN_473; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_477 = io_r_2_cluster_51_en ? io_r_2_cluster_51_addr : _GEN_475; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_481 = io_r_0_cluster_52_en ? io_r_0_cluster_52_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_483 = io_r_1_cluster_52_en ? io_r_1_cluster_52_addr : _GEN_481; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_485 = io_r_2_cluster_52_en ? io_r_2_cluster_52_addr : _GEN_483; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_489 = io_r_0_cluster_53_en ? io_r_0_cluster_53_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_491 = io_r_1_cluster_53_en ? io_r_1_cluster_53_addr : _GEN_489; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_493 = io_r_2_cluster_53_en ? io_r_2_cluster_53_addr : _GEN_491; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_497 = io_r_0_cluster_54_en ? io_r_0_cluster_54_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_499 = io_r_1_cluster_54_en ? io_r_1_cluster_54_addr : _GEN_497; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_501 = io_r_2_cluster_54_en ? io_r_2_cluster_54_addr : _GEN_499; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_505 = io_r_0_cluster_55_en ? io_r_0_cluster_55_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_507 = io_r_1_cluster_55_en ? io_r_1_cluster_55_addr : _GEN_505; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_509 = io_r_2_cluster_55_en ? io_r_2_cluster_55_addr : _GEN_507; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_513 = io_r_0_cluster_56_en ? io_r_0_cluster_56_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_515 = io_r_1_cluster_56_en ? io_r_1_cluster_56_addr : _GEN_513; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_517 = io_r_2_cluster_56_en ? io_r_2_cluster_56_addr : _GEN_515; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_521 = io_r_0_cluster_57_en ? io_r_0_cluster_57_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_523 = io_r_1_cluster_57_en ? io_r_1_cluster_57_addr : _GEN_521; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_525 = io_r_2_cluster_57_en ? io_r_2_cluster_57_addr : _GEN_523; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_529 = io_r_0_cluster_58_en ? io_r_0_cluster_58_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_531 = io_r_1_cluster_58_en ? io_r_1_cluster_58_addr : _GEN_529; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_533 = io_r_2_cluster_58_en ? io_r_2_cluster_58_addr : _GEN_531; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_537 = io_r_0_cluster_59_en ? io_r_0_cluster_59_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_539 = io_r_1_cluster_59_en ? io_r_1_cluster_59_addr : _GEN_537; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_541 = io_r_2_cluster_59_en ? io_r_2_cluster_59_addr : _GEN_539; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_545 = io_r_0_cluster_60_en ? io_r_0_cluster_60_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_547 = io_r_1_cluster_60_en ? io_r_1_cluster_60_addr : _GEN_545; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_549 = io_r_2_cluster_60_en ? io_r_2_cluster_60_addr : _GEN_547; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_553 = io_r_0_cluster_61_en ? io_r_0_cluster_61_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_555 = io_r_1_cluster_61_en ? io_r_1_cluster_61_addr : _GEN_553; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_557 = io_r_2_cluster_61_en ? io_r_2_cluster_61_addr : _GEN_555; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_561 = io_r_0_cluster_62_en ? io_r_0_cluster_62_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_563 = io_r_1_cluster_62_en ? io_r_1_cluster_62_addr : _GEN_561; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_565 = io_r_2_cluster_62_en ? io_r_2_cluster_62_addr : _GEN_563; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_569 = io_r_0_cluster_63_en ? io_r_0_cluster_63_addr : 8'h0; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35 sram_cluster.scala 39:27]
  wire [7:0] _GEN_571 = io_r_1_cluster_63_en ? io_r_1_cluster_63_addr : _GEN_569; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  wire [7:0] _GEN_573 = io_r_2_cluster_63_en ? io_r_2_cluster_63_addr : _GEN_571; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
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
  assign io_r_1_cluster_16_data = sram_16_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_17_data = sram_17_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_18_data = sram_18_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_19_data = sram_19_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_20_data = sram_20_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_21_data = sram_21_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_22_data = sram_22_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_23_data = sram_23_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_24_data = sram_24_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_25_data = sram_25_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_26_data = sram_26_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_27_data = sram_27_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_28_data = sram_28_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_29_data = sram_29_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_30_data = sram_30_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_31_data = sram_31_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_32_data = sram_32_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_33_data = sram_33_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_34_data = sram_34_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_35_data = sram_35_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_36_data = sram_36_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_37_data = sram_37_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_38_data = sram_38_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_39_data = sram_39_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_40_data = sram_40_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_41_data = sram_41_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_42_data = sram_42_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_43_data = sram_43_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_44_data = sram_44_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_45_data = sram_45_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_46_data = sram_46_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_47_data = sram_47_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_48_data = sram_48_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_49_data = sram_49_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_50_data = sram_50_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_51_data = sram_51_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_52_data = sram_52_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_53_data = sram_53_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_54_data = sram_54_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_55_data = sram_55_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_56_data = sram_56_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_57_data = sram_57_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_58_data = sram_58_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_59_data = sram_59_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_60_data = sram_60_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_61_data = sram_61_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_62_data = sram_62_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_1_cluster_63_data = sram_63_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_0_data = sram_0_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_1_data = sram_1_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_2_data = sram_2_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_3_data = sram_3_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_4_data = sram_4_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_5_data = sram_5_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_6_data = sram_6_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_7_data = sram_7_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_8_data = sram_8_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_9_data = sram_9_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_10_data = sram_10_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_11_data = sram_11_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_12_data = sram_12_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_13_data = sram_13_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_14_data = sram_14_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_15_data = sram_15_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_16_data = sram_16_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_17_data = sram_17_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_18_data = sram_18_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_19_data = sram_19_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_20_data = sram_20_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_21_data = sram_21_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_22_data = sram_22_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_23_data = sram_23_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_24_data = sram_24_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_25_data = sram_25_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_26_data = sram_26_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_27_data = sram_27_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_28_data = sram_28_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_29_data = sram_29_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_30_data = sram_30_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_31_data = sram_31_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_32_data = sram_32_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_33_data = sram_33_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_34_data = sram_34_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_35_data = sram_35_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_36_data = sram_36_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_37_data = sram_37_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_38_data = sram_38_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_39_data = sram_39_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_40_data = sram_40_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_41_data = sram_41_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_42_data = sram_42_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_43_data = sram_43_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_44_data = sram_44_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_45_data = sram_45_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_46_data = sram_46_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_47_data = sram_47_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_48_data = sram_48_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_49_data = sram_49_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_50_data = sram_50_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_51_data = sram_51_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_52_data = sram_52_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_53_data = sram_53_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_54_data = sram_54_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_55_data = sram_55_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_56_data = sram_56_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_57_data = sram_57_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_58_data = sram_58_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_59_data = sram_59_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_60_data = sram_60_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_61_data = sram_61_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_62_data = sram_62_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_2_cluster_63_data = sram_63_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_0_data = sram_0_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_1_data = sram_1_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_2_data = sram_2_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_3_data = sram_3_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_4_data = sram_4_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_5_data = sram_5_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_6_data = sram_6_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_7_data = sram_7_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_8_data = sram_8_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_9_data = sram_9_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_10_data = sram_10_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_11_data = sram_11_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_12_data = sram_12_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_13_data = sram_13_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_14_data = sram_14_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_15_data = sram_15_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_16_data = sram_16_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_17_data = sram_17_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_18_data = sram_18_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_19_data = sram_19_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_20_data = sram_20_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_21_data = sram_21_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_22_data = sram_22_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_23_data = sram_23_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_24_data = sram_24_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_25_data = sram_25_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_26_data = sram_26_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_27_data = sram_27_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_28_data = sram_28_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_29_data = sram_29_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_30_data = sram_30_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_31_data = sram_31_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_32_data = sram_32_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_33_data = sram_33_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_34_data = sram_34_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_35_data = sram_35_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_36_data = sram_36_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_37_data = sram_37_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_38_data = sram_38_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_39_data = sram_39_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_40_data = sram_40_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_41_data = sram_41_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_42_data = sram_42_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_43_data = sram_43_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_44_data = sram_44_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_45_data = sram_45_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_46_data = sram_46_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_47_data = sram_47_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_48_data = sram_48_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_49_data = sram_49_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_50_data = sram_50_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_51_data = sram_51_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_52_data = sram_52_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_53_data = sram_53_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_54_data = sram_54_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_55_data = sram_55_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_56_data = sram_56_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_57_data = sram_57_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_58_data = sram_58_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_59_data = sram_59_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_60_data = sram_60_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_61_data = sram_61_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_62_data = sram_62_io_r_data; // @[sram_cluster.scala 45:37]
  assign io_r_3_cluster_63_data = sram_63_io_r_data; // @[sram_cluster.scala 45:37]
  assign sram_0_clock = clock;
  assign sram_0_io_w_en = 6'h0 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_0_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_0_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_0_io_r_en = io_r_3_cluster_0_en | (io_r_2_cluster_0_en | (io_r_1_cluster_0_en | io_r_0_cluster_0_en)); // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_0_io_r_addr = io_r_3_cluster_0_en ? io_r_3_cluster_0_addr : _GEN_69; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_1_clock = clock;
  assign sram_1_io_w_en = 6'h1 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_1_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_1_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_1_io_r_en = io_r_3_cluster_1_en | (io_r_2_cluster_1_en | (io_r_1_cluster_1_en | io_r_0_cluster_1_en)); // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_1_io_r_addr = io_r_3_cluster_1_en ? io_r_3_cluster_1_addr : _GEN_77; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_2_clock = clock;
  assign sram_2_io_w_en = 6'h2 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_2_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_2_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_2_io_r_en = io_r_3_cluster_2_en | (io_r_2_cluster_2_en | (io_r_1_cluster_2_en | io_r_0_cluster_2_en)); // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_2_io_r_addr = io_r_3_cluster_2_en ? io_r_3_cluster_2_addr : _GEN_85; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_3_clock = clock;
  assign sram_3_io_w_en = 6'h3 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_3_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_3_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_3_io_r_en = io_r_3_cluster_3_en | (io_r_2_cluster_3_en | (io_r_1_cluster_3_en | io_r_0_cluster_3_en)); // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_3_io_r_addr = io_r_3_cluster_3_en ? io_r_3_cluster_3_addr : _GEN_93; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_4_clock = clock;
  assign sram_4_io_w_en = 6'h4 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_4_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_4_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_4_io_r_en = io_r_3_cluster_4_en | (io_r_2_cluster_4_en | (io_r_1_cluster_4_en | io_r_0_cluster_4_en)); // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_4_io_r_addr = io_r_3_cluster_4_en ? io_r_3_cluster_4_addr : _GEN_101; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_5_clock = clock;
  assign sram_5_io_w_en = 6'h5 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_5_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_5_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_5_io_r_en = io_r_3_cluster_5_en | (io_r_2_cluster_5_en | (io_r_1_cluster_5_en | io_r_0_cluster_5_en)); // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_5_io_r_addr = io_r_3_cluster_5_en ? io_r_3_cluster_5_addr : _GEN_109; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_6_clock = clock;
  assign sram_6_io_w_en = 6'h6 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_6_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_6_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_6_io_r_en = io_r_3_cluster_6_en | (io_r_2_cluster_6_en | (io_r_1_cluster_6_en | io_r_0_cluster_6_en)); // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_6_io_r_addr = io_r_3_cluster_6_en ? io_r_3_cluster_6_addr : _GEN_117; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_7_clock = clock;
  assign sram_7_io_w_en = 6'h7 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_7_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_7_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_7_io_r_en = io_r_3_cluster_7_en | (io_r_2_cluster_7_en | (io_r_1_cluster_7_en | io_r_0_cluster_7_en)); // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_7_io_r_addr = io_r_3_cluster_7_en ? io_r_3_cluster_7_addr : _GEN_125; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_8_clock = clock;
  assign sram_8_io_w_en = 6'h8 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_8_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_8_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_8_io_r_en = io_r_3_cluster_8_en | (io_r_2_cluster_8_en | (io_r_1_cluster_8_en | io_r_0_cluster_8_en)); // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_8_io_r_addr = io_r_3_cluster_8_en ? io_r_3_cluster_8_addr : _GEN_133; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_9_clock = clock;
  assign sram_9_io_w_en = 6'h9 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_9_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_9_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_9_io_r_en = io_r_3_cluster_9_en | (io_r_2_cluster_9_en | (io_r_1_cluster_9_en | io_r_0_cluster_9_en)); // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_9_io_r_addr = io_r_3_cluster_9_en ? io_r_3_cluster_9_addr : _GEN_141; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_10_clock = clock;
  assign sram_10_io_w_en = 6'ha != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_10_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_10_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_10_io_r_en = io_r_3_cluster_10_en | (io_r_2_cluster_10_en | (io_r_1_cluster_10_en | io_r_0_cluster_10_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_10_io_r_addr = io_r_3_cluster_10_en ? io_r_3_cluster_10_addr : _GEN_149; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_11_clock = clock;
  assign sram_11_io_w_en = 6'hb != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_11_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_11_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_11_io_r_en = io_r_3_cluster_11_en | (io_r_2_cluster_11_en | (io_r_1_cluster_11_en | io_r_0_cluster_11_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_11_io_r_addr = io_r_3_cluster_11_en ? io_r_3_cluster_11_addr : _GEN_157; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_12_clock = clock;
  assign sram_12_io_w_en = 6'hc != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_12_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_12_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_12_io_r_en = io_r_3_cluster_12_en | (io_r_2_cluster_12_en | (io_r_1_cluster_12_en | io_r_0_cluster_12_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_12_io_r_addr = io_r_3_cluster_12_en ? io_r_3_cluster_12_addr : _GEN_165; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_13_clock = clock;
  assign sram_13_io_w_en = 6'hd != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_13_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_13_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_13_io_r_en = io_r_3_cluster_13_en | (io_r_2_cluster_13_en | (io_r_1_cluster_13_en | io_r_0_cluster_13_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_13_io_r_addr = io_r_3_cluster_13_en ? io_r_3_cluster_13_addr : _GEN_173; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_14_clock = clock;
  assign sram_14_io_w_en = 6'he != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_14_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_14_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_14_io_r_en = io_r_3_cluster_14_en | (io_r_2_cluster_14_en | (io_r_1_cluster_14_en | io_r_0_cluster_14_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_14_io_r_addr = io_r_3_cluster_14_en ? io_r_3_cluster_14_addr : _GEN_181; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_15_clock = clock;
  assign sram_15_io_w_en = 6'hf != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_15_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_15_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_15_io_r_en = io_r_3_cluster_15_en | (io_r_2_cluster_15_en | (io_r_1_cluster_15_en | io_r_0_cluster_15_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_15_io_r_addr = io_r_3_cluster_15_en ? io_r_3_cluster_15_addr : _GEN_189; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_16_clock = clock;
  assign sram_16_io_w_en = 6'h10 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_16_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_16_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_16_io_r_en = io_r_3_cluster_16_en | (io_r_2_cluster_16_en | (io_r_1_cluster_16_en | io_r_0_cluster_16_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_16_io_r_addr = io_r_3_cluster_16_en ? io_r_3_cluster_16_addr : _GEN_197; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_17_clock = clock;
  assign sram_17_io_w_en = 6'h11 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_17_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_17_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_17_io_r_en = io_r_3_cluster_17_en | (io_r_2_cluster_17_en | (io_r_1_cluster_17_en | io_r_0_cluster_17_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_17_io_r_addr = io_r_3_cluster_17_en ? io_r_3_cluster_17_addr : _GEN_205; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_18_clock = clock;
  assign sram_18_io_w_en = 6'h12 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_18_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_18_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_18_io_r_en = io_r_3_cluster_18_en | (io_r_2_cluster_18_en | (io_r_1_cluster_18_en | io_r_0_cluster_18_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_18_io_r_addr = io_r_3_cluster_18_en ? io_r_3_cluster_18_addr : _GEN_213; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_19_clock = clock;
  assign sram_19_io_w_en = 6'h13 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_19_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_19_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_19_io_r_en = io_r_3_cluster_19_en | (io_r_2_cluster_19_en | (io_r_1_cluster_19_en | io_r_0_cluster_19_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_19_io_r_addr = io_r_3_cluster_19_en ? io_r_3_cluster_19_addr : _GEN_221; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_20_clock = clock;
  assign sram_20_io_w_en = 6'h14 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_20_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_20_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_20_io_r_en = io_r_3_cluster_20_en | (io_r_2_cluster_20_en | (io_r_1_cluster_20_en | io_r_0_cluster_20_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_20_io_r_addr = io_r_3_cluster_20_en ? io_r_3_cluster_20_addr : _GEN_229; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_21_clock = clock;
  assign sram_21_io_w_en = 6'h15 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_21_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_21_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_21_io_r_en = io_r_3_cluster_21_en | (io_r_2_cluster_21_en | (io_r_1_cluster_21_en | io_r_0_cluster_21_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_21_io_r_addr = io_r_3_cluster_21_en ? io_r_3_cluster_21_addr : _GEN_237; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_22_clock = clock;
  assign sram_22_io_w_en = 6'h16 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_22_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_22_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_22_io_r_en = io_r_3_cluster_22_en | (io_r_2_cluster_22_en | (io_r_1_cluster_22_en | io_r_0_cluster_22_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_22_io_r_addr = io_r_3_cluster_22_en ? io_r_3_cluster_22_addr : _GEN_245; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_23_clock = clock;
  assign sram_23_io_w_en = 6'h17 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_23_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_23_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_23_io_r_en = io_r_3_cluster_23_en | (io_r_2_cluster_23_en | (io_r_1_cluster_23_en | io_r_0_cluster_23_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_23_io_r_addr = io_r_3_cluster_23_en ? io_r_3_cluster_23_addr : _GEN_253; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_24_clock = clock;
  assign sram_24_io_w_en = 6'h18 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_24_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_24_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_24_io_r_en = io_r_3_cluster_24_en | (io_r_2_cluster_24_en | (io_r_1_cluster_24_en | io_r_0_cluster_24_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_24_io_r_addr = io_r_3_cluster_24_en ? io_r_3_cluster_24_addr : _GEN_261; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_25_clock = clock;
  assign sram_25_io_w_en = 6'h19 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_25_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_25_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_25_io_r_en = io_r_3_cluster_25_en | (io_r_2_cluster_25_en | (io_r_1_cluster_25_en | io_r_0_cluster_25_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_25_io_r_addr = io_r_3_cluster_25_en ? io_r_3_cluster_25_addr : _GEN_269; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_26_clock = clock;
  assign sram_26_io_w_en = 6'h1a != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_26_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_26_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_26_io_r_en = io_r_3_cluster_26_en | (io_r_2_cluster_26_en | (io_r_1_cluster_26_en | io_r_0_cluster_26_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_26_io_r_addr = io_r_3_cluster_26_en ? io_r_3_cluster_26_addr : _GEN_277; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_27_clock = clock;
  assign sram_27_io_w_en = 6'h1b != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_27_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_27_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_27_io_r_en = io_r_3_cluster_27_en | (io_r_2_cluster_27_en | (io_r_1_cluster_27_en | io_r_0_cluster_27_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_27_io_r_addr = io_r_3_cluster_27_en ? io_r_3_cluster_27_addr : _GEN_285; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_28_clock = clock;
  assign sram_28_io_w_en = 6'h1c != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_28_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_28_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_28_io_r_en = io_r_3_cluster_28_en | (io_r_2_cluster_28_en | (io_r_1_cluster_28_en | io_r_0_cluster_28_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_28_io_r_addr = io_r_3_cluster_28_en ? io_r_3_cluster_28_addr : _GEN_293; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_29_clock = clock;
  assign sram_29_io_w_en = 6'h1d != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_29_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_29_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_29_io_r_en = io_r_3_cluster_29_en | (io_r_2_cluster_29_en | (io_r_1_cluster_29_en | io_r_0_cluster_29_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_29_io_r_addr = io_r_3_cluster_29_en ? io_r_3_cluster_29_addr : _GEN_301; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_30_clock = clock;
  assign sram_30_io_w_en = 6'h1e != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_30_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_30_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_30_io_r_en = io_r_3_cluster_30_en | (io_r_2_cluster_30_en | (io_r_1_cluster_30_en | io_r_0_cluster_30_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_30_io_r_addr = io_r_3_cluster_30_en ? io_r_3_cluster_30_addr : _GEN_309; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_31_clock = clock;
  assign sram_31_io_w_en = 6'h1f != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_31_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_31_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_31_io_r_en = io_r_3_cluster_31_en | (io_r_2_cluster_31_en | (io_r_1_cluster_31_en | io_r_0_cluster_31_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_31_io_r_addr = io_r_3_cluster_31_en ? io_r_3_cluster_31_addr : _GEN_317; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_32_clock = clock;
  assign sram_32_io_w_en = 6'h20 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_32_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_32_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_32_io_r_en = io_r_3_cluster_32_en | (io_r_2_cluster_32_en | (io_r_1_cluster_32_en | io_r_0_cluster_32_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_32_io_r_addr = io_r_3_cluster_32_en ? io_r_3_cluster_32_addr : _GEN_325; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_33_clock = clock;
  assign sram_33_io_w_en = 6'h21 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_33_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_33_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_33_io_r_en = io_r_3_cluster_33_en | (io_r_2_cluster_33_en | (io_r_1_cluster_33_en | io_r_0_cluster_33_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_33_io_r_addr = io_r_3_cluster_33_en ? io_r_3_cluster_33_addr : _GEN_333; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_34_clock = clock;
  assign sram_34_io_w_en = 6'h22 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_34_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_34_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_34_io_r_en = io_r_3_cluster_34_en | (io_r_2_cluster_34_en | (io_r_1_cluster_34_en | io_r_0_cluster_34_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_34_io_r_addr = io_r_3_cluster_34_en ? io_r_3_cluster_34_addr : _GEN_341; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_35_clock = clock;
  assign sram_35_io_w_en = 6'h23 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_35_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_35_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_35_io_r_en = io_r_3_cluster_35_en | (io_r_2_cluster_35_en | (io_r_1_cluster_35_en | io_r_0_cluster_35_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_35_io_r_addr = io_r_3_cluster_35_en ? io_r_3_cluster_35_addr : _GEN_349; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_36_clock = clock;
  assign sram_36_io_w_en = 6'h24 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_36_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_36_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_36_io_r_en = io_r_3_cluster_36_en | (io_r_2_cluster_36_en | (io_r_1_cluster_36_en | io_r_0_cluster_36_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_36_io_r_addr = io_r_3_cluster_36_en ? io_r_3_cluster_36_addr : _GEN_357; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_37_clock = clock;
  assign sram_37_io_w_en = 6'h25 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_37_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_37_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_37_io_r_en = io_r_3_cluster_37_en | (io_r_2_cluster_37_en | (io_r_1_cluster_37_en | io_r_0_cluster_37_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_37_io_r_addr = io_r_3_cluster_37_en ? io_r_3_cluster_37_addr : _GEN_365; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_38_clock = clock;
  assign sram_38_io_w_en = 6'h26 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_38_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_38_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_38_io_r_en = io_r_3_cluster_38_en | (io_r_2_cluster_38_en | (io_r_1_cluster_38_en | io_r_0_cluster_38_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_38_io_r_addr = io_r_3_cluster_38_en ? io_r_3_cluster_38_addr : _GEN_373; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_39_clock = clock;
  assign sram_39_io_w_en = 6'h27 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_39_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_39_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_39_io_r_en = io_r_3_cluster_39_en | (io_r_2_cluster_39_en | (io_r_1_cluster_39_en | io_r_0_cluster_39_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_39_io_r_addr = io_r_3_cluster_39_en ? io_r_3_cluster_39_addr : _GEN_381; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_40_clock = clock;
  assign sram_40_io_w_en = 6'h28 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_40_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_40_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_40_io_r_en = io_r_3_cluster_40_en | (io_r_2_cluster_40_en | (io_r_1_cluster_40_en | io_r_0_cluster_40_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_40_io_r_addr = io_r_3_cluster_40_en ? io_r_3_cluster_40_addr : _GEN_389; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_41_clock = clock;
  assign sram_41_io_w_en = 6'h29 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_41_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_41_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_41_io_r_en = io_r_3_cluster_41_en | (io_r_2_cluster_41_en | (io_r_1_cluster_41_en | io_r_0_cluster_41_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_41_io_r_addr = io_r_3_cluster_41_en ? io_r_3_cluster_41_addr : _GEN_397; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_42_clock = clock;
  assign sram_42_io_w_en = 6'h2a != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_42_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_42_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_42_io_r_en = io_r_3_cluster_42_en | (io_r_2_cluster_42_en | (io_r_1_cluster_42_en | io_r_0_cluster_42_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_42_io_r_addr = io_r_3_cluster_42_en ? io_r_3_cluster_42_addr : _GEN_405; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_43_clock = clock;
  assign sram_43_io_w_en = 6'h2b != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_43_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_43_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_43_io_r_en = io_r_3_cluster_43_en | (io_r_2_cluster_43_en | (io_r_1_cluster_43_en | io_r_0_cluster_43_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_43_io_r_addr = io_r_3_cluster_43_en ? io_r_3_cluster_43_addr : _GEN_413; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_44_clock = clock;
  assign sram_44_io_w_en = 6'h2c != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_44_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_44_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_44_io_r_en = io_r_3_cluster_44_en | (io_r_2_cluster_44_en | (io_r_1_cluster_44_en | io_r_0_cluster_44_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_44_io_r_addr = io_r_3_cluster_44_en ? io_r_3_cluster_44_addr : _GEN_421; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_45_clock = clock;
  assign sram_45_io_w_en = 6'h2d != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_45_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_45_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_45_io_r_en = io_r_3_cluster_45_en | (io_r_2_cluster_45_en | (io_r_1_cluster_45_en | io_r_0_cluster_45_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_45_io_r_addr = io_r_3_cluster_45_en ? io_r_3_cluster_45_addr : _GEN_429; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_46_clock = clock;
  assign sram_46_io_w_en = 6'h2e != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_46_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_46_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_46_io_r_en = io_r_3_cluster_46_en | (io_r_2_cluster_46_en | (io_r_1_cluster_46_en | io_r_0_cluster_46_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_46_io_r_addr = io_r_3_cluster_46_en ? io_r_3_cluster_46_addr : _GEN_437; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_47_clock = clock;
  assign sram_47_io_w_en = 6'h2f != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_47_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_47_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_47_io_r_en = io_r_3_cluster_47_en | (io_r_2_cluster_47_en | (io_r_1_cluster_47_en | io_r_0_cluster_47_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_47_io_r_addr = io_r_3_cluster_47_en ? io_r_3_cluster_47_addr : _GEN_445; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_48_clock = clock;
  assign sram_48_io_w_en = 6'h30 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_48_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_48_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_48_io_r_en = io_r_3_cluster_48_en | (io_r_2_cluster_48_en | (io_r_1_cluster_48_en | io_r_0_cluster_48_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_48_io_r_addr = io_r_3_cluster_48_en ? io_r_3_cluster_48_addr : _GEN_453; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_49_clock = clock;
  assign sram_49_io_w_en = 6'h31 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_49_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_49_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_49_io_r_en = io_r_3_cluster_49_en | (io_r_2_cluster_49_en | (io_r_1_cluster_49_en | io_r_0_cluster_49_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_49_io_r_addr = io_r_3_cluster_49_en ? io_r_3_cluster_49_addr : _GEN_461; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_50_clock = clock;
  assign sram_50_io_w_en = 6'h32 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_50_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_50_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_50_io_r_en = io_r_3_cluster_50_en | (io_r_2_cluster_50_en | (io_r_1_cluster_50_en | io_r_0_cluster_50_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_50_io_r_addr = io_r_3_cluster_50_en ? io_r_3_cluster_50_addr : _GEN_469; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_51_clock = clock;
  assign sram_51_io_w_en = 6'h33 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_51_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_51_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_51_io_r_en = io_r_3_cluster_51_en | (io_r_2_cluster_51_en | (io_r_1_cluster_51_en | io_r_0_cluster_51_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_51_io_r_addr = io_r_3_cluster_51_en ? io_r_3_cluster_51_addr : _GEN_477; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_52_clock = clock;
  assign sram_52_io_w_en = 6'h34 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_52_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_52_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_52_io_r_en = io_r_3_cluster_52_en | (io_r_2_cluster_52_en | (io_r_1_cluster_52_en | io_r_0_cluster_52_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_52_io_r_addr = io_r_3_cluster_52_en ? io_r_3_cluster_52_addr : _GEN_485; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_53_clock = clock;
  assign sram_53_io_w_en = 6'h35 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_53_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_53_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_53_io_r_en = io_r_3_cluster_53_en | (io_r_2_cluster_53_en | (io_r_1_cluster_53_en | io_r_0_cluster_53_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_53_io_r_addr = io_r_3_cluster_53_en ? io_r_3_cluster_53_addr : _GEN_493; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_54_clock = clock;
  assign sram_54_io_w_en = 6'h36 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_54_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_54_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_54_io_r_en = io_r_3_cluster_54_en | (io_r_2_cluster_54_en | (io_r_1_cluster_54_en | io_r_0_cluster_54_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_54_io_r_addr = io_r_3_cluster_54_en ? io_r_3_cluster_54_addr : _GEN_501; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_55_clock = clock;
  assign sram_55_io_w_en = 6'h37 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_55_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_55_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_55_io_r_en = io_r_3_cluster_55_en | (io_r_2_cluster_55_en | (io_r_1_cluster_55_en | io_r_0_cluster_55_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_55_io_r_addr = io_r_3_cluster_55_en ? io_r_3_cluster_55_addr : _GEN_509; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_56_clock = clock;
  assign sram_56_io_w_en = 6'h38 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_56_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_56_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_56_io_r_en = io_r_3_cluster_56_en | (io_r_2_cluster_56_en | (io_r_1_cluster_56_en | io_r_0_cluster_56_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_56_io_r_addr = io_r_3_cluster_56_en ? io_r_3_cluster_56_addr : _GEN_517; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_57_clock = clock;
  assign sram_57_io_w_en = 6'h39 != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_57_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_57_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_57_io_r_en = io_r_3_cluster_57_en | (io_r_2_cluster_57_en | (io_r_1_cluster_57_en | io_r_0_cluster_57_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_57_io_r_addr = io_r_3_cluster_57_en ? io_r_3_cluster_57_addr : _GEN_525; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_58_clock = clock;
  assign sram_58_io_w_en = 6'h3a != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_58_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_58_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_58_io_r_en = io_r_3_cluster_58_en | (io_r_2_cluster_58_en | (io_r_1_cluster_58_en | io_r_0_cluster_58_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_58_io_r_addr = io_r_3_cluster_58_en ? io_r_3_cluster_58_addr : _GEN_533; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_59_clock = clock;
  assign sram_59_io_w_en = 6'h3b != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_59_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_59_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_59_io_r_en = io_r_3_cluster_59_en | (io_r_2_cluster_59_en | (io_r_1_cluster_59_en | io_r_0_cluster_59_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_59_io_r_addr = io_r_3_cluster_59_en ? io_r_3_cluster_59_addr : _GEN_541; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_60_clock = clock;
  assign sram_60_io_w_en = 6'h3c != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_60_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_60_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_60_io_r_en = io_r_3_cluster_60_en | (io_r_2_cluster_60_en | (io_r_1_cluster_60_en | io_r_0_cluster_60_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_60_io_r_addr = io_r_3_cluster_60_en ? io_r_3_cluster_60_addr : _GEN_549; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_61_clock = clock;
  assign sram_61_io_w_en = 6'h3d != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_61_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_61_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_61_io_r_en = io_r_3_cluster_61_en | (io_r_2_cluster_61_en | (io_r_1_cluster_61_en | io_r_0_cluster_61_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_61_io_r_addr = io_r_3_cluster_61_en ? io_r_3_cluster_61_addr : _GEN_557; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_62_clock = clock;
  assign sram_62_io_w_en = 6'h3e != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_62_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_62_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_62_io_r_en = io_r_3_cluster_62_en | (io_r_2_cluster_62_en | (io_r_1_cluster_62_en | io_r_0_cluster_62_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_62_io_r_addr = io_r_3_cluster_62_en ? io_r_3_cluster_62_addr : _GEN_565; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
  assign sram_63_clock = clock;
  assign sram_63_io_w_en = 6'h3f != io_w_wcs ? 1'h0 : io_w_w_en; // @[sram_cluster.scala 31:61 sram_cluster.scala 32:29 sram_cluster.scala 30:22]
  assign sram_63_io_w_addr = io_w_w_addr; // @[sram_cluster.scala 30:22]
  assign sram_63_io_w_data = io_w_w_data; // @[sram_cluster.scala 30:22]
  assign sram_63_io_r_en = io_r_3_cluster_63_en | (io_r_2_cluster_63_en | (io_r_1_cluster_63_en | io_r_0_cluster_63_en))
    ; // @[sram_cluster.scala 41:42 sram_cluster.scala 42:35]
  assign sram_63_io_r_addr = io_r_3_cluster_63_en ? io_r_3_cluster_63_addr : _GEN_573; // @[sram_cluster.scala 41:42 sram_cluster.scala 43:35]
endmodule
