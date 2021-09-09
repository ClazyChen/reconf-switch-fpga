module OutPortInternal(
  input         clock,
  input  [7:0]  io_phv_in_data_0,
  input  [7:0]  io_phv_in_data_1,
  input  [7:0]  io_phv_in_data_2,
  input  [7:0]  io_phv_in_data_3,
  input  [7:0]  io_phv_in_data_4,
  input  [7:0]  io_phv_in_data_5,
  input  [7:0]  io_phv_in_data_6,
  input  [7:0]  io_phv_in_data_7,
  input  [7:0]  io_phv_in_data_8,
  input  [7:0]  io_phv_in_data_9,
  input  [7:0]  io_phv_in_data_10,
  input  [7:0]  io_phv_in_data_11,
  input  [7:0]  io_phv_in_data_12,
  input  [7:0]  io_phv_in_data_13,
  input  [7:0]  io_phv_in_data_14,
  input  [7:0]  io_phv_in_data_15,
  input  [7:0]  io_phv_in_data_16,
  input  [7:0]  io_phv_in_data_17,
  input  [7:0]  io_phv_in_data_18,
  input  [7:0]  io_phv_in_data_19,
  input  [7:0]  io_phv_in_data_20,
  input  [7:0]  io_phv_in_data_21,
  input  [7:0]  io_phv_in_data_22,
  input  [7:0]  io_phv_in_data_23,
  input  [7:0]  io_phv_in_data_24,
  input  [7:0]  io_phv_in_data_25,
  input  [7:0]  io_phv_in_data_26,
  input  [7:0]  io_phv_in_data_27,
  input  [7:0]  io_phv_in_data_28,
  input  [7:0]  io_phv_in_data_29,
  input  [7:0]  io_phv_in_data_30,
  input  [7:0]  io_phv_in_data_31,
  input  [7:0]  io_phv_in_data_32,
  input  [7:0]  io_phv_in_data_33,
  input  [7:0]  io_phv_in_data_34,
  input  [7:0]  io_phv_in_data_35,
  input  [7:0]  io_phv_in_data_36,
  input  [7:0]  io_phv_in_data_37,
  input  [7:0]  io_phv_in_data_38,
  input  [7:0]  io_phv_in_data_39,
  input  [7:0]  io_phv_in_data_40,
  input  [7:0]  io_phv_in_data_41,
  input  [7:0]  io_phv_in_data_42,
  input  [7:0]  io_phv_in_data_43,
  input  [7:0]  io_phv_in_data_44,
  input  [7:0]  io_phv_in_data_45,
  input  [7:0]  io_phv_in_data_46,
  input  [7:0]  io_phv_in_data_47,
  input  [7:0]  io_phv_in_data_48,
  input  [7:0]  io_phv_in_data_49,
  input  [7:0]  io_phv_in_data_50,
  input  [7:0]  io_phv_in_data_51,
  input  [7:0]  io_phv_in_data_52,
  input  [7:0]  io_phv_in_data_53,
  input  [7:0]  io_phv_in_data_54,
  input  [7:0]  io_phv_in_data_55,
  input  [7:0]  io_phv_in_data_56,
  input  [7:0]  io_phv_in_data_57,
  input  [7:0]  io_phv_in_data_58,
  input  [7:0]  io_phv_in_data_59,
  input  [7:0]  io_phv_in_data_60,
  input  [7:0]  io_phv_in_data_61,
  input  [7:0]  io_phv_in_data_62,
  input  [7:0]  io_phv_in_data_63,
  input  [7:0]  io_phv_in_data_64,
  input  [7:0]  io_phv_in_data_65,
  input  [7:0]  io_phv_in_data_66,
  input  [7:0]  io_phv_in_data_67,
  input  [7:0]  io_phv_in_data_68,
  input  [7:0]  io_phv_in_data_69,
  input  [7:0]  io_phv_in_data_70,
  input  [7:0]  io_phv_in_data_71,
  input  [7:0]  io_phv_in_data_72,
  input  [7:0]  io_phv_in_data_73,
  input  [7:0]  io_phv_in_data_74,
  input  [7:0]  io_phv_in_data_75,
  input  [7:0]  io_phv_in_data_76,
  input  [7:0]  io_phv_in_data_77,
  input  [7:0]  io_phv_in_data_78,
  input  [7:0]  io_phv_in_data_79,
  input  [7:0]  io_phv_in_data_80,
  input  [7:0]  io_phv_in_data_81,
  input  [7:0]  io_phv_in_data_82,
  input  [7:0]  io_phv_in_data_83,
  input  [7:0]  io_phv_in_data_84,
  input  [7:0]  io_phv_in_data_85,
  input  [7:0]  io_phv_in_data_86,
  input  [7:0]  io_phv_in_data_87,
  input  [7:0]  io_phv_in_data_88,
  input  [7:0]  io_phv_in_data_89,
  input  [7:0]  io_phv_in_data_90,
  input  [7:0]  io_phv_in_data_91,
  input  [7:0]  io_phv_in_data_92,
  input  [7:0]  io_phv_in_data_93,
  input  [7:0]  io_phv_in_data_94,
  input  [7:0]  io_phv_in_data_95,
  input  [7:0]  io_phv_in_data_96,
  input  [7:0]  io_phv_in_data_97,
  input  [7:0]  io_phv_in_data_98,
  input  [7:0]  io_phv_in_data_99,
  input  [7:0]  io_phv_in_data_100,
  input  [7:0]  io_phv_in_data_101,
  input  [7:0]  io_phv_in_data_102,
  input  [7:0]  io_phv_in_data_103,
  input  [7:0]  io_phv_in_data_104,
  input  [7:0]  io_phv_in_data_105,
  input  [7:0]  io_phv_in_data_106,
  input  [7:0]  io_phv_in_data_107,
  input  [7:0]  io_phv_in_data_108,
  input  [7:0]  io_phv_in_data_109,
  input  [7:0]  io_phv_in_data_110,
  input  [7:0]  io_phv_in_data_111,
  input  [7:0]  io_phv_in_data_112,
  input  [7:0]  io_phv_in_data_113,
  input  [7:0]  io_phv_in_data_114,
  input  [7:0]  io_phv_in_data_115,
  input  [7:0]  io_phv_in_data_116,
  input  [7:0]  io_phv_in_data_117,
  input  [7:0]  io_phv_in_data_118,
  input  [7:0]  io_phv_in_data_119,
  input  [7:0]  io_phv_in_data_120,
  input  [7:0]  io_phv_in_data_121,
  input  [7:0]  io_phv_in_data_122,
  input  [7:0]  io_phv_in_data_123,
  input  [7:0]  io_phv_in_data_124,
  input  [7:0]  io_phv_in_data_125,
  input  [7:0]  io_phv_in_data_126,
  input  [7:0]  io_phv_in_data_127,
  input  [7:0]  io_phv_in_data_128,
  input  [7:0]  io_phv_in_data_129,
  input  [7:0]  io_phv_in_data_130,
  input  [7:0]  io_phv_in_data_131,
  input  [7:0]  io_phv_in_data_132,
  input  [7:0]  io_phv_in_data_133,
  input  [7:0]  io_phv_in_data_134,
  input  [7:0]  io_phv_in_data_135,
  input  [7:0]  io_phv_in_data_136,
  input  [7:0]  io_phv_in_data_137,
  input  [7:0]  io_phv_in_data_138,
  input  [7:0]  io_phv_in_data_139,
  input  [7:0]  io_phv_in_data_140,
  input  [7:0]  io_phv_in_data_141,
  input  [7:0]  io_phv_in_data_142,
  input  [7:0]  io_phv_in_data_143,
  input  [7:0]  io_phv_in_data_144,
  input  [7:0]  io_phv_in_data_145,
  input  [7:0]  io_phv_in_data_146,
  input  [7:0]  io_phv_in_data_147,
  input  [7:0]  io_phv_in_data_148,
  input  [7:0]  io_phv_in_data_149,
  input  [7:0]  io_phv_in_data_150,
  input  [7:0]  io_phv_in_data_151,
  input  [7:0]  io_phv_in_data_152,
  input  [7:0]  io_phv_in_data_153,
  input  [7:0]  io_phv_in_data_154,
  input  [7:0]  io_phv_in_data_155,
  input  [7:0]  io_phv_in_data_156,
  input  [7:0]  io_phv_in_data_157,
  input  [7:0]  io_phv_in_data_158,
  input  [7:0]  io_phv_in_data_159,
  input  [4:0]  io_pcie_o_cs,
  input         io_pcie_o_r_en,
  input  [7:0]  io_pcie_o_r_addr,
  output [63:0] io_pcie_o_r_data
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  sram_0_clock; // @[outport_internal.scala 23:25]
  wire  sram_0_io_w_en; // @[outport_internal.scala 23:25]
  wire [7:0] sram_0_io_w_addr; // @[outport_internal.scala 23:25]
  wire [63:0] sram_0_io_w_data; // @[outport_internal.scala 23:25]
  wire  sram_0_io_r_en; // @[outport_internal.scala 23:25]
  wire [7:0] sram_0_io_r_addr; // @[outport_internal.scala 23:25]
  wire [63:0] sram_0_io_r_data; // @[outport_internal.scala 23:25]
  wire  sram_1_clock; // @[outport_internal.scala 23:25]
  wire  sram_1_io_w_en; // @[outport_internal.scala 23:25]
  wire [7:0] sram_1_io_w_addr; // @[outport_internal.scala 23:25]
  wire [63:0] sram_1_io_w_data; // @[outport_internal.scala 23:25]
  wire  sram_1_io_r_en; // @[outport_internal.scala 23:25]
  wire [7:0] sram_1_io_r_addr; // @[outport_internal.scala 23:25]
  wire [63:0] sram_1_io_r_data; // @[outport_internal.scala 23:25]
  wire  sram_2_clock; // @[outport_internal.scala 23:25]
  wire  sram_2_io_w_en; // @[outport_internal.scala 23:25]
  wire [7:0] sram_2_io_w_addr; // @[outport_internal.scala 23:25]
  wire [63:0] sram_2_io_w_data; // @[outport_internal.scala 23:25]
  wire  sram_2_io_r_en; // @[outport_internal.scala 23:25]
  wire [7:0] sram_2_io_r_addr; // @[outport_internal.scala 23:25]
  wire [63:0] sram_2_io_r_data; // @[outport_internal.scala 23:25]
  wire  sram_3_clock; // @[outport_internal.scala 23:25]
  wire  sram_3_io_w_en; // @[outport_internal.scala 23:25]
  wire [7:0] sram_3_io_w_addr; // @[outport_internal.scala 23:25]
  wire [63:0] sram_3_io_w_data; // @[outport_internal.scala 23:25]
  wire  sram_3_io_r_en; // @[outport_internal.scala 23:25]
  wire [7:0] sram_3_io_r_addr; // @[outport_internal.scala 23:25]
  wire [63:0] sram_3_io_r_data; // @[outport_internal.scala 23:25]
  wire  sram_4_clock; // @[outport_internal.scala 23:25]
  wire  sram_4_io_w_en; // @[outport_internal.scala 23:25]
  wire [7:0] sram_4_io_w_addr; // @[outport_internal.scala 23:25]
  wire [63:0] sram_4_io_w_data; // @[outport_internal.scala 23:25]
  wire  sram_4_io_r_en; // @[outport_internal.scala 23:25]
  wire [7:0] sram_4_io_r_addr; // @[outport_internal.scala 23:25]
  wire [63:0] sram_4_io_r_data; // @[outport_internal.scala 23:25]
  wire  sram_5_clock; // @[outport_internal.scala 23:25]
  wire  sram_5_io_w_en; // @[outport_internal.scala 23:25]
  wire [7:0] sram_5_io_w_addr; // @[outport_internal.scala 23:25]
  wire [63:0] sram_5_io_w_data; // @[outport_internal.scala 23:25]
  wire  sram_5_io_r_en; // @[outport_internal.scala 23:25]
  wire [7:0] sram_5_io_r_addr; // @[outport_internal.scala 23:25]
  wire [63:0] sram_5_io_r_data; // @[outport_internal.scala 23:25]
  wire  sram_6_clock; // @[outport_internal.scala 23:25]
  wire  sram_6_io_w_en; // @[outport_internal.scala 23:25]
  wire [7:0] sram_6_io_w_addr; // @[outport_internal.scala 23:25]
  wire [63:0] sram_6_io_w_data; // @[outport_internal.scala 23:25]
  wire  sram_6_io_r_en; // @[outport_internal.scala 23:25]
  wire [7:0] sram_6_io_r_addr; // @[outport_internal.scala 23:25]
  wire [63:0] sram_6_io_r_data; // @[outport_internal.scala 23:25]
  wire  sram_7_clock; // @[outport_internal.scala 23:25]
  wire  sram_7_io_w_en; // @[outport_internal.scala 23:25]
  wire [7:0] sram_7_io_w_addr; // @[outport_internal.scala 23:25]
  wire [63:0] sram_7_io_w_data; // @[outport_internal.scala 23:25]
  wire  sram_7_io_r_en; // @[outport_internal.scala 23:25]
  wire [7:0] sram_7_io_r_addr; // @[outport_internal.scala 23:25]
  wire [63:0] sram_7_io_r_data; // @[outport_internal.scala 23:25]
  wire  sram_8_clock; // @[outport_internal.scala 23:25]
  wire  sram_8_io_w_en; // @[outport_internal.scala 23:25]
  wire [7:0] sram_8_io_w_addr; // @[outport_internal.scala 23:25]
  wire [63:0] sram_8_io_w_data; // @[outport_internal.scala 23:25]
  wire  sram_8_io_r_en; // @[outport_internal.scala 23:25]
  wire [7:0] sram_8_io_r_addr; // @[outport_internal.scala 23:25]
  wire [63:0] sram_8_io_r_data; // @[outport_internal.scala 23:25]
  wire  sram_9_clock; // @[outport_internal.scala 23:25]
  wire  sram_9_io_w_en; // @[outport_internal.scala 23:25]
  wire [7:0] sram_9_io_w_addr; // @[outport_internal.scala 23:25]
  wire [63:0] sram_9_io_w_data; // @[outport_internal.scala 23:25]
  wire  sram_9_io_r_en; // @[outport_internal.scala 23:25]
  wire [7:0] sram_9_io_r_addr; // @[outport_internal.scala 23:25]
  wire [63:0] sram_9_io_r_data; // @[outport_internal.scala 23:25]
  wire  sram_10_clock; // @[outport_internal.scala 23:25]
  wire  sram_10_io_w_en; // @[outport_internal.scala 23:25]
  wire [7:0] sram_10_io_w_addr; // @[outport_internal.scala 23:25]
  wire [63:0] sram_10_io_w_data; // @[outport_internal.scala 23:25]
  wire  sram_10_io_r_en; // @[outport_internal.scala 23:25]
  wire [7:0] sram_10_io_r_addr; // @[outport_internal.scala 23:25]
  wire [63:0] sram_10_io_r_data; // @[outport_internal.scala 23:25]
  wire  sram_11_clock; // @[outport_internal.scala 23:25]
  wire  sram_11_io_w_en; // @[outport_internal.scala 23:25]
  wire [7:0] sram_11_io_w_addr; // @[outport_internal.scala 23:25]
  wire [63:0] sram_11_io_w_data; // @[outport_internal.scala 23:25]
  wire  sram_11_io_r_en; // @[outport_internal.scala 23:25]
  wire [7:0] sram_11_io_r_addr; // @[outport_internal.scala 23:25]
  wire [63:0] sram_11_io_r_data; // @[outport_internal.scala 23:25]
  wire  sram_12_clock; // @[outport_internal.scala 23:25]
  wire  sram_12_io_w_en; // @[outport_internal.scala 23:25]
  wire [7:0] sram_12_io_w_addr; // @[outport_internal.scala 23:25]
  wire [63:0] sram_12_io_w_data; // @[outport_internal.scala 23:25]
  wire  sram_12_io_r_en; // @[outport_internal.scala 23:25]
  wire [7:0] sram_12_io_r_addr; // @[outport_internal.scala 23:25]
  wire [63:0] sram_12_io_r_data; // @[outport_internal.scala 23:25]
  wire  sram_13_clock; // @[outport_internal.scala 23:25]
  wire  sram_13_io_w_en; // @[outport_internal.scala 23:25]
  wire [7:0] sram_13_io_w_addr; // @[outport_internal.scala 23:25]
  wire [63:0] sram_13_io_w_data; // @[outport_internal.scala 23:25]
  wire  sram_13_io_r_en; // @[outport_internal.scala 23:25]
  wire [7:0] sram_13_io_r_addr; // @[outport_internal.scala 23:25]
  wire [63:0] sram_13_io_r_data; // @[outport_internal.scala 23:25]
  wire  sram_14_clock; // @[outport_internal.scala 23:25]
  wire  sram_14_io_w_en; // @[outport_internal.scala 23:25]
  wire [7:0] sram_14_io_w_addr; // @[outport_internal.scala 23:25]
  wire [63:0] sram_14_io_w_data; // @[outport_internal.scala 23:25]
  wire  sram_14_io_r_en; // @[outport_internal.scala 23:25]
  wire [7:0] sram_14_io_r_addr; // @[outport_internal.scala 23:25]
  wire [63:0] sram_14_io_r_data; // @[outport_internal.scala 23:25]
  wire  sram_15_clock; // @[outport_internal.scala 23:25]
  wire  sram_15_io_w_en; // @[outport_internal.scala 23:25]
  wire [7:0] sram_15_io_w_addr; // @[outport_internal.scala 23:25]
  wire [63:0] sram_15_io_w_data; // @[outport_internal.scala 23:25]
  wire  sram_15_io_r_en; // @[outport_internal.scala 23:25]
  wire [7:0] sram_15_io_r_addr; // @[outport_internal.scala 23:25]
  wire [63:0] sram_15_io_r_data; // @[outport_internal.scala 23:25]
  wire  sram_16_clock; // @[outport_internal.scala 23:25]
  wire  sram_16_io_w_en; // @[outport_internal.scala 23:25]
  wire [7:0] sram_16_io_w_addr; // @[outport_internal.scala 23:25]
  wire [63:0] sram_16_io_w_data; // @[outport_internal.scala 23:25]
  wire  sram_16_io_r_en; // @[outport_internal.scala 23:25]
  wire [7:0] sram_16_io_r_addr; // @[outport_internal.scala 23:25]
  wire [63:0] sram_16_io_r_data; // @[outport_internal.scala 23:25]
  wire  sram_17_clock; // @[outport_internal.scala 23:25]
  wire  sram_17_io_w_en; // @[outport_internal.scala 23:25]
  wire [7:0] sram_17_io_w_addr; // @[outport_internal.scala 23:25]
  wire [63:0] sram_17_io_w_data; // @[outport_internal.scala 23:25]
  wire  sram_17_io_r_en; // @[outport_internal.scala 23:25]
  wire [7:0] sram_17_io_r_addr; // @[outport_internal.scala 23:25]
  wire [63:0] sram_17_io_r_data; // @[outport_internal.scala 23:25]
  wire  sram_18_clock; // @[outport_internal.scala 23:25]
  wire  sram_18_io_w_en; // @[outport_internal.scala 23:25]
  wire [7:0] sram_18_io_w_addr; // @[outport_internal.scala 23:25]
  wire [63:0] sram_18_io_w_data; // @[outport_internal.scala 23:25]
  wire  sram_18_io_r_en; // @[outport_internal.scala 23:25]
  wire [7:0] sram_18_io_r_addr; // @[outport_internal.scala 23:25]
  wire [63:0] sram_18_io_r_data; // @[outport_internal.scala 23:25]
  wire  sram_19_clock; // @[outport_internal.scala 23:25]
  wire  sram_19_io_w_en; // @[outport_internal.scala 23:25]
  wire [7:0] sram_19_io_w_addr; // @[outport_internal.scala 23:25]
  wire [63:0] sram_19_io_w_data; // @[outport_internal.scala 23:25]
  wire  sram_19_io_r_en; // @[outport_internal.scala 23:25]
  wire [7:0] sram_19_io_r_addr; // @[outport_internal.scala 23:25]
  wire [63:0] sram_19_io_r_data; // @[outport_internal.scala 23:25]
  reg [7:0] addr; // @[outport_internal.scala 17:19]
  wire [55:0] exe_io_w_data_hi_5 = {io_phv_in_data_0,io_phv_in_data_1,io_phv_in_data_2,io_phv_in_data_3,io_phv_in_data_4
    ,io_phv_in_data_5,io_phv_in_data_6}; // @[Cat.scala 30:58]
  wire  cs_hit = io_pcie_o_cs == 5'h0; // @[outport_internal.scala 31:35]
  wire [63:0] _GEN_0 = cs_hit ? sram_0_io_r_data : 64'h0; // @[outport_internal.scala 34:23 outport_internal.scala 35:31 outport_internal.scala 20:22]
  wire [55:0] exe_io_w_data_hi_11 = {io_phv_in_data_8,io_phv_in_data_9,io_phv_in_data_10,io_phv_in_data_11,
    io_phv_in_data_12,io_phv_in_data_13,io_phv_in_data_14}; // @[Cat.scala 30:58]
  wire  cs_hit_1 = io_pcie_o_cs == 5'h1; // @[outport_internal.scala 31:35]
  wire [63:0] _GEN_1 = cs_hit_1 ? sram_1_io_r_data : _GEN_0; // @[outport_internal.scala 34:23 outport_internal.scala 35:31]
  wire [55:0] exe_io_w_data_hi_17 = {io_phv_in_data_16,io_phv_in_data_17,io_phv_in_data_18,io_phv_in_data_19,
    io_phv_in_data_20,io_phv_in_data_21,io_phv_in_data_22}; // @[Cat.scala 30:58]
  wire  cs_hit_2 = io_pcie_o_cs == 5'h2; // @[outport_internal.scala 31:35]
  wire [63:0] _GEN_2 = cs_hit_2 ? sram_2_io_r_data : _GEN_1; // @[outport_internal.scala 34:23 outport_internal.scala 35:31]
  wire [55:0] exe_io_w_data_hi_23 = {io_phv_in_data_24,io_phv_in_data_25,io_phv_in_data_26,io_phv_in_data_27,
    io_phv_in_data_28,io_phv_in_data_29,io_phv_in_data_30}; // @[Cat.scala 30:58]
  wire  cs_hit_3 = io_pcie_o_cs == 5'h3; // @[outport_internal.scala 31:35]
  wire [63:0] _GEN_3 = cs_hit_3 ? sram_3_io_r_data : _GEN_2; // @[outport_internal.scala 34:23 outport_internal.scala 35:31]
  wire [55:0] exe_io_w_data_hi_29 = {io_phv_in_data_32,io_phv_in_data_33,io_phv_in_data_34,io_phv_in_data_35,
    io_phv_in_data_36,io_phv_in_data_37,io_phv_in_data_38}; // @[Cat.scala 30:58]
  wire  cs_hit_4 = io_pcie_o_cs == 5'h4; // @[outport_internal.scala 31:35]
  wire [63:0] _GEN_4 = cs_hit_4 ? sram_4_io_r_data : _GEN_3; // @[outport_internal.scala 34:23 outport_internal.scala 35:31]
  wire [55:0] exe_io_w_data_hi_35 = {io_phv_in_data_40,io_phv_in_data_41,io_phv_in_data_42,io_phv_in_data_43,
    io_phv_in_data_44,io_phv_in_data_45,io_phv_in_data_46}; // @[Cat.scala 30:58]
  wire  cs_hit_5 = io_pcie_o_cs == 5'h5; // @[outport_internal.scala 31:35]
  wire [63:0] _GEN_5 = cs_hit_5 ? sram_5_io_r_data : _GEN_4; // @[outport_internal.scala 34:23 outport_internal.scala 35:31]
  wire [55:0] exe_io_w_data_hi_41 = {io_phv_in_data_48,io_phv_in_data_49,io_phv_in_data_50,io_phv_in_data_51,
    io_phv_in_data_52,io_phv_in_data_53,io_phv_in_data_54}; // @[Cat.scala 30:58]
  wire  cs_hit_6 = io_pcie_o_cs == 5'h6; // @[outport_internal.scala 31:35]
  wire [63:0] _GEN_6 = cs_hit_6 ? sram_6_io_r_data : _GEN_5; // @[outport_internal.scala 34:23 outport_internal.scala 35:31]
  wire [55:0] exe_io_w_data_hi_47 = {io_phv_in_data_56,io_phv_in_data_57,io_phv_in_data_58,io_phv_in_data_59,
    io_phv_in_data_60,io_phv_in_data_61,io_phv_in_data_62}; // @[Cat.scala 30:58]
  wire  cs_hit_7 = io_pcie_o_cs == 5'h7; // @[outport_internal.scala 31:35]
  wire [63:0] _GEN_7 = cs_hit_7 ? sram_7_io_r_data : _GEN_6; // @[outport_internal.scala 34:23 outport_internal.scala 35:31]
  wire [55:0] exe_io_w_data_hi_53 = {io_phv_in_data_64,io_phv_in_data_65,io_phv_in_data_66,io_phv_in_data_67,
    io_phv_in_data_68,io_phv_in_data_69,io_phv_in_data_70}; // @[Cat.scala 30:58]
  wire  cs_hit_8 = io_pcie_o_cs == 5'h8; // @[outport_internal.scala 31:35]
  wire [63:0] _GEN_8 = cs_hit_8 ? sram_8_io_r_data : _GEN_7; // @[outport_internal.scala 34:23 outport_internal.scala 35:31]
  wire [55:0] exe_io_w_data_hi_59 = {io_phv_in_data_72,io_phv_in_data_73,io_phv_in_data_74,io_phv_in_data_75,
    io_phv_in_data_76,io_phv_in_data_77,io_phv_in_data_78}; // @[Cat.scala 30:58]
  wire  cs_hit_9 = io_pcie_o_cs == 5'h9; // @[outport_internal.scala 31:35]
  wire [63:0] _GEN_9 = cs_hit_9 ? sram_9_io_r_data : _GEN_8; // @[outport_internal.scala 34:23 outport_internal.scala 35:31]
  wire [55:0] exe_io_w_data_hi_65 = {io_phv_in_data_80,io_phv_in_data_81,io_phv_in_data_82,io_phv_in_data_83,
    io_phv_in_data_84,io_phv_in_data_85,io_phv_in_data_86}; // @[Cat.scala 30:58]
  wire  cs_hit_10 = io_pcie_o_cs == 5'ha; // @[outport_internal.scala 31:35]
  wire [63:0] _GEN_10 = cs_hit_10 ? sram_10_io_r_data : _GEN_9; // @[outport_internal.scala 34:23 outport_internal.scala 35:31]
  wire [55:0] exe_io_w_data_hi_71 = {io_phv_in_data_88,io_phv_in_data_89,io_phv_in_data_90,io_phv_in_data_91,
    io_phv_in_data_92,io_phv_in_data_93,io_phv_in_data_94}; // @[Cat.scala 30:58]
  wire  cs_hit_11 = io_pcie_o_cs == 5'hb; // @[outport_internal.scala 31:35]
  wire [63:0] _GEN_11 = cs_hit_11 ? sram_11_io_r_data : _GEN_10; // @[outport_internal.scala 34:23 outport_internal.scala 35:31]
  wire [55:0] exe_io_w_data_hi_77 = {io_phv_in_data_96,io_phv_in_data_97,io_phv_in_data_98,io_phv_in_data_99,
    io_phv_in_data_100,io_phv_in_data_101,io_phv_in_data_102}; // @[Cat.scala 30:58]
  wire  cs_hit_12 = io_pcie_o_cs == 5'hc; // @[outport_internal.scala 31:35]
  wire [63:0] _GEN_12 = cs_hit_12 ? sram_12_io_r_data : _GEN_11; // @[outport_internal.scala 34:23 outport_internal.scala 35:31]
  wire [55:0] exe_io_w_data_hi_83 = {io_phv_in_data_104,io_phv_in_data_105,io_phv_in_data_106,io_phv_in_data_107,
    io_phv_in_data_108,io_phv_in_data_109,io_phv_in_data_110}; // @[Cat.scala 30:58]
  wire  cs_hit_13 = io_pcie_o_cs == 5'hd; // @[outport_internal.scala 31:35]
  wire [63:0] _GEN_13 = cs_hit_13 ? sram_13_io_r_data : _GEN_12; // @[outport_internal.scala 34:23 outport_internal.scala 35:31]
  wire [55:0] exe_io_w_data_hi_89 = {io_phv_in_data_112,io_phv_in_data_113,io_phv_in_data_114,io_phv_in_data_115,
    io_phv_in_data_116,io_phv_in_data_117,io_phv_in_data_118}; // @[Cat.scala 30:58]
  wire  cs_hit_14 = io_pcie_o_cs == 5'he; // @[outport_internal.scala 31:35]
  wire [63:0] _GEN_14 = cs_hit_14 ? sram_14_io_r_data : _GEN_13; // @[outport_internal.scala 34:23 outport_internal.scala 35:31]
  wire [55:0] exe_io_w_data_hi_95 = {io_phv_in_data_120,io_phv_in_data_121,io_phv_in_data_122,io_phv_in_data_123,
    io_phv_in_data_124,io_phv_in_data_125,io_phv_in_data_126}; // @[Cat.scala 30:58]
  wire  cs_hit_15 = io_pcie_o_cs == 5'hf; // @[outport_internal.scala 31:35]
  wire [63:0] _GEN_15 = cs_hit_15 ? sram_15_io_r_data : _GEN_14; // @[outport_internal.scala 34:23 outport_internal.scala 35:31]
  wire [55:0] exe_io_w_data_hi_101 = {io_phv_in_data_128,io_phv_in_data_129,io_phv_in_data_130,io_phv_in_data_131,
    io_phv_in_data_132,io_phv_in_data_133,io_phv_in_data_134}; // @[Cat.scala 30:58]
  wire  cs_hit_16 = io_pcie_o_cs == 5'h10; // @[outport_internal.scala 31:35]
  wire [63:0] _GEN_16 = cs_hit_16 ? sram_16_io_r_data : _GEN_15; // @[outport_internal.scala 34:23 outport_internal.scala 35:31]
  wire [55:0] exe_io_w_data_hi_107 = {io_phv_in_data_136,io_phv_in_data_137,io_phv_in_data_138,io_phv_in_data_139,
    io_phv_in_data_140,io_phv_in_data_141,io_phv_in_data_142}; // @[Cat.scala 30:58]
  wire  cs_hit_17 = io_pcie_o_cs == 5'h11; // @[outport_internal.scala 31:35]
  wire [63:0] _GEN_17 = cs_hit_17 ? sram_17_io_r_data : _GEN_16; // @[outport_internal.scala 34:23 outport_internal.scala 35:31]
  wire [55:0] exe_io_w_data_hi_113 = {io_phv_in_data_144,io_phv_in_data_145,io_phv_in_data_146,io_phv_in_data_147,
    io_phv_in_data_148,io_phv_in_data_149,io_phv_in_data_150}; // @[Cat.scala 30:58]
  wire  cs_hit_18 = io_pcie_o_cs == 5'h12; // @[outport_internal.scala 31:35]
  wire [63:0] _GEN_18 = cs_hit_18 ? sram_18_io_r_data : _GEN_17; // @[outport_internal.scala 34:23 outport_internal.scala 35:31]
  wire [55:0] exe_io_w_data_hi_119 = {io_phv_in_data_152,io_phv_in_data_153,io_phv_in_data_154,io_phv_in_data_155,
    io_phv_in_data_156,io_phv_in_data_157,io_phv_in_data_158}; // @[Cat.scala 30:58]
  wire  cs_hit_19 = io_pcie_o_cs == 5'h13; // @[outport_internal.scala 31:35]
  SRAM sram_0 ( // @[outport_internal.scala 23:25]
    .clock(sram_0_clock),
    .io_w_en(sram_0_io_w_en),
    .io_w_addr(sram_0_io_w_addr),
    .io_w_data(sram_0_io_w_data),
    .io_r_en(sram_0_io_r_en),
    .io_r_addr(sram_0_io_r_addr),
    .io_r_data(sram_0_io_r_data)
  );
  SRAM sram_1 ( // @[outport_internal.scala 23:25]
    .clock(sram_1_clock),
    .io_w_en(sram_1_io_w_en),
    .io_w_addr(sram_1_io_w_addr),
    .io_w_data(sram_1_io_w_data),
    .io_r_en(sram_1_io_r_en),
    .io_r_addr(sram_1_io_r_addr),
    .io_r_data(sram_1_io_r_data)
  );
  SRAM sram_2 ( // @[outport_internal.scala 23:25]
    .clock(sram_2_clock),
    .io_w_en(sram_2_io_w_en),
    .io_w_addr(sram_2_io_w_addr),
    .io_w_data(sram_2_io_w_data),
    .io_r_en(sram_2_io_r_en),
    .io_r_addr(sram_2_io_r_addr),
    .io_r_data(sram_2_io_r_data)
  );
  SRAM sram_3 ( // @[outport_internal.scala 23:25]
    .clock(sram_3_clock),
    .io_w_en(sram_3_io_w_en),
    .io_w_addr(sram_3_io_w_addr),
    .io_w_data(sram_3_io_w_data),
    .io_r_en(sram_3_io_r_en),
    .io_r_addr(sram_3_io_r_addr),
    .io_r_data(sram_3_io_r_data)
  );
  SRAM sram_4 ( // @[outport_internal.scala 23:25]
    .clock(sram_4_clock),
    .io_w_en(sram_4_io_w_en),
    .io_w_addr(sram_4_io_w_addr),
    .io_w_data(sram_4_io_w_data),
    .io_r_en(sram_4_io_r_en),
    .io_r_addr(sram_4_io_r_addr),
    .io_r_data(sram_4_io_r_data)
  );
  SRAM sram_5 ( // @[outport_internal.scala 23:25]
    .clock(sram_5_clock),
    .io_w_en(sram_5_io_w_en),
    .io_w_addr(sram_5_io_w_addr),
    .io_w_data(sram_5_io_w_data),
    .io_r_en(sram_5_io_r_en),
    .io_r_addr(sram_5_io_r_addr),
    .io_r_data(sram_5_io_r_data)
  );
  SRAM sram_6 ( // @[outport_internal.scala 23:25]
    .clock(sram_6_clock),
    .io_w_en(sram_6_io_w_en),
    .io_w_addr(sram_6_io_w_addr),
    .io_w_data(sram_6_io_w_data),
    .io_r_en(sram_6_io_r_en),
    .io_r_addr(sram_6_io_r_addr),
    .io_r_data(sram_6_io_r_data)
  );
  SRAM sram_7 ( // @[outport_internal.scala 23:25]
    .clock(sram_7_clock),
    .io_w_en(sram_7_io_w_en),
    .io_w_addr(sram_7_io_w_addr),
    .io_w_data(sram_7_io_w_data),
    .io_r_en(sram_7_io_r_en),
    .io_r_addr(sram_7_io_r_addr),
    .io_r_data(sram_7_io_r_data)
  );
  SRAM sram_8 ( // @[outport_internal.scala 23:25]
    .clock(sram_8_clock),
    .io_w_en(sram_8_io_w_en),
    .io_w_addr(sram_8_io_w_addr),
    .io_w_data(sram_8_io_w_data),
    .io_r_en(sram_8_io_r_en),
    .io_r_addr(sram_8_io_r_addr),
    .io_r_data(sram_8_io_r_data)
  );
  SRAM sram_9 ( // @[outport_internal.scala 23:25]
    .clock(sram_9_clock),
    .io_w_en(sram_9_io_w_en),
    .io_w_addr(sram_9_io_w_addr),
    .io_w_data(sram_9_io_w_data),
    .io_r_en(sram_9_io_r_en),
    .io_r_addr(sram_9_io_r_addr),
    .io_r_data(sram_9_io_r_data)
  );
  SRAM sram_10 ( // @[outport_internal.scala 23:25]
    .clock(sram_10_clock),
    .io_w_en(sram_10_io_w_en),
    .io_w_addr(sram_10_io_w_addr),
    .io_w_data(sram_10_io_w_data),
    .io_r_en(sram_10_io_r_en),
    .io_r_addr(sram_10_io_r_addr),
    .io_r_data(sram_10_io_r_data)
  );
  SRAM sram_11 ( // @[outport_internal.scala 23:25]
    .clock(sram_11_clock),
    .io_w_en(sram_11_io_w_en),
    .io_w_addr(sram_11_io_w_addr),
    .io_w_data(sram_11_io_w_data),
    .io_r_en(sram_11_io_r_en),
    .io_r_addr(sram_11_io_r_addr),
    .io_r_data(sram_11_io_r_data)
  );
  SRAM sram_12 ( // @[outport_internal.scala 23:25]
    .clock(sram_12_clock),
    .io_w_en(sram_12_io_w_en),
    .io_w_addr(sram_12_io_w_addr),
    .io_w_data(sram_12_io_w_data),
    .io_r_en(sram_12_io_r_en),
    .io_r_addr(sram_12_io_r_addr),
    .io_r_data(sram_12_io_r_data)
  );
  SRAM sram_13 ( // @[outport_internal.scala 23:25]
    .clock(sram_13_clock),
    .io_w_en(sram_13_io_w_en),
    .io_w_addr(sram_13_io_w_addr),
    .io_w_data(sram_13_io_w_data),
    .io_r_en(sram_13_io_r_en),
    .io_r_addr(sram_13_io_r_addr),
    .io_r_data(sram_13_io_r_data)
  );
  SRAM sram_14 ( // @[outport_internal.scala 23:25]
    .clock(sram_14_clock),
    .io_w_en(sram_14_io_w_en),
    .io_w_addr(sram_14_io_w_addr),
    .io_w_data(sram_14_io_w_data),
    .io_r_en(sram_14_io_r_en),
    .io_r_addr(sram_14_io_r_addr),
    .io_r_data(sram_14_io_r_data)
  );
  SRAM sram_15 ( // @[outport_internal.scala 23:25]
    .clock(sram_15_clock),
    .io_w_en(sram_15_io_w_en),
    .io_w_addr(sram_15_io_w_addr),
    .io_w_data(sram_15_io_w_data),
    .io_r_en(sram_15_io_r_en),
    .io_r_addr(sram_15_io_r_addr),
    .io_r_data(sram_15_io_r_data)
  );
  SRAM sram_16 ( // @[outport_internal.scala 23:25]
    .clock(sram_16_clock),
    .io_w_en(sram_16_io_w_en),
    .io_w_addr(sram_16_io_w_addr),
    .io_w_data(sram_16_io_w_data),
    .io_r_en(sram_16_io_r_en),
    .io_r_addr(sram_16_io_r_addr),
    .io_r_data(sram_16_io_r_data)
  );
  SRAM sram_17 ( // @[outport_internal.scala 23:25]
    .clock(sram_17_clock),
    .io_w_en(sram_17_io_w_en),
    .io_w_addr(sram_17_io_w_addr),
    .io_w_data(sram_17_io_w_data),
    .io_r_en(sram_17_io_r_en),
    .io_r_addr(sram_17_io_r_addr),
    .io_r_data(sram_17_io_r_data)
  );
  SRAM sram_18 ( // @[outport_internal.scala 23:25]
    .clock(sram_18_clock),
    .io_w_en(sram_18_io_w_en),
    .io_w_addr(sram_18_io_w_addr),
    .io_w_data(sram_18_io_w_data),
    .io_r_en(sram_18_io_r_en),
    .io_r_addr(sram_18_io_r_addr),
    .io_r_data(sram_18_io_r_data)
  );
  SRAM sram_19 ( // @[outport_internal.scala 23:25]
    .clock(sram_19_clock),
    .io_w_en(sram_19_io_w_en),
    .io_w_addr(sram_19_io_w_addr),
    .io_w_data(sram_19_io_w_data),
    .io_r_en(sram_19_io_r_en),
    .io_r_addr(sram_19_io_r_addr),
    .io_r_data(sram_19_io_r_data)
  );
  assign io_pcie_o_r_data = cs_hit_19 ? sram_19_io_r_data : _GEN_18; // @[outport_internal.scala 34:23 outport_internal.scala 35:31]
  assign sram_0_clock = clock;
  assign sram_0_io_w_en = 1'h1; // @[outport_internal.scala 24:24]
  assign sram_0_io_w_addr = addr; // @[outport_internal.scala 25:24]
  assign sram_0_io_w_data = {exe_io_w_data_hi_5,io_phv_in_data_7}; // @[Cat.scala 30:58]
  assign sram_0_io_r_en = io_pcie_o_r_en & cs_hit; // @[outport_internal.scala 32:42]
  assign sram_0_io_r_addr = io_pcie_o_r_addr; // @[outport_internal.scala 33:24]
  assign sram_1_clock = clock;
  assign sram_1_io_w_en = 1'h1; // @[outport_internal.scala 24:24]
  assign sram_1_io_w_addr = addr; // @[outport_internal.scala 25:24]
  assign sram_1_io_w_data = {exe_io_w_data_hi_11,io_phv_in_data_15}; // @[Cat.scala 30:58]
  assign sram_1_io_r_en = io_pcie_o_r_en & cs_hit_1; // @[outport_internal.scala 32:42]
  assign sram_1_io_r_addr = io_pcie_o_r_addr; // @[outport_internal.scala 33:24]
  assign sram_2_clock = clock;
  assign sram_2_io_w_en = 1'h1; // @[outport_internal.scala 24:24]
  assign sram_2_io_w_addr = addr; // @[outport_internal.scala 25:24]
  assign sram_2_io_w_data = {exe_io_w_data_hi_17,io_phv_in_data_23}; // @[Cat.scala 30:58]
  assign sram_2_io_r_en = io_pcie_o_r_en & cs_hit_2; // @[outport_internal.scala 32:42]
  assign sram_2_io_r_addr = io_pcie_o_r_addr; // @[outport_internal.scala 33:24]
  assign sram_3_clock = clock;
  assign sram_3_io_w_en = 1'h1; // @[outport_internal.scala 24:24]
  assign sram_3_io_w_addr = addr; // @[outport_internal.scala 25:24]
  assign sram_3_io_w_data = {exe_io_w_data_hi_23,io_phv_in_data_31}; // @[Cat.scala 30:58]
  assign sram_3_io_r_en = io_pcie_o_r_en & cs_hit_3; // @[outport_internal.scala 32:42]
  assign sram_3_io_r_addr = io_pcie_o_r_addr; // @[outport_internal.scala 33:24]
  assign sram_4_clock = clock;
  assign sram_4_io_w_en = 1'h1; // @[outport_internal.scala 24:24]
  assign sram_4_io_w_addr = addr; // @[outport_internal.scala 25:24]
  assign sram_4_io_w_data = {exe_io_w_data_hi_29,io_phv_in_data_39}; // @[Cat.scala 30:58]
  assign sram_4_io_r_en = io_pcie_o_r_en & cs_hit_4; // @[outport_internal.scala 32:42]
  assign sram_4_io_r_addr = io_pcie_o_r_addr; // @[outport_internal.scala 33:24]
  assign sram_5_clock = clock;
  assign sram_5_io_w_en = 1'h1; // @[outport_internal.scala 24:24]
  assign sram_5_io_w_addr = addr; // @[outport_internal.scala 25:24]
  assign sram_5_io_w_data = {exe_io_w_data_hi_35,io_phv_in_data_47}; // @[Cat.scala 30:58]
  assign sram_5_io_r_en = io_pcie_o_r_en & cs_hit_5; // @[outport_internal.scala 32:42]
  assign sram_5_io_r_addr = io_pcie_o_r_addr; // @[outport_internal.scala 33:24]
  assign sram_6_clock = clock;
  assign sram_6_io_w_en = 1'h1; // @[outport_internal.scala 24:24]
  assign sram_6_io_w_addr = addr; // @[outport_internal.scala 25:24]
  assign sram_6_io_w_data = {exe_io_w_data_hi_41,io_phv_in_data_55}; // @[Cat.scala 30:58]
  assign sram_6_io_r_en = io_pcie_o_r_en & cs_hit_6; // @[outport_internal.scala 32:42]
  assign sram_6_io_r_addr = io_pcie_o_r_addr; // @[outport_internal.scala 33:24]
  assign sram_7_clock = clock;
  assign sram_7_io_w_en = 1'h1; // @[outport_internal.scala 24:24]
  assign sram_7_io_w_addr = addr; // @[outport_internal.scala 25:24]
  assign sram_7_io_w_data = {exe_io_w_data_hi_47,io_phv_in_data_63}; // @[Cat.scala 30:58]
  assign sram_7_io_r_en = io_pcie_o_r_en & cs_hit_7; // @[outport_internal.scala 32:42]
  assign sram_7_io_r_addr = io_pcie_o_r_addr; // @[outport_internal.scala 33:24]
  assign sram_8_clock = clock;
  assign sram_8_io_w_en = 1'h1; // @[outport_internal.scala 24:24]
  assign sram_8_io_w_addr = addr; // @[outport_internal.scala 25:24]
  assign sram_8_io_w_data = {exe_io_w_data_hi_53,io_phv_in_data_71}; // @[Cat.scala 30:58]
  assign sram_8_io_r_en = io_pcie_o_r_en & cs_hit_8; // @[outport_internal.scala 32:42]
  assign sram_8_io_r_addr = io_pcie_o_r_addr; // @[outport_internal.scala 33:24]
  assign sram_9_clock = clock;
  assign sram_9_io_w_en = 1'h1; // @[outport_internal.scala 24:24]
  assign sram_9_io_w_addr = addr; // @[outport_internal.scala 25:24]
  assign sram_9_io_w_data = {exe_io_w_data_hi_59,io_phv_in_data_79}; // @[Cat.scala 30:58]
  assign sram_9_io_r_en = io_pcie_o_r_en & cs_hit_9; // @[outport_internal.scala 32:42]
  assign sram_9_io_r_addr = io_pcie_o_r_addr; // @[outport_internal.scala 33:24]
  assign sram_10_clock = clock;
  assign sram_10_io_w_en = 1'h1; // @[outport_internal.scala 24:24]
  assign sram_10_io_w_addr = addr; // @[outport_internal.scala 25:24]
  assign sram_10_io_w_data = {exe_io_w_data_hi_65,io_phv_in_data_87}; // @[Cat.scala 30:58]
  assign sram_10_io_r_en = io_pcie_o_r_en & cs_hit_10; // @[outport_internal.scala 32:42]
  assign sram_10_io_r_addr = io_pcie_o_r_addr; // @[outport_internal.scala 33:24]
  assign sram_11_clock = clock;
  assign sram_11_io_w_en = 1'h1; // @[outport_internal.scala 24:24]
  assign sram_11_io_w_addr = addr; // @[outport_internal.scala 25:24]
  assign sram_11_io_w_data = {exe_io_w_data_hi_71,io_phv_in_data_95}; // @[Cat.scala 30:58]
  assign sram_11_io_r_en = io_pcie_o_r_en & cs_hit_11; // @[outport_internal.scala 32:42]
  assign sram_11_io_r_addr = io_pcie_o_r_addr; // @[outport_internal.scala 33:24]
  assign sram_12_clock = clock;
  assign sram_12_io_w_en = 1'h1; // @[outport_internal.scala 24:24]
  assign sram_12_io_w_addr = addr; // @[outport_internal.scala 25:24]
  assign sram_12_io_w_data = {exe_io_w_data_hi_77,io_phv_in_data_103}; // @[Cat.scala 30:58]
  assign sram_12_io_r_en = io_pcie_o_r_en & cs_hit_12; // @[outport_internal.scala 32:42]
  assign sram_12_io_r_addr = io_pcie_o_r_addr; // @[outport_internal.scala 33:24]
  assign sram_13_clock = clock;
  assign sram_13_io_w_en = 1'h1; // @[outport_internal.scala 24:24]
  assign sram_13_io_w_addr = addr; // @[outport_internal.scala 25:24]
  assign sram_13_io_w_data = {exe_io_w_data_hi_83,io_phv_in_data_111}; // @[Cat.scala 30:58]
  assign sram_13_io_r_en = io_pcie_o_r_en & cs_hit_13; // @[outport_internal.scala 32:42]
  assign sram_13_io_r_addr = io_pcie_o_r_addr; // @[outport_internal.scala 33:24]
  assign sram_14_clock = clock;
  assign sram_14_io_w_en = 1'h1; // @[outport_internal.scala 24:24]
  assign sram_14_io_w_addr = addr; // @[outport_internal.scala 25:24]
  assign sram_14_io_w_data = {exe_io_w_data_hi_89,io_phv_in_data_119}; // @[Cat.scala 30:58]
  assign sram_14_io_r_en = io_pcie_o_r_en & cs_hit_14; // @[outport_internal.scala 32:42]
  assign sram_14_io_r_addr = io_pcie_o_r_addr; // @[outport_internal.scala 33:24]
  assign sram_15_clock = clock;
  assign sram_15_io_w_en = 1'h1; // @[outport_internal.scala 24:24]
  assign sram_15_io_w_addr = addr; // @[outport_internal.scala 25:24]
  assign sram_15_io_w_data = {exe_io_w_data_hi_95,io_phv_in_data_127}; // @[Cat.scala 30:58]
  assign sram_15_io_r_en = io_pcie_o_r_en & cs_hit_15; // @[outport_internal.scala 32:42]
  assign sram_15_io_r_addr = io_pcie_o_r_addr; // @[outport_internal.scala 33:24]
  assign sram_16_clock = clock;
  assign sram_16_io_w_en = 1'h1; // @[outport_internal.scala 24:24]
  assign sram_16_io_w_addr = addr; // @[outport_internal.scala 25:24]
  assign sram_16_io_w_data = {exe_io_w_data_hi_101,io_phv_in_data_135}; // @[Cat.scala 30:58]
  assign sram_16_io_r_en = io_pcie_o_r_en & cs_hit_16; // @[outport_internal.scala 32:42]
  assign sram_16_io_r_addr = io_pcie_o_r_addr; // @[outport_internal.scala 33:24]
  assign sram_17_clock = clock;
  assign sram_17_io_w_en = 1'h1; // @[outport_internal.scala 24:24]
  assign sram_17_io_w_addr = addr; // @[outport_internal.scala 25:24]
  assign sram_17_io_w_data = {exe_io_w_data_hi_107,io_phv_in_data_143}; // @[Cat.scala 30:58]
  assign sram_17_io_r_en = io_pcie_o_r_en & cs_hit_17; // @[outport_internal.scala 32:42]
  assign sram_17_io_r_addr = io_pcie_o_r_addr; // @[outport_internal.scala 33:24]
  assign sram_18_clock = clock;
  assign sram_18_io_w_en = 1'h1; // @[outport_internal.scala 24:24]
  assign sram_18_io_w_addr = addr; // @[outport_internal.scala 25:24]
  assign sram_18_io_w_data = {exe_io_w_data_hi_113,io_phv_in_data_151}; // @[Cat.scala 30:58]
  assign sram_18_io_r_en = io_pcie_o_r_en & cs_hit_18; // @[outport_internal.scala 32:42]
  assign sram_18_io_r_addr = io_pcie_o_r_addr; // @[outport_internal.scala 33:24]
  assign sram_19_clock = clock;
  assign sram_19_io_w_en = 1'h1; // @[outport_internal.scala 24:24]
  assign sram_19_io_w_addr = addr; // @[outport_internal.scala 25:24]
  assign sram_19_io_w_data = {exe_io_w_data_hi_119,io_phv_in_data_159}; // @[Cat.scala 30:58]
  assign sram_19_io_r_en = io_pcie_o_r_en & cs_hit_19; // @[outport_internal.scala 32:42]
  assign sram_19_io_r_addr = io_pcie_o_r_addr; // @[outport_internal.scala 33:24]
  always @(posedge clock) begin
    addr <= addr + 8'h1; // @[outport_internal.scala 18:18]
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
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  addr = _RAND_0[7:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
