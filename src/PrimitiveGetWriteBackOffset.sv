module PrimitiveGetWriteBackOffset(
  input         clock,
  input  [7:0]  io_pipe_phv_in_data_0,
  input  [7:0]  io_pipe_phv_in_data_1,
  input  [7:0]  io_pipe_phv_in_data_2,
  input  [7:0]  io_pipe_phv_in_data_3,
  input  [7:0]  io_pipe_phv_in_data_4,
  input  [7:0]  io_pipe_phv_in_data_5,
  input  [7:0]  io_pipe_phv_in_data_6,
  input  [7:0]  io_pipe_phv_in_data_7,
  input  [7:0]  io_pipe_phv_in_data_8,
  input  [7:0]  io_pipe_phv_in_data_9,
  input  [7:0]  io_pipe_phv_in_data_10,
  input  [7:0]  io_pipe_phv_in_data_11,
  input  [7:0]  io_pipe_phv_in_data_12,
  input  [7:0]  io_pipe_phv_in_data_13,
  input  [7:0]  io_pipe_phv_in_data_14,
  input  [7:0]  io_pipe_phv_in_data_15,
  input  [7:0]  io_pipe_phv_in_data_16,
  input  [7:0]  io_pipe_phv_in_data_17,
  input  [7:0]  io_pipe_phv_in_data_18,
  input  [7:0]  io_pipe_phv_in_data_19,
  input  [7:0]  io_pipe_phv_in_data_20,
  input  [7:0]  io_pipe_phv_in_data_21,
  input  [7:0]  io_pipe_phv_in_data_22,
  input  [7:0]  io_pipe_phv_in_data_23,
  input  [7:0]  io_pipe_phv_in_data_24,
  input  [7:0]  io_pipe_phv_in_data_25,
  input  [7:0]  io_pipe_phv_in_data_26,
  input  [7:0]  io_pipe_phv_in_data_27,
  input  [7:0]  io_pipe_phv_in_data_28,
  input  [7:0]  io_pipe_phv_in_data_29,
  input  [7:0]  io_pipe_phv_in_data_30,
  input  [7:0]  io_pipe_phv_in_data_31,
  input  [7:0]  io_pipe_phv_in_data_32,
  input  [7:0]  io_pipe_phv_in_data_33,
  input  [7:0]  io_pipe_phv_in_data_34,
  input  [7:0]  io_pipe_phv_in_data_35,
  input  [7:0]  io_pipe_phv_in_data_36,
  input  [7:0]  io_pipe_phv_in_data_37,
  input  [7:0]  io_pipe_phv_in_data_38,
  input  [7:0]  io_pipe_phv_in_data_39,
  input  [7:0]  io_pipe_phv_in_data_40,
  input  [7:0]  io_pipe_phv_in_data_41,
  input  [7:0]  io_pipe_phv_in_data_42,
  input  [7:0]  io_pipe_phv_in_data_43,
  input  [7:0]  io_pipe_phv_in_data_44,
  input  [7:0]  io_pipe_phv_in_data_45,
  input  [7:0]  io_pipe_phv_in_data_46,
  input  [7:0]  io_pipe_phv_in_data_47,
  input  [7:0]  io_pipe_phv_in_data_48,
  input  [7:0]  io_pipe_phv_in_data_49,
  input  [7:0]  io_pipe_phv_in_data_50,
  input  [7:0]  io_pipe_phv_in_data_51,
  input  [7:0]  io_pipe_phv_in_data_52,
  input  [7:0]  io_pipe_phv_in_data_53,
  input  [7:0]  io_pipe_phv_in_data_54,
  input  [7:0]  io_pipe_phv_in_data_55,
  input  [7:0]  io_pipe_phv_in_data_56,
  input  [7:0]  io_pipe_phv_in_data_57,
  input  [7:0]  io_pipe_phv_in_data_58,
  input  [7:0]  io_pipe_phv_in_data_59,
  input  [7:0]  io_pipe_phv_in_data_60,
  input  [7:0]  io_pipe_phv_in_data_61,
  input  [7:0]  io_pipe_phv_in_data_62,
  input  [7:0]  io_pipe_phv_in_data_63,
  input  [7:0]  io_pipe_phv_in_data_64,
  input  [7:0]  io_pipe_phv_in_data_65,
  input  [7:0]  io_pipe_phv_in_data_66,
  input  [7:0]  io_pipe_phv_in_data_67,
  input  [7:0]  io_pipe_phv_in_data_68,
  input  [7:0]  io_pipe_phv_in_data_69,
  input  [7:0]  io_pipe_phv_in_data_70,
  input  [7:0]  io_pipe_phv_in_data_71,
  input  [7:0]  io_pipe_phv_in_data_72,
  input  [7:0]  io_pipe_phv_in_data_73,
  input  [7:0]  io_pipe_phv_in_data_74,
  input  [7:0]  io_pipe_phv_in_data_75,
  input  [7:0]  io_pipe_phv_in_data_76,
  input  [7:0]  io_pipe_phv_in_data_77,
  input  [7:0]  io_pipe_phv_in_data_78,
  input  [7:0]  io_pipe_phv_in_data_79,
  input  [7:0]  io_pipe_phv_in_data_80,
  input  [7:0]  io_pipe_phv_in_data_81,
  input  [7:0]  io_pipe_phv_in_data_82,
  input  [7:0]  io_pipe_phv_in_data_83,
  input  [7:0]  io_pipe_phv_in_data_84,
  input  [7:0]  io_pipe_phv_in_data_85,
  input  [7:0]  io_pipe_phv_in_data_86,
  input  [7:0]  io_pipe_phv_in_data_87,
  input  [7:0]  io_pipe_phv_in_data_88,
  input  [7:0]  io_pipe_phv_in_data_89,
  input  [7:0]  io_pipe_phv_in_data_90,
  input  [7:0]  io_pipe_phv_in_data_91,
  input  [7:0]  io_pipe_phv_in_data_92,
  input  [7:0]  io_pipe_phv_in_data_93,
  input  [7:0]  io_pipe_phv_in_data_94,
  input  [7:0]  io_pipe_phv_in_data_95,
  input  [7:0]  io_pipe_phv_in_data_96,
  input  [7:0]  io_pipe_phv_in_data_97,
  input  [7:0]  io_pipe_phv_in_data_98,
  input  [7:0]  io_pipe_phv_in_data_99,
  input  [7:0]  io_pipe_phv_in_data_100,
  input  [7:0]  io_pipe_phv_in_data_101,
  input  [7:0]  io_pipe_phv_in_data_102,
  input  [7:0]  io_pipe_phv_in_data_103,
  input  [7:0]  io_pipe_phv_in_data_104,
  input  [7:0]  io_pipe_phv_in_data_105,
  input  [7:0]  io_pipe_phv_in_data_106,
  input  [7:0]  io_pipe_phv_in_data_107,
  input  [7:0]  io_pipe_phv_in_data_108,
  input  [7:0]  io_pipe_phv_in_data_109,
  input  [7:0]  io_pipe_phv_in_data_110,
  input  [7:0]  io_pipe_phv_in_data_111,
  input  [7:0]  io_pipe_phv_in_data_112,
  input  [7:0]  io_pipe_phv_in_data_113,
  input  [7:0]  io_pipe_phv_in_data_114,
  input  [7:0]  io_pipe_phv_in_data_115,
  input  [7:0]  io_pipe_phv_in_data_116,
  input  [7:0]  io_pipe_phv_in_data_117,
  input  [7:0]  io_pipe_phv_in_data_118,
  input  [7:0]  io_pipe_phv_in_data_119,
  input  [7:0]  io_pipe_phv_in_data_120,
  input  [7:0]  io_pipe_phv_in_data_121,
  input  [7:0]  io_pipe_phv_in_data_122,
  input  [7:0]  io_pipe_phv_in_data_123,
  input  [7:0]  io_pipe_phv_in_data_124,
  input  [7:0]  io_pipe_phv_in_data_125,
  input  [7:0]  io_pipe_phv_in_data_126,
  input  [7:0]  io_pipe_phv_in_data_127,
  input  [7:0]  io_pipe_phv_in_data_128,
  input  [7:0]  io_pipe_phv_in_data_129,
  input  [7:0]  io_pipe_phv_in_data_130,
  input  [7:0]  io_pipe_phv_in_data_131,
  input  [7:0]  io_pipe_phv_in_data_132,
  input  [7:0]  io_pipe_phv_in_data_133,
  input  [7:0]  io_pipe_phv_in_data_134,
  input  [7:0]  io_pipe_phv_in_data_135,
  input  [7:0]  io_pipe_phv_in_data_136,
  input  [7:0]  io_pipe_phv_in_data_137,
  input  [7:0]  io_pipe_phv_in_data_138,
  input  [7:0]  io_pipe_phv_in_data_139,
  input  [7:0]  io_pipe_phv_in_data_140,
  input  [7:0]  io_pipe_phv_in_data_141,
  input  [7:0]  io_pipe_phv_in_data_142,
  input  [7:0]  io_pipe_phv_in_data_143,
  input  [7:0]  io_pipe_phv_in_data_144,
  input  [7:0]  io_pipe_phv_in_data_145,
  input  [7:0]  io_pipe_phv_in_data_146,
  input  [7:0]  io_pipe_phv_in_data_147,
  input  [7:0]  io_pipe_phv_in_data_148,
  input  [7:0]  io_pipe_phv_in_data_149,
  input  [7:0]  io_pipe_phv_in_data_150,
  input  [7:0]  io_pipe_phv_in_data_151,
  input  [7:0]  io_pipe_phv_in_data_152,
  input  [7:0]  io_pipe_phv_in_data_153,
  input  [7:0]  io_pipe_phv_in_data_154,
  input  [7:0]  io_pipe_phv_in_data_155,
  input  [7:0]  io_pipe_phv_in_data_156,
  input  [7:0]  io_pipe_phv_in_data_157,
  input  [7:0]  io_pipe_phv_in_data_158,
  input  [7:0]  io_pipe_phv_in_data_159,
  input  [15:0] io_pipe_phv_in_header_0,
  input  [15:0] io_pipe_phv_in_header_1,
  input  [15:0] io_pipe_phv_in_header_2,
  input  [15:0] io_pipe_phv_in_header_3,
  input  [15:0] io_pipe_phv_in_header_4,
  input  [15:0] io_pipe_phv_in_header_5,
  input  [15:0] io_pipe_phv_in_header_6,
  input  [15:0] io_pipe_phv_in_header_7,
  input  [15:0] io_pipe_phv_in_header_8,
  input  [15:0] io_pipe_phv_in_header_9,
  input  [15:0] io_pipe_phv_in_header_10,
  input  [15:0] io_pipe_phv_in_header_11,
  input  [15:0] io_pipe_phv_in_header_12,
  input  [15:0] io_pipe_phv_in_header_13,
  input  [15:0] io_pipe_phv_in_header_14,
  input  [15:0] io_pipe_phv_in_header_15,
  input  [7:0]  io_pipe_phv_in_parse_current_state,
  input  [7:0]  io_pipe_phv_in_parse_current_offset,
  input  [15:0] io_pipe_phv_in_parse_transition_field,
  input  [3:0]  io_pipe_phv_in_next_processor_id,
  input         io_pipe_phv_in_next_config_id,
  input         io_pipe_phv_in_is_valid_processor,
  output [7:0]  io_pipe_phv_out_data_0,
  output [7:0]  io_pipe_phv_out_data_1,
  output [7:0]  io_pipe_phv_out_data_2,
  output [7:0]  io_pipe_phv_out_data_3,
  output [7:0]  io_pipe_phv_out_data_4,
  output [7:0]  io_pipe_phv_out_data_5,
  output [7:0]  io_pipe_phv_out_data_6,
  output [7:0]  io_pipe_phv_out_data_7,
  output [7:0]  io_pipe_phv_out_data_8,
  output [7:0]  io_pipe_phv_out_data_9,
  output [7:0]  io_pipe_phv_out_data_10,
  output [7:0]  io_pipe_phv_out_data_11,
  output [7:0]  io_pipe_phv_out_data_12,
  output [7:0]  io_pipe_phv_out_data_13,
  output [7:0]  io_pipe_phv_out_data_14,
  output [7:0]  io_pipe_phv_out_data_15,
  output [7:0]  io_pipe_phv_out_data_16,
  output [7:0]  io_pipe_phv_out_data_17,
  output [7:0]  io_pipe_phv_out_data_18,
  output [7:0]  io_pipe_phv_out_data_19,
  output [7:0]  io_pipe_phv_out_data_20,
  output [7:0]  io_pipe_phv_out_data_21,
  output [7:0]  io_pipe_phv_out_data_22,
  output [7:0]  io_pipe_phv_out_data_23,
  output [7:0]  io_pipe_phv_out_data_24,
  output [7:0]  io_pipe_phv_out_data_25,
  output [7:0]  io_pipe_phv_out_data_26,
  output [7:0]  io_pipe_phv_out_data_27,
  output [7:0]  io_pipe_phv_out_data_28,
  output [7:0]  io_pipe_phv_out_data_29,
  output [7:0]  io_pipe_phv_out_data_30,
  output [7:0]  io_pipe_phv_out_data_31,
  output [7:0]  io_pipe_phv_out_data_32,
  output [7:0]  io_pipe_phv_out_data_33,
  output [7:0]  io_pipe_phv_out_data_34,
  output [7:0]  io_pipe_phv_out_data_35,
  output [7:0]  io_pipe_phv_out_data_36,
  output [7:0]  io_pipe_phv_out_data_37,
  output [7:0]  io_pipe_phv_out_data_38,
  output [7:0]  io_pipe_phv_out_data_39,
  output [7:0]  io_pipe_phv_out_data_40,
  output [7:0]  io_pipe_phv_out_data_41,
  output [7:0]  io_pipe_phv_out_data_42,
  output [7:0]  io_pipe_phv_out_data_43,
  output [7:0]  io_pipe_phv_out_data_44,
  output [7:0]  io_pipe_phv_out_data_45,
  output [7:0]  io_pipe_phv_out_data_46,
  output [7:0]  io_pipe_phv_out_data_47,
  output [7:0]  io_pipe_phv_out_data_48,
  output [7:0]  io_pipe_phv_out_data_49,
  output [7:0]  io_pipe_phv_out_data_50,
  output [7:0]  io_pipe_phv_out_data_51,
  output [7:0]  io_pipe_phv_out_data_52,
  output [7:0]  io_pipe_phv_out_data_53,
  output [7:0]  io_pipe_phv_out_data_54,
  output [7:0]  io_pipe_phv_out_data_55,
  output [7:0]  io_pipe_phv_out_data_56,
  output [7:0]  io_pipe_phv_out_data_57,
  output [7:0]  io_pipe_phv_out_data_58,
  output [7:0]  io_pipe_phv_out_data_59,
  output [7:0]  io_pipe_phv_out_data_60,
  output [7:0]  io_pipe_phv_out_data_61,
  output [7:0]  io_pipe_phv_out_data_62,
  output [7:0]  io_pipe_phv_out_data_63,
  output [7:0]  io_pipe_phv_out_data_64,
  output [7:0]  io_pipe_phv_out_data_65,
  output [7:0]  io_pipe_phv_out_data_66,
  output [7:0]  io_pipe_phv_out_data_67,
  output [7:0]  io_pipe_phv_out_data_68,
  output [7:0]  io_pipe_phv_out_data_69,
  output [7:0]  io_pipe_phv_out_data_70,
  output [7:0]  io_pipe_phv_out_data_71,
  output [7:0]  io_pipe_phv_out_data_72,
  output [7:0]  io_pipe_phv_out_data_73,
  output [7:0]  io_pipe_phv_out_data_74,
  output [7:0]  io_pipe_phv_out_data_75,
  output [7:0]  io_pipe_phv_out_data_76,
  output [7:0]  io_pipe_phv_out_data_77,
  output [7:0]  io_pipe_phv_out_data_78,
  output [7:0]  io_pipe_phv_out_data_79,
  output [7:0]  io_pipe_phv_out_data_80,
  output [7:0]  io_pipe_phv_out_data_81,
  output [7:0]  io_pipe_phv_out_data_82,
  output [7:0]  io_pipe_phv_out_data_83,
  output [7:0]  io_pipe_phv_out_data_84,
  output [7:0]  io_pipe_phv_out_data_85,
  output [7:0]  io_pipe_phv_out_data_86,
  output [7:0]  io_pipe_phv_out_data_87,
  output [7:0]  io_pipe_phv_out_data_88,
  output [7:0]  io_pipe_phv_out_data_89,
  output [7:0]  io_pipe_phv_out_data_90,
  output [7:0]  io_pipe_phv_out_data_91,
  output [7:0]  io_pipe_phv_out_data_92,
  output [7:0]  io_pipe_phv_out_data_93,
  output [7:0]  io_pipe_phv_out_data_94,
  output [7:0]  io_pipe_phv_out_data_95,
  output [7:0]  io_pipe_phv_out_data_96,
  output [7:0]  io_pipe_phv_out_data_97,
  output [7:0]  io_pipe_phv_out_data_98,
  output [7:0]  io_pipe_phv_out_data_99,
  output [7:0]  io_pipe_phv_out_data_100,
  output [7:0]  io_pipe_phv_out_data_101,
  output [7:0]  io_pipe_phv_out_data_102,
  output [7:0]  io_pipe_phv_out_data_103,
  output [7:0]  io_pipe_phv_out_data_104,
  output [7:0]  io_pipe_phv_out_data_105,
  output [7:0]  io_pipe_phv_out_data_106,
  output [7:0]  io_pipe_phv_out_data_107,
  output [7:0]  io_pipe_phv_out_data_108,
  output [7:0]  io_pipe_phv_out_data_109,
  output [7:0]  io_pipe_phv_out_data_110,
  output [7:0]  io_pipe_phv_out_data_111,
  output [7:0]  io_pipe_phv_out_data_112,
  output [7:0]  io_pipe_phv_out_data_113,
  output [7:0]  io_pipe_phv_out_data_114,
  output [7:0]  io_pipe_phv_out_data_115,
  output [7:0]  io_pipe_phv_out_data_116,
  output [7:0]  io_pipe_phv_out_data_117,
  output [7:0]  io_pipe_phv_out_data_118,
  output [7:0]  io_pipe_phv_out_data_119,
  output [7:0]  io_pipe_phv_out_data_120,
  output [7:0]  io_pipe_phv_out_data_121,
  output [7:0]  io_pipe_phv_out_data_122,
  output [7:0]  io_pipe_phv_out_data_123,
  output [7:0]  io_pipe_phv_out_data_124,
  output [7:0]  io_pipe_phv_out_data_125,
  output [7:0]  io_pipe_phv_out_data_126,
  output [7:0]  io_pipe_phv_out_data_127,
  output [7:0]  io_pipe_phv_out_data_128,
  output [7:0]  io_pipe_phv_out_data_129,
  output [7:0]  io_pipe_phv_out_data_130,
  output [7:0]  io_pipe_phv_out_data_131,
  output [7:0]  io_pipe_phv_out_data_132,
  output [7:0]  io_pipe_phv_out_data_133,
  output [7:0]  io_pipe_phv_out_data_134,
  output [7:0]  io_pipe_phv_out_data_135,
  output [7:0]  io_pipe_phv_out_data_136,
  output [7:0]  io_pipe_phv_out_data_137,
  output [7:0]  io_pipe_phv_out_data_138,
  output [7:0]  io_pipe_phv_out_data_139,
  output [7:0]  io_pipe_phv_out_data_140,
  output [7:0]  io_pipe_phv_out_data_141,
  output [7:0]  io_pipe_phv_out_data_142,
  output [7:0]  io_pipe_phv_out_data_143,
  output [7:0]  io_pipe_phv_out_data_144,
  output [7:0]  io_pipe_phv_out_data_145,
  output [7:0]  io_pipe_phv_out_data_146,
  output [7:0]  io_pipe_phv_out_data_147,
  output [7:0]  io_pipe_phv_out_data_148,
  output [7:0]  io_pipe_phv_out_data_149,
  output [7:0]  io_pipe_phv_out_data_150,
  output [7:0]  io_pipe_phv_out_data_151,
  output [7:0]  io_pipe_phv_out_data_152,
  output [7:0]  io_pipe_phv_out_data_153,
  output [7:0]  io_pipe_phv_out_data_154,
  output [7:0]  io_pipe_phv_out_data_155,
  output [7:0]  io_pipe_phv_out_data_156,
  output [7:0]  io_pipe_phv_out_data_157,
  output [7:0]  io_pipe_phv_out_data_158,
  output [7:0]  io_pipe_phv_out_data_159,
  output [15:0] io_pipe_phv_out_header_0,
  output [15:0] io_pipe_phv_out_header_1,
  output [15:0] io_pipe_phv_out_header_2,
  output [15:0] io_pipe_phv_out_header_3,
  output [15:0] io_pipe_phv_out_header_4,
  output [15:0] io_pipe_phv_out_header_5,
  output [15:0] io_pipe_phv_out_header_6,
  output [15:0] io_pipe_phv_out_header_7,
  output [15:0] io_pipe_phv_out_header_8,
  output [15:0] io_pipe_phv_out_header_9,
  output [15:0] io_pipe_phv_out_header_10,
  output [15:0] io_pipe_phv_out_header_11,
  output [15:0] io_pipe_phv_out_header_12,
  output [15:0] io_pipe_phv_out_header_13,
  output [15:0] io_pipe_phv_out_header_14,
  output [15:0] io_pipe_phv_out_header_15,
  output [7:0]  io_pipe_phv_out_parse_current_state,
  output [7:0]  io_pipe_phv_out_parse_current_offset,
  output [15:0] io_pipe_phv_out_parse_transition_field,
  output [3:0]  io_pipe_phv_out_next_processor_id,
  output        io_pipe_phv_out_next_config_id,
  output        io_pipe_phv_out_is_valid_processor,
  input  [31:0] io_vliw_in_0,
  input  [31:0] io_vliw_in_1,
  input  [31:0] io_vliw_in_2,
  input  [31:0] io_vliw_in_3,
  input  [63:0] io_field_in_0,
  input  [63:0] io_field_in_1,
  input  [63:0] io_field_in_2,
  input  [63:0] io_field_in_3,
  output [7:0]  io_offset_out_0,
  output [7:0]  io_offset_out_1,
  output [7:0]  io_offset_out_2,
  output [7:0]  io_offset_out_3,
  output [7:0]  io_length_out_0,
  output [7:0]  io_length_out_1,
  output [7:0]  io_length_out_2,
  output [7:0]  io_length_out_3,
  output [63:0] io_field_out_0,
  output [63:0] io_field_out_1,
  output [63:0] io_field_out_2,
  output [63:0] io_field_out_3
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
  reg [31:0] _RAND_70;
  reg [31:0] _RAND_71;
  reg [31:0] _RAND_72;
  reg [31:0] _RAND_73;
  reg [31:0] _RAND_74;
  reg [31:0] _RAND_75;
  reg [31:0] _RAND_76;
  reg [31:0] _RAND_77;
  reg [31:0] _RAND_78;
  reg [31:0] _RAND_79;
  reg [31:0] _RAND_80;
  reg [31:0] _RAND_81;
  reg [31:0] _RAND_82;
  reg [31:0] _RAND_83;
  reg [31:0] _RAND_84;
  reg [31:0] _RAND_85;
  reg [31:0] _RAND_86;
  reg [31:0] _RAND_87;
  reg [31:0] _RAND_88;
  reg [31:0] _RAND_89;
  reg [31:0] _RAND_90;
  reg [31:0] _RAND_91;
  reg [31:0] _RAND_92;
  reg [31:0] _RAND_93;
  reg [31:0] _RAND_94;
  reg [31:0] _RAND_95;
  reg [31:0] _RAND_96;
  reg [31:0] _RAND_97;
  reg [31:0] _RAND_98;
  reg [31:0] _RAND_99;
  reg [31:0] _RAND_100;
  reg [31:0] _RAND_101;
  reg [31:0] _RAND_102;
  reg [31:0] _RAND_103;
  reg [31:0] _RAND_104;
  reg [31:0] _RAND_105;
  reg [31:0] _RAND_106;
  reg [31:0] _RAND_107;
  reg [31:0] _RAND_108;
  reg [31:0] _RAND_109;
  reg [31:0] _RAND_110;
  reg [31:0] _RAND_111;
  reg [31:0] _RAND_112;
  reg [31:0] _RAND_113;
  reg [31:0] _RAND_114;
  reg [31:0] _RAND_115;
  reg [31:0] _RAND_116;
  reg [31:0] _RAND_117;
  reg [31:0] _RAND_118;
  reg [31:0] _RAND_119;
  reg [31:0] _RAND_120;
  reg [31:0] _RAND_121;
  reg [31:0] _RAND_122;
  reg [31:0] _RAND_123;
  reg [31:0] _RAND_124;
  reg [31:0] _RAND_125;
  reg [31:0] _RAND_126;
  reg [31:0] _RAND_127;
  reg [31:0] _RAND_128;
  reg [31:0] _RAND_129;
  reg [31:0] _RAND_130;
  reg [31:0] _RAND_131;
  reg [31:0] _RAND_132;
  reg [31:0] _RAND_133;
  reg [31:0] _RAND_134;
  reg [31:0] _RAND_135;
  reg [31:0] _RAND_136;
  reg [31:0] _RAND_137;
  reg [31:0] _RAND_138;
  reg [31:0] _RAND_139;
  reg [31:0] _RAND_140;
  reg [31:0] _RAND_141;
  reg [31:0] _RAND_142;
  reg [31:0] _RAND_143;
  reg [31:0] _RAND_144;
  reg [31:0] _RAND_145;
  reg [31:0] _RAND_146;
  reg [31:0] _RAND_147;
  reg [31:0] _RAND_148;
  reg [31:0] _RAND_149;
  reg [31:0] _RAND_150;
  reg [31:0] _RAND_151;
  reg [31:0] _RAND_152;
  reg [31:0] _RAND_153;
  reg [31:0] _RAND_154;
  reg [31:0] _RAND_155;
  reg [31:0] _RAND_156;
  reg [31:0] _RAND_157;
  reg [31:0] _RAND_158;
  reg [31:0] _RAND_159;
  reg [31:0] _RAND_160;
  reg [31:0] _RAND_161;
  reg [31:0] _RAND_162;
  reg [31:0] _RAND_163;
  reg [31:0] _RAND_164;
  reg [31:0] _RAND_165;
  reg [31:0] _RAND_166;
  reg [31:0] _RAND_167;
  reg [31:0] _RAND_168;
  reg [31:0] _RAND_169;
  reg [31:0] _RAND_170;
  reg [31:0] _RAND_171;
  reg [31:0] _RAND_172;
  reg [31:0] _RAND_173;
  reg [31:0] _RAND_174;
  reg [31:0] _RAND_175;
  reg [31:0] _RAND_176;
  reg [31:0] _RAND_177;
  reg [31:0] _RAND_178;
  reg [31:0] _RAND_179;
  reg [31:0] _RAND_180;
  reg [31:0] _RAND_181;
  reg [31:0] _RAND_182;
  reg [31:0] _RAND_183;
  reg [31:0] _RAND_184;
  reg [31:0] _RAND_185;
  reg [63:0] _RAND_186;
  reg [63:0] _RAND_187;
  reg [63:0] _RAND_188;
  reg [63:0] _RAND_189;
`endif // RANDOMIZE_REG_INIT
  reg [7:0] phv_data_0; // @[executor.scala 238:22]
  reg [7:0] phv_data_1; // @[executor.scala 238:22]
  reg [7:0] phv_data_2; // @[executor.scala 238:22]
  reg [7:0] phv_data_3; // @[executor.scala 238:22]
  reg [7:0] phv_data_4; // @[executor.scala 238:22]
  reg [7:0] phv_data_5; // @[executor.scala 238:22]
  reg [7:0] phv_data_6; // @[executor.scala 238:22]
  reg [7:0] phv_data_7; // @[executor.scala 238:22]
  reg [7:0] phv_data_8; // @[executor.scala 238:22]
  reg [7:0] phv_data_9; // @[executor.scala 238:22]
  reg [7:0] phv_data_10; // @[executor.scala 238:22]
  reg [7:0] phv_data_11; // @[executor.scala 238:22]
  reg [7:0] phv_data_12; // @[executor.scala 238:22]
  reg [7:0] phv_data_13; // @[executor.scala 238:22]
  reg [7:0] phv_data_14; // @[executor.scala 238:22]
  reg [7:0] phv_data_15; // @[executor.scala 238:22]
  reg [7:0] phv_data_16; // @[executor.scala 238:22]
  reg [7:0] phv_data_17; // @[executor.scala 238:22]
  reg [7:0] phv_data_18; // @[executor.scala 238:22]
  reg [7:0] phv_data_19; // @[executor.scala 238:22]
  reg [7:0] phv_data_20; // @[executor.scala 238:22]
  reg [7:0] phv_data_21; // @[executor.scala 238:22]
  reg [7:0] phv_data_22; // @[executor.scala 238:22]
  reg [7:0] phv_data_23; // @[executor.scala 238:22]
  reg [7:0] phv_data_24; // @[executor.scala 238:22]
  reg [7:0] phv_data_25; // @[executor.scala 238:22]
  reg [7:0] phv_data_26; // @[executor.scala 238:22]
  reg [7:0] phv_data_27; // @[executor.scala 238:22]
  reg [7:0] phv_data_28; // @[executor.scala 238:22]
  reg [7:0] phv_data_29; // @[executor.scala 238:22]
  reg [7:0] phv_data_30; // @[executor.scala 238:22]
  reg [7:0] phv_data_31; // @[executor.scala 238:22]
  reg [7:0] phv_data_32; // @[executor.scala 238:22]
  reg [7:0] phv_data_33; // @[executor.scala 238:22]
  reg [7:0] phv_data_34; // @[executor.scala 238:22]
  reg [7:0] phv_data_35; // @[executor.scala 238:22]
  reg [7:0] phv_data_36; // @[executor.scala 238:22]
  reg [7:0] phv_data_37; // @[executor.scala 238:22]
  reg [7:0] phv_data_38; // @[executor.scala 238:22]
  reg [7:0] phv_data_39; // @[executor.scala 238:22]
  reg [7:0] phv_data_40; // @[executor.scala 238:22]
  reg [7:0] phv_data_41; // @[executor.scala 238:22]
  reg [7:0] phv_data_42; // @[executor.scala 238:22]
  reg [7:0] phv_data_43; // @[executor.scala 238:22]
  reg [7:0] phv_data_44; // @[executor.scala 238:22]
  reg [7:0] phv_data_45; // @[executor.scala 238:22]
  reg [7:0] phv_data_46; // @[executor.scala 238:22]
  reg [7:0] phv_data_47; // @[executor.scala 238:22]
  reg [7:0] phv_data_48; // @[executor.scala 238:22]
  reg [7:0] phv_data_49; // @[executor.scala 238:22]
  reg [7:0] phv_data_50; // @[executor.scala 238:22]
  reg [7:0] phv_data_51; // @[executor.scala 238:22]
  reg [7:0] phv_data_52; // @[executor.scala 238:22]
  reg [7:0] phv_data_53; // @[executor.scala 238:22]
  reg [7:0] phv_data_54; // @[executor.scala 238:22]
  reg [7:0] phv_data_55; // @[executor.scala 238:22]
  reg [7:0] phv_data_56; // @[executor.scala 238:22]
  reg [7:0] phv_data_57; // @[executor.scala 238:22]
  reg [7:0] phv_data_58; // @[executor.scala 238:22]
  reg [7:0] phv_data_59; // @[executor.scala 238:22]
  reg [7:0] phv_data_60; // @[executor.scala 238:22]
  reg [7:0] phv_data_61; // @[executor.scala 238:22]
  reg [7:0] phv_data_62; // @[executor.scala 238:22]
  reg [7:0] phv_data_63; // @[executor.scala 238:22]
  reg [7:0] phv_data_64; // @[executor.scala 238:22]
  reg [7:0] phv_data_65; // @[executor.scala 238:22]
  reg [7:0] phv_data_66; // @[executor.scala 238:22]
  reg [7:0] phv_data_67; // @[executor.scala 238:22]
  reg [7:0] phv_data_68; // @[executor.scala 238:22]
  reg [7:0] phv_data_69; // @[executor.scala 238:22]
  reg [7:0] phv_data_70; // @[executor.scala 238:22]
  reg [7:0] phv_data_71; // @[executor.scala 238:22]
  reg [7:0] phv_data_72; // @[executor.scala 238:22]
  reg [7:0] phv_data_73; // @[executor.scala 238:22]
  reg [7:0] phv_data_74; // @[executor.scala 238:22]
  reg [7:0] phv_data_75; // @[executor.scala 238:22]
  reg [7:0] phv_data_76; // @[executor.scala 238:22]
  reg [7:0] phv_data_77; // @[executor.scala 238:22]
  reg [7:0] phv_data_78; // @[executor.scala 238:22]
  reg [7:0] phv_data_79; // @[executor.scala 238:22]
  reg [7:0] phv_data_80; // @[executor.scala 238:22]
  reg [7:0] phv_data_81; // @[executor.scala 238:22]
  reg [7:0] phv_data_82; // @[executor.scala 238:22]
  reg [7:0] phv_data_83; // @[executor.scala 238:22]
  reg [7:0] phv_data_84; // @[executor.scala 238:22]
  reg [7:0] phv_data_85; // @[executor.scala 238:22]
  reg [7:0] phv_data_86; // @[executor.scala 238:22]
  reg [7:0] phv_data_87; // @[executor.scala 238:22]
  reg [7:0] phv_data_88; // @[executor.scala 238:22]
  reg [7:0] phv_data_89; // @[executor.scala 238:22]
  reg [7:0] phv_data_90; // @[executor.scala 238:22]
  reg [7:0] phv_data_91; // @[executor.scala 238:22]
  reg [7:0] phv_data_92; // @[executor.scala 238:22]
  reg [7:0] phv_data_93; // @[executor.scala 238:22]
  reg [7:0] phv_data_94; // @[executor.scala 238:22]
  reg [7:0] phv_data_95; // @[executor.scala 238:22]
  reg [7:0] phv_data_96; // @[executor.scala 238:22]
  reg [7:0] phv_data_97; // @[executor.scala 238:22]
  reg [7:0] phv_data_98; // @[executor.scala 238:22]
  reg [7:0] phv_data_99; // @[executor.scala 238:22]
  reg [7:0] phv_data_100; // @[executor.scala 238:22]
  reg [7:0] phv_data_101; // @[executor.scala 238:22]
  reg [7:0] phv_data_102; // @[executor.scala 238:22]
  reg [7:0] phv_data_103; // @[executor.scala 238:22]
  reg [7:0] phv_data_104; // @[executor.scala 238:22]
  reg [7:0] phv_data_105; // @[executor.scala 238:22]
  reg [7:0] phv_data_106; // @[executor.scala 238:22]
  reg [7:0] phv_data_107; // @[executor.scala 238:22]
  reg [7:0] phv_data_108; // @[executor.scala 238:22]
  reg [7:0] phv_data_109; // @[executor.scala 238:22]
  reg [7:0] phv_data_110; // @[executor.scala 238:22]
  reg [7:0] phv_data_111; // @[executor.scala 238:22]
  reg [7:0] phv_data_112; // @[executor.scala 238:22]
  reg [7:0] phv_data_113; // @[executor.scala 238:22]
  reg [7:0] phv_data_114; // @[executor.scala 238:22]
  reg [7:0] phv_data_115; // @[executor.scala 238:22]
  reg [7:0] phv_data_116; // @[executor.scala 238:22]
  reg [7:0] phv_data_117; // @[executor.scala 238:22]
  reg [7:0] phv_data_118; // @[executor.scala 238:22]
  reg [7:0] phv_data_119; // @[executor.scala 238:22]
  reg [7:0] phv_data_120; // @[executor.scala 238:22]
  reg [7:0] phv_data_121; // @[executor.scala 238:22]
  reg [7:0] phv_data_122; // @[executor.scala 238:22]
  reg [7:0] phv_data_123; // @[executor.scala 238:22]
  reg [7:0] phv_data_124; // @[executor.scala 238:22]
  reg [7:0] phv_data_125; // @[executor.scala 238:22]
  reg [7:0] phv_data_126; // @[executor.scala 238:22]
  reg [7:0] phv_data_127; // @[executor.scala 238:22]
  reg [7:0] phv_data_128; // @[executor.scala 238:22]
  reg [7:0] phv_data_129; // @[executor.scala 238:22]
  reg [7:0] phv_data_130; // @[executor.scala 238:22]
  reg [7:0] phv_data_131; // @[executor.scala 238:22]
  reg [7:0] phv_data_132; // @[executor.scala 238:22]
  reg [7:0] phv_data_133; // @[executor.scala 238:22]
  reg [7:0] phv_data_134; // @[executor.scala 238:22]
  reg [7:0] phv_data_135; // @[executor.scala 238:22]
  reg [7:0] phv_data_136; // @[executor.scala 238:22]
  reg [7:0] phv_data_137; // @[executor.scala 238:22]
  reg [7:0] phv_data_138; // @[executor.scala 238:22]
  reg [7:0] phv_data_139; // @[executor.scala 238:22]
  reg [7:0] phv_data_140; // @[executor.scala 238:22]
  reg [7:0] phv_data_141; // @[executor.scala 238:22]
  reg [7:0] phv_data_142; // @[executor.scala 238:22]
  reg [7:0] phv_data_143; // @[executor.scala 238:22]
  reg [7:0] phv_data_144; // @[executor.scala 238:22]
  reg [7:0] phv_data_145; // @[executor.scala 238:22]
  reg [7:0] phv_data_146; // @[executor.scala 238:22]
  reg [7:0] phv_data_147; // @[executor.scala 238:22]
  reg [7:0] phv_data_148; // @[executor.scala 238:22]
  reg [7:0] phv_data_149; // @[executor.scala 238:22]
  reg [7:0] phv_data_150; // @[executor.scala 238:22]
  reg [7:0] phv_data_151; // @[executor.scala 238:22]
  reg [7:0] phv_data_152; // @[executor.scala 238:22]
  reg [7:0] phv_data_153; // @[executor.scala 238:22]
  reg [7:0] phv_data_154; // @[executor.scala 238:22]
  reg [7:0] phv_data_155; // @[executor.scala 238:22]
  reg [7:0] phv_data_156; // @[executor.scala 238:22]
  reg [7:0] phv_data_157; // @[executor.scala 238:22]
  reg [7:0] phv_data_158; // @[executor.scala 238:22]
  reg [7:0] phv_data_159; // @[executor.scala 238:22]
  reg [15:0] phv_header_0; // @[executor.scala 238:22]
  reg [15:0] phv_header_1; // @[executor.scala 238:22]
  reg [15:0] phv_header_2; // @[executor.scala 238:22]
  reg [15:0] phv_header_3; // @[executor.scala 238:22]
  reg [15:0] phv_header_4; // @[executor.scala 238:22]
  reg [15:0] phv_header_5; // @[executor.scala 238:22]
  reg [15:0] phv_header_6; // @[executor.scala 238:22]
  reg [15:0] phv_header_7; // @[executor.scala 238:22]
  reg [15:0] phv_header_8; // @[executor.scala 238:22]
  reg [15:0] phv_header_9; // @[executor.scala 238:22]
  reg [15:0] phv_header_10; // @[executor.scala 238:22]
  reg [15:0] phv_header_11; // @[executor.scala 238:22]
  reg [15:0] phv_header_12; // @[executor.scala 238:22]
  reg [15:0] phv_header_13; // @[executor.scala 238:22]
  reg [15:0] phv_header_14; // @[executor.scala 238:22]
  reg [15:0] phv_header_15; // @[executor.scala 238:22]
  reg [7:0] phv_parse_current_state; // @[executor.scala 238:22]
  reg [7:0] phv_parse_current_offset; // @[executor.scala 238:22]
  reg [15:0] phv_parse_transition_field; // @[executor.scala 238:22]
  reg [3:0] phv_next_processor_id; // @[executor.scala 238:22]
  reg  phv_next_config_id; // @[executor.scala 238:22]
  reg  phv_is_valid_processor; // @[executor.scala 238:22]
  reg [31:0] vliw_0; // @[executor.scala 242:23]
  reg [31:0] vliw_1; // @[executor.scala 242:23]
  reg [31:0] vliw_2; // @[executor.scala 242:23]
  reg [31:0] vliw_3; // @[executor.scala 242:23]
  reg [63:0] field_0; // @[executor.scala 245:24]
  reg [63:0] field_1; // @[executor.scala 245:24]
  reg [63:0] field_2; // @[executor.scala 245:24]
  reg [63:0] field_3; // @[executor.scala 245:24]
  wire [3:0] opcode = vliw_0[31:28]; // @[primitive.scala 9:44]
  wire [13:0] parameter_1 = vliw_0[27:14]; // @[primitive.scala 10:44]
  wire [3:0] field_header_id = parameter_1[13:10]; // @[primitive.scala 28:52]
  wire [4:0] field_internal_offset = parameter_1[9:5]; // @[primitive.scala 29:52]
  wire [4:0] field_length = parameter_1[4:0]; // @[primitive.scala 30:52]
  wire [15:0] _GEN_1 = 4'h1 == field_header_id ? phv_header_1 : phv_header_0; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_2 = 4'h2 == field_header_id ? phv_header_2 : _GEN_1; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_3 = 4'h3 == field_header_id ? phv_header_3 : _GEN_2; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_4 = 4'h4 == field_header_id ? phv_header_4 : _GEN_3; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_5 = 4'h5 == field_header_id ? phv_header_5 : _GEN_4; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_6 = 4'h6 == field_header_id ? phv_header_6 : _GEN_5; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_7 = 4'h7 == field_header_id ? phv_header_7 : _GEN_6; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_8 = 4'h8 == field_header_id ? phv_header_8 : _GEN_7; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_9 = 4'h9 == field_header_id ? phv_header_9 : _GEN_8; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_10 = 4'ha == field_header_id ? phv_header_10 : _GEN_9; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_11 = 4'hb == field_header_id ? phv_header_11 : _GEN_10; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_12 = 4'hc == field_header_id ? phv_header_12 : _GEN_11; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_13 = 4'hd == field_header_id ? phv_header_13 : _GEN_12; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_14 = 4'he == field_header_id ? phv_header_14 : _GEN_13; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_15 = 4'hf == field_header_id ? phv_header_15 : _GEN_14; // @[const.scala 34:43 const.scala 34:43]
  wire [7:0] field_header_offset = _GEN_15[15:8]; // @[const.scala 34:43]
  wire [7:0] _GEN_76 = {{3'd0}, field_internal_offset}; // @[executor.scala 259:65]
  wire [7:0] field_offset = field_header_offset + _GEN_76; // @[executor.scala 259:65]
  wire [7:0] _GEN_16 = 4'hf == opcode ? 8'h0 : {{3'd0}, field_length}; // @[executor.scala 262:52 executor.scala 263:38 executor.scala 265:38]
  wire [3:0] opcode_1 = vliw_1[31:28]; // @[primitive.scala 9:44]
  wire [13:0] parameter_1_1 = vliw_1[27:14]; // @[primitive.scala 10:44]
  wire [3:0] field_header_id_1 = parameter_1_1[13:10]; // @[primitive.scala 28:52]
  wire [4:0] field_internal_offset_1 = parameter_1_1[9:5]; // @[primitive.scala 29:52]
  wire [4:0] field_length_1 = parameter_1_1[4:0]; // @[primitive.scala 30:52]
  wire [15:0] _GEN_20 = 4'h1 == field_header_id_1 ? phv_header_1 : phv_header_0; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_21 = 4'h2 == field_header_id_1 ? phv_header_2 : _GEN_20; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_22 = 4'h3 == field_header_id_1 ? phv_header_3 : _GEN_21; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_23 = 4'h4 == field_header_id_1 ? phv_header_4 : _GEN_22; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_24 = 4'h5 == field_header_id_1 ? phv_header_5 : _GEN_23; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_25 = 4'h6 == field_header_id_1 ? phv_header_6 : _GEN_24; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_26 = 4'h7 == field_header_id_1 ? phv_header_7 : _GEN_25; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_27 = 4'h8 == field_header_id_1 ? phv_header_8 : _GEN_26; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_28 = 4'h9 == field_header_id_1 ? phv_header_9 : _GEN_27; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_29 = 4'ha == field_header_id_1 ? phv_header_10 : _GEN_28; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_30 = 4'hb == field_header_id_1 ? phv_header_11 : _GEN_29; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_31 = 4'hc == field_header_id_1 ? phv_header_12 : _GEN_30; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_32 = 4'hd == field_header_id_1 ? phv_header_13 : _GEN_31; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_33 = 4'he == field_header_id_1 ? phv_header_14 : _GEN_32; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_34 = 4'hf == field_header_id_1 ? phv_header_15 : _GEN_33; // @[const.scala 34:43 const.scala 34:43]
  wire [7:0] field_header_offset_1 = _GEN_34[15:8]; // @[const.scala 34:43]
  wire [7:0] _GEN_77 = {{3'd0}, field_internal_offset_1}; // @[executor.scala 259:65]
  wire [7:0] field_offset_1 = field_header_offset_1 + _GEN_77; // @[executor.scala 259:65]
  wire [7:0] _GEN_35 = 4'hf == opcode_1 ? 8'h0 : {{3'd0}, field_length_1}; // @[executor.scala 262:52 executor.scala 263:38 executor.scala 265:38]
  wire [3:0] opcode_2 = vliw_2[31:28]; // @[primitive.scala 9:44]
  wire [13:0] parameter_1_2 = vliw_2[27:14]; // @[primitive.scala 10:44]
  wire [3:0] field_header_id_2 = parameter_1_2[13:10]; // @[primitive.scala 28:52]
  wire [4:0] field_internal_offset_2 = parameter_1_2[9:5]; // @[primitive.scala 29:52]
  wire [4:0] field_length_2 = parameter_1_2[4:0]; // @[primitive.scala 30:52]
  wire [15:0] _GEN_39 = 4'h1 == field_header_id_2 ? phv_header_1 : phv_header_0; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_40 = 4'h2 == field_header_id_2 ? phv_header_2 : _GEN_39; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_41 = 4'h3 == field_header_id_2 ? phv_header_3 : _GEN_40; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_42 = 4'h4 == field_header_id_2 ? phv_header_4 : _GEN_41; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_43 = 4'h5 == field_header_id_2 ? phv_header_5 : _GEN_42; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_44 = 4'h6 == field_header_id_2 ? phv_header_6 : _GEN_43; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_45 = 4'h7 == field_header_id_2 ? phv_header_7 : _GEN_44; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_46 = 4'h8 == field_header_id_2 ? phv_header_8 : _GEN_45; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_47 = 4'h9 == field_header_id_2 ? phv_header_9 : _GEN_46; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_48 = 4'ha == field_header_id_2 ? phv_header_10 : _GEN_47; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_49 = 4'hb == field_header_id_2 ? phv_header_11 : _GEN_48; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_50 = 4'hc == field_header_id_2 ? phv_header_12 : _GEN_49; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_51 = 4'hd == field_header_id_2 ? phv_header_13 : _GEN_50; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_52 = 4'he == field_header_id_2 ? phv_header_14 : _GEN_51; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_53 = 4'hf == field_header_id_2 ? phv_header_15 : _GEN_52; // @[const.scala 34:43 const.scala 34:43]
  wire [7:0] field_header_offset_2 = _GEN_53[15:8]; // @[const.scala 34:43]
  wire [7:0] _GEN_78 = {{3'd0}, field_internal_offset_2}; // @[executor.scala 259:65]
  wire [7:0] field_offset_2 = field_header_offset_2 + _GEN_78; // @[executor.scala 259:65]
  wire [7:0] _GEN_54 = 4'hf == opcode_2 ? 8'h0 : {{3'd0}, field_length_2}; // @[executor.scala 262:52 executor.scala 263:38 executor.scala 265:38]
  wire [3:0] opcode_3 = vliw_3[31:28]; // @[primitive.scala 9:44]
  wire [13:0] parameter_1_3 = vliw_3[27:14]; // @[primitive.scala 10:44]
  wire [3:0] field_header_id_3 = parameter_1_3[13:10]; // @[primitive.scala 28:52]
  wire [4:0] field_internal_offset_3 = parameter_1_3[9:5]; // @[primitive.scala 29:52]
  wire [4:0] field_length_3 = parameter_1_3[4:0]; // @[primitive.scala 30:52]
  wire [15:0] _GEN_58 = 4'h1 == field_header_id_3 ? phv_header_1 : phv_header_0; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_59 = 4'h2 == field_header_id_3 ? phv_header_2 : _GEN_58; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_60 = 4'h3 == field_header_id_3 ? phv_header_3 : _GEN_59; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_61 = 4'h4 == field_header_id_3 ? phv_header_4 : _GEN_60; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_62 = 4'h5 == field_header_id_3 ? phv_header_5 : _GEN_61; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_63 = 4'h6 == field_header_id_3 ? phv_header_6 : _GEN_62; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_64 = 4'h7 == field_header_id_3 ? phv_header_7 : _GEN_63; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_65 = 4'h8 == field_header_id_3 ? phv_header_8 : _GEN_64; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_66 = 4'h9 == field_header_id_3 ? phv_header_9 : _GEN_65; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_67 = 4'ha == field_header_id_3 ? phv_header_10 : _GEN_66; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_68 = 4'hb == field_header_id_3 ? phv_header_11 : _GEN_67; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_69 = 4'hc == field_header_id_3 ? phv_header_12 : _GEN_68; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_70 = 4'hd == field_header_id_3 ? phv_header_13 : _GEN_69; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_71 = 4'he == field_header_id_3 ? phv_header_14 : _GEN_70; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_72 = 4'hf == field_header_id_3 ? phv_header_15 : _GEN_71; // @[const.scala 34:43 const.scala 34:43]
  wire [7:0] field_header_offset_3 = _GEN_72[15:8]; // @[const.scala 34:43]
  wire [7:0] _GEN_79 = {{3'd0}, field_internal_offset_3}; // @[executor.scala 259:65]
  wire [7:0] field_offset_3 = field_header_offset_3 + _GEN_79; // @[executor.scala 259:65]
  wire [7:0] _GEN_73 = 4'hf == opcode_3 ? 8'h0 : {{3'd0}, field_length_3}; // @[executor.scala 262:52 executor.scala 263:38 executor.scala 265:38]
  assign io_pipe_phv_out_data_0 = phv_data_0; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_1 = phv_data_1; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_2 = phv_data_2; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_3 = phv_data_3; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_4 = phv_data_4; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_5 = phv_data_5; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_6 = phv_data_6; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_7 = phv_data_7; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_8 = phv_data_8; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_9 = phv_data_9; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_10 = phv_data_10; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_11 = phv_data_11; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_12 = phv_data_12; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_13 = phv_data_13; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_14 = phv_data_14; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_15 = phv_data_15; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_16 = phv_data_16; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_17 = phv_data_17; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_18 = phv_data_18; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_19 = phv_data_19; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_20 = phv_data_20; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_21 = phv_data_21; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_22 = phv_data_22; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_23 = phv_data_23; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_24 = phv_data_24; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_25 = phv_data_25; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_26 = phv_data_26; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_27 = phv_data_27; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_28 = phv_data_28; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_29 = phv_data_29; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_30 = phv_data_30; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_31 = phv_data_31; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_32 = phv_data_32; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_33 = phv_data_33; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_34 = phv_data_34; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_35 = phv_data_35; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_36 = phv_data_36; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_37 = phv_data_37; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_38 = phv_data_38; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_39 = phv_data_39; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_40 = phv_data_40; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_41 = phv_data_41; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_42 = phv_data_42; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_43 = phv_data_43; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_44 = phv_data_44; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_45 = phv_data_45; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_46 = phv_data_46; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_47 = phv_data_47; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_48 = phv_data_48; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_49 = phv_data_49; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_50 = phv_data_50; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_51 = phv_data_51; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_52 = phv_data_52; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_53 = phv_data_53; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_54 = phv_data_54; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_55 = phv_data_55; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_56 = phv_data_56; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_57 = phv_data_57; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_58 = phv_data_58; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_59 = phv_data_59; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_60 = phv_data_60; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_61 = phv_data_61; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_62 = phv_data_62; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_63 = phv_data_63; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_64 = phv_data_64; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_65 = phv_data_65; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_66 = phv_data_66; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_67 = phv_data_67; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_68 = phv_data_68; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_69 = phv_data_69; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_70 = phv_data_70; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_71 = phv_data_71; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_72 = phv_data_72; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_73 = phv_data_73; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_74 = phv_data_74; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_75 = phv_data_75; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_76 = phv_data_76; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_77 = phv_data_77; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_78 = phv_data_78; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_79 = phv_data_79; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_80 = phv_data_80; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_81 = phv_data_81; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_82 = phv_data_82; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_83 = phv_data_83; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_84 = phv_data_84; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_85 = phv_data_85; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_86 = phv_data_86; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_87 = phv_data_87; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_88 = phv_data_88; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_89 = phv_data_89; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_90 = phv_data_90; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_91 = phv_data_91; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_92 = phv_data_92; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_93 = phv_data_93; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_94 = phv_data_94; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_95 = phv_data_95; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_96 = phv_data_96; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_97 = phv_data_97; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_98 = phv_data_98; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_99 = phv_data_99; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_100 = phv_data_100; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_101 = phv_data_101; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_102 = phv_data_102; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_103 = phv_data_103; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_104 = phv_data_104; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_105 = phv_data_105; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_106 = phv_data_106; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_107 = phv_data_107; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_108 = phv_data_108; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_109 = phv_data_109; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_110 = phv_data_110; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_111 = phv_data_111; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_112 = phv_data_112; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_113 = phv_data_113; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_114 = phv_data_114; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_115 = phv_data_115; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_116 = phv_data_116; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_117 = phv_data_117; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_118 = phv_data_118; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_119 = phv_data_119; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_120 = phv_data_120; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_121 = phv_data_121; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_122 = phv_data_122; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_123 = phv_data_123; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_124 = phv_data_124; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_125 = phv_data_125; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_126 = phv_data_126; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_127 = phv_data_127; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_128 = phv_data_128; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_129 = phv_data_129; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_130 = phv_data_130; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_131 = phv_data_131; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_132 = phv_data_132; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_133 = phv_data_133; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_134 = phv_data_134; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_135 = phv_data_135; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_136 = phv_data_136; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_137 = phv_data_137; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_138 = phv_data_138; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_139 = phv_data_139; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_140 = phv_data_140; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_141 = phv_data_141; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_142 = phv_data_142; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_143 = phv_data_143; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_144 = phv_data_144; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_145 = phv_data_145; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_146 = phv_data_146; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_147 = phv_data_147; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_148 = phv_data_148; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_149 = phv_data_149; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_150 = phv_data_150; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_151 = phv_data_151; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_152 = phv_data_152; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_153 = phv_data_153; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_154 = phv_data_154; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_155 = phv_data_155; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_156 = phv_data_156; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_157 = phv_data_157; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_158 = phv_data_158; // @[executor.scala 240:25]
  assign io_pipe_phv_out_data_159 = phv_data_159; // @[executor.scala 240:25]
  assign io_pipe_phv_out_header_0 = phv_header_0; // @[executor.scala 240:25]
  assign io_pipe_phv_out_header_1 = phv_header_1; // @[executor.scala 240:25]
  assign io_pipe_phv_out_header_2 = phv_header_2; // @[executor.scala 240:25]
  assign io_pipe_phv_out_header_3 = phv_header_3; // @[executor.scala 240:25]
  assign io_pipe_phv_out_header_4 = phv_header_4; // @[executor.scala 240:25]
  assign io_pipe_phv_out_header_5 = phv_header_5; // @[executor.scala 240:25]
  assign io_pipe_phv_out_header_6 = phv_header_6; // @[executor.scala 240:25]
  assign io_pipe_phv_out_header_7 = phv_header_7; // @[executor.scala 240:25]
  assign io_pipe_phv_out_header_8 = phv_header_8; // @[executor.scala 240:25]
  assign io_pipe_phv_out_header_9 = phv_header_9; // @[executor.scala 240:25]
  assign io_pipe_phv_out_header_10 = phv_header_10; // @[executor.scala 240:25]
  assign io_pipe_phv_out_header_11 = phv_header_11; // @[executor.scala 240:25]
  assign io_pipe_phv_out_header_12 = phv_header_12; // @[executor.scala 240:25]
  assign io_pipe_phv_out_header_13 = phv_header_13; // @[executor.scala 240:25]
  assign io_pipe_phv_out_header_14 = phv_header_14; // @[executor.scala 240:25]
  assign io_pipe_phv_out_header_15 = phv_header_15; // @[executor.scala 240:25]
  assign io_pipe_phv_out_parse_current_state = phv_parse_current_state; // @[executor.scala 240:25]
  assign io_pipe_phv_out_parse_current_offset = phv_parse_current_offset; // @[executor.scala 240:25]
  assign io_pipe_phv_out_parse_transition_field = phv_parse_transition_field; // @[executor.scala 240:25]
  assign io_pipe_phv_out_next_processor_id = phv_next_processor_id; // @[executor.scala 240:25]
  assign io_pipe_phv_out_next_config_id = phv_next_config_id; // @[executor.scala 240:25]
  assign io_pipe_phv_out_is_valid_processor = phv_is_valid_processor; // @[executor.scala 240:25]
  assign io_offset_out_0 = phv_is_valid_processor ? field_offset : 8'h0; // @[executor.scala 250:43 executor.scala 261:34 executor.scala 268:34]
  assign io_offset_out_1 = phv_is_valid_processor ? field_offset_1 : 8'h0; // @[executor.scala 250:43 executor.scala 261:34 executor.scala 268:34]
  assign io_offset_out_2 = phv_is_valid_processor ? field_offset_2 : 8'h0; // @[executor.scala 250:43 executor.scala 261:34 executor.scala 268:34]
  assign io_offset_out_3 = phv_is_valid_processor ? field_offset_3 : 8'h0; // @[executor.scala 250:43 executor.scala 261:34 executor.scala 268:34]
  assign io_length_out_0 = phv_is_valid_processor ? _GEN_16 : 8'h0; // @[executor.scala 250:43 executor.scala 269:34]
  assign io_length_out_1 = phv_is_valid_processor ? _GEN_35 : 8'h0; // @[executor.scala 250:43 executor.scala 269:34]
  assign io_length_out_2 = phv_is_valid_processor ? _GEN_54 : 8'h0; // @[executor.scala 250:43 executor.scala 269:34]
  assign io_length_out_3 = phv_is_valid_processor ? _GEN_73 : 8'h0; // @[executor.scala 250:43 executor.scala 269:34]
  assign io_field_out_0 = field_0; // @[executor.scala 247:22]
  assign io_field_out_1 = field_1; // @[executor.scala 247:22]
  assign io_field_out_2 = field_2; // @[executor.scala 247:22]
  assign io_field_out_3 = field_3; // @[executor.scala 247:22]
  always @(posedge clock) begin
    phv_data_0 <= io_pipe_phv_in_data_0; // @[executor.scala 239:13]
    phv_data_1 <= io_pipe_phv_in_data_1; // @[executor.scala 239:13]
    phv_data_2 <= io_pipe_phv_in_data_2; // @[executor.scala 239:13]
    phv_data_3 <= io_pipe_phv_in_data_3; // @[executor.scala 239:13]
    phv_data_4 <= io_pipe_phv_in_data_4; // @[executor.scala 239:13]
    phv_data_5 <= io_pipe_phv_in_data_5; // @[executor.scala 239:13]
    phv_data_6 <= io_pipe_phv_in_data_6; // @[executor.scala 239:13]
    phv_data_7 <= io_pipe_phv_in_data_7; // @[executor.scala 239:13]
    phv_data_8 <= io_pipe_phv_in_data_8; // @[executor.scala 239:13]
    phv_data_9 <= io_pipe_phv_in_data_9; // @[executor.scala 239:13]
    phv_data_10 <= io_pipe_phv_in_data_10; // @[executor.scala 239:13]
    phv_data_11 <= io_pipe_phv_in_data_11; // @[executor.scala 239:13]
    phv_data_12 <= io_pipe_phv_in_data_12; // @[executor.scala 239:13]
    phv_data_13 <= io_pipe_phv_in_data_13; // @[executor.scala 239:13]
    phv_data_14 <= io_pipe_phv_in_data_14; // @[executor.scala 239:13]
    phv_data_15 <= io_pipe_phv_in_data_15; // @[executor.scala 239:13]
    phv_data_16 <= io_pipe_phv_in_data_16; // @[executor.scala 239:13]
    phv_data_17 <= io_pipe_phv_in_data_17; // @[executor.scala 239:13]
    phv_data_18 <= io_pipe_phv_in_data_18; // @[executor.scala 239:13]
    phv_data_19 <= io_pipe_phv_in_data_19; // @[executor.scala 239:13]
    phv_data_20 <= io_pipe_phv_in_data_20; // @[executor.scala 239:13]
    phv_data_21 <= io_pipe_phv_in_data_21; // @[executor.scala 239:13]
    phv_data_22 <= io_pipe_phv_in_data_22; // @[executor.scala 239:13]
    phv_data_23 <= io_pipe_phv_in_data_23; // @[executor.scala 239:13]
    phv_data_24 <= io_pipe_phv_in_data_24; // @[executor.scala 239:13]
    phv_data_25 <= io_pipe_phv_in_data_25; // @[executor.scala 239:13]
    phv_data_26 <= io_pipe_phv_in_data_26; // @[executor.scala 239:13]
    phv_data_27 <= io_pipe_phv_in_data_27; // @[executor.scala 239:13]
    phv_data_28 <= io_pipe_phv_in_data_28; // @[executor.scala 239:13]
    phv_data_29 <= io_pipe_phv_in_data_29; // @[executor.scala 239:13]
    phv_data_30 <= io_pipe_phv_in_data_30; // @[executor.scala 239:13]
    phv_data_31 <= io_pipe_phv_in_data_31; // @[executor.scala 239:13]
    phv_data_32 <= io_pipe_phv_in_data_32; // @[executor.scala 239:13]
    phv_data_33 <= io_pipe_phv_in_data_33; // @[executor.scala 239:13]
    phv_data_34 <= io_pipe_phv_in_data_34; // @[executor.scala 239:13]
    phv_data_35 <= io_pipe_phv_in_data_35; // @[executor.scala 239:13]
    phv_data_36 <= io_pipe_phv_in_data_36; // @[executor.scala 239:13]
    phv_data_37 <= io_pipe_phv_in_data_37; // @[executor.scala 239:13]
    phv_data_38 <= io_pipe_phv_in_data_38; // @[executor.scala 239:13]
    phv_data_39 <= io_pipe_phv_in_data_39; // @[executor.scala 239:13]
    phv_data_40 <= io_pipe_phv_in_data_40; // @[executor.scala 239:13]
    phv_data_41 <= io_pipe_phv_in_data_41; // @[executor.scala 239:13]
    phv_data_42 <= io_pipe_phv_in_data_42; // @[executor.scala 239:13]
    phv_data_43 <= io_pipe_phv_in_data_43; // @[executor.scala 239:13]
    phv_data_44 <= io_pipe_phv_in_data_44; // @[executor.scala 239:13]
    phv_data_45 <= io_pipe_phv_in_data_45; // @[executor.scala 239:13]
    phv_data_46 <= io_pipe_phv_in_data_46; // @[executor.scala 239:13]
    phv_data_47 <= io_pipe_phv_in_data_47; // @[executor.scala 239:13]
    phv_data_48 <= io_pipe_phv_in_data_48; // @[executor.scala 239:13]
    phv_data_49 <= io_pipe_phv_in_data_49; // @[executor.scala 239:13]
    phv_data_50 <= io_pipe_phv_in_data_50; // @[executor.scala 239:13]
    phv_data_51 <= io_pipe_phv_in_data_51; // @[executor.scala 239:13]
    phv_data_52 <= io_pipe_phv_in_data_52; // @[executor.scala 239:13]
    phv_data_53 <= io_pipe_phv_in_data_53; // @[executor.scala 239:13]
    phv_data_54 <= io_pipe_phv_in_data_54; // @[executor.scala 239:13]
    phv_data_55 <= io_pipe_phv_in_data_55; // @[executor.scala 239:13]
    phv_data_56 <= io_pipe_phv_in_data_56; // @[executor.scala 239:13]
    phv_data_57 <= io_pipe_phv_in_data_57; // @[executor.scala 239:13]
    phv_data_58 <= io_pipe_phv_in_data_58; // @[executor.scala 239:13]
    phv_data_59 <= io_pipe_phv_in_data_59; // @[executor.scala 239:13]
    phv_data_60 <= io_pipe_phv_in_data_60; // @[executor.scala 239:13]
    phv_data_61 <= io_pipe_phv_in_data_61; // @[executor.scala 239:13]
    phv_data_62 <= io_pipe_phv_in_data_62; // @[executor.scala 239:13]
    phv_data_63 <= io_pipe_phv_in_data_63; // @[executor.scala 239:13]
    phv_data_64 <= io_pipe_phv_in_data_64; // @[executor.scala 239:13]
    phv_data_65 <= io_pipe_phv_in_data_65; // @[executor.scala 239:13]
    phv_data_66 <= io_pipe_phv_in_data_66; // @[executor.scala 239:13]
    phv_data_67 <= io_pipe_phv_in_data_67; // @[executor.scala 239:13]
    phv_data_68 <= io_pipe_phv_in_data_68; // @[executor.scala 239:13]
    phv_data_69 <= io_pipe_phv_in_data_69; // @[executor.scala 239:13]
    phv_data_70 <= io_pipe_phv_in_data_70; // @[executor.scala 239:13]
    phv_data_71 <= io_pipe_phv_in_data_71; // @[executor.scala 239:13]
    phv_data_72 <= io_pipe_phv_in_data_72; // @[executor.scala 239:13]
    phv_data_73 <= io_pipe_phv_in_data_73; // @[executor.scala 239:13]
    phv_data_74 <= io_pipe_phv_in_data_74; // @[executor.scala 239:13]
    phv_data_75 <= io_pipe_phv_in_data_75; // @[executor.scala 239:13]
    phv_data_76 <= io_pipe_phv_in_data_76; // @[executor.scala 239:13]
    phv_data_77 <= io_pipe_phv_in_data_77; // @[executor.scala 239:13]
    phv_data_78 <= io_pipe_phv_in_data_78; // @[executor.scala 239:13]
    phv_data_79 <= io_pipe_phv_in_data_79; // @[executor.scala 239:13]
    phv_data_80 <= io_pipe_phv_in_data_80; // @[executor.scala 239:13]
    phv_data_81 <= io_pipe_phv_in_data_81; // @[executor.scala 239:13]
    phv_data_82 <= io_pipe_phv_in_data_82; // @[executor.scala 239:13]
    phv_data_83 <= io_pipe_phv_in_data_83; // @[executor.scala 239:13]
    phv_data_84 <= io_pipe_phv_in_data_84; // @[executor.scala 239:13]
    phv_data_85 <= io_pipe_phv_in_data_85; // @[executor.scala 239:13]
    phv_data_86 <= io_pipe_phv_in_data_86; // @[executor.scala 239:13]
    phv_data_87 <= io_pipe_phv_in_data_87; // @[executor.scala 239:13]
    phv_data_88 <= io_pipe_phv_in_data_88; // @[executor.scala 239:13]
    phv_data_89 <= io_pipe_phv_in_data_89; // @[executor.scala 239:13]
    phv_data_90 <= io_pipe_phv_in_data_90; // @[executor.scala 239:13]
    phv_data_91 <= io_pipe_phv_in_data_91; // @[executor.scala 239:13]
    phv_data_92 <= io_pipe_phv_in_data_92; // @[executor.scala 239:13]
    phv_data_93 <= io_pipe_phv_in_data_93; // @[executor.scala 239:13]
    phv_data_94 <= io_pipe_phv_in_data_94; // @[executor.scala 239:13]
    phv_data_95 <= io_pipe_phv_in_data_95; // @[executor.scala 239:13]
    phv_data_96 <= io_pipe_phv_in_data_96; // @[executor.scala 239:13]
    phv_data_97 <= io_pipe_phv_in_data_97; // @[executor.scala 239:13]
    phv_data_98 <= io_pipe_phv_in_data_98; // @[executor.scala 239:13]
    phv_data_99 <= io_pipe_phv_in_data_99; // @[executor.scala 239:13]
    phv_data_100 <= io_pipe_phv_in_data_100; // @[executor.scala 239:13]
    phv_data_101 <= io_pipe_phv_in_data_101; // @[executor.scala 239:13]
    phv_data_102 <= io_pipe_phv_in_data_102; // @[executor.scala 239:13]
    phv_data_103 <= io_pipe_phv_in_data_103; // @[executor.scala 239:13]
    phv_data_104 <= io_pipe_phv_in_data_104; // @[executor.scala 239:13]
    phv_data_105 <= io_pipe_phv_in_data_105; // @[executor.scala 239:13]
    phv_data_106 <= io_pipe_phv_in_data_106; // @[executor.scala 239:13]
    phv_data_107 <= io_pipe_phv_in_data_107; // @[executor.scala 239:13]
    phv_data_108 <= io_pipe_phv_in_data_108; // @[executor.scala 239:13]
    phv_data_109 <= io_pipe_phv_in_data_109; // @[executor.scala 239:13]
    phv_data_110 <= io_pipe_phv_in_data_110; // @[executor.scala 239:13]
    phv_data_111 <= io_pipe_phv_in_data_111; // @[executor.scala 239:13]
    phv_data_112 <= io_pipe_phv_in_data_112; // @[executor.scala 239:13]
    phv_data_113 <= io_pipe_phv_in_data_113; // @[executor.scala 239:13]
    phv_data_114 <= io_pipe_phv_in_data_114; // @[executor.scala 239:13]
    phv_data_115 <= io_pipe_phv_in_data_115; // @[executor.scala 239:13]
    phv_data_116 <= io_pipe_phv_in_data_116; // @[executor.scala 239:13]
    phv_data_117 <= io_pipe_phv_in_data_117; // @[executor.scala 239:13]
    phv_data_118 <= io_pipe_phv_in_data_118; // @[executor.scala 239:13]
    phv_data_119 <= io_pipe_phv_in_data_119; // @[executor.scala 239:13]
    phv_data_120 <= io_pipe_phv_in_data_120; // @[executor.scala 239:13]
    phv_data_121 <= io_pipe_phv_in_data_121; // @[executor.scala 239:13]
    phv_data_122 <= io_pipe_phv_in_data_122; // @[executor.scala 239:13]
    phv_data_123 <= io_pipe_phv_in_data_123; // @[executor.scala 239:13]
    phv_data_124 <= io_pipe_phv_in_data_124; // @[executor.scala 239:13]
    phv_data_125 <= io_pipe_phv_in_data_125; // @[executor.scala 239:13]
    phv_data_126 <= io_pipe_phv_in_data_126; // @[executor.scala 239:13]
    phv_data_127 <= io_pipe_phv_in_data_127; // @[executor.scala 239:13]
    phv_data_128 <= io_pipe_phv_in_data_128; // @[executor.scala 239:13]
    phv_data_129 <= io_pipe_phv_in_data_129; // @[executor.scala 239:13]
    phv_data_130 <= io_pipe_phv_in_data_130; // @[executor.scala 239:13]
    phv_data_131 <= io_pipe_phv_in_data_131; // @[executor.scala 239:13]
    phv_data_132 <= io_pipe_phv_in_data_132; // @[executor.scala 239:13]
    phv_data_133 <= io_pipe_phv_in_data_133; // @[executor.scala 239:13]
    phv_data_134 <= io_pipe_phv_in_data_134; // @[executor.scala 239:13]
    phv_data_135 <= io_pipe_phv_in_data_135; // @[executor.scala 239:13]
    phv_data_136 <= io_pipe_phv_in_data_136; // @[executor.scala 239:13]
    phv_data_137 <= io_pipe_phv_in_data_137; // @[executor.scala 239:13]
    phv_data_138 <= io_pipe_phv_in_data_138; // @[executor.scala 239:13]
    phv_data_139 <= io_pipe_phv_in_data_139; // @[executor.scala 239:13]
    phv_data_140 <= io_pipe_phv_in_data_140; // @[executor.scala 239:13]
    phv_data_141 <= io_pipe_phv_in_data_141; // @[executor.scala 239:13]
    phv_data_142 <= io_pipe_phv_in_data_142; // @[executor.scala 239:13]
    phv_data_143 <= io_pipe_phv_in_data_143; // @[executor.scala 239:13]
    phv_data_144 <= io_pipe_phv_in_data_144; // @[executor.scala 239:13]
    phv_data_145 <= io_pipe_phv_in_data_145; // @[executor.scala 239:13]
    phv_data_146 <= io_pipe_phv_in_data_146; // @[executor.scala 239:13]
    phv_data_147 <= io_pipe_phv_in_data_147; // @[executor.scala 239:13]
    phv_data_148 <= io_pipe_phv_in_data_148; // @[executor.scala 239:13]
    phv_data_149 <= io_pipe_phv_in_data_149; // @[executor.scala 239:13]
    phv_data_150 <= io_pipe_phv_in_data_150; // @[executor.scala 239:13]
    phv_data_151 <= io_pipe_phv_in_data_151; // @[executor.scala 239:13]
    phv_data_152 <= io_pipe_phv_in_data_152; // @[executor.scala 239:13]
    phv_data_153 <= io_pipe_phv_in_data_153; // @[executor.scala 239:13]
    phv_data_154 <= io_pipe_phv_in_data_154; // @[executor.scala 239:13]
    phv_data_155 <= io_pipe_phv_in_data_155; // @[executor.scala 239:13]
    phv_data_156 <= io_pipe_phv_in_data_156; // @[executor.scala 239:13]
    phv_data_157 <= io_pipe_phv_in_data_157; // @[executor.scala 239:13]
    phv_data_158 <= io_pipe_phv_in_data_158; // @[executor.scala 239:13]
    phv_data_159 <= io_pipe_phv_in_data_159; // @[executor.scala 239:13]
    phv_header_0 <= io_pipe_phv_in_header_0; // @[executor.scala 239:13]
    phv_header_1 <= io_pipe_phv_in_header_1; // @[executor.scala 239:13]
    phv_header_2 <= io_pipe_phv_in_header_2; // @[executor.scala 239:13]
    phv_header_3 <= io_pipe_phv_in_header_3; // @[executor.scala 239:13]
    phv_header_4 <= io_pipe_phv_in_header_4; // @[executor.scala 239:13]
    phv_header_5 <= io_pipe_phv_in_header_5; // @[executor.scala 239:13]
    phv_header_6 <= io_pipe_phv_in_header_6; // @[executor.scala 239:13]
    phv_header_7 <= io_pipe_phv_in_header_7; // @[executor.scala 239:13]
    phv_header_8 <= io_pipe_phv_in_header_8; // @[executor.scala 239:13]
    phv_header_9 <= io_pipe_phv_in_header_9; // @[executor.scala 239:13]
    phv_header_10 <= io_pipe_phv_in_header_10; // @[executor.scala 239:13]
    phv_header_11 <= io_pipe_phv_in_header_11; // @[executor.scala 239:13]
    phv_header_12 <= io_pipe_phv_in_header_12; // @[executor.scala 239:13]
    phv_header_13 <= io_pipe_phv_in_header_13; // @[executor.scala 239:13]
    phv_header_14 <= io_pipe_phv_in_header_14; // @[executor.scala 239:13]
    phv_header_15 <= io_pipe_phv_in_header_15; // @[executor.scala 239:13]
    phv_parse_current_state <= io_pipe_phv_in_parse_current_state; // @[executor.scala 239:13]
    phv_parse_current_offset <= io_pipe_phv_in_parse_current_offset; // @[executor.scala 239:13]
    phv_parse_transition_field <= io_pipe_phv_in_parse_transition_field; // @[executor.scala 239:13]
    phv_next_processor_id <= io_pipe_phv_in_next_processor_id; // @[executor.scala 239:13]
    phv_next_config_id <= io_pipe_phv_in_next_config_id; // @[executor.scala 239:13]
    phv_is_valid_processor <= io_pipe_phv_in_is_valid_processor; // @[executor.scala 239:13]
    vliw_0 <= io_vliw_in_0; // @[executor.scala 243:14]
    vliw_1 <= io_vliw_in_1; // @[executor.scala 243:14]
    vliw_2 <= io_vliw_in_2; // @[executor.scala 243:14]
    vliw_3 <= io_vliw_in_3; // @[executor.scala 243:14]
    field_0 <= io_field_in_0; // @[executor.scala 246:15]
    field_1 <= io_field_in_1; // @[executor.scala 246:15]
    field_2 <= io_field_in_2; // @[executor.scala 246:15]
    field_3 <= io_field_in_3; // @[executor.scala 246:15]
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
  phv_data_0 = _RAND_0[7:0];
  _RAND_1 = {1{`RANDOM}};
  phv_data_1 = _RAND_1[7:0];
  _RAND_2 = {1{`RANDOM}};
  phv_data_2 = _RAND_2[7:0];
  _RAND_3 = {1{`RANDOM}};
  phv_data_3 = _RAND_3[7:0];
  _RAND_4 = {1{`RANDOM}};
  phv_data_4 = _RAND_4[7:0];
  _RAND_5 = {1{`RANDOM}};
  phv_data_5 = _RAND_5[7:0];
  _RAND_6 = {1{`RANDOM}};
  phv_data_6 = _RAND_6[7:0];
  _RAND_7 = {1{`RANDOM}};
  phv_data_7 = _RAND_7[7:0];
  _RAND_8 = {1{`RANDOM}};
  phv_data_8 = _RAND_8[7:0];
  _RAND_9 = {1{`RANDOM}};
  phv_data_9 = _RAND_9[7:0];
  _RAND_10 = {1{`RANDOM}};
  phv_data_10 = _RAND_10[7:0];
  _RAND_11 = {1{`RANDOM}};
  phv_data_11 = _RAND_11[7:0];
  _RAND_12 = {1{`RANDOM}};
  phv_data_12 = _RAND_12[7:0];
  _RAND_13 = {1{`RANDOM}};
  phv_data_13 = _RAND_13[7:0];
  _RAND_14 = {1{`RANDOM}};
  phv_data_14 = _RAND_14[7:0];
  _RAND_15 = {1{`RANDOM}};
  phv_data_15 = _RAND_15[7:0];
  _RAND_16 = {1{`RANDOM}};
  phv_data_16 = _RAND_16[7:0];
  _RAND_17 = {1{`RANDOM}};
  phv_data_17 = _RAND_17[7:0];
  _RAND_18 = {1{`RANDOM}};
  phv_data_18 = _RAND_18[7:0];
  _RAND_19 = {1{`RANDOM}};
  phv_data_19 = _RAND_19[7:0];
  _RAND_20 = {1{`RANDOM}};
  phv_data_20 = _RAND_20[7:0];
  _RAND_21 = {1{`RANDOM}};
  phv_data_21 = _RAND_21[7:0];
  _RAND_22 = {1{`RANDOM}};
  phv_data_22 = _RAND_22[7:0];
  _RAND_23 = {1{`RANDOM}};
  phv_data_23 = _RAND_23[7:0];
  _RAND_24 = {1{`RANDOM}};
  phv_data_24 = _RAND_24[7:0];
  _RAND_25 = {1{`RANDOM}};
  phv_data_25 = _RAND_25[7:0];
  _RAND_26 = {1{`RANDOM}};
  phv_data_26 = _RAND_26[7:0];
  _RAND_27 = {1{`RANDOM}};
  phv_data_27 = _RAND_27[7:0];
  _RAND_28 = {1{`RANDOM}};
  phv_data_28 = _RAND_28[7:0];
  _RAND_29 = {1{`RANDOM}};
  phv_data_29 = _RAND_29[7:0];
  _RAND_30 = {1{`RANDOM}};
  phv_data_30 = _RAND_30[7:0];
  _RAND_31 = {1{`RANDOM}};
  phv_data_31 = _RAND_31[7:0];
  _RAND_32 = {1{`RANDOM}};
  phv_data_32 = _RAND_32[7:0];
  _RAND_33 = {1{`RANDOM}};
  phv_data_33 = _RAND_33[7:0];
  _RAND_34 = {1{`RANDOM}};
  phv_data_34 = _RAND_34[7:0];
  _RAND_35 = {1{`RANDOM}};
  phv_data_35 = _RAND_35[7:0];
  _RAND_36 = {1{`RANDOM}};
  phv_data_36 = _RAND_36[7:0];
  _RAND_37 = {1{`RANDOM}};
  phv_data_37 = _RAND_37[7:0];
  _RAND_38 = {1{`RANDOM}};
  phv_data_38 = _RAND_38[7:0];
  _RAND_39 = {1{`RANDOM}};
  phv_data_39 = _RAND_39[7:0];
  _RAND_40 = {1{`RANDOM}};
  phv_data_40 = _RAND_40[7:0];
  _RAND_41 = {1{`RANDOM}};
  phv_data_41 = _RAND_41[7:0];
  _RAND_42 = {1{`RANDOM}};
  phv_data_42 = _RAND_42[7:0];
  _RAND_43 = {1{`RANDOM}};
  phv_data_43 = _RAND_43[7:0];
  _RAND_44 = {1{`RANDOM}};
  phv_data_44 = _RAND_44[7:0];
  _RAND_45 = {1{`RANDOM}};
  phv_data_45 = _RAND_45[7:0];
  _RAND_46 = {1{`RANDOM}};
  phv_data_46 = _RAND_46[7:0];
  _RAND_47 = {1{`RANDOM}};
  phv_data_47 = _RAND_47[7:0];
  _RAND_48 = {1{`RANDOM}};
  phv_data_48 = _RAND_48[7:0];
  _RAND_49 = {1{`RANDOM}};
  phv_data_49 = _RAND_49[7:0];
  _RAND_50 = {1{`RANDOM}};
  phv_data_50 = _RAND_50[7:0];
  _RAND_51 = {1{`RANDOM}};
  phv_data_51 = _RAND_51[7:0];
  _RAND_52 = {1{`RANDOM}};
  phv_data_52 = _RAND_52[7:0];
  _RAND_53 = {1{`RANDOM}};
  phv_data_53 = _RAND_53[7:0];
  _RAND_54 = {1{`RANDOM}};
  phv_data_54 = _RAND_54[7:0];
  _RAND_55 = {1{`RANDOM}};
  phv_data_55 = _RAND_55[7:0];
  _RAND_56 = {1{`RANDOM}};
  phv_data_56 = _RAND_56[7:0];
  _RAND_57 = {1{`RANDOM}};
  phv_data_57 = _RAND_57[7:0];
  _RAND_58 = {1{`RANDOM}};
  phv_data_58 = _RAND_58[7:0];
  _RAND_59 = {1{`RANDOM}};
  phv_data_59 = _RAND_59[7:0];
  _RAND_60 = {1{`RANDOM}};
  phv_data_60 = _RAND_60[7:0];
  _RAND_61 = {1{`RANDOM}};
  phv_data_61 = _RAND_61[7:0];
  _RAND_62 = {1{`RANDOM}};
  phv_data_62 = _RAND_62[7:0];
  _RAND_63 = {1{`RANDOM}};
  phv_data_63 = _RAND_63[7:0];
  _RAND_64 = {1{`RANDOM}};
  phv_data_64 = _RAND_64[7:0];
  _RAND_65 = {1{`RANDOM}};
  phv_data_65 = _RAND_65[7:0];
  _RAND_66 = {1{`RANDOM}};
  phv_data_66 = _RAND_66[7:0];
  _RAND_67 = {1{`RANDOM}};
  phv_data_67 = _RAND_67[7:0];
  _RAND_68 = {1{`RANDOM}};
  phv_data_68 = _RAND_68[7:0];
  _RAND_69 = {1{`RANDOM}};
  phv_data_69 = _RAND_69[7:0];
  _RAND_70 = {1{`RANDOM}};
  phv_data_70 = _RAND_70[7:0];
  _RAND_71 = {1{`RANDOM}};
  phv_data_71 = _RAND_71[7:0];
  _RAND_72 = {1{`RANDOM}};
  phv_data_72 = _RAND_72[7:0];
  _RAND_73 = {1{`RANDOM}};
  phv_data_73 = _RAND_73[7:0];
  _RAND_74 = {1{`RANDOM}};
  phv_data_74 = _RAND_74[7:0];
  _RAND_75 = {1{`RANDOM}};
  phv_data_75 = _RAND_75[7:0];
  _RAND_76 = {1{`RANDOM}};
  phv_data_76 = _RAND_76[7:0];
  _RAND_77 = {1{`RANDOM}};
  phv_data_77 = _RAND_77[7:0];
  _RAND_78 = {1{`RANDOM}};
  phv_data_78 = _RAND_78[7:0];
  _RAND_79 = {1{`RANDOM}};
  phv_data_79 = _RAND_79[7:0];
  _RAND_80 = {1{`RANDOM}};
  phv_data_80 = _RAND_80[7:0];
  _RAND_81 = {1{`RANDOM}};
  phv_data_81 = _RAND_81[7:0];
  _RAND_82 = {1{`RANDOM}};
  phv_data_82 = _RAND_82[7:0];
  _RAND_83 = {1{`RANDOM}};
  phv_data_83 = _RAND_83[7:0];
  _RAND_84 = {1{`RANDOM}};
  phv_data_84 = _RAND_84[7:0];
  _RAND_85 = {1{`RANDOM}};
  phv_data_85 = _RAND_85[7:0];
  _RAND_86 = {1{`RANDOM}};
  phv_data_86 = _RAND_86[7:0];
  _RAND_87 = {1{`RANDOM}};
  phv_data_87 = _RAND_87[7:0];
  _RAND_88 = {1{`RANDOM}};
  phv_data_88 = _RAND_88[7:0];
  _RAND_89 = {1{`RANDOM}};
  phv_data_89 = _RAND_89[7:0];
  _RAND_90 = {1{`RANDOM}};
  phv_data_90 = _RAND_90[7:0];
  _RAND_91 = {1{`RANDOM}};
  phv_data_91 = _RAND_91[7:0];
  _RAND_92 = {1{`RANDOM}};
  phv_data_92 = _RAND_92[7:0];
  _RAND_93 = {1{`RANDOM}};
  phv_data_93 = _RAND_93[7:0];
  _RAND_94 = {1{`RANDOM}};
  phv_data_94 = _RAND_94[7:0];
  _RAND_95 = {1{`RANDOM}};
  phv_data_95 = _RAND_95[7:0];
  _RAND_96 = {1{`RANDOM}};
  phv_data_96 = _RAND_96[7:0];
  _RAND_97 = {1{`RANDOM}};
  phv_data_97 = _RAND_97[7:0];
  _RAND_98 = {1{`RANDOM}};
  phv_data_98 = _RAND_98[7:0];
  _RAND_99 = {1{`RANDOM}};
  phv_data_99 = _RAND_99[7:0];
  _RAND_100 = {1{`RANDOM}};
  phv_data_100 = _RAND_100[7:0];
  _RAND_101 = {1{`RANDOM}};
  phv_data_101 = _RAND_101[7:0];
  _RAND_102 = {1{`RANDOM}};
  phv_data_102 = _RAND_102[7:0];
  _RAND_103 = {1{`RANDOM}};
  phv_data_103 = _RAND_103[7:0];
  _RAND_104 = {1{`RANDOM}};
  phv_data_104 = _RAND_104[7:0];
  _RAND_105 = {1{`RANDOM}};
  phv_data_105 = _RAND_105[7:0];
  _RAND_106 = {1{`RANDOM}};
  phv_data_106 = _RAND_106[7:0];
  _RAND_107 = {1{`RANDOM}};
  phv_data_107 = _RAND_107[7:0];
  _RAND_108 = {1{`RANDOM}};
  phv_data_108 = _RAND_108[7:0];
  _RAND_109 = {1{`RANDOM}};
  phv_data_109 = _RAND_109[7:0];
  _RAND_110 = {1{`RANDOM}};
  phv_data_110 = _RAND_110[7:0];
  _RAND_111 = {1{`RANDOM}};
  phv_data_111 = _RAND_111[7:0];
  _RAND_112 = {1{`RANDOM}};
  phv_data_112 = _RAND_112[7:0];
  _RAND_113 = {1{`RANDOM}};
  phv_data_113 = _RAND_113[7:0];
  _RAND_114 = {1{`RANDOM}};
  phv_data_114 = _RAND_114[7:0];
  _RAND_115 = {1{`RANDOM}};
  phv_data_115 = _RAND_115[7:0];
  _RAND_116 = {1{`RANDOM}};
  phv_data_116 = _RAND_116[7:0];
  _RAND_117 = {1{`RANDOM}};
  phv_data_117 = _RAND_117[7:0];
  _RAND_118 = {1{`RANDOM}};
  phv_data_118 = _RAND_118[7:0];
  _RAND_119 = {1{`RANDOM}};
  phv_data_119 = _RAND_119[7:0];
  _RAND_120 = {1{`RANDOM}};
  phv_data_120 = _RAND_120[7:0];
  _RAND_121 = {1{`RANDOM}};
  phv_data_121 = _RAND_121[7:0];
  _RAND_122 = {1{`RANDOM}};
  phv_data_122 = _RAND_122[7:0];
  _RAND_123 = {1{`RANDOM}};
  phv_data_123 = _RAND_123[7:0];
  _RAND_124 = {1{`RANDOM}};
  phv_data_124 = _RAND_124[7:0];
  _RAND_125 = {1{`RANDOM}};
  phv_data_125 = _RAND_125[7:0];
  _RAND_126 = {1{`RANDOM}};
  phv_data_126 = _RAND_126[7:0];
  _RAND_127 = {1{`RANDOM}};
  phv_data_127 = _RAND_127[7:0];
  _RAND_128 = {1{`RANDOM}};
  phv_data_128 = _RAND_128[7:0];
  _RAND_129 = {1{`RANDOM}};
  phv_data_129 = _RAND_129[7:0];
  _RAND_130 = {1{`RANDOM}};
  phv_data_130 = _RAND_130[7:0];
  _RAND_131 = {1{`RANDOM}};
  phv_data_131 = _RAND_131[7:0];
  _RAND_132 = {1{`RANDOM}};
  phv_data_132 = _RAND_132[7:0];
  _RAND_133 = {1{`RANDOM}};
  phv_data_133 = _RAND_133[7:0];
  _RAND_134 = {1{`RANDOM}};
  phv_data_134 = _RAND_134[7:0];
  _RAND_135 = {1{`RANDOM}};
  phv_data_135 = _RAND_135[7:0];
  _RAND_136 = {1{`RANDOM}};
  phv_data_136 = _RAND_136[7:0];
  _RAND_137 = {1{`RANDOM}};
  phv_data_137 = _RAND_137[7:0];
  _RAND_138 = {1{`RANDOM}};
  phv_data_138 = _RAND_138[7:0];
  _RAND_139 = {1{`RANDOM}};
  phv_data_139 = _RAND_139[7:0];
  _RAND_140 = {1{`RANDOM}};
  phv_data_140 = _RAND_140[7:0];
  _RAND_141 = {1{`RANDOM}};
  phv_data_141 = _RAND_141[7:0];
  _RAND_142 = {1{`RANDOM}};
  phv_data_142 = _RAND_142[7:0];
  _RAND_143 = {1{`RANDOM}};
  phv_data_143 = _RAND_143[7:0];
  _RAND_144 = {1{`RANDOM}};
  phv_data_144 = _RAND_144[7:0];
  _RAND_145 = {1{`RANDOM}};
  phv_data_145 = _RAND_145[7:0];
  _RAND_146 = {1{`RANDOM}};
  phv_data_146 = _RAND_146[7:0];
  _RAND_147 = {1{`RANDOM}};
  phv_data_147 = _RAND_147[7:0];
  _RAND_148 = {1{`RANDOM}};
  phv_data_148 = _RAND_148[7:0];
  _RAND_149 = {1{`RANDOM}};
  phv_data_149 = _RAND_149[7:0];
  _RAND_150 = {1{`RANDOM}};
  phv_data_150 = _RAND_150[7:0];
  _RAND_151 = {1{`RANDOM}};
  phv_data_151 = _RAND_151[7:0];
  _RAND_152 = {1{`RANDOM}};
  phv_data_152 = _RAND_152[7:0];
  _RAND_153 = {1{`RANDOM}};
  phv_data_153 = _RAND_153[7:0];
  _RAND_154 = {1{`RANDOM}};
  phv_data_154 = _RAND_154[7:0];
  _RAND_155 = {1{`RANDOM}};
  phv_data_155 = _RAND_155[7:0];
  _RAND_156 = {1{`RANDOM}};
  phv_data_156 = _RAND_156[7:0];
  _RAND_157 = {1{`RANDOM}};
  phv_data_157 = _RAND_157[7:0];
  _RAND_158 = {1{`RANDOM}};
  phv_data_158 = _RAND_158[7:0];
  _RAND_159 = {1{`RANDOM}};
  phv_data_159 = _RAND_159[7:0];
  _RAND_160 = {1{`RANDOM}};
  phv_header_0 = _RAND_160[15:0];
  _RAND_161 = {1{`RANDOM}};
  phv_header_1 = _RAND_161[15:0];
  _RAND_162 = {1{`RANDOM}};
  phv_header_2 = _RAND_162[15:0];
  _RAND_163 = {1{`RANDOM}};
  phv_header_3 = _RAND_163[15:0];
  _RAND_164 = {1{`RANDOM}};
  phv_header_4 = _RAND_164[15:0];
  _RAND_165 = {1{`RANDOM}};
  phv_header_5 = _RAND_165[15:0];
  _RAND_166 = {1{`RANDOM}};
  phv_header_6 = _RAND_166[15:0];
  _RAND_167 = {1{`RANDOM}};
  phv_header_7 = _RAND_167[15:0];
  _RAND_168 = {1{`RANDOM}};
  phv_header_8 = _RAND_168[15:0];
  _RAND_169 = {1{`RANDOM}};
  phv_header_9 = _RAND_169[15:0];
  _RAND_170 = {1{`RANDOM}};
  phv_header_10 = _RAND_170[15:0];
  _RAND_171 = {1{`RANDOM}};
  phv_header_11 = _RAND_171[15:0];
  _RAND_172 = {1{`RANDOM}};
  phv_header_12 = _RAND_172[15:0];
  _RAND_173 = {1{`RANDOM}};
  phv_header_13 = _RAND_173[15:0];
  _RAND_174 = {1{`RANDOM}};
  phv_header_14 = _RAND_174[15:0];
  _RAND_175 = {1{`RANDOM}};
  phv_header_15 = _RAND_175[15:0];
  _RAND_176 = {1{`RANDOM}};
  phv_parse_current_state = _RAND_176[7:0];
  _RAND_177 = {1{`RANDOM}};
  phv_parse_current_offset = _RAND_177[7:0];
  _RAND_178 = {1{`RANDOM}};
  phv_parse_transition_field = _RAND_178[15:0];
  _RAND_179 = {1{`RANDOM}};
  phv_next_processor_id = _RAND_179[3:0];
  _RAND_180 = {1{`RANDOM}};
  phv_next_config_id = _RAND_180[0:0];
  _RAND_181 = {1{`RANDOM}};
  phv_is_valid_processor = _RAND_181[0:0];
  _RAND_182 = {1{`RANDOM}};
  vliw_0 = _RAND_182[31:0];
  _RAND_183 = {1{`RANDOM}};
  vliw_1 = _RAND_183[31:0];
  _RAND_184 = {1{`RANDOM}};
  vliw_2 = _RAND_184[31:0];
  _RAND_185 = {1{`RANDOM}};
  vliw_3 = _RAND_185[31:0];
  _RAND_186 = {2{`RANDOM}};
  field_0 = _RAND_186[63:0];
  _RAND_187 = {2{`RANDOM}};
  field_1 = _RAND_187[63:0];
  _RAND_188 = {2{`RANDOM}};
  field_2 = _RAND_188[63:0];
  _RAND_189 = {2{`RANDOM}};
  field_3 = _RAND_189[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
