module Parser(
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
  input  [1:0]  io_pipe_phv_in_next_processor_id,
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
  output [1:0]  io_pipe_phv_out_next_processor_id,
  output        io_pipe_phv_out_next_config_id,
  output        io_pipe_phv_out_is_valid_processor,
  input         io_mod_en,
  input         io_mod_last_mau_id_mod,
  input  [2:0]  io_mod_last_mau_id,
  input  [2:0]  io_mod_cs,
  input         io_mod_module_mod_state_id_mod,
  input  [7:0]  io_mod_module_mod_state_id,
  input         io_mod_module_mod_sram_w_cs,
  input  [7:0]  io_mod_module_mod_sram_w_addr,
  input  [63:0] io_mod_module_mod_sram_w_data
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  mau_0_clock; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_0; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_1; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_2; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_3; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_4; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_5; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_6; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_7; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_8; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_9; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_10; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_11; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_12; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_13; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_14; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_15; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_16; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_17; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_18; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_19; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_20; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_21; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_22; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_23; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_24; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_25; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_26; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_27; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_28; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_29; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_30; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_31; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_32; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_33; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_34; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_35; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_36; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_37; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_38; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_39; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_40; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_41; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_42; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_43; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_44; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_45; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_46; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_47; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_48; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_49; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_50; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_51; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_52; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_53; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_54; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_55; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_56; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_57; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_58; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_59; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_60; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_61; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_62; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_63; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_64; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_65; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_66; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_67; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_68; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_69; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_70; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_71; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_72; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_73; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_74; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_75; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_76; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_77; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_78; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_79; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_80; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_81; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_82; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_83; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_84; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_85; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_86; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_87; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_88; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_89; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_90; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_91; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_92; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_93; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_94; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_95; // @[parser.scala 21:25]
  wire [15:0] mau_0_io_pipe_phv_in_header_0; // @[parser.scala 21:25]
  wire [15:0] mau_0_io_pipe_phv_in_header_1; // @[parser.scala 21:25]
  wire [15:0] mau_0_io_pipe_phv_in_header_2; // @[parser.scala 21:25]
  wire [15:0] mau_0_io_pipe_phv_in_header_3; // @[parser.scala 21:25]
  wire [15:0] mau_0_io_pipe_phv_in_header_4; // @[parser.scala 21:25]
  wire [15:0] mau_0_io_pipe_phv_in_header_5; // @[parser.scala 21:25]
  wire [15:0] mau_0_io_pipe_phv_in_header_6; // @[parser.scala 21:25]
  wire [15:0] mau_0_io_pipe_phv_in_header_7; // @[parser.scala 21:25]
  wire [15:0] mau_0_io_pipe_phv_in_header_8; // @[parser.scala 21:25]
  wire [15:0] mau_0_io_pipe_phv_in_header_9; // @[parser.scala 21:25]
  wire [15:0] mau_0_io_pipe_phv_in_header_10; // @[parser.scala 21:25]
  wire [15:0] mau_0_io_pipe_phv_in_header_11; // @[parser.scala 21:25]
  wire [15:0] mau_0_io_pipe_phv_in_header_12; // @[parser.scala 21:25]
  wire [15:0] mau_0_io_pipe_phv_in_header_13; // @[parser.scala 21:25]
  wire [15:0] mau_0_io_pipe_phv_in_header_14; // @[parser.scala 21:25]
  wire [15:0] mau_0_io_pipe_phv_in_header_15; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_parse_current_state; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_in_parse_current_offset; // @[parser.scala 21:25]
  wire [15:0] mau_0_io_pipe_phv_in_parse_transition_field; // @[parser.scala 21:25]
  wire [1:0] mau_0_io_pipe_phv_in_next_processor_id; // @[parser.scala 21:25]
  wire  mau_0_io_pipe_phv_in_next_config_id; // @[parser.scala 21:25]
  wire  mau_0_io_pipe_phv_in_is_valid_processor; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_0; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_1; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_2; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_3; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_4; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_5; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_6; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_7; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_8; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_9; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_10; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_11; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_12; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_13; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_14; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_15; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_16; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_17; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_18; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_19; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_20; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_21; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_22; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_23; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_24; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_25; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_26; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_27; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_28; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_29; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_30; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_31; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_32; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_33; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_34; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_35; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_36; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_37; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_38; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_39; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_40; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_41; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_42; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_43; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_44; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_45; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_46; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_47; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_48; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_49; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_50; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_51; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_52; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_53; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_54; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_55; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_56; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_57; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_58; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_59; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_60; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_61; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_62; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_63; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_64; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_65; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_66; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_67; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_68; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_69; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_70; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_71; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_72; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_73; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_74; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_75; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_76; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_77; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_78; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_79; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_80; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_81; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_82; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_83; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_84; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_85; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_86; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_87; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_88; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_89; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_90; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_91; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_92; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_93; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_94; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_95; // @[parser.scala 21:25]
  wire [15:0] mau_0_io_pipe_phv_out_header_0; // @[parser.scala 21:25]
  wire [15:0] mau_0_io_pipe_phv_out_header_1; // @[parser.scala 21:25]
  wire [15:0] mau_0_io_pipe_phv_out_header_2; // @[parser.scala 21:25]
  wire [15:0] mau_0_io_pipe_phv_out_header_3; // @[parser.scala 21:25]
  wire [15:0] mau_0_io_pipe_phv_out_header_4; // @[parser.scala 21:25]
  wire [15:0] mau_0_io_pipe_phv_out_header_5; // @[parser.scala 21:25]
  wire [15:0] mau_0_io_pipe_phv_out_header_6; // @[parser.scala 21:25]
  wire [15:0] mau_0_io_pipe_phv_out_header_7; // @[parser.scala 21:25]
  wire [15:0] mau_0_io_pipe_phv_out_header_8; // @[parser.scala 21:25]
  wire [15:0] mau_0_io_pipe_phv_out_header_9; // @[parser.scala 21:25]
  wire [15:0] mau_0_io_pipe_phv_out_header_10; // @[parser.scala 21:25]
  wire [15:0] mau_0_io_pipe_phv_out_header_11; // @[parser.scala 21:25]
  wire [15:0] mau_0_io_pipe_phv_out_header_12; // @[parser.scala 21:25]
  wire [15:0] mau_0_io_pipe_phv_out_header_13; // @[parser.scala 21:25]
  wire [15:0] mau_0_io_pipe_phv_out_header_14; // @[parser.scala 21:25]
  wire [15:0] mau_0_io_pipe_phv_out_header_15; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_parse_current_state; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_pipe_phv_out_parse_current_offset; // @[parser.scala 21:25]
  wire [15:0] mau_0_io_pipe_phv_out_parse_transition_field; // @[parser.scala 21:25]
  wire [1:0] mau_0_io_pipe_phv_out_next_processor_id; // @[parser.scala 21:25]
  wire  mau_0_io_pipe_phv_out_next_config_id; // @[parser.scala 21:25]
  wire  mau_0_io_pipe_phv_out_is_valid_processor; // @[parser.scala 21:25]
  wire  mau_0_io_mod_state_id_mod; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_mod_state_id; // @[parser.scala 21:25]
  wire  mau_0_io_mod_sram_w_cs; // @[parser.scala 21:25]
  wire [7:0] mau_0_io_mod_sram_w_addr; // @[parser.scala 21:25]
  wire [63:0] mau_0_io_mod_sram_w_data; // @[parser.scala 21:25]
  wire  mau_1_clock; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_0; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_1; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_2; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_3; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_4; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_5; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_6; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_7; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_8; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_9; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_10; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_11; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_12; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_13; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_14; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_15; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_16; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_17; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_18; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_19; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_20; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_21; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_22; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_23; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_24; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_25; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_26; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_27; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_28; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_29; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_30; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_31; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_32; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_33; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_34; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_35; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_36; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_37; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_38; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_39; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_40; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_41; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_42; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_43; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_44; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_45; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_46; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_47; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_48; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_49; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_50; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_51; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_52; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_53; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_54; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_55; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_56; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_57; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_58; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_59; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_60; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_61; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_62; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_63; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_64; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_65; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_66; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_67; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_68; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_69; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_70; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_71; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_72; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_73; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_74; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_75; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_76; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_77; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_78; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_79; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_80; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_81; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_82; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_83; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_84; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_85; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_86; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_87; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_88; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_89; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_90; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_91; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_92; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_93; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_94; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_95; // @[parser.scala 21:25]
  wire [15:0] mau_1_io_pipe_phv_in_header_0; // @[parser.scala 21:25]
  wire [15:0] mau_1_io_pipe_phv_in_header_1; // @[parser.scala 21:25]
  wire [15:0] mau_1_io_pipe_phv_in_header_2; // @[parser.scala 21:25]
  wire [15:0] mau_1_io_pipe_phv_in_header_3; // @[parser.scala 21:25]
  wire [15:0] mau_1_io_pipe_phv_in_header_4; // @[parser.scala 21:25]
  wire [15:0] mau_1_io_pipe_phv_in_header_5; // @[parser.scala 21:25]
  wire [15:0] mau_1_io_pipe_phv_in_header_6; // @[parser.scala 21:25]
  wire [15:0] mau_1_io_pipe_phv_in_header_7; // @[parser.scala 21:25]
  wire [15:0] mau_1_io_pipe_phv_in_header_8; // @[parser.scala 21:25]
  wire [15:0] mau_1_io_pipe_phv_in_header_9; // @[parser.scala 21:25]
  wire [15:0] mau_1_io_pipe_phv_in_header_10; // @[parser.scala 21:25]
  wire [15:0] mau_1_io_pipe_phv_in_header_11; // @[parser.scala 21:25]
  wire [15:0] mau_1_io_pipe_phv_in_header_12; // @[parser.scala 21:25]
  wire [15:0] mau_1_io_pipe_phv_in_header_13; // @[parser.scala 21:25]
  wire [15:0] mau_1_io_pipe_phv_in_header_14; // @[parser.scala 21:25]
  wire [15:0] mau_1_io_pipe_phv_in_header_15; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_parse_current_state; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_in_parse_current_offset; // @[parser.scala 21:25]
  wire [15:0] mau_1_io_pipe_phv_in_parse_transition_field; // @[parser.scala 21:25]
  wire [1:0] mau_1_io_pipe_phv_in_next_processor_id; // @[parser.scala 21:25]
  wire  mau_1_io_pipe_phv_in_next_config_id; // @[parser.scala 21:25]
  wire  mau_1_io_pipe_phv_in_is_valid_processor; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_0; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_1; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_2; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_3; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_4; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_5; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_6; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_7; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_8; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_9; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_10; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_11; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_12; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_13; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_14; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_15; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_16; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_17; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_18; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_19; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_20; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_21; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_22; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_23; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_24; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_25; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_26; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_27; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_28; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_29; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_30; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_31; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_32; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_33; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_34; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_35; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_36; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_37; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_38; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_39; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_40; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_41; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_42; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_43; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_44; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_45; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_46; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_47; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_48; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_49; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_50; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_51; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_52; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_53; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_54; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_55; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_56; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_57; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_58; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_59; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_60; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_61; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_62; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_63; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_64; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_65; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_66; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_67; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_68; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_69; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_70; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_71; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_72; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_73; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_74; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_75; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_76; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_77; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_78; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_79; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_80; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_81; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_82; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_83; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_84; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_85; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_86; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_87; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_88; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_89; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_90; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_91; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_92; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_93; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_94; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_95; // @[parser.scala 21:25]
  wire [15:0] mau_1_io_pipe_phv_out_header_0; // @[parser.scala 21:25]
  wire [15:0] mau_1_io_pipe_phv_out_header_1; // @[parser.scala 21:25]
  wire [15:0] mau_1_io_pipe_phv_out_header_2; // @[parser.scala 21:25]
  wire [15:0] mau_1_io_pipe_phv_out_header_3; // @[parser.scala 21:25]
  wire [15:0] mau_1_io_pipe_phv_out_header_4; // @[parser.scala 21:25]
  wire [15:0] mau_1_io_pipe_phv_out_header_5; // @[parser.scala 21:25]
  wire [15:0] mau_1_io_pipe_phv_out_header_6; // @[parser.scala 21:25]
  wire [15:0] mau_1_io_pipe_phv_out_header_7; // @[parser.scala 21:25]
  wire [15:0] mau_1_io_pipe_phv_out_header_8; // @[parser.scala 21:25]
  wire [15:0] mau_1_io_pipe_phv_out_header_9; // @[parser.scala 21:25]
  wire [15:0] mau_1_io_pipe_phv_out_header_10; // @[parser.scala 21:25]
  wire [15:0] mau_1_io_pipe_phv_out_header_11; // @[parser.scala 21:25]
  wire [15:0] mau_1_io_pipe_phv_out_header_12; // @[parser.scala 21:25]
  wire [15:0] mau_1_io_pipe_phv_out_header_13; // @[parser.scala 21:25]
  wire [15:0] mau_1_io_pipe_phv_out_header_14; // @[parser.scala 21:25]
  wire [15:0] mau_1_io_pipe_phv_out_header_15; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_parse_current_state; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_pipe_phv_out_parse_current_offset; // @[parser.scala 21:25]
  wire [15:0] mau_1_io_pipe_phv_out_parse_transition_field; // @[parser.scala 21:25]
  wire [1:0] mau_1_io_pipe_phv_out_next_processor_id; // @[parser.scala 21:25]
  wire  mau_1_io_pipe_phv_out_next_config_id; // @[parser.scala 21:25]
  wire  mau_1_io_pipe_phv_out_is_valid_processor; // @[parser.scala 21:25]
  wire  mau_1_io_mod_state_id_mod; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_mod_state_id; // @[parser.scala 21:25]
  wire  mau_1_io_mod_sram_w_cs; // @[parser.scala 21:25]
  wire [7:0] mau_1_io_mod_sram_w_addr; // @[parser.scala 21:25]
  wire [63:0] mau_1_io_mod_sram_w_data; // @[parser.scala 21:25]
  wire  mau_2_clock; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_0; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_1; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_2; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_3; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_4; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_5; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_6; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_7; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_8; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_9; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_10; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_11; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_12; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_13; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_14; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_15; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_16; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_17; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_18; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_19; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_20; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_21; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_22; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_23; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_24; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_25; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_26; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_27; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_28; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_29; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_30; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_31; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_32; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_33; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_34; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_35; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_36; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_37; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_38; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_39; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_40; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_41; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_42; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_43; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_44; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_45; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_46; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_47; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_48; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_49; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_50; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_51; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_52; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_53; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_54; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_55; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_56; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_57; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_58; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_59; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_60; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_61; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_62; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_63; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_64; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_65; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_66; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_67; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_68; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_69; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_70; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_71; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_72; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_73; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_74; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_75; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_76; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_77; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_78; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_79; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_80; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_81; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_82; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_83; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_84; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_85; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_86; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_87; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_88; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_89; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_90; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_91; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_92; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_93; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_94; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_95; // @[parser.scala 21:25]
  wire [15:0] mau_2_io_pipe_phv_in_header_0; // @[parser.scala 21:25]
  wire [15:0] mau_2_io_pipe_phv_in_header_1; // @[parser.scala 21:25]
  wire [15:0] mau_2_io_pipe_phv_in_header_2; // @[parser.scala 21:25]
  wire [15:0] mau_2_io_pipe_phv_in_header_3; // @[parser.scala 21:25]
  wire [15:0] mau_2_io_pipe_phv_in_header_4; // @[parser.scala 21:25]
  wire [15:0] mau_2_io_pipe_phv_in_header_5; // @[parser.scala 21:25]
  wire [15:0] mau_2_io_pipe_phv_in_header_6; // @[parser.scala 21:25]
  wire [15:0] mau_2_io_pipe_phv_in_header_7; // @[parser.scala 21:25]
  wire [15:0] mau_2_io_pipe_phv_in_header_8; // @[parser.scala 21:25]
  wire [15:0] mau_2_io_pipe_phv_in_header_9; // @[parser.scala 21:25]
  wire [15:0] mau_2_io_pipe_phv_in_header_10; // @[parser.scala 21:25]
  wire [15:0] mau_2_io_pipe_phv_in_header_11; // @[parser.scala 21:25]
  wire [15:0] mau_2_io_pipe_phv_in_header_12; // @[parser.scala 21:25]
  wire [15:0] mau_2_io_pipe_phv_in_header_13; // @[parser.scala 21:25]
  wire [15:0] mau_2_io_pipe_phv_in_header_14; // @[parser.scala 21:25]
  wire [15:0] mau_2_io_pipe_phv_in_header_15; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_parse_current_state; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_in_parse_current_offset; // @[parser.scala 21:25]
  wire [15:0] mau_2_io_pipe_phv_in_parse_transition_field; // @[parser.scala 21:25]
  wire [1:0] mau_2_io_pipe_phv_in_next_processor_id; // @[parser.scala 21:25]
  wire  mau_2_io_pipe_phv_in_next_config_id; // @[parser.scala 21:25]
  wire  mau_2_io_pipe_phv_in_is_valid_processor; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_0; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_1; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_2; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_3; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_4; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_5; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_6; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_7; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_8; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_9; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_10; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_11; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_12; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_13; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_14; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_15; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_16; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_17; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_18; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_19; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_20; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_21; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_22; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_23; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_24; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_25; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_26; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_27; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_28; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_29; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_30; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_31; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_32; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_33; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_34; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_35; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_36; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_37; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_38; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_39; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_40; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_41; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_42; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_43; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_44; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_45; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_46; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_47; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_48; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_49; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_50; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_51; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_52; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_53; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_54; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_55; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_56; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_57; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_58; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_59; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_60; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_61; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_62; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_63; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_64; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_65; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_66; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_67; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_68; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_69; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_70; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_71; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_72; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_73; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_74; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_75; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_76; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_77; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_78; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_79; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_80; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_81; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_82; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_83; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_84; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_85; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_86; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_87; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_88; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_89; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_90; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_91; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_92; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_93; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_94; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_95; // @[parser.scala 21:25]
  wire [15:0] mau_2_io_pipe_phv_out_header_0; // @[parser.scala 21:25]
  wire [15:0] mau_2_io_pipe_phv_out_header_1; // @[parser.scala 21:25]
  wire [15:0] mau_2_io_pipe_phv_out_header_2; // @[parser.scala 21:25]
  wire [15:0] mau_2_io_pipe_phv_out_header_3; // @[parser.scala 21:25]
  wire [15:0] mau_2_io_pipe_phv_out_header_4; // @[parser.scala 21:25]
  wire [15:0] mau_2_io_pipe_phv_out_header_5; // @[parser.scala 21:25]
  wire [15:0] mau_2_io_pipe_phv_out_header_6; // @[parser.scala 21:25]
  wire [15:0] mau_2_io_pipe_phv_out_header_7; // @[parser.scala 21:25]
  wire [15:0] mau_2_io_pipe_phv_out_header_8; // @[parser.scala 21:25]
  wire [15:0] mau_2_io_pipe_phv_out_header_9; // @[parser.scala 21:25]
  wire [15:0] mau_2_io_pipe_phv_out_header_10; // @[parser.scala 21:25]
  wire [15:0] mau_2_io_pipe_phv_out_header_11; // @[parser.scala 21:25]
  wire [15:0] mau_2_io_pipe_phv_out_header_12; // @[parser.scala 21:25]
  wire [15:0] mau_2_io_pipe_phv_out_header_13; // @[parser.scala 21:25]
  wire [15:0] mau_2_io_pipe_phv_out_header_14; // @[parser.scala 21:25]
  wire [15:0] mau_2_io_pipe_phv_out_header_15; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_parse_current_state; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_pipe_phv_out_parse_current_offset; // @[parser.scala 21:25]
  wire [15:0] mau_2_io_pipe_phv_out_parse_transition_field; // @[parser.scala 21:25]
  wire [1:0] mau_2_io_pipe_phv_out_next_processor_id; // @[parser.scala 21:25]
  wire  mau_2_io_pipe_phv_out_next_config_id; // @[parser.scala 21:25]
  wire  mau_2_io_pipe_phv_out_is_valid_processor; // @[parser.scala 21:25]
  wire  mau_2_io_mod_state_id_mod; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_mod_state_id; // @[parser.scala 21:25]
  wire  mau_2_io_mod_sram_w_cs; // @[parser.scala 21:25]
  wire [7:0] mau_2_io_mod_sram_w_addr; // @[parser.scala 21:25]
  wire [63:0] mau_2_io_mod_sram_w_data; // @[parser.scala 21:25]
  wire  mau_3_clock; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_0; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_1; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_2; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_3; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_4; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_5; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_6; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_7; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_8; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_9; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_10; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_11; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_12; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_13; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_14; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_15; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_16; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_17; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_18; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_19; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_20; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_21; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_22; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_23; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_24; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_25; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_26; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_27; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_28; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_29; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_30; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_31; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_32; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_33; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_34; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_35; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_36; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_37; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_38; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_39; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_40; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_41; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_42; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_43; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_44; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_45; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_46; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_47; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_48; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_49; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_50; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_51; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_52; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_53; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_54; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_55; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_56; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_57; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_58; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_59; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_60; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_61; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_62; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_63; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_64; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_65; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_66; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_67; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_68; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_69; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_70; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_71; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_72; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_73; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_74; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_75; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_76; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_77; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_78; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_79; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_80; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_81; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_82; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_83; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_84; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_85; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_86; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_87; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_88; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_89; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_90; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_91; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_92; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_93; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_94; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_95; // @[parser.scala 21:25]
  wire [15:0] mau_3_io_pipe_phv_in_header_0; // @[parser.scala 21:25]
  wire [15:0] mau_3_io_pipe_phv_in_header_1; // @[parser.scala 21:25]
  wire [15:0] mau_3_io_pipe_phv_in_header_2; // @[parser.scala 21:25]
  wire [15:0] mau_3_io_pipe_phv_in_header_3; // @[parser.scala 21:25]
  wire [15:0] mau_3_io_pipe_phv_in_header_4; // @[parser.scala 21:25]
  wire [15:0] mau_3_io_pipe_phv_in_header_5; // @[parser.scala 21:25]
  wire [15:0] mau_3_io_pipe_phv_in_header_6; // @[parser.scala 21:25]
  wire [15:0] mau_3_io_pipe_phv_in_header_7; // @[parser.scala 21:25]
  wire [15:0] mau_3_io_pipe_phv_in_header_8; // @[parser.scala 21:25]
  wire [15:0] mau_3_io_pipe_phv_in_header_9; // @[parser.scala 21:25]
  wire [15:0] mau_3_io_pipe_phv_in_header_10; // @[parser.scala 21:25]
  wire [15:0] mau_3_io_pipe_phv_in_header_11; // @[parser.scala 21:25]
  wire [15:0] mau_3_io_pipe_phv_in_header_12; // @[parser.scala 21:25]
  wire [15:0] mau_3_io_pipe_phv_in_header_13; // @[parser.scala 21:25]
  wire [15:0] mau_3_io_pipe_phv_in_header_14; // @[parser.scala 21:25]
  wire [15:0] mau_3_io_pipe_phv_in_header_15; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_parse_current_state; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_in_parse_current_offset; // @[parser.scala 21:25]
  wire [15:0] mau_3_io_pipe_phv_in_parse_transition_field; // @[parser.scala 21:25]
  wire [1:0] mau_3_io_pipe_phv_in_next_processor_id; // @[parser.scala 21:25]
  wire  mau_3_io_pipe_phv_in_next_config_id; // @[parser.scala 21:25]
  wire  mau_3_io_pipe_phv_in_is_valid_processor; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_0; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_1; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_2; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_3; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_4; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_5; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_6; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_7; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_8; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_9; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_10; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_11; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_12; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_13; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_14; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_15; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_16; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_17; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_18; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_19; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_20; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_21; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_22; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_23; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_24; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_25; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_26; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_27; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_28; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_29; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_30; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_31; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_32; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_33; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_34; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_35; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_36; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_37; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_38; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_39; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_40; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_41; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_42; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_43; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_44; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_45; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_46; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_47; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_48; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_49; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_50; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_51; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_52; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_53; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_54; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_55; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_56; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_57; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_58; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_59; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_60; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_61; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_62; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_63; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_64; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_65; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_66; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_67; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_68; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_69; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_70; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_71; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_72; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_73; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_74; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_75; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_76; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_77; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_78; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_79; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_80; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_81; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_82; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_83; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_84; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_85; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_86; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_87; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_88; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_89; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_90; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_91; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_92; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_93; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_94; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_95; // @[parser.scala 21:25]
  wire [15:0] mau_3_io_pipe_phv_out_header_0; // @[parser.scala 21:25]
  wire [15:0] mau_3_io_pipe_phv_out_header_1; // @[parser.scala 21:25]
  wire [15:0] mau_3_io_pipe_phv_out_header_2; // @[parser.scala 21:25]
  wire [15:0] mau_3_io_pipe_phv_out_header_3; // @[parser.scala 21:25]
  wire [15:0] mau_3_io_pipe_phv_out_header_4; // @[parser.scala 21:25]
  wire [15:0] mau_3_io_pipe_phv_out_header_5; // @[parser.scala 21:25]
  wire [15:0] mau_3_io_pipe_phv_out_header_6; // @[parser.scala 21:25]
  wire [15:0] mau_3_io_pipe_phv_out_header_7; // @[parser.scala 21:25]
  wire [15:0] mau_3_io_pipe_phv_out_header_8; // @[parser.scala 21:25]
  wire [15:0] mau_3_io_pipe_phv_out_header_9; // @[parser.scala 21:25]
  wire [15:0] mau_3_io_pipe_phv_out_header_10; // @[parser.scala 21:25]
  wire [15:0] mau_3_io_pipe_phv_out_header_11; // @[parser.scala 21:25]
  wire [15:0] mau_3_io_pipe_phv_out_header_12; // @[parser.scala 21:25]
  wire [15:0] mau_3_io_pipe_phv_out_header_13; // @[parser.scala 21:25]
  wire [15:0] mau_3_io_pipe_phv_out_header_14; // @[parser.scala 21:25]
  wire [15:0] mau_3_io_pipe_phv_out_header_15; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_parse_current_state; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_pipe_phv_out_parse_current_offset; // @[parser.scala 21:25]
  wire [15:0] mau_3_io_pipe_phv_out_parse_transition_field; // @[parser.scala 21:25]
  wire [1:0] mau_3_io_pipe_phv_out_next_processor_id; // @[parser.scala 21:25]
  wire  mau_3_io_pipe_phv_out_next_config_id; // @[parser.scala 21:25]
  wire  mau_3_io_pipe_phv_out_is_valid_processor; // @[parser.scala 21:25]
  wire  mau_3_io_mod_state_id_mod; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_mod_state_id; // @[parser.scala 21:25]
  wire  mau_3_io_mod_sram_w_cs; // @[parser.scala 21:25]
  wire [7:0] mau_3_io_mod_sram_w_addr; // @[parser.scala 21:25]
  wire [63:0] mau_3_io_mod_sram_w_data; // @[parser.scala 21:25]
  wire  mau_4_clock; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_0; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_1; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_2; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_3; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_4; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_5; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_6; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_7; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_8; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_9; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_10; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_11; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_12; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_13; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_14; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_15; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_16; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_17; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_18; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_19; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_20; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_21; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_22; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_23; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_24; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_25; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_26; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_27; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_28; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_29; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_30; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_31; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_32; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_33; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_34; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_35; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_36; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_37; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_38; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_39; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_40; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_41; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_42; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_43; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_44; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_45; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_46; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_47; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_48; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_49; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_50; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_51; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_52; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_53; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_54; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_55; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_56; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_57; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_58; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_59; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_60; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_61; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_62; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_63; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_64; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_65; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_66; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_67; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_68; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_69; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_70; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_71; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_72; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_73; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_74; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_75; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_76; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_77; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_78; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_79; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_80; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_81; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_82; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_83; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_84; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_85; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_86; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_87; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_88; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_89; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_90; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_91; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_92; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_93; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_94; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_95; // @[parser.scala 21:25]
  wire [15:0] mau_4_io_pipe_phv_in_header_0; // @[parser.scala 21:25]
  wire [15:0] mau_4_io_pipe_phv_in_header_1; // @[parser.scala 21:25]
  wire [15:0] mau_4_io_pipe_phv_in_header_2; // @[parser.scala 21:25]
  wire [15:0] mau_4_io_pipe_phv_in_header_3; // @[parser.scala 21:25]
  wire [15:0] mau_4_io_pipe_phv_in_header_4; // @[parser.scala 21:25]
  wire [15:0] mau_4_io_pipe_phv_in_header_5; // @[parser.scala 21:25]
  wire [15:0] mau_4_io_pipe_phv_in_header_6; // @[parser.scala 21:25]
  wire [15:0] mau_4_io_pipe_phv_in_header_7; // @[parser.scala 21:25]
  wire [15:0] mau_4_io_pipe_phv_in_header_8; // @[parser.scala 21:25]
  wire [15:0] mau_4_io_pipe_phv_in_header_9; // @[parser.scala 21:25]
  wire [15:0] mau_4_io_pipe_phv_in_header_10; // @[parser.scala 21:25]
  wire [15:0] mau_4_io_pipe_phv_in_header_11; // @[parser.scala 21:25]
  wire [15:0] mau_4_io_pipe_phv_in_header_12; // @[parser.scala 21:25]
  wire [15:0] mau_4_io_pipe_phv_in_header_13; // @[parser.scala 21:25]
  wire [15:0] mau_4_io_pipe_phv_in_header_14; // @[parser.scala 21:25]
  wire [15:0] mau_4_io_pipe_phv_in_header_15; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_parse_current_state; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_in_parse_current_offset; // @[parser.scala 21:25]
  wire [15:0] mau_4_io_pipe_phv_in_parse_transition_field; // @[parser.scala 21:25]
  wire [1:0] mau_4_io_pipe_phv_in_next_processor_id; // @[parser.scala 21:25]
  wire  mau_4_io_pipe_phv_in_next_config_id; // @[parser.scala 21:25]
  wire  mau_4_io_pipe_phv_in_is_valid_processor; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_0; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_1; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_2; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_3; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_4; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_5; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_6; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_7; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_8; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_9; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_10; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_11; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_12; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_13; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_14; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_15; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_16; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_17; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_18; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_19; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_20; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_21; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_22; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_23; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_24; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_25; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_26; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_27; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_28; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_29; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_30; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_31; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_32; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_33; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_34; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_35; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_36; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_37; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_38; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_39; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_40; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_41; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_42; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_43; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_44; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_45; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_46; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_47; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_48; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_49; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_50; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_51; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_52; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_53; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_54; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_55; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_56; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_57; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_58; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_59; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_60; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_61; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_62; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_63; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_64; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_65; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_66; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_67; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_68; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_69; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_70; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_71; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_72; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_73; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_74; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_75; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_76; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_77; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_78; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_79; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_80; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_81; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_82; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_83; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_84; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_85; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_86; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_87; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_88; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_89; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_90; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_91; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_92; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_93; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_94; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_95; // @[parser.scala 21:25]
  wire [15:0] mau_4_io_pipe_phv_out_header_0; // @[parser.scala 21:25]
  wire [15:0] mau_4_io_pipe_phv_out_header_1; // @[parser.scala 21:25]
  wire [15:0] mau_4_io_pipe_phv_out_header_2; // @[parser.scala 21:25]
  wire [15:0] mau_4_io_pipe_phv_out_header_3; // @[parser.scala 21:25]
  wire [15:0] mau_4_io_pipe_phv_out_header_4; // @[parser.scala 21:25]
  wire [15:0] mau_4_io_pipe_phv_out_header_5; // @[parser.scala 21:25]
  wire [15:0] mau_4_io_pipe_phv_out_header_6; // @[parser.scala 21:25]
  wire [15:0] mau_4_io_pipe_phv_out_header_7; // @[parser.scala 21:25]
  wire [15:0] mau_4_io_pipe_phv_out_header_8; // @[parser.scala 21:25]
  wire [15:0] mau_4_io_pipe_phv_out_header_9; // @[parser.scala 21:25]
  wire [15:0] mau_4_io_pipe_phv_out_header_10; // @[parser.scala 21:25]
  wire [15:0] mau_4_io_pipe_phv_out_header_11; // @[parser.scala 21:25]
  wire [15:0] mau_4_io_pipe_phv_out_header_12; // @[parser.scala 21:25]
  wire [15:0] mau_4_io_pipe_phv_out_header_13; // @[parser.scala 21:25]
  wire [15:0] mau_4_io_pipe_phv_out_header_14; // @[parser.scala 21:25]
  wire [15:0] mau_4_io_pipe_phv_out_header_15; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_parse_current_state; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_pipe_phv_out_parse_current_offset; // @[parser.scala 21:25]
  wire [15:0] mau_4_io_pipe_phv_out_parse_transition_field; // @[parser.scala 21:25]
  wire [1:0] mau_4_io_pipe_phv_out_next_processor_id; // @[parser.scala 21:25]
  wire  mau_4_io_pipe_phv_out_next_config_id; // @[parser.scala 21:25]
  wire  mau_4_io_pipe_phv_out_is_valid_processor; // @[parser.scala 21:25]
  wire  mau_4_io_mod_state_id_mod; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_mod_state_id; // @[parser.scala 21:25]
  wire  mau_4_io_mod_sram_w_cs; // @[parser.scala 21:25]
  wire [7:0] mau_4_io_mod_sram_w_addr; // @[parser.scala 21:25]
  wire [63:0] mau_4_io_mod_sram_w_data; // @[parser.scala 21:25]
  wire  mau_5_clock; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_0; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_1; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_2; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_3; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_4; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_5; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_6; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_7; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_8; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_9; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_10; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_11; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_12; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_13; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_14; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_15; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_16; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_17; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_18; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_19; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_20; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_21; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_22; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_23; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_24; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_25; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_26; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_27; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_28; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_29; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_30; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_31; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_32; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_33; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_34; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_35; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_36; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_37; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_38; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_39; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_40; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_41; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_42; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_43; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_44; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_45; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_46; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_47; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_48; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_49; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_50; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_51; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_52; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_53; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_54; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_55; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_56; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_57; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_58; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_59; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_60; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_61; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_62; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_63; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_64; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_65; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_66; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_67; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_68; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_69; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_70; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_71; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_72; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_73; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_74; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_75; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_76; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_77; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_78; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_79; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_80; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_81; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_82; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_83; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_84; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_85; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_86; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_87; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_88; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_89; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_90; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_91; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_92; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_93; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_94; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_95; // @[parser.scala 21:25]
  wire [15:0] mau_5_io_pipe_phv_in_header_0; // @[parser.scala 21:25]
  wire [15:0] mau_5_io_pipe_phv_in_header_1; // @[parser.scala 21:25]
  wire [15:0] mau_5_io_pipe_phv_in_header_2; // @[parser.scala 21:25]
  wire [15:0] mau_5_io_pipe_phv_in_header_3; // @[parser.scala 21:25]
  wire [15:0] mau_5_io_pipe_phv_in_header_4; // @[parser.scala 21:25]
  wire [15:0] mau_5_io_pipe_phv_in_header_5; // @[parser.scala 21:25]
  wire [15:0] mau_5_io_pipe_phv_in_header_6; // @[parser.scala 21:25]
  wire [15:0] mau_5_io_pipe_phv_in_header_7; // @[parser.scala 21:25]
  wire [15:0] mau_5_io_pipe_phv_in_header_8; // @[parser.scala 21:25]
  wire [15:0] mau_5_io_pipe_phv_in_header_9; // @[parser.scala 21:25]
  wire [15:0] mau_5_io_pipe_phv_in_header_10; // @[parser.scala 21:25]
  wire [15:0] mau_5_io_pipe_phv_in_header_11; // @[parser.scala 21:25]
  wire [15:0] mau_5_io_pipe_phv_in_header_12; // @[parser.scala 21:25]
  wire [15:0] mau_5_io_pipe_phv_in_header_13; // @[parser.scala 21:25]
  wire [15:0] mau_5_io_pipe_phv_in_header_14; // @[parser.scala 21:25]
  wire [15:0] mau_5_io_pipe_phv_in_header_15; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_parse_current_state; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_in_parse_current_offset; // @[parser.scala 21:25]
  wire [15:0] mau_5_io_pipe_phv_in_parse_transition_field; // @[parser.scala 21:25]
  wire [1:0] mau_5_io_pipe_phv_in_next_processor_id; // @[parser.scala 21:25]
  wire  mau_5_io_pipe_phv_in_next_config_id; // @[parser.scala 21:25]
  wire  mau_5_io_pipe_phv_in_is_valid_processor; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_0; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_1; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_2; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_3; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_4; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_5; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_6; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_7; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_8; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_9; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_10; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_11; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_12; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_13; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_14; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_15; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_16; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_17; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_18; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_19; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_20; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_21; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_22; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_23; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_24; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_25; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_26; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_27; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_28; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_29; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_30; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_31; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_32; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_33; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_34; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_35; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_36; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_37; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_38; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_39; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_40; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_41; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_42; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_43; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_44; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_45; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_46; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_47; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_48; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_49; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_50; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_51; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_52; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_53; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_54; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_55; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_56; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_57; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_58; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_59; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_60; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_61; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_62; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_63; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_64; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_65; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_66; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_67; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_68; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_69; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_70; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_71; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_72; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_73; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_74; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_75; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_76; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_77; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_78; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_79; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_80; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_81; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_82; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_83; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_84; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_85; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_86; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_87; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_88; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_89; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_90; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_91; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_92; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_93; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_94; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_95; // @[parser.scala 21:25]
  wire [15:0] mau_5_io_pipe_phv_out_header_0; // @[parser.scala 21:25]
  wire [15:0] mau_5_io_pipe_phv_out_header_1; // @[parser.scala 21:25]
  wire [15:0] mau_5_io_pipe_phv_out_header_2; // @[parser.scala 21:25]
  wire [15:0] mau_5_io_pipe_phv_out_header_3; // @[parser.scala 21:25]
  wire [15:0] mau_5_io_pipe_phv_out_header_4; // @[parser.scala 21:25]
  wire [15:0] mau_5_io_pipe_phv_out_header_5; // @[parser.scala 21:25]
  wire [15:0] mau_5_io_pipe_phv_out_header_6; // @[parser.scala 21:25]
  wire [15:0] mau_5_io_pipe_phv_out_header_7; // @[parser.scala 21:25]
  wire [15:0] mau_5_io_pipe_phv_out_header_8; // @[parser.scala 21:25]
  wire [15:0] mau_5_io_pipe_phv_out_header_9; // @[parser.scala 21:25]
  wire [15:0] mau_5_io_pipe_phv_out_header_10; // @[parser.scala 21:25]
  wire [15:0] mau_5_io_pipe_phv_out_header_11; // @[parser.scala 21:25]
  wire [15:0] mau_5_io_pipe_phv_out_header_12; // @[parser.scala 21:25]
  wire [15:0] mau_5_io_pipe_phv_out_header_13; // @[parser.scala 21:25]
  wire [15:0] mau_5_io_pipe_phv_out_header_14; // @[parser.scala 21:25]
  wire [15:0] mau_5_io_pipe_phv_out_header_15; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_parse_current_state; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_pipe_phv_out_parse_current_offset; // @[parser.scala 21:25]
  wire [15:0] mau_5_io_pipe_phv_out_parse_transition_field; // @[parser.scala 21:25]
  wire [1:0] mau_5_io_pipe_phv_out_next_processor_id; // @[parser.scala 21:25]
  wire  mau_5_io_pipe_phv_out_next_config_id; // @[parser.scala 21:25]
  wire  mau_5_io_pipe_phv_out_is_valid_processor; // @[parser.scala 21:25]
  wire  mau_5_io_mod_state_id_mod; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_mod_state_id; // @[parser.scala 21:25]
  wire  mau_5_io_mod_sram_w_cs; // @[parser.scala 21:25]
  wire [7:0] mau_5_io_mod_sram_w_addr; // @[parser.scala 21:25]
  wire [63:0] mau_5_io_mod_sram_w_data; // @[parser.scala 21:25]
  wire  mau_6_clock; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_0; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_1; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_2; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_3; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_4; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_5; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_6; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_7; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_8; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_9; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_10; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_11; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_12; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_13; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_14; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_15; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_16; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_17; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_18; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_19; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_20; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_21; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_22; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_23; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_24; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_25; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_26; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_27; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_28; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_29; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_30; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_31; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_32; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_33; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_34; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_35; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_36; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_37; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_38; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_39; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_40; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_41; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_42; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_43; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_44; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_45; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_46; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_47; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_48; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_49; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_50; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_51; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_52; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_53; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_54; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_55; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_56; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_57; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_58; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_59; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_60; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_61; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_62; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_63; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_64; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_65; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_66; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_67; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_68; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_69; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_70; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_71; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_72; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_73; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_74; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_75; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_76; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_77; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_78; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_79; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_80; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_81; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_82; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_83; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_84; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_85; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_86; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_87; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_88; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_89; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_90; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_91; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_92; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_93; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_94; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_95; // @[parser.scala 21:25]
  wire [15:0] mau_6_io_pipe_phv_in_header_0; // @[parser.scala 21:25]
  wire [15:0] mau_6_io_pipe_phv_in_header_1; // @[parser.scala 21:25]
  wire [15:0] mau_6_io_pipe_phv_in_header_2; // @[parser.scala 21:25]
  wire [15:0] mau_6_io_pipe_phv_in_header_3; // @[parser.scala 21:25]
  wire [15:0] mau_6_io_pipe_phv_in_header_4; // @[parser.scala 21:25]
  wire [15:0] mau_6_io_pipe_phv_in_header_5; // @[parser.scala 21:25]
  wire [15:0] mau_6_io_pipe_phv_in_header_6; // @[parser.scala 21:25]
  wire [15:0] mau_6_io_pipe_phv_in_header_7; // @[parser.scala 21:25]
  wire [15:0] mau_6_io_pipe_phv_in_header_8; // @[parser.scala 21:25]
  wire [15:0] mau_6_io_pipe_phv_in_header_9; // @[parser.scala 21:25]
  wire [15:0] mau_6_io_pipe_phv_in_header_10; // @[parser.scala 21:25]
  wire [15:0] mau_6_io_pipe_phv_in_header_11; // @[parser.scala 21:25]
  wire [15:0] mau_6_io_pipe_phv_in_header_12; // @[parser.scala 21:25]
  wire [15:0] mau_6_io_pipe_phv_in_header_13; // @[parser.scala 21:25]
  wire [15:0] mau_6_io_pipe_phv_in_header_14; // @[parser.scala 21:25]
  wire [15:0] mau_6_io_pipe_phv_in_header_15; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_parse_current_state; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_in_parse_current_offset; // @[parser.scala 21:25]
  wire [15:0] mau_6_io_pipe_phv_in_parse_transition_field; // @[parser.scala 21:25]
  wire [1:0] mau_6_io_pipe_phv_in_next_processor_id; // @[parser.scala 21:25]
  wire  mau_6_io_pipe_phv_in_next_config_id; // @[parser.scala 21:25]
  wire  mau_6_io_pipe_phv_in_is_valid_processor; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_0; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_1; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_2; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_3; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_4; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_5; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_6; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_7; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_8; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_9; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_10; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_11; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_12; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_13; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_14; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_15; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_16; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_17; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_18; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_19; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_20; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_21; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_22; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_23; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_24; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_25; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_26; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_27; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_28; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_29; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_30; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_31; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_32; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_33; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_34; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_35; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_36; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_37; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_38; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_39; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_40; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_41; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_42; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_43; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_44; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_45; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_46; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_47; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_48; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_49; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_50; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_51; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_52; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_53; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_54; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_55; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_56; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_57; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_58; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_59; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_60; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_61; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_62; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_63; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_64; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_65; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_66; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_67; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_68; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_69; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_70; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_71; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_72; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_73; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_74; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_75; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_76; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_77; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_78; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_79; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_80; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_81; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_82; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_83; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_84; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_85; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_86; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_87; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_88; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_89; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_90; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_91; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_92; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_93; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_94; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_95; // @[parser.scala 21:25]
  wire [15:0] mau_6_io_pipe_phv_out_header_0; // @[parser.scala 21:25]
  wire [15:0] mau_6_io_pipe_phv_out_header_1; // @[parser.scala 21:25]
  wire [15:0] mau_6_io_pipe_phv_out_header_2; // @[parser.scala 21:25]
  wire [15:0] mau_6_io_pipe_phv_out_header_3; // @[parser.scala 21:25]
  wire [15:0] mau_6_io_pipe_phv_out_header_4; // @[parser.scala 21:25]
  wire [15:0] mau_6_io_pipe_phv_out_header_5; // @[parser.scala 21:25]
  wire [15:0] mau_6_io_pipe_phv_out_header_6; // @[parser.scala 21:25]
  wire [15:0] mau_6_io_pipe_phv_out_header_7; // @[parser.scala 21:25]
  wire [15:0] mau_6_io_pipe_phv_out_header_8; // @[parser.scala 21:25]
  wire [15:0] mau_6_io_pipe_phv_out_header_9; // @[parser.scala 21:25]
  wire [15:0] mau_6_io_pipe_phv_out_header_10; // @[parser.scala 21:25]
  wire [15:0] mau_6_io_pipe_phv_out_header_11; // @[parser.scala 21:25]
  wire [15:0] mau_6_io_pipe_phv_out_header_12; // @[parser.scala 21:25]
  wire [15:0] mau_6_io_pipe_phv_out_header_13; // @[parser.scala 21:25]
  wire [15:0] mau_6_io_pipe_phv_out_header_14; // @[parser.scala 21:25]
  wire [15:0] mau_6_io_pipe_phv_out_header_15; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_parse_current_state; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_pipe_phv_out_parse_current_offset; // @[parser.scala 21:25]
  wire [15:0] mau_6_io_pipe_phv_out_parse_transition_field; // @[parser.scala 21:25]
  wire [1:0] mau_6_io_pipe_phv_out_next_processor_id; // @[parser.scala 21:25]
  wire  mau_6_io_pipe_phv_out_next_config_id; // @[parser.scala 21:25]
  wire  mau_6_io_pipe_phv_out_is_valid_processor; // @[parser.scala 21:25]
  wire  mau_6_io_mod_state_id_mod; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_mod_state_id; // @[parser.scala 21:25]
  wire  mau_6_io_mod_sram_w_cs; // @[parser.scala 21:25]
  wire [7:0] mau_6_io_mod_sram_w_addr; // @[parser.scala 21:25]
  wire [63:0] mau_6_io_mod_sram_w_data; // @[parser.scala 21:25]
  wire  mau_7_clock; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_0; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_1; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_2; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_3; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_4; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_5; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_6; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_7; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_8; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_9; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_10; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_11; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_12; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_13; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_14; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_15; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_16; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_17; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_18; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_19; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_20; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_21; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_22; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_23; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_24; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_25; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_26; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_27; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_28; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_29; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_30; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_31; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_32; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_33; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_34; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_35; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_36; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_37; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_38; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_39; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_40; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_41; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_42; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_43; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_44; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_45; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_46; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_47; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_48; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_49; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_50; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_51; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_52; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_53; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_54; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_55; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_56; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_57; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_58; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_59; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_60; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_61; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_62; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_63; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_64; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_65; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_66; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_67; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_68; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_69; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_70; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_71; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_72; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_73; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_74; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_75; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_76; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_77; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_78; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_79; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_80; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_81; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_82; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_83; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_84; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_85; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_86; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_87; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_88; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_89; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_90; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_91; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_92; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_93; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_94; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_95; // @[parser.scala 21:25]
  wire [15:0] mau_7_io_pipe_phv_in_header_0; // @[parser.scala 21:25]
  wire [15:0] mau_7_io_pipe_phv_in_header_1; // @[parser.scala 21:25]
  wire [15:0] mau_7_io_pipe_phv_in_header_2; // @[parser.scala 21:25]
  wire [15:0] mau_7_io_pipe_phv_in_header_3; // @[parser.scala 21:25]
  wire [15:0] mau_7_io_pipe_phv_in_header_4; // @[parser.scala 21:25]
  wire [15:0] mau_7_io_pipe_phv_in_header_5; // @[parser.scala 21:25]
  wire [15:0] mau_7_io_pipe_phv_in_header_6; // @[parser.scala 21:25]
  wire [15:0] mau_7_io_pipe_phv_in_header_7; // @[parser.scala 21:25]
  wire [15:0] mau_7_io_pipe_phv_in_header_8; // @[parser.scala 21:25]
  wire [15:0] mau_7_io_pipe_phv_in_header_9; // @[parser.scala 21:25]
  wire [15:0] mau_7_io_pipe_phv_in_header_10; // @[parser.scala 21:25]
  wire [15:0] mau_7_io_pipe_phv_in_header_11; // @[parser.scala 21:25]
  wire [15:0] mau_7_io_pipe_phv_in_header_12; // @[parser.scala 21:25]
  wire [15:0] mau_7_io_pipe_phv_in_header_13; // @[parser.scala 21:25]
  wire [15:0] mau_7_io_pipe_phv_in_header_14; // @[parser.scala 21:25]
  wire [15:0] mau_7_io_pipe_phv_in_header_15; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_parse_current_state; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_in_parse_current_offset; // @[parser.scala 21:25]
  wire [15:0] mau_7_io_pipe_phv_in_parse_transition_field; // @[parser.scala 21:25]
  wire [1:0] mau_7_io_pipe_phv_in_next_processor_id; // @[parser.scala 21:25]
  wire  mau_7_io_pipe_phv_in_next_config_id; // @[parser.scala 21:25]
  wire  mau_7_io_pipe_phv_in_is_valid_processor; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_0; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_1; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_2; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_3; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_4; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_5; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_6; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_7; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_8; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_9; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_10; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_11; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_12; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_13; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_14; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_15; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_16; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_17; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_18; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_19; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_20; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_21; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_22; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_23; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_24; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_25; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_26; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_27; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_28; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_29; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_30; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_31; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_32; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_33; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_34; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_35; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_36; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_37; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_38; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_39; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_40; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_41; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_42; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_43; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_44; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_45; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_46; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_47; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_48; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_49; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_50; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_51; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_52; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_53; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_54; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_55; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_56; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_57; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_58; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_59; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_60; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_61; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_62; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_63; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_64; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_65; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_66; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_67; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_68; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_69; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_70; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_71; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_72; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_73; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_74; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_75; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_76; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_77; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_78; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_79; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_80; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_81; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_82; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_83; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_84; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_85; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_86; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_87; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_88; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_89; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_90; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_91; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_92; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_93; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_94; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_95; // @[parser.scala 21:25]
  wire [15:0] mau_7_io_pipe_phv_out_header_0; // @[parser.scala 21:25]
  wire [15:0] mau_7_io_pipe_phv_out_header_1; // @[parser.scala 21:25]
  wire [15:0] mau_7_io_pipe_phv_out_header_2; // @[parser.scala 21:25]
  wire [15:0] mau_7_io_pipe_phv_out_header_3; // @[parser.scala 21:25]
  wire [15:0] mau_7_io_pipe_phv_out_header_4; // @[parser.scala 21:25]
  wire [15:0] mau_7_io_pipe_phv_out_header_5; // @[parser.scala 21:25]
  wire [15:0] mau_7_io_pipe_phv_out_header_6; // @[parser.scala 21:25]
  wire [15:0] mau_7_io_pipe_phv_out_header_7; // @[parser.scala 21:25]
  wire [15:0] mau_7_io_pipe_phv_out_header_8; // @[parser.scala 21:25]
  wire [15:0] mau_7_io_pipe_phv_out_header_9; // @[parser.scala 21:25]
  wire [15:0] mau_7_io_pipe_phv_out_header_10; // @[parser.scala 21:25]
  wire [15:0] mau_7_io_pipe_phv_out_header_11; // @[parser.scala 21:25]
  wire [15:0] mau_7_io_pipe_phv_out_header_12; // @[parser.scala 21:25]
  wire [15:0] mau_7_io_pipe_phv_out_header_13; // @[parser.scala 21:25]
  wire [15:0] mau_7_io_pipe_phv_out_header_14; // @[parser.scala 21:25]
  wire [15:0] mau_7_io_pipe_phv_out_header_15; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_parse_current_state; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_pipe_phv_out_parse_current_offset; // @[parser.scala 21:25]
  wire [15:0] mau_7_io_pipe_phv_out_parse_transition_field; // @[parser.scala 21:25]
  wire [1:0] mau_7_io_pipe_phv_out_next_processor_id; // @[parser.scala 21:25]
  wire  mau_7_io_pipe_phv_out_next_config_id; // @[parser.scala 21:25]
  wire  mau_7_io_pipe_phv_out_is_valid_processor; // @[parser.scala 21:25]
  wire  mau_7_io_mod_state_id_mod; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_mod_state_id; // @[parser.scala 21:25]
  wire  mau_7_io_mod_sram_w_cs; // @[parser.scala 21:25]
  wire [7:0] mau_7_io_mod_sram_w_addr; // @[parser.scala 21:25]
  wire [63:0] mau_7_io_mod_sram_w_data; // @[parser.scala 21:25]
  reg [3:0] last_mau_id; // @[parser.scala 14:26]
  wire  _GEN_0 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_is_valid_processor : io_pipe_phv_in_is_valid_processor; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire  _GEN_1 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_next_config_id : io_pipe_phv_in_next_config_id; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [1:0] _GEN_2 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_next_processor_id : io_pipe_phv_in_next_processor_id; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [15:0] _GEN_3 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_parse_transition_field :
    io_pipe_phv_in_parse_transition_field; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_4 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_parse_current_offset :
    io_pipe_phv_in_parse_current_offset; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_5 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_parse_current_state :
    io_pipe_phv_in_parse_current_state; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [15:0] _GEN_6 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_header_0 : io_pipe_phv_in_header_0; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [15:0] _GEN_7 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_header_1 : io_pipe_phv_in_header_1; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [15:0] _GEN_8 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_header_2 : io_pipe_phv_in_header_2; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [15:0] _GEN_9 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_header_3 : io_pipe_phv_in_header_3; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [15:0] _GEN_10 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_header_4 : io_pipe_phv_in_header_4; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [15:0] _GEN_11 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_header_5 : io_pipe_phv_in_header_5; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [15:0] _GEN_12 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_header_6 : io_pipe_phv_in_header_6; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [15:0] _GEN_13 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_header_7 : io_pipe_phv_in_header_7; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [15:0] _GEN_14 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_header_8 : io_pipe_phv_in_header_8; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [15:0] _GEN_15 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_header_9 : io_pipe_phv_in_header_9; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [15:0] _GEN_16 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_header_10 : io_pipe_phv_in_header_10; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [15:0] _GEN_17 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_header_11 : io_pipe_phv_in_header_11; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [15:0] _GEN_18 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_header_12 : io_pipe_phv_in_header_12; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [15:0] _GEN_19 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_header_13 : io_pipe_phv_in_header_13; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [15:0] _GEN_20 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_header_14 : io_pipe_phv_in_header_14; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [15:0] _GEN_21 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_header_15 : io_pipe_phv_in_header_15; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_22 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_0 : io_pipe_phv_in_data_0; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_23 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_1 : io_pipe_phv_in_data_1; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_24 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_2 : io_pipe_phv_in_data_2; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_25 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_3 : io_pipe_phv_in_data_3; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_26 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_4 : io_pipe_phv_in_data_4; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_27 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_5 : io_pipe_phv_in_data_5; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_28 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_6 : io_pipe_phv_in_data_6; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_29 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_7 : io_pipe_phv_in_data_7; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_30 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_8 : io_pipe_phv_in_data_8; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_31 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_9 : io_pipe_phv_in_data_9; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_32 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_10 : io_pipe_phv_in_data_10; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_33 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_11 : io_pipe_phv_in_data_11; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_34 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_12 : io_pipe_phv_in_data_12; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_35 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_13 : io_pipe_phv_in_data_13; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_36 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_14 : io_pipe_phv_in_data_14; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_37 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_15 : io_pipe_phv_in_data_15; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_38 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_16 : io_pipe_phv_in_data_16; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_39 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_17 : io_pipe_phv_in_data_17; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_40 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_18 : io_pipe_phv_in_data_18; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_41 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_19 : io_pipe_phv_in_data_19; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_42 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_20 : io_pipe_phv_in_data_20; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_43 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_21 : io_pipe_phv_in_data_21; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_44 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_22 : io_pipe_phv_in_data_22; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_45 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_23 : io_pipe_phv_in_data_23; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_46 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_24 : io_pipe_phv_in_data_24; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_47 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_25 : io_pipe_phv_in_data_25; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_48 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_26 : io_pipe_phv_in_data_26; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_49 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_27 : io_pipe_phv_in_data_27; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_50 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_28 : io_pipe_phv_in_data_28; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_51 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_29 : io_pipe_phv_in_data_29; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_52 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_30 : io_pipe_phv_in_data_30; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_53 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_31 : io_pipe_phv_in_data_31; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_54 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_32 : io_pipe_phv_in_data_32; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_55 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_33 : io_pipe_phv_in_data_33; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_56 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_34 : io_pipe_phv_in_data_34; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_57 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_35 : io_pipe_phv_in_data_35; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_58 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_36 : io_pipe_phv_in_data_36; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_59 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_37 : io_pipe_phv_in_data_37; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_60 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_38 : io_pipe_phv_in_data_38; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_61 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_39 : io_pipe_phv_in_data_39; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_62 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_40 : io_pipe_phv_in_data_40; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_63 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_41 : io_pipe_phv_in_data_41; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_64 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_42 : io_pipe_phv_in_data_42; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_65 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_43 : io_pipe_phv_in_data_43; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_66 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_44 : io_pipe_phv_in_data_44; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_67 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_45 : io_pipe_phv_in_data_45; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_68 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_46 : io_pipe_phv_in_data_46; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_69 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_47 : io_pipe_phv_in_data_47; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_70 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_48 : io_pipe_phv_in_data_48; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_71 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_49 : io_pipe_phv_in_data_49; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_72 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_50 : io_pipe_phv_in_data_50; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_73 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_51 : io_pipe_phv_in_data_51; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_74 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_52 : io_pipe_phv_in_data_52; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_75 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_53 : io_pipe_phv_in_data_53; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_76 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_54 : io_pipe_phv_in_data_54; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_77 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_55 : io_pipe_phv_in_data_55; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_78 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_56 : io_pipe_phv_in_data_56; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_79 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_57 : io_pipe_phv_in_data_57; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_80 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_58 : io_pipe_phv_in_data_58; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_81 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_59 : io_pipe_phv_in_data_59; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_82 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_60 : io_pipe_phv_in_data_60; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_83 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_61 : io_pipe_phv_in_data_61; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_84 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_62 : io_pipe_phv_in_data_62; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_85 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_63 : io_pipe_phv_in_data_63; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_86 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_64 : io_pipe_phv_in_data_64; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_87 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_65 : io_pipe_phv_in_data_65; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_88 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_66 : io_pipe_phv_in_data_66; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_89 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_67 : io_pipe_phv_in_data_67; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_90 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_68 : io_pipe_phv_in_data_68; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_91 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_69 : io_pipe_phv_in_data_69; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_92 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_70 : io_pipe_phv_in_data_70; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_93 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_71 : io_pipe_phv_in_data_71; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_94 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_72 : io_pipe_phv_in_data_72; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_95 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_73 : io_pipe_phv_in_data_73; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_96 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_74 : io_pipe_phv_in_data_74; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_97 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_75 : io_pipe_phv_in_data_75; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_98 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_76 : io_pipe_phv_in_data_76; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_99 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_77 : io_pipe_phv_in_data_77; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_100 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_78 : io_pipe_phv_in_data_78; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_101 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_79 : io_pipe_phv_in_data_79; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_102 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_80 : io_pipe_phv_in_data_80; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_103 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_81 : io_pipe_phv_in_data_81; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_104 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_82 : io_pipe_phv_in_data_82; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_105 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_83 : io_pipe_phv_in_data_83; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_106 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_84 : io_pipe_phv_in_data_84; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_107 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_85 : io_pipe_phv_in_data_85; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_108 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_86 : io_pipe_phv_in_data_86; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_109 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_87 : io_pipe_phv_in_data_87; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_110 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_88 : io_pipe_phv_in_data_88; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_111 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_89 : io_pipe_phv_in_data_89; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_112 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_90 : io_pipe_phv_in_data_90; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_113 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_91 : io_pipe_phv_in_data_91; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_114 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_92 : io_pipe_phv_in_data_92; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_115 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_93 : io_pipe_phv_in_data_93; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_116 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_94 : io_pipe_phv_in_data_94; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire [7:0] _GEN_117 = 4'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_95 : io_pipe_phv_in_data_95; // @[parser.scala 33:62 parser.scala 34:35 parser.scala 26:21]
  wire  _GEN_118 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_is_valid_processor : _GEN_0; // @[parser.scala 33:62 parser.scala 34:35]
  wire  _GEN_119 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_next_config_id : _GEN_1; // @[parser.scala 33:62 parser.scala 34:35]
  wire [1:0] _GEN_120 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_next_processor_id : _GEN_2; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_121 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_parse_transition_field : _GEN_3; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_122 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_parse_current_offset : _GEN_4; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_123 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_parse_current_state : _GEN_5; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_124 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_header_0 : _GEN_6; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_125 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_header_1 : _GEN_7; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_126 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_header_2 : _GEN_8; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_127 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_header_3 : _GEN_9; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_128 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_header_4 : _GEN_10; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_129 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_header_5 : _GEN_11; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_130 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_header_6 : _GEN_12; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_131 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_header_7 : _GEN_13; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_132 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_header_8 : _GEN_14; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_133 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_header_9 : _GEN_15; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_134 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_header_10 : _GEN_16; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_135 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_header_11 : _GEN_17; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_136 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_header_12 : _GEN_18; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_137 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_header_13 : _GEN_19; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_138 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_header_14 : _GEN_20; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_139 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_header_15 : _GEN_21; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_140 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_0 : _GEN_22; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_141 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_1 : _GEN_23; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_142 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_2 : _GEN_24; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_143 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_3 : _GEN_25; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_144 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_4 : _GEN_26; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_145 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_5 : _GEN_27; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_146 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_6 : _GEN_28; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_147 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_7 : _GEN_29; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_148 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_8 : _GEN_30; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_149 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_9 : _GEN_31; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_150 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_10 : _GEN_32; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_151 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_11 : _GEN_33; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_152 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_12 : _GEN_34; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_153 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_13 : _GEN_35; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_154 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_14 : _GEN_36; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_155 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_15 : _GEN_37; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_156 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_16 : _GEN_38; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_157 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_17 : _GEN_39; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_158 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_18 : _GEN_40; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_159 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_19 : _GEN_41; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_160 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_20 : _GEN_42; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_161 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_21 : _GEN_43; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_162 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_22 : _GEN_44; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_163 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_23 : _GEN_45; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_164 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_24 : _GEN_46; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_165 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_25 : _GEN_47; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_166 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_26 : _GEN_48; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_167 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_27 : _GEN_49; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_168 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_28 : _GEN_50; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_169 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_29 : _GEN_51; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_170 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_30 : _GEN_52; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_171 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_31 : _GEN_53; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_172 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_32 : _GEN_54; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_173 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_33 : _GEN_55; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_174 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_34 : _GEN_56; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_175 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_35 : _GEN_57; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_176 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_36 : _GEN_58; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_177 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_37 : _GEN_59; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_178 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_38 : _GEN_60; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_179 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_39 : _GEN_61; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_180 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_40 : _GEN_62; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_181 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_41 : _GEN_63; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_182 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_42 : _GEN_64; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_183 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_43 : _GEN_65; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_184 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_44 : _GEN_66; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_185 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_45 : _GEN_67; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_186 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_46 : _GEN_68; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_187 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_47 : _GEN_69; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_188 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_48 : _GEN_70; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_189 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_49 : _GEN_71; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_190 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_50 : _GEN_72; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_191 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_51 : _GEN_73; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_192 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_52 : _GEN_74; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_193 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_53 : _GEN_75; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_194 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_54 : _GEN_76; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_195 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_55 : _GEN_77; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_196 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_56 : _GEN_78; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_197 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_57 : _GEN_79; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_198 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_58 : _GEN_80; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_199 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_59 : _GEN_81; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_200 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_60 : _GEN_82; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_201 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_61 : _GEN_83; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_202 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_62 : _GEN_84; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_203 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_63 : _GEN_85; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_204 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_64 : _GEN_86; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_205 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_65 : _GEN_87; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_206 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_66 : _GEN_88; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_207 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_67 : _GEN_89; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_208 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_68 : _GEN_90; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_209 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_69 : _GEN_91; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_210 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_70 : _GEN_92; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_211 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_71 : _GEN_93; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_212 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_72 : _GEN_94; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_213 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_73 : _GEN_95; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_214 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_74 : _GEN_96; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_215 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_75 : _GEN_97; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_216 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_76 : _GEN_98; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_217 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_77 : _GEN_99; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_218 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_78 : _GEN_100; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_219 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_79 : _GEN_101; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_220 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_80 : _GEN_102; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_221 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_81 : _GEN_103; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_222 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_82 : _GEN_104; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_223 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_83 : _GEN_105; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_224 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_84 : _GEN_106; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_225 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_85 : _GEN_107; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_226 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_86 : _GEN_108; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_227 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_87 : _GEN_109; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_228 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_88 : _GEN_110; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_229 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_89 : _GEN_111; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_230 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_90 : _GEN_112; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_231 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_91 : _GEN_113; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_232 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_92 : _GEN_114; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_233 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_93 : _GEN_115; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_234 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_94 : _GEN_116; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_235 = 4'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_95 : _GEN_117; // @[parser.scala 33:62 parser.scala 34:35]
  wire  _GEN_236 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_is_valid_processor : _GEN_118; // @[parser.scala 33:62 parser.scala 34:35]
  wire  _GEN_237 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_next_config_id : _GEN_119; // @[parser.scala 33:62 parser.scala 34:35]
  wire [1:0] _GEN_238 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_next_processor_id : _GEN_120; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_239 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_parse_transition_field : _GEN_121; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_240 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_parse_current_offset : _GEN_122; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_241 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_parse_current_state : _GEN_123; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_242 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_header_0 : _GEN_124; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_243 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_header_1 : _GEN_125; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_244 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_header_2 : _GEN_126; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_245 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_header_3 : _GEN_127; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_246 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_header_4 : _GEN_128; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_247 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_header_5 : _GEN_129; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_248 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_header_6 : _GEN_130; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_249 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_header_7 : _GEN_131; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_250 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_header_8 : _GEN_132; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_251 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_header_9 : _GEN_133; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_252 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_header_10 : _GEN_134; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_253 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_header_11 : _GEN_135; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_254 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_header_12 : _GEN_136; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_255 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_header_13 : _GEN_137; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_256 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_header_14 : _GEN_138; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_257 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_header_15 : _GEN_139; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_258 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_0 : _GEN_140; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_259 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_1 : _GEN_141; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_260 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_2 : _GEN_142; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_261 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_3 : _GEN_143; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_262 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_4 : _GEN_144; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_263 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_5 : _GEN_145; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_264 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_6 : _GEN_146; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_265 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_7 : _GEN_147; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_266 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_8 : _GEN_148; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_267 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_9 : _GEN_149; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_268 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_10 : _GEN_150; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_269 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_11 : _GEN_151; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_270 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_12 : _GEN_152; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_271 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_13 : _GEN_153; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_272 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_14 : _GEN_154; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_273 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_15 : _GEN_155; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_274 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_16 : _GEN_156; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_275 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_17 : _GEN_157; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_276 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_18 : _GEN_158; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_277 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_19 : _GEN_159; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_278 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_20 : _GEN_160; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_279 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_21 : _GEN_161; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_280 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_22 : _GEN_162; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_281 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_23 : _GEN_163; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_282 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_24 : _GEN_164; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_283 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_25 : _GEN_165; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_284 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_26 : _GEN_166; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_285 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_27 : _GEN_167; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_286 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_28 : _GEN_168; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_287 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_29 : _GEN_169; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_288 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_30 : _GEN_170; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_289 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_31 : _GEN_171; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_290 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_32 : _GEN_172; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_291 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_33 : _GEN_173; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_292 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_34 : _GEN_174; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_293 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_35 : _GEN_175; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_294 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_36 : _GEN_176; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_295 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_37 : _GEN_177; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_296 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_38 : _GEN_178; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_297 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_39 : _GEN_179; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_298 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_40 : _GEN_180; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_299 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_41 : _GEN_181; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_300 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_42 : _GEN_182; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_301 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_43 : _GEN_183; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_302 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_44 : _GEN_184; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_303 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_45 : _GEN_185; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_304 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_46 : _GEN_186; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_305 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_47 : _GEN_187; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_306 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_48 : _GEN_188; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_307 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_49 : _GEN_189; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_308 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_50 : _GEN_190; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_309 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_51 : _GEN_191; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_310 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_52 : _GEN_192; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_311 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_53 : _GEN_193; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_312 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_54 : _GEN_194; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_313 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_55 : _GEN_195; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_314 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_56 : _GEN_196; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_315 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_57 : _GEN_197; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_316 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_58 : _GEN_198; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_317 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_59 : _GEN_199; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_318 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_60 : _GEN_200; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_319 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_61 : _GEN_201; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_320 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_62 : _GEN_202; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_321 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_63 : _GEN_203; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_322 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_64 : _GEN_204; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_323 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_65 : _GEN_205; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_324 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_66 : _GEN_206; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_325 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_67 : _GEN_207; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_326 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_68 : _GEN_208; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_327 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_69 : _GEN_209; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_328 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_70 : _GEN_210; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_329 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_71 : _GEN_211; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_330 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_72 : _GEN_212; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_331 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_73 : _GEN_213; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_332 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_74 : _GEN_214; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_333 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_75 : _GEN_215; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_334 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_76 : _GEN_216; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_335 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_77 : _GEN_217; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_336 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_78 : _GEN_218; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_337 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_79 : _GEN_219; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_338 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_80 : _GEN_220; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_339 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_81 : _GEN_221; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_340 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_82 : _GEN_222; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_341 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_83 : _GEN_223; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_342 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_84 : _GEN_224; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_343 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_85 : _GEN_225; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_344 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_86 : _GEN_226; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_345 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_87 : _GEN_227; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_346 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_88 : _GEN_228; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_347 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_89 : _GEN_229; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_348 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_90 : _GEN_230; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_349 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_91 : _GEN_231; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_350 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_92 : _GEN_232; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_351 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_93 : _GEN_233; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_352 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_94 : _GEN_234; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_353 = 4'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_95 : _GEN_235; // @[parser.scala 33:62 parser.scala 34:35]
  wire  _GEN_354 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_is_valid_processor : _GEN_236; // @[parser.scala 33:62 parser.scala 34:35]
  wire  _GEN_355 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_next_config_id : _GEN_237; // @[parser.scala 33:62 parser.scala 34:35]
  wire [1:0] _GEN_356 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_next_processor_id : _GEN_238; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_357 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_parse_transition_field : _GEN_239; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_358 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_parse_current_offset : _GEN_240; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_359 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_parse_current_state : _GEN_241; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_360 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_header_0 : _GEN_242; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_361 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_header_1 : _GEN_243; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_362 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_header_2 : _GEN_244; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_363 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_header_3 : _GEN_245; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_364 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_header_4 : _GEN_246; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_365 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_header_5 : _GEN_247; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_366 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_header_6 : _GEN_248; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_367 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_header_7 : _GEN_249; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_368 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_header_8 : _GEN_250; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_369 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_header_9 : _GEN_251; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_370 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_header_10 : _GEN_252; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_371 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_header_11 : _GEN_253; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_372 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_header_12 : _GEN_254; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_373 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_header_13 : _GEN_255; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_374 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_header_14 : _GEN_256; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_375 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_header_15 : _GEN_257; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_376 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_0 : _GEN_258; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_377 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_1 : _GEN_259; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_378 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_2 : _GEN_260; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_379 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_3 : _GEN_261; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_380 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_4 : _GEN_262; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_381 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_5 : _GEN_263; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_382 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_6 : _GEN_264; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_383 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_7 : _GEN_265; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_384 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_8 : _GEN_266; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_385 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_9 : _GEN_267; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_386 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_10 : _GEN_268; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_387 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_11 : _GEN_269; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_388 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_12 : _GEN_270; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_389 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_13 : _GEN_271; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_390 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_14 : _GEN_272; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_391 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_15 : _GEN_273; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_392 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_16 : _GEN_274; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_393 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_17 : _GEN_275; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_394 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_18 : _GEN_276; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_395 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_19 : _GEN_277; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_396 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_20 : _GEN_278; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_397 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_21 : _GEN_279; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_398 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_22 : _GEN_280; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_399 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_23 : _GEN_281; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_400 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_24 : _GEN_282; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_401 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_25 : _GEN_283; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_402 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_26 : _GEN_284; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_403 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_27 : _GEN_285; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_404 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_28 : _GEN_286; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_405 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_29 : _GEN_287; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_406 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_30 : _GEN_288; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_407 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_31 : _GEN_289; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_408 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_32 : _GEN_290; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_409 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_33 : _GEN_291; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_410 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_34 : _GEN_292; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_411 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_35 : _GEN_293; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_412 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_36 : _GEN_294; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_413 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_37 : _GEN_295; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_414 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_38 : _GEN_296; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_415 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_39 : _GEN_297; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_416 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_40 : _GEN_298; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_417 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_41 : _GEN_299; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_418 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_42 : _GEN_300; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_419 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_43 : _GEN_301; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_420 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_44 : _GEN_302; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_421 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_45 : _GEN_303; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_422 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_46 : _GEN_304; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_423 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_47 : _GEN_305; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_424 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_48 : _GEN_306; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_425 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_49 : _GEN_307; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_426 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_50 : _GEN_308; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_427 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_51 : _GEN_309; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_428 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_52 : _GEN_310; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_429 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_53 : _GEN_311; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_430 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_54 : _GEN_312; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_431 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_55 : _GEN_313; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_432 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_56 : _GEN_314; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_433 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_57 : _GEN_315; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_434 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_58 : _GEN_316; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_435 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_59 : _GEN_317; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_436 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_60 : _GEN_318; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_437 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_61 : _GEN_319; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_438 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_62 : _GEN_320; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_439 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_63 : _GEN_321; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_440 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_64 : _GEN_322; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_441 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_65 : _GEN_323; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_442 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_66 : _GEN_324; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_443 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_67 : _GEN_325; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_444 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_68 : _GEN_326; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_445 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_69 : _GEN_327; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_446 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_70 : _GEN_328; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_447 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_71 : _GEN_329; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_448 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_72 : _GEN_330; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_449 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_73 : _GEN_331; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_450 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_74 : _GEN_332; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_451 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_75 : _GEN_333; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_452 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_76 : _GEN_334; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_453 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_77 : _GEN_335; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_454 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_78 : _GEN_336; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_455 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_79 : _GEN_337; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_456 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_80 : _GEN_338; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_457 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_81 : _GEN_339; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_458 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_82 : _GEN_340; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_459 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_83 : _GEN_341; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_460 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_84 : _GEN_342; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_461 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_85 : _GEN_343; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_462 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_86 : _GEN_344; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_463 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_87 : _GEN_345; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_464 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_88 : _GEN_346; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_465 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_89 : _GEN_347; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_466 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_90 : _GEN_348; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_467 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_91 : _GEN_349; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_468 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_92 : _GEN_350; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_469 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_93 : _GEN_351; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_470 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_94 : _GEN_352; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_471 = 4'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_95 : _GEN_353; // @[parser.scala 33:62 parser.scala 34:35]
  wire  _GEN_472 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_is_valid_processor : _GEN_354; // @[parser.scala 33:62 parser.scala 34:35]
  wire  _GEN_473 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_next_config_id : _GEN_355; // @[parser.scala 33:62 parser.scala 34:35]
  wire [1:0] _GEN_474 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_next_processor_id : _GEN_356; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_475 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_parse_transition_field : _GEN_357; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_476 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_parse_current_offset : _GEN_358; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_477 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_parse_current_state : _GEN_359; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_478 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_header_0 : _GEN_360; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_479 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_header_1 : _GEN_361; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_480 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_header_2 : _GEN_362; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_481 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_header_3 : _GEN_363; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_482 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_header_4 : _GEN_364; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_483 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_header_5 : _GEN_365; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_484 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_header_6 : _GEN_366; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_485 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_header_7 : _GEN_367; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_486 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_header_8 : _GEN_368; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_487 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_header_9 : _GEN_369; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_488 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_header_10 : _GEN_370; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_489 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_header_11 : _GEN_371; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_490 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_header_12 : _GEN_372; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_491 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_header_13 : _GEN_373; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_492 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_header_14 : _GEN_374; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_493 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_header_15 : _GEN_375; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_494 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_0 : _GEN_376; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_495 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_1 : _GEN_377; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_496 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_2 : _GEN_378; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_497 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_3 : _GEN_379; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_498 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_4 : _GEN_380; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_499 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_5 : _GEN_381; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_500 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_6 : _GEN_382; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_501 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_7 : _GEN_383; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_502 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_8 : _GEN_384; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_503 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_9 : _GEN_385; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_504 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_10 : _GEN_386; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_505 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_11 : _GEN_387; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_506 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_12 : _GEN_388; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_507 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_13 : _GEN_389; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_508 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_14 : _GEN_390; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_509 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_15 : _GEN_391; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_510 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_16 : _GEN_392; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_511 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_17 : _GEN_393; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_512 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_18 : _GEN_394; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_513 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_19 : _GEN_395; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_514 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_20 : _GEN_396; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_515 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_21 : _GEN_397; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_516 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_22 : _GEN_398; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_517 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_23 : _GEN_399; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_518 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_24 : _GEN_400; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_519 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_25 : _GEN_401; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_520 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_26 : _GEN_402; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_521 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_27 : _GEN_403; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_522 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_28 : _GEN_404; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_523 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_29 : _GEN_405; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_524 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_30 : _GEN_406; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_525 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_31 : _GEN_407; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_526 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_32 : _GEN_408; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_527 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_33 : _GEN_409; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_528 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_34 : _GEN_410; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_529 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_35 : _GEN_411; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_530 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_36 : _GEN_412; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_531 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_37 : _GEN_413; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_532 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_38 : _GEN_414; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_533 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_39 : _GEN_415; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_534 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_40 : _GEN_416; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_535 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_41 : _GEN_417; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_536 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_42 : _GEN_418; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_537 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_43 : _GEN_419; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_538 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_44 : _GEN_420; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_539 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_45 : _GEN_421; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_540 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_46 : _GEN_422; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_541 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_47 : _GEN_423; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_542 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_48 : _GEN_424; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_543 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_49 : _GEN_425; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_544 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_50 : _GEN_426; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_545 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_51 : _GEN_427; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_546 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_52 : _GEN_428; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_547 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_53 : _GEN_429; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_548 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_54 : _GEN_430; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_549 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_55 : _GEN_431; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_550 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_56 : _GEN_432; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_551 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_57 : _GEN_433; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_552 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_58 : _GEN_434; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_553 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_59 : _GEN_435; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_554 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_60 : _GEN_436; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_555 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_61 : _GEN_437; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_556 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_62 : _GEN_438; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_557 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_63 : _GEN_439; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_558 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_64 : _GEN_440; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_559 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_65 : _GEN_441; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_560 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_66 : _GEN_442; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_561 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_67 : _GEN_443; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_562 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_68 : _GEN_444; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_563 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_69 : _GEN_445; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_564 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_70 : _GEN_446; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_565 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_71 : _GEN_447; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_566 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_72 : _GEN_448; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_567 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_73 : _GEN_449; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_568 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_74 : _GEN_450; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_569 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_75 : _GEN_451; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_570 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_76 : _GEN_452; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_571 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_77 : _GEN_453; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_572 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_78 : _GEN_454; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_573 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_79 : _GEN_455; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_574 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_80 : _GEN_456; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_575 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_81 : _GEN_457; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_576 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_82 : _GEN_458; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_577 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_83 : _GEN_459; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_578 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_84 : _GEN_460; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_579 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_85 : _GEN_461; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_580 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_86 : _GEN_462; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_581 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_87 : _GEN_463; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_582 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_88 : _GEN_464; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_583 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_89 : _GEN_465; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_584 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_90 : _GEN_466; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_585 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_91 : _GEN_467; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_586 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_92 : _GEN_468; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_587 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_93 : _GEN_469; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_588 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_94 : _GEN_470; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_589 = 4'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_95 : _GEN_471; // @[parser.scala 33:62 parser.scala 34:35]
  wire  _GEN_590 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_is_valid_processor : _GEN_472; // @[parser.scala 33:62 parser.scala 34:35]
  wire  _GEN_591 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_next_config_id : _GEN_473; // @[parser.scala 33:62 parser.scala 34:35]
  wire [1:0] _GEN_592 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_next_processor_id : _GEN_474; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_593 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_parse_transition_field : _GEN_475; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_594 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_parse_current_offset : _GEN_476; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_595 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_parse_current_state : _GEN_477; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_596 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_header_0 : _GEN_478; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_597 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_header_1 : _GEN_479; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_598 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_header_2 : _GEN_480; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_599 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_header_3 : _GEN_481; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_600 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_header_4 : _GEN_482; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_601 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_header_5 : _GEN_483; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_602 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_header_6 : _GEN_484; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_603 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_header_7 : _GEN_485; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_604 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_header_8 : _GEN_486; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_605 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_header_9 : _GEN_487; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_606 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_header_10 : _GEN_488; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_607 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_header_11 : _GEN_489; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_608 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_header_12 : _GEN_490; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_609 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_header_13 : _GEN_491; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_610 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_header_14 : _GEN_492; // @[parser.scala 33:62 parser.scala 34:35]
  wire [15:0] _GEN_611 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_header_15 : _GEN_493; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_612 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_0 : _GEN_494; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_613 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_1 : _GEN_495; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_614 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_2 : _GEN_496; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_615 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_3 : _GEN_497; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_616 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_4 : _GEN_498; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_617 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_5 : _GEN_499; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_618 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_6 : _GEN_500; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_619 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_7 : _GEN_501; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_620 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_8 : _GEN_502; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_621 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_9 : _GEN_503; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_622 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_10 : _GEN_504; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_623 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_11 : _GEN_505; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_624 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_12 : _GEN_506; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_625 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_13 : _GEN_507; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_626 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_14 : _GEN_508; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_627 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_15 : _GEN_509; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_628 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_16 : _GEN_510; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_629 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_17 : _GEN_511; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_630 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_18 : _GEN_512; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_631 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_19 : _GEN_513; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_632 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_20 : _GEN_514; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_633 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_21 : _GEN_515; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_634 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_22 : _GEN_516; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_635 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_23 : _GEN_517; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_636 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_24 : _GEN_518; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_637 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_25 : _GEN_519; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_638 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_26 : _GEN_520; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_639 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_27 : _GEN_521; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_640 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_28 : _GEN_522; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_641 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_29 : _GEN_523; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_642 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_30 : _GEN_524; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_643 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_31 : _GEN_525; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_644 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_32 : _GEN_526; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_645 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_33 : _GEN_527; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_646 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_34 : _GEN_528; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_647 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_35 : _GEN_529; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_648 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_36 : _GEN_530; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_649 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_37 : _GEN_531; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_650 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_38 : _GEN_532; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_651 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_39 : _GEN_533; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_652 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_40 : _GEN_534; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_653 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_41 : _GEN_535; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_654 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_42 : _GEN_536; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_655 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_43 : _GEN_537; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_656 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_44 : _GEN_538; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_657 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_45 : _GEN_539; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_658 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_46 : _GEN_540; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_659 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_47 : _GEN_541; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_660 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_48 : _GEN_542; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_661 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_49 : _GEN_543; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_662 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_50 : _GEN_544; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_663 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_51 : _GEN_545; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_664 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_52 : _GEN_546; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_665 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_53 : _GEN_547; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_666 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_54 : _GEN_548; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_667 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_55 : _GEN_549; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_668 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_56 : _GEN_550; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_669 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_57 : _GEN_551; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_670 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_58 : _GEN_552; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_671 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_59 : _GEN_553; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_672 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_60 : _GEN_554; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_673 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_61 : _GEN_555; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_674 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_62 : _GEN_556; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_675 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_63 : _GEN_557; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_676 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_64 : _GEN_558; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_677 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_65 : _GEN_559; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_678 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_66 : _GEN_560; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_679 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_67 : _GEN_561; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_680 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_68 : _GEN_562; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_681 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_69 : _GEN_563; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_682 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_70 : _GEN_564; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_683 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_71 : _GEN_565; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_684 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_72 : _GEN_566; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_685 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_73 : _GEN_567; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_686 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_74 : _GEN_568; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_687 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_75 : _GEN_569; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_688 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_76 : _GEN_570; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_689 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_77 : _GEN_571; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_690 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_78 : _GEN_572; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_691 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_79 : _GEN_573; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_692 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_80 : _GEN_574; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_693 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_81 : _GEN_575; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_694 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_82 : _GEN_576; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_695 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_83 : _GEN_577; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_696 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_84 : _GEN_578; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_697 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_85 : _GEN_579; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_698 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_86 : _GEN_580; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_699 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_87 : _GEN_581; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_700 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_88 : _GEN_582; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_701 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_89 : _GEN_583; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_702 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_90 : _GEN_584; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_703 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_91 : _GEN_585; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_704 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_92 : _GEN_586; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_705 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_93 : _GEN_587; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_706 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_94 : _GEN_588; // @[parser.scala 33:62 parser.scala 34:35]
  wire [7:0] _GEN_707 = 4'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_95 : _GEN_589; // @[parser.scala 33:62 parser.scala 34:35]
  wire  mod_j = io_mod_cs == 3'h0; // @[parser.scala 46:35]
  wire  mod_j_1 = io_mod_cs == 3'h1; // @[parser.scala 46:35]
  wire  mod_j_2 = io_mod_cs == 3'h2; // @[parser.scala 46:35]
  wire  mod_j_3 = io_mod_cs == 3'h3; // @[parser.scala 46:35]
  wire  mod_j_4 = io_mod_cs == 3'h4; // @[parser.scala 46:35]
  wire  mod_j_5 = io_mod_cs == 3'h5; // @[parser.scala 46:35]
  wire  mod_j_6 = io_mod_cs == 3'h6; // @[parser.scala 46:35]
  wire  mod_j_7 = io_mod_cs == 3'h7; // @[parser.scala 46:35]
  ParseModule mau_0 ( // @[parser.scala 21:25]
    .clock(mau_0_clock),
    .io_pipe_phv_in_data_0(mau_0_io_pipe_phv_in_data_0),
    .io_pipe_phv_in_data_1(mau_0_io_pipe_phv_in_data_1),
    .io_pipe_phv_in_data_2(mau_0_io_pipe_phv_in_data_2),
    .io_pipe_phv_in_data_3(mau_0_io_pipe_phv_in_data_3),
    .io_pipe_phv_in_data_4(mau_0_io_pipe_phv_in_data_4),
    .io_pipe_phv_in_data_5(mau_0_io_pipe_phv_in_data_5),
    .io_pipe_phv_in_data_6(mau_0_io_pipe_phv_in_data_6),
    .io_pipe_phv_in_data_7(mau_0_io_pipe_phv_in_data_7),
    .io_pipe_phv_in_data_8(mau_0_io_pipe_phv_in_data_8),
    .io_pipe_phv_in_data_9(mau_0_io_pipe_phv_in_data_9),
    .io_pipe_phv_in_data_10(mau_0_io_pipe_phv_in_data_10),
    .io_pipe_phv_in_data_11(mau_0_io_pipe_phv_in_data_11),
    .io_pipe_phv_in_data_12(mau_0_io_pipe_phv_in_data_12),
    .io_pipe_phv_in_data_13(mau_0_io_pipe_phv_in_data_13),
    .io_pipe_phv_in_data_14(mau_0_io_pipe_phv_in_data_14),
    .io_pipe_phv_in_data_15(mau_0_io_pipe_phv_in_data_15),
    .io_pipe_phv_in_data_16(mau_0_io_pipe_phv_in_data_16),
    .io_pipe_phv_in_data_17(mau_0_io_pipe_phv_in_data_17),
    .io_pipe_phv_in_data_18(mau_0_io_pipe_phv_in_data_18),
    .io_pipe_phv_in_data_19(mau_0_io_pipe_phv_in_data_19),
    .io_pipe_phv_in_data_20(mau_0_io_pipe_phv_in_data_20),
    .io_pipe_phv_in_data_21(mau_0_io_pipe_phv_in_data_21),
    .io_pipe_phv_in_data_22(mau_0_io_pipe_phv_in_data_22),
    .io_pipe_phv_in_data_23(mau_0_io_pipe_phv_in_data_23),
    .io_pipe_phv_in_data_24(mau_0_io_pipe_phv_in_data_24),
    .io_pipe_phv_in_data_25(mau_0_io_pipe_phv_in_data_25),
    .io_pipe_phv_in_data_26(mau_0_io_pipe_phv_in_data_26),
    .io_pipe_phv_in_data_27(mau_0_io_pipe_phv_in_data_27),
    .io_pipe_phv_in_data_28(mau_0_io_pipe_phv_in_data_28),
    .io_pipe_phv_in_data_29(mau_0_io_pipe_phv_in_data_29),
    .io_pipe_phv_in_data_30(mau_0_io_pipe_phv_in_data_30),
    .io_pipe_phv_in_data_31(mau_0_io_pipe_phv_in_data_31),
    .io_pipe_phv_in_data_32(mau_0_io_pipe_phv_in_data_32),
    .io_pipe_phv_in_data_33(mau_0_io_pipe_phv_in_data_33),
    .io_pipe_phv_in_data_34(mau_0_io_pipe_phv_in_data_34),
    .io_pipe_phv_in_data_35(mau_0_io_pipe_phv_in_data_35),
    .io_pipe_phv_in_data_36(mau_0_io_pipe_phv_in_data_36),
    .io_pipe_phv_in_data_37(mau_0_io_pipe_phv_in_data_37),
    .io_pipe_phv_in_data_38(mau_0_io_pipe_phv_in_data_38),
    .io_pipe_phv_in_data_39(mau_0_io_pipe_phv_in_data_39),
    .io_pipe_phv_in_data_40(mau_0_io_pipe_phv_in_data_40),
    .io_pipe_phv_in_data_41(mau_0_io_pipe_phv_in_data_41),
    .io_pipe_phv_in_data_42(mau_0_io_pipe_phv_in_data_42),
    .io_pipe_phv_in_data_43(mau_0_io_pipe_phv_in_data_43),
    .io_pipe_phv_in_data_44(mau_0_io_pipe_phv_in_data_44),
    .io_pipe_phv_in_data_45(mau_0_io_pipe_phv_in_data_45),
    .io_pipe_phv_in_data_46(mau_0_io_pipe_phv_in_data_46),
    .io_pipe_phv_in_data_47(mau_0_io_pipe_phv_in_data_47),
    .io_pipe_phv_in_data_48(mau_0_io_pipe_phv_in_data_48),
    .io_pipe_phv_in_data_49(mau_0_io_pipe_phv_in_data_49),
    .io_pipe_phv_in_data_50(mau_0_io_pipe_phv_in_data_50),
    .io_pipe_phv_in_data_51(mau_0_io_pipe_phv_in_data_51),
    .io_pipe_phv_in_data_52(mau_0_io_pipe_phv_in_data_52),
    .io_pipe_phv_in_data_53(mau_0_io_pipe_phv_in_data_53),
    .io_pipe_phv_in_data_54(mau_0_io_pipe_phv_in_data_54),
    .io_pipe_phv_in_data_55(mau_0_io_pipe_phv_in_data_55),
    .io_pipe_phv_in_data_56(mau_0_io_pipe_phv_in_data_56),
    .io_pipe_phv_in_data_57(mau_0_io_pipe_phv_in_data_57),
    .io_pipe_phv_in_data_58(mau_0_io_pipe_phv_in_data_58),
    .io_pipe_phv_in_data_59(mau_0_io_pipe_phv_in_data_59),
    .io_pipe_phv_in_data_60(mau_0_io_pipe_phv_in_data_60),
    .io_pipe_phv_in_data_61(mau_0_io_pipe_phv_in_data_61),
    .io_pipe_phv_in_data_62(mau_0_io_pipe_phv_in_data_62),
    .io_pipe_phv_in_data_63(mau_0_io_pipe_phv_in_data_63),
    .io_pipe_phv_in_data_64(mau_0_io_pipe_phv_in_data_64),
    .io_pipe_phv_in_data_65(mau_0_io_pipe_phv_in_data_65),
    .io_pipe_phv_in_data_66(mau_0_io_pipe_phv_in_data_66),
    .io_pipe_phv_in_data_67(mau_0_io_pipe_phv_in_data_67),
    .io_pipe_phv_in_data_68(mau_0_io_pipe_phv_in_data_68),
    .io_pipe_phv_in_data_69(mau_0_io_pipe_phv_in_data_69),
    .io_pipe_phv_in_data_70(mau_0_io_pipe_phv_in_data_70),
    .io_pipe_phv_in_data_71(mau_0_io_pipe_phv_in_data_71),
    .io_pipe_phv_in_data_72(mau_0_io_pipe_phv_in_data_72),
    .io_pipe_phv_in_data_73(mau_0_io_pipe_phv_in_data_73),
    .io_pipe_phv_in_data_74(mau_0_io_pipe_phv_in_data_74),
    .io_pipe_phv_in_data_75(mau_0_io_pipe_phv_in_data_75),
    .io_pipe_phv_in_data_76(mau_0_io_pipe_phv_in_data_76),
    .io_pipe_phv_in_data_77(mau_0_io_pipe_phv_in_data_77),
    .io_pipe_phv_in_data_78(mau_0_io_pipe_phv_in_data_78),
    .io_pipe_phv_in_data_79(mau_0_io_pipe_phv_in_data_79),
    .io_pipe_phv_in_data_80(mau_0_io_pipe_phv_in_data_80),
    .io_pipe_phv_in_data_81(mau_0_io_pipe_phv_in_data_81),
    .io_pipe_phv_in_data_82(mau_0_io_pipe_phv_in_data_82),
    .io_pipe_phv_in_data_83(mau_0_io_pipe_phv_in_data_83),
    .io_pipe_phv_in_data_84(mau_0_io_pipe_phv_in_data_84),
    .io_pipe_phv_in_data_85(mau_0_io_pipe_phv_in_data_85),
    .io_pipe_phv_in_data_86(mau_0_io_pipe_phv_in_data_86),
    .io_pipe_phv_in_data_87(mau_0_io_pipe_phv_in_data_87),
    .io_pipe_phv_in_data_88(mau_0_io_pipe_phv_in_data_88),
    .io_pipe_phv_in_data_89(mau_0_io_pipe_phv_in_data_89),
    .io_pipe_phv_in_data_90(mau_0_io_pipe_phv_in_data_90),
    .io_pipe_phv_in_data_91(mau_0_io_pipe_phv_in_data_91),
    .io_pipe_phv_in_data_92(mau_0_io_pipe_phv_in_data_92),
    .io_pipe_phv_in_data_93(mau_0_io_pipe_phv_in_data_93),
    .io_pipe_phv_in_data_94(mau_0_io_pipe_phv_in_data_94),
    .io_pipe_phv_in_data_95(mau_0_io_pipe_phv_in_data_95),
    .io_pipe_phv_in_header_0(mau_0_io_pipe_phv_in_header_0),
    .io_pipe_phv_in_header_1(mau_0_io_pipe_phv_in_header_1),
    .io_pipe_phv_in_header_2(mau_0_io_pipe_phv_in_header_2),
    .io_pipe_phv_in_header_3(mau_0_io_pipe_phv_in_header_3),
    .io_pipe_phv_in_header_4(mau_0_io_pipe_phv_in_header_4),
    .io_pipe_phv_in_header_5(mau_0_io_pipe_phv_in_header_5),
    .io_pipe_phv_in_header_6(mau_0_io_pipe_phv_in_header_6),
    .io_pipe_phv_in_header_7(mau_0_io_pipe_phv_in_header_7),
    .io_pipe_phv_in_header_8(mau_0_io_pipe_phv_in_header_8),
    .io_pipe_phv_in_header_9(mau_0_io_pipe_phv_in_header_9),
    .io_pipe_phv_in_header_10(mau_0_io_pipe_phv_in_header_10),
    .io_pipe_phv_in_header_11(mau_0_io_pipe_phv_in_header_11),
    .io_pipe_phv_in_header_12(mau_0_io_pipe_phv_in_header_12),
    .io_pipe_phv_in_header_13(mau_0_io_pipe_phv_in_header_13),
    .io_pipe_phv_in_header_14(mau_0_io_pipe_phv_in_header_14),
    .io_pipe_phv_in_header_15(mau_0_io_pipe_phv_in_header_15),
    .io_pipe_phv_in_parse_current_state(mau_0_io_pipe_phv_in_parse_current_state),
    .io_pipe_phv_in_parse_current_offset(mau_0_io_pipe_phv_in_parse_current_offset),
    .io_pipe_phv_in_parse_transition_field(mau_0_io_pipe_phv_in_parse_transition_field),
    .io_pipe_phv_in_next_processor_id(mau_0_io_pipe_phv_in_next_processor_id),
    .io_pipe_phv_in_next_config_id(mau_0_io_pipe_phv_in_next_config_id),
    .io_pipe_phv_in_is_valid_processor(mau_0_io_pipe_phv_in_is_valid_processor),
    .io_pipe_phv_out_data_0(mau_0_io_pipe_phv_out_data_0),
    .io_pipe_phv_out_data_1(mau_0_io_pipe_phv_out_data_1),
    .io_pipe_phv_out_data_2(mau_0_io_pipe_phv_out_data_2),
    .io_pipe_phv_out_data_3(mau_0_io_pipe_phv_out_data_3),
    .io_pipe_phv_out_data_4(mau_0_io_pipe_phv_out_data_4),
    .io_pipe_phv_out_data_5(mau_0_io_pipe_phv_out_data_5),
    .io_pipe_phv_out_data_6(mau_0_io_pipe_phv_out_data_6),
    .io_pipe_phv_out_data_7(mau_0_io_pipe_phv_out_data_7),
    .io_pipe_phv_out_data_8(mau_0_io_pipe_phv_out_data_8),
    .io_pipe_phv_out_data_9(mau_0_io_pipe_phv_out_data_9),
    .io_pipe_phv_out_data_10(mau_0_io_pipe_phv_out_data_10),
    .io_pipe_phv_out_data_11(mau_0_io_pipe_phv_out_data_11),
    .io_pipe_phv_out_data_12(mau_0_io_pipe_phv_out_data_12),
    .io_pipe_phv_out_data_13(mau_0_io_pipe_phv_out_data_13),
    .io_pipe_phv_out_data_14(mau_0_io_pipe_phv_out_data_14),
    .io_pipe_phv_out_data_15(mau_0_io_pipe_phv_out_data_15),
    .io_pipe_phv_out_data_16(mau_0_io_pipe_phv_out_data_16),
    .io_pipe_phv_out_data_17(mau_0_io_pipe_phv_out_data_17),
    .io_pipe_phv_out_data_18(mau_0_io_pipe_phv_out_data_18),
    .io_pipe_phv_out_data_19(mau_0_io_pipe_phv_out_data_19),
    .io_pipe_phv_out_data_20(mau_0_io_pipe_phv_out_data_20),
    .io_pipe_phv_out_data_21(mau_0_io_pipe_phv_out_data_21),
    .io_pipe_phv_out_data_22(mau_0_io_pipe_phv_out_data_22),
    .io_pipe_phv_out_data_23(mau_0_io_pipe_phv_out_data_23),
    .io_pipe_phv_out_data_24(mau_0_io_pipe_phv_out_data_24),
    .io_pipe_phv_out_data_25(mau_0_io_pipe_phv_out_data_25),
    .io_pipe_phv_out_data_26(mau_0_io_pipe_phv_out_data_26),
    .io_pipe_phv_out_data_27(mau_0_io_pipe_phv_out_data_27),
    .io_pipe_phv_out_data_28(mau_0_io_pipe_phv_out_data_28),
    .io_pipe_phv_out_data_29(mau_0_io_pipe_phv_out_data_29),
    .io_pipe_phv_out_data_30(mau_0_io_pipe_phv_out_data_30),
    .io_pipe_phv_out_data_31(mau_0_io_pipe_phv_out_data_31),
    .io_pipe_phv_out_data_32(mau_0_io_pipe_phv_out_data_32),
    .io_pipe_phv_out_data_33(mau_0_io_pipe_phv_out_data_33),
    .io_pipe_phv_out_data_34(mau_0_io_pipe_phv_out_data_34),
    .io_pipe_phv_out_data_35(mau_0_io_pipe_phv_out_data_35),
    .io_pipe_phv_out_data_36(mau_0_io_pipe_phv_out_data_36),
    .io_pipe_phv_out_data_37(mau_0_io_pipe_phv_out_data_37),
    .io_pipe_phv_out_data_38(mau_0_io_pipe_phv_out_data_38),
    .io_pipe_phv_out_data_39(mau_0_io_pipe_phv_out_data_39),
    .io_pipe_phv_out_data_40(mau_0_io_pipe_phv_out_data_40),
    .io_pipe_phv_out_data_41(mau_0_io_pipe_phv_out_data_41),
    .io_pipe_phv_out_data_42(mau_0_io_pipe_phv_out_data_42),
    .io_pipe_phv_out_data_43(mau_0_io_pipe_phv_out_data_43),
    .io_pipe_phv_out_data_44(mau_0_io_pipe_phv_out_data_44),
    .io_pipe_phv_out_data_45(mau_0_io_pipe_phv_out_data_45),
    .io_pipe_phv_out_data_46(mau_0_io_pipe_phv_out_data_46),
    .io_pipe_phv_out_data_47(mau_0_io_pipe_phv_out_data_47),
    .io_pipe_phv_out_data_48(mau_0_io_pipe_phv_out_data_48),
    .io_pipe_phv_out_data_49(mau_0_io_pipe_phv_out_data_49),
    .io_pipe_phv_out_data_50(mau_0_io_pipe_phv_out_data_50),
    .io_pipe_phv_out_data_51(mau_0_io_pipe_phv_out_data_51),
    .io_pipe_phv_out_data_52(mau_0_io_pipe_phv_out_data_52),
    .io_pipe_phv_out_data_53(mau_0_io_pipe_phv_out_data_53),
    .io_pipe_phv_out_data_54(mau_0_io_pipe_phv_out_data_54),
    .io_pipe_phv_out_data_55(mau_0_io_pipe_phv_out_data_55),
    .io_pipe_phv_out_data_56(mau_0_io_pipe_phv_out_data_56),
    .io_pipe_phv_out_data_57(mau_0_io_pipe_phv_out_data_57),
    .io_pipe_phv_out_data_58(mau_0_io_pipe_phv_out_data_58),
    .io_pipe_phv_out_data_59(mau_0_io_pipe_phv_out_data_59),
    .io_pipe_phv_out_data_60(mau_0_io_pipe_phv_out_data_60),
    .io_pipe_phv_out_data_61(mau_0_io_pipe_phv_out_data_61),
    .io_pipe_phv_out_data_62(mau_0_io_pipe_phv_out_data_62),
    .io_pipe_phv_out_data_63(mau_0_io_pipe_phv_out_data_63),
    .io_pipe_phv_out_data_64(mau_0_io_pipe_phv_out_data_64),
    .io_pipe_phv_out_data_65(mau_0_io_pipe_phv_out_data_65),
    .io_pipe_phv_out_data_66(mau_0_io_pipe_phv_out_data_66),
    .io_pipe_phv_out_data_67(mau_0_io_pipe_phv_out_data_67),
    .io_pipe_phv_out_data_68(mau_0_io_pipe_phv_out_data_68),
    .io_pipe_phv_out_data_69(mau_0_io_pipe_phv_out_data_69),
    .io_pipe_phv_out_data_70(mau_0_io_pipe_phv_out_data_70),
    .io_pipe_phv_out_data_71(mau_0_io_pipe_phv_out_data_71),
    .io_pipe_phv_out_data_72(mau_0_io_pipe_phv_out_data_72),
    .io_pipe_phv_out_data_73(mau_0_io_pipe_phv_out_data_73),
    .io_pipe_phv_out_data_74(mau_0_io_pipe_phv_out_data_74),
    .io_pipe_phv_out_data_75(mau_0_io_pipe_phv_out_data_75),
    .io_pipe_phv_out_data_76(mau_0_io_pipe_phv_out_data_76),
    .io_pipe_phv_out_data_77(mau_0_io_pipe_phv_out_data_77),
    .io_pipe_phv_out_data_78(mau_0_io_pipe_phv_out_data_78),
    .io_pipe_phv_out_data_79(mau_0_io_pipe_phv_out_data_79),
    .io_pipe_phv_out_data_80(mau_0_io_pipe_phv_out_data_80),
    .io_pipe_phv_out_data_81(mau_0_io_pipe_phv_out_data_81),
    .io_pipe_phv_out_data_82(mau_0_io_pipe_phv_out_data_82),
    .io_pipe_phv_out_data_83(mau_0_io_pipe_phv_out_data_83),
    .io_pipe_phv_out_data_84(mau_0_io_pipe_phv_out_data_84),
    .io_pipe_phv_out_data_85(mau_0_io_pipe_phv_out_data_85),
    .io_pipe_phv_out_data_86(mau_0_io_pipe_phv_out_data_86),
    .io_pipe_phv_out_data_87(mau_0_io_pipe_phv_out_data_87),
    .io_pipe_phv_out_data_88(mau_0_io_pipe_phv_out_data_88),
    .io_pipe_phv_out_data_89(mau_0_io_pipe_phv_out_data_89),
    .io_pipe_phv_out_data_90(mau_0_io_pipe_phv_out_data_90),
    .io_pipe_phv_out_data_91(mau_0_io_pipe_phv_out_data_91),
    .io_pipe_phv_out_data_92(mau_0_io_pipe_phv_out_data_92),
    .io_pipe_phv_out_data_93(mau_0_io_pipe_phv_out_data_93),
    .io_pipe_phv_out_data_94(mau_0_io_pipe_phv_out_data_94),
    .io_pipe_phv_out_data_95(mau_0_io_pipe_phv_out_data_95),
    .io_pipe_phv_out_header_0(mau_0_io_pipe_phv_out_header_0),
    .io_pipe_phv_out_header_1(mau_0_io_pipe_phv_out_header_1),
    .io_pipe_phv_out_header_2(mau_0_io_pipe_phv_out_header_2),
    .io_pipe_phv_out_header_3(mau_0_io_pipe_phv_out_header_3),
    .io_pipe_phv_out_header_4(mau_0_io_pipe_phv_out_header_4),
    .io_pipe_phv_out_header_5(mau_0_io_pipe_phv_out_header_5),
    .io_pipe_phv_out_header_6(mau_0_io_pipe_phv_out_header_6),
    .io_pipe_phv_out_header_7(mau_0_io_pipe_phv_out_header_7),
    .io_pipe_phv_out_header_8(mau_0_io_pipe_phv_out_header_8),
    .io_pipe_phv_out_header_9(mau_0_io_pipe_phv_out_header_9),
    .io_pipe_phv_out_header_10(mau_0_io_pipe_phv_out_header_10),
    .io_pipe_phv_out_header_11(mau_0_io_pipe_phv_out_header_11),
    .io_pipe_phv_out_header_12(mau_0_io_pipe_phv_out_header_12),
    .io_pipe_phv_out_header_13(mau_0_io_pipe_phv_out_header_13),
    .io_pipe_phv_out_header_14(mau_0_io_pipe_phv_out_header_14),
    .io_pipe_phv_out_header_15(mau_0_io_pipe_phv_out_header_15),
    .io_pipe_phv_out_parse_current_state(mau_0_io_pipe_phv_out_parse_current_state),
    .io_pipe_phv_out_parse_current_offset(mau_0_io_pipe_phv_out_parse_current_offset),
    .io_pipe_phv_out_parse_transition_field(mau_0_io_pipe_phv_out_parse_transition_field),
    .io_pipe_phv_out_next_processor_id(mau_0_io_pipe_phv_out_next_processor_id),
    .io_pipe_phv_out_next_config_id(mau_0_io_pipe_phv_out_next_config_id),
    .io_pipe_phv_out_is_valid_processor(mau_0_io_pipe_phv_out_is_valid_processor),
    .io_mod_state_id_mod(mau_0_io_mod_state_id_mod),
    .io_mod_state_id(mau_0_io_mod_state_id),
    .io_mod_sram_w_cs(mau_0_io_mod_sram_w_cs),
    .io_mod_sram_w_addr(mau_0_io_mod_sram_w_addr),
    .io_mod_sram_w_data(mau_0_io_mod_sram_w_data)
  );
  ParseModule mau_1 ( // @[parser.scala 21:25]
    .clock(mau_1_clock),
    .io_pipe_phv_in_data_0(mau_1_io_pipe_phv_in_data_0),
    .io_pipe_phv_in_data_1(mau_1_io_pipe_phv_in_data_1),
    .io_pipe_phv_in_data_2(mau_1_io_pipe_phv_in_data_2),
    .io_pipe_phv_in_data_3(mau_1_io_pipe_phv_in_data_3),
    .io_pipe_phv_in_data_4(mau_1_io_pipe_phv_in_data_4),
    .io_pipe_phv_in_data_5(mau_1_io_pipe_phv_in_data_5),
    .io_pipe_phv_in_data_6(mau_1_io_pipe_phv_in_data_6),
    .io_pipe_phv_in_data_7(mau_1_io_pipe_phv_in_data_7),
    .io_pipe_phv_in_data_8(mau_1_io_pipe_phv_in_data_8),
    .io_pipe_phv_in_data_9(mau_1_io_pipe_phv_in_data_9),
    .io_pipe_phv_in_data_10(mau_1_io_pipe_phv_in_data_10),
    .io_pipe_phv_in_data_11(mau_1_io_pipe_phv_in_data_11),
    .io_pipe_phv_in_data_12(mau_1_io_pipe_phv_in_data_12),
    .io_pipe_phv_in_data_13(mau_1_io_pipe_phv_in_data_13),
    .io_pipe_phv_in_data_14(mau_1_io_pipe_phv_in_data_14),
    .io_pipe_phv_in_data_15(mau_1_io_pipe_phv_in_data_15),
    .io_pipe_phv_in_data_16(mau_1_io_pipe_phv_in_data_16),
    .io_pipe_phv_in_data_17(mau_1_io_pipe_phv_in_data_17),
    .io_pipe_phv_in_data_18(mau_1_io_pipe_phv_in_data_18),
    .io_pipe_phv_in_data_19(mau_1_io_pipe_phv_in_data_19),
    .io_pipe_phv_in_data_20(mau_1_io_pipe_phv_in_data_20),
    .io_pipe_phv_in_data_21(mau_1_io_pipe_phv_in_data_21),
    .io_pipe_phv_in_data_22(mau_1_io_pipe_phv_in_data_22),
    .io_pipe_phv_in_data_23(mau_1_io_pipe_phv_in_data_23),
    .io_pipe_phv_in_data_24(mau_1_io_pipe_phv_in_data_24),
    .io_pipe_phv_in_data_25(mau_1_io_pipe_phv_in_data_25),
    .io_pipe_phv_in_data_26(mau_1_io_pipe_phv_in_data_26),
    .io_pipe_phv_in_data_27(mau_1_io_pipe_phv_in_data_27),
    .io_pipe_phv_in_data_28(mau_1_io_pipe_phv_in_data_28),
    .io_pipe_phv_in_data_29(mau_1_io_pipe_phv_in_data_29),
    .io_pipe_phv_in_data_30(mau_1_io_pipe_phv_in_data_30),
    .io_pipe_phv_in_data_31(mau_1_io_pipe_phv_in_data_31),
    .io_pipe_phv_in_data_32(mau_1_io_pipe_phv_in_data_32),
    .io_pipe_phv_in_data_33(mau_1_io_pipe_phv_in_data_33),
    .io_pipe_phv_in_data_34(mau_1_io_pipe_phv_in_data_34),
    .io_pipe_phv_in_data_35(mau_1_io_pipe_phv_in_data_35),
    .io_pipe_phv_in_data_36(mau_1_io_pipe_phv_in_data_36),
    .io_pipe_phv_in_data_37(mau_1_io_pipe_phv_in_data_37),
    .io_pipe_phv_in_data_38(mau_1_io_pipe_phv_in_data_38),
    .io_pipe_phv_in_data_39(mau_1_io_pipe_phv_in_data_39),
    .io_pipe_phv_in_data_40(mau_1_io_pipe_phv_in_data_40),
    .io_pipe_phv_in_data_41(mau_1_io_pipe_phv_in_data_41),
    .io_pipe_phv_in_data_42(mau_1_io_pipe_phv_in_data_42),
    .io_pipe_phv_in_data_43(mau_1_io_pipe_phv_in_data_43),
    .io_pipe_phv_in_data_44(mau_1_io_pipe_phv_in_data_44),
    .io_pipe_phv_in_data_45(mau_1_io_pipe_phv_in_data_45),
    .io_pipe_phv_in_data_46(mau_1_io_pipe_phv_in_data_46),
    .io_pipe_phv_in_data_47(mau_1_io_pipe_phv_in_data_47),
    .io_pipe_phv_in_data_48(mau_1_io_pipe_phv_in_data_48),
    .io_pipe_phv_in_data_49(mau_1_io_pipe_phv_in_data_49),
    .io_pipe_phv_in_data_50(mau_1_io_pipe_phv_in_data_50),
    .io_pipe_phv_in_data_51(mau_1_io_pipe_phv_in_data_51),
    .io_pipe_phv_in_data_52(mau_1_io_pipe_phv_in_data_52),
    .io_pipe_phv_in_data_53(mau_1_io_pipe_phv_in_data_53),
    .io_pipe_phv_in_data_54(mau_1_io_pipe_phv_in_data_54),
    .io_pipe_phv_in_data_55(mau_1_io_pipe_phv_in_data_55),
    .io_pipe_phv_in_data_56(mau_1_io_pipe_phv_in_data_56),
    .io_pipe_phv_in_data_57(mau_1_io_pipe_phv_in_data_57),
    .io_pipe_phv_in_data_58(mau_1_io_pipe_phv_in_data_58),
    .io_pipe_phv_in_data_59(mau_1_io_pipe_phv_in_data_59),
    .io_pipe_phv_in_data_60(mau_1_io_pipe_phv_in_data_60),
    .io_pipe_phv_in_data_61(mau_1_io_pipe_phv_in_data_61),
    .io_pipe_phv_in_data_62(mau_1_io_pipe_phv_in_data_62),
    .io_pipe_phv_in_data_63(mau_1_io_pipe_phv_in_data_63),
    .io_pipe_phv_in_data_64(mau_1_io_pipe_phv_in_data_64),
    .io_pipe_phv_in_data_65(mau_1_io_pipe_phv_in_data_65),
    .io_pipe_phv_in_data_66(mau_1_io_pipe_phv_in_data_66),
    .io_pipe_phv_in_data_67(mau_1_io_pipe_phv_in_data_67),
    .io_pipe_phv_in_data_68(mau_1_io_pipe_phv_in_data_68),
    .io_pipe_phv_in_data_69(mau_1_io_pipe_phv_in_data_69),
    .io_pipe_phv_in_data_70(mau_1_io_pipe_phv_in_data_70),
    .io_pipe_phv_in_data_71(mau_1_io_pipe_phv_in_data_71),
    .io_pipe_phv_in_data_72(mau_1_io_pipe_phv_in_data_72),
    .io_pipe_phv_in_data_73(mau_1_io_pipe_phv_in_data_73),
    .io_pipe_phv_in_data_74(mau_1_io_pipe_phv_in_data_74),
    .io_pipe_phv_in_data_75(mau_1_io_pipe_phv_in_data_75),
    .io_pipe_phv_in_data_76(mau_1_io_pipe_phv_in_data_76),
    .io_pipe_phv_in_data_77(mau_1_io_pipe_phv_in_data_77),
    .io_pipe_phv_in_data_78(mau_1_io_pipe_phv_in_data_78),
    .io_pipe_phv_in_data_79(mau_1_io_pipe_phv_in_data_79),
    .io_pipe_phv_in_data_80(mau_1_io_pipe_phv_in_data_80),
    .io_pipe_phv_in_data_81(mau_1_io_pipe_phv_in_data_81),
    .io_pipe_phv_in_data_82(mau_1_io_pipe_phv_in_data_82),
    .io_pipe_phv_in_data_83(mau_1_io_pipe_phv_in_data_83),
    .io_pipe_phv_in_data_84(mau_1_io_pipe_phv_in_data_84),
    .io_pipe_phv_in_data_85(mau_1_io_pipe_phv_in_data_85),
    .io_pipe_phv_in_data_86(mau_1_io_pipe_phv_in_data_86),
    .io_pipe_phv_in_data_87(mau_1_io_pipe_phv_in_data_87),
    .io_pipe_phv_in_data_88(mau_1_io_pipe_phv_in_data_88),
    .io_pipe_phv_in_data_89(mau_1_io_pipe_phv_in_data_89),
    .io_pipe_phv_in_data_90(mau_1_io_pipe_phv_in_data_90),
    .io_pipe_phv_in_data_91(mau_1_io_pipe_phv_in_data_91),
    .io_pipe_phv_in_data_92(mau_1_io_pipe_phv_in_data_92),
    .io_pipe_phv_in_data_93(mau_1_io_pipe_phv_in_data_93),
    .io_pipe_phv_in_data_94(mau_1_io_pipe_phv_in_data_94),
    .io_pipe_phv_in_data_95(mau_1_io_pipe_phv_in_data_95),
    .io_pipe_phv_in_header_0(mau_1_io_pipe_phv_in_header_0),
    .io_pipe_phv_in_header_1(mau_1_io_pipe_phv_in_header_1),
    .io_pipe_phv_in_header_2(mau_1_io_pipe_phv_in_header_2),
    .io_pipe_phv_in_header_3(mau_1_io_pipe_phv_in_header_3),
    .io_pipe_phv_in_header_4(mau_1_io_pipe_phv_in_header_4),
    .io_pipe_phv_in_header_5(mau_1_io_pipe_phv_in_header_5),
    .io_pipe_phv_in_header_6(mau_1_io_pipe_phv_in_header_6),
    .io_pipe_phv_in_header_7(mau_1_io_pipe_phv_in_header_7),
    .io_pipe_phv_in_header_8(mau_1_io_pipe_phv_in_header_8),
    .io_pipe_phv_in_header_9(mau_1_io_pipe_phv_in_header_9),
    .io_pipe_phv_in_header_10(mau_1_io_pipe_phv_in_header_10),
    .io_pipe_phv_in_header_11(mau_1_io_pipe_phv_in_header_11),
    .io_pipe_phv_in_header_12(mau_1_io_pipe_phv_in_header_12),
    .io_pipe_phv_in_header_13(mau_1_io_pipe_phv_in_header_13),
    .io_pipe_phv_in_header_14(mau_1_io_pipe_phv_in_header_14),
    .io_pipe_phv_in_header_15(mau_1_io_pipe_phv_in_header_15),
    .io_pipe_phv_in_parse_current_state(mau_1_io_pipe_phv_in_parse_current_state),
    .io_pipe_phv_in_parse_current_offset(mau_1_io_pipe_phv_in_parse_current_offset),
    .io_pipe_phv_in_parse_transition_field(mau_1_io_pipe_phv_in_parse_transition_field),
    .io_pipe_phv_in_next_processor_id(mau_1_io_pipe_phv_in_next_processor_id),
    .io_pipe_phv_in_next_config_id(mau_1_io_pipe_phv_in_next_config_id),
    .io_pipe_phv_in_is_valid_processor(mau_1_io_pipe_phv_in_is_valid_processor),
    .io_pipe_phv_out_data_0(mau_1_io_pipe_phv_out_data_0),
    .io_pipe_phv_out_data_1(mau_1_io_pipe_phv_out_data_1),
    .io_pipe_phv_out_data_2(mau_1_io_pipe_phv_out_data_2),
    .io_pipe_phv_out_data_3(mau_1_io_pipe_phv_out_data_3),
    .io_pipe_phv_out_data_4(mau_1_io_pipe_phv_out_data_4),
    .io_pipe_phv_out_data_5(mau_1_io_pipe_phv_out_data_5),
    .io_pipe_phv_out_data_6(mau_1_io_pipe_phv_out_data_6),
    .io_pipe_phv_out_data_7(mau_1_io_pipe_phv_out_data_7),
    .io_pipe_phv_out_data_8(mau_1_io_pipe_phv_out_data_8),
    .io_pipe_phv_out_data_9(mau_1_io_pipe_phv_out_data_9),
    .io_pipe_phv_out_data_10(mau_1_io_pipe_phv_out_data_10),
    .io_pipe_phv_out_data_11(mau_1_io_pipe_phv_out_data_11),
    .io_pipe_phv_out_data_12(mau_1_io_pipe_phv_out_data_12),
    .io_pipe_phv_out_data_13(mau_1_io_pipe_phv_out_data_13),
    .io_pipe_phv_out_data_14(mau_1_io_pipe_phv_out_data_14),
    .io_pipe_phv_out_data_15(mau_1_io_pipe_phv_out_data_15),
    .io_pipe_phv_out_data_16(mau_1_io_pipe_phv_out_data_16),
    .io_pipe_phv_out_data_17(mau_1_io_pipe_phv_out_data_17),
    .io_pipe_phv_out_data_18(mau_1_io_pipe_phv_out_data_18),
    .io_pipe_phv_out_data_19(mau_1_io_pipe_phv_out_data_19),
    .io_pipe_phv_out_data_20(mau_1_io_pipe_phv_out_data_20),
    .io_pipe_phv_out_data_21(mau_1_io_pipe_phv_out_data_21),
    .io_pipe_phv_out_data_22(mau_1_io_pipe_phv_out_data_22),
    .io_pipe_phv_out_data_23(mau_1_io_pipe_phv_out_data_23),
    .io_pipe_phv_out_data_24(mau_1_io_pipe_phv_out_data_24),
    .io_pipe_phv_out_data_25(mau_1_io_pipe_phv_out_data_25),
    .io_pipe_phv_out_data_26(mau_1_io_pipe_phv_out_data_26),
    .io_pipe_phv_out_data_27(mau_1_io_pipe_phv_out_data_27),
    .io_pipe_phv_out_data_28(mau_1_io_pipe_phv_out_data_28),
    .io_pipe_phv_out_data_29(mau_1_io_pipe_phv_out_data_29),
    .io_pipe_phv_out_data_30(mau_1_io_pipe_phv_out_data_30),
    .io_pipe_phv_out_data_31(mau_1_io_pipe_phv_out_data_31),
    .io_pipe_phv_out_data_32(mau_1_io_pipe_phv_out_data_32),
    .io_pipe_phv_out_data_33(mau_1_io_pipe_phv_out_data_33),
    .io_pipe_phv_out_data_34(mau_1_io_pipe_phv_out_data_34),
    .io_pipe_phv_out_data_35(mau_1_io_pipe_phv_out_data_35),
    .io_pipe_phv_out_data_36(mau_1_io_pipe_phv_out_data_36),
    .io_pipe_phv_out_data_37(mau_1_io_pipe_phv_out_data_37),
    .io_pipe_phv_out_data_38(mau_1_io_pipe_phv_out_data_38),
    .io_pipe_phv_out_data_39(mau_1_io_pipe_phv_out_data_39),
    .io_pipe_phv_out_data_40(mau_1_io_pipe_phv_out_data_40),
    .io_pipe_phv_out_data_41(mau_1_io_pipe_phv_out_data_41),
    .io_pipe_phv_out_data_42(mau_1_io_pipe_phv_out_data_42),
    .io_pipe_phv_out_data_43(mau_1_io_pipe_phv_out_data_43),
    .io_pipe_phv_out_data_44(mau_1_io_pipe_phv_out_data_44),
    .io_pipe_phv_out_data_45(mau_1_io_pipe_phv_out_data_45),
    .io_pipe_phv_out_data_46(mau_1_io_pipe_phv_out_data_46),
    .io_pipe_phv_out_data_47(mau_1_io_pipe_phv_out_data_47),
    .io_pipe_phv_out_data_48(mau_1_io_pipe_phv_out_data_48),
    .io_pipe_phv_out_data_49(mau_1_io_pipe_phv_out_data_49),
    .io_pipe_phv_out_data_50(mau_1_io_pipe_phv_out_data_50),
    .io_pipe_phv_out_data_51(mau_1_io_pipe_phv_out_data_51),
    .io_pipe_phv_out_data_52(mau_1_io_pipe_phv_out_data_52),
    .io_pipe_phv_out_data_53(mau_1_io_pipe_phv_out_data_53),
    .io_pipe_phv_out_data_54(mau_1_io_pipe_phv_out_data_54),
    .io_pipe_phv_out_data_55(mau_1_io_pipe_phv_out_data_55),
    .io_pipe_phv_out_data_56(mau_1_io_pipe_phv_out_data_56),
    .io_pipe_phv_out_data_57(mau_1_io_pipe_phv_out_data_57),
    .io_pipe_phv_out_data_58(mau_1_io_pipe_phv_out_data_58),
    .io_pipe_phv_out_data_59(mau_1_io_pipe_phv_out_data_59),
    .io_pipe_phv_out_data_60(mau_1_io_pipe_phv_out_data_60),
    .io_pipe_phv_out_data_61(mau_1_io_pipe_phv_out_data_61),
    .io_pipe_phv_out_data_62(mau_1_io_pipe_phv_out_data_62),
    .io_pipe_phv_out_data_63(mau_1_io_pipe_phv_out_data_63),
    .io_pipe_phv_out_data_64(mau_1_io_pipe_phv_out_data_64),
    .io_pipe_phv_out_data_65(mau_1_io_pipe_phv_out_data_65),
    .io_pipe_phv_out_data_66(mau_1_io_pipe_phv_out_data_66),
    .io_pipe_phv_out_data_67(mau_1_io_pipe_phv_out_data_67),
    .io_pipe_phv_out_data_68(mau_1_io_pipe_phv_out_data_68),
    .io_pipe_phv_out_data_69(mau_1_io_pipe_phv_out_data_69),
    .io_pipe_phv_out_data_70(mau_1_io_pipe_phv_out_data_70),
    .io_pipe_phv_out_data_71(mau_1_io_pipe_phv_out_data_71),
    .io_pipe_phv_out_data_72(mau_1_io_pipe_phv_out_data_72),
    .io_pipe_phv_out_data_73(mau_1_io_pipe_phv_out_data_73),
    .io_pipe_phv_out_data_74(mau_1_io_pipe_phv_out_data_74),
    .io_pipe_phv_out_data_75(mau_1_io_pipe_phv_out_data_75),
    .io_pipe_phv_out_data_76(mau_1_io_pipe_phv_out_data_76),
    .io_pipe_phv_out_data_77(mau_1_io_pipe_phv_out_data_77),
    .io_pipe_phv_out_data_78(mau_1_io_pipe_phv_out_data_78),
    .io_pipe_phv_out_data_79(mau_1_io_pipe_phv_out_data_79),
    .io_pipe_phv_out_data_80(mau_1_io_pipe_phv_out_data_80),
    .io_pipe_phv_out_data_81(mau_1_io_pipe_phv_out_data_81),
    .io_pipe_phv_out_data_82(mau_1_io_pipe_phv_out_data_82),
    .io_pipe_phv_out_data_83(mau_1_io_pipe_phv_out_data_83),
    .io_pipe_phv_out_data_84(mau_1_io_pipe_phv_out_data_84),
    .io_pipe_phv_out_data_85(mau_1_io_pipe_phv_out_data_85),
    .io_pipe_phv_out_data_86(mau_1_io_pipe_phv_out_data_86),
    .io_pipe_phv_out_data_87(mau_1_io_pipe_phv_out_data_87),
    .io_pipe_phv_out_data_88(mau_1_io_pipe_phv_out_data_88),
    .io_pipe_phv_out_data_89(mau_1_io_pipe_phv_out_data_89),
    .io_pipe_phv_out_data_90(mau_1_io_pipe_phv_out_data_90),
    .io_pipe_phv_out_data_91(mau_1_io_pipe_phv_out_data_91),
    .io_pipe_phv_out_data_92(mau_1_io_pipe_phv_out_data_92),
    .io_pipe_phv_out_data_93(mau_1_io_pipe_phv_out_data_93),
    .io_pipe_phv_out_data_94(mau_1_io_pipe_phv_out_data_94),
    .io_pipe_phv_out_data_95(mau_1_io_pipe_phv_out_data_95),
    .io_pipe_phv_out_header_0(mau_1_io_pipe_phv_out_header_0),
    .io_pipe_phv_out_header_1(mau_1_io_pipe_phv_out_header_1),
    .io_pipe_phv_out_header_2(mau_1_io_pipe_phv_out_header_2),
    .io_pipe_phv_out_header_3(mau_1_io_pipe_phv_out_header_3),
    .io_pipe_phv_out_header_4(mau_1_io_pipe_phv_out_header_4),
    .io_pipe_phv_out_header_5(mau_1_io_pipe_phv_out_header_5),
    .io_pipe_phv_out_header_6(mau_1_io_pipe_phv_out_header_6),
    .io_pipe_phv_out_header_7(mau_1_io_pipe_phv_out_header_7),
    .io_pipe_phv_out_header_8(mau_1_io_pipe_phv_out_header_8),
    .io_pipe_phv_out_header_9(mau_1_io_pipe_phv_out_header_9),
    .io_pipe_phv_out_header_10(mau_1_io_pipe_phv_out_header_10),
    .io_pipe_phv_out_header_11(mau_1_io_pipe_phv_out_header_11),
    .io_pipe_phv_out_header_12(mau_1_io_pipe_phv_out_header_12),
    .io_pipe_phv_out_header_13(mau_1_io_pipe_phv_out_header_13),
    .io_pipe_phv_out_header_14(mau_1_io_pipe_phv_out_header_14),
    .io_pipe_phv_out_header_15(mau_1_io_pipe_phv_out_header_15),
    .io_pipe_phv_out_parse_current_state(mau_1_io_pipe_phv_out_parse_current_state),
    .io_pipe_phv_out_parse_current_offset(mau_1_io_pipe_phv_out_parse_current_offset),
    .io_pipe_phv_out_parse_transition_field(mau_1_io_pipe_phv_out_parse_transition_field),
    .io_pipe_phv_out_next_processor_id(mau_1_io_pipe_phv_out_next_processor_id),
    .io_pipe_phv_out_next_config_id(mau_1_io_pipe_phv_out_next_config_id),
    .io_pipe_phv_out_is_valid_processor(mau_1_io_pipe_phv_out_is_valid_processor),
    .io_mod_state_id_mod(mau_1_io_mod_state_id_mod),
    .io_mod_state_id(mau_1_io_mod_state_id),
    .io_mod_sram_w_cs(mau_1_io_mod_sram_w_cs),
    .io_mod_sram_w_addr(mau_1_io_mod_sram_w_addr),
    .io_mod_sram_w_data(mau_1_io_mod_sram_w_data)
  );
  ParseModule mau_2 ( // @[parser.scala 21:25]
    .clock(mau_2_clock),
    .io_pipe_phv_in_data_0(mau_2_io_pipe_phv_in_data_0),
    .io_pipe_phv_in_data_1(mau_2_io_pipe_phv_in_data_1),
    .io_pipe_phv_in_data_2(mau_2_io_pipe_phv_in_data_2),
    .io_pipe_phv_in_data_3(mau_2_io_pipe_phv_in_data_3),
    .io_pipe_phv_in_data_4(mau_2_io_pipe_phv_in_data_4),
    .io_pipe_phv_in_data_5(mau_2_io_pipe_phv_in_data_5),
    .io_pipe_phv_in_data_6(mau_2_io_pipe_phv_in_data_6),
    .io_pipe_phv_in_data_7(mau_2_io_pipe_phv_in_data_7),
    .io_pipe_phv_in_data_8(mau_2_io_pipe_phv_in_data_8),
    .io_pipe_phv_in_data_9(mau_2_io_pipe_phv_in_data_9),
    .io_pipe_phv_in_data_10(mau_2_io_pipe_phv_in_data_10),
    .io_pipe_phv_in_data_11(mau_2_io_pipe_phv_in_data_11),
    .io_pipe_phv_in_data_12(mau_2_io_pipe_phv_in_data_12),
    .io_pipe_phv_in_data_13(mau_2_io_pipe_phv_in_data_13),
    .io_pipe_phv_in_data_14(mau_2_io_pipe_phv_in_data_14),
    .io_pipe_phv_in_data_15(mau_2_io_pipe_phv_in_data_15),
    .io_pipe_phv_in_data_16(mau_2_io_pipe_phv_in_data_16),
    .io_pipe_phv_in_data_17(mau_2_io_pipe_phv_in_data_17),
    .io_pipe_phv_in_data_18(mau_2_io_pipe_phv_in_data_18),
    .io_pipe_phv_in_data_19(mau_2_io_pipe_phv_in_data_19),
    .io_pipe_phv_in_data_20(mau_2_io_pipe_phv_in_data_20),
    .io_pipe_phv_in_data_21(mau_2_io_pipe_phv_in_data_21),
    .io_pipe_phv_in_data_22(mau_2_io_pipe_phv_in_data_22),
    .io_pipe_phv_in_data_23(mau_2_io_pipe_phv_in_data_23),
    .io_pipe_phv_in_data_24(mau_2_io_pipe_phv_in_data_24),
    .io_pipe_phv_in_data_25(mau_2_io_pipe_phv_in_data_25),
    .io_pipe_phv_in_data_26(mau_2_io_pipe_phv_in_data_26),
    .io_pipe_phv_in_data_27(mau_2_io_pipe_phv_in_data_27),
    .io_pipe_phv_in_data_28(mau_2_io_pipe_phv_in_data_28),
    .io_pipe_phv_in_data_29(mau_2_io_pipe_phv_in_data_29),
    .io_pipe_phv_in_data_30(mau_2_io_pipe_phv_in_data_30),
    .io_pipe_phv_in_data_31(mau_2_io_pipe_phv_in_data_31),
    .io_pipe_phv_in_data_32(mau_2_io_pipe_phv_in_data_32),
    .io_pipe_phv_in_data_33(mau_2_io_pipe_phv_in_data_33),
    .io_pipe_phv_in_data_34(mau_2_io_pipe_phv_in_data_34),
    .io_pipe_phv_in_data_35(mau_2_io_pipe_phv_in_data_35),
    .io_pipe_phv_in_data_36(mau_2_io_pipe_phv_in_data_36),
    .io_pipe_phv_in_data_37(mau_2_io_pipe_phv_in_data_37),
    .io_pipe_phv_in_data_38(mau_2_io_pipe_phv_in_data_38),
    .io_pipe_phv_in_data_39(mau_2_io_pipe_phv_in_data_39),
    .io_pipe_phv_in_data_40(mau_2_io_pipe_phv_in_data_40),
    .io_pipe_phv_in_data_41(mau_2_io_pipe_phv_in_data_41),
    .io_pipe_phv_in_data_42(mau_2_io_pipe_phv_in_data_42),
    .io_pipe_phv_in_data_43(mau_2_io_pipe_phv_in_data_43),
    .io_pipe_phv_in_data_44(mau_2_io_pipe_phv_in_data_44),
    .io_pipe_phv_in_data_45(mau_2_io_pipe_phv_in_data_45),
    .io_pipe_phv_in_data_46(mau_2_io_pipe_phv_in_data_46),
    .io_pipe_phv_in_data_47(mau_2_io_pipe_phv_in_data_47),
    .io_pipe_phv_in_data_48(mau_2_io_pipe_phv_in_data_48),
    .io_pipe_phv_in_data_49(mau_2_io_pipe_phv_in_data_49),
    .io_pipe_phv_in_data_50(mau_2_io_pipe_phv_in_data_50),
    .io_pipe_phv_in_data_51(mau_2_io_pipe_phv_in_data_51),
    .io_pipe_phv_in_data_52(mau_2_io_pipe_phv_in_data_52),
    .io_pipe_phv_in_data_53(mau_2_io_pipe_phv_in_data_53),
    .io_pipe_phv_in_data_54(mau_2_io_pipe_phv_in_data_54),
    .io_pipe_phv_in_data_55(mau_2_io_pipe_phv_in_data_55),
    .io_pipe_phv_in_data_56(mau_2_io_pipe_phv_in_data_56),
    .io_pipe_phv_in_data_57(mau_2_io_pipe_phv_in_data_57),
    .io_pipe_phv_in_data_58(mau_2_io_pipe_phv_in_data_58),
    .io_pipe_phv_in_data_59(mau_2_io_pipe_phv_in_data_59),
    .io_pipe_phv_in_data_60(mau_2_io_pipe_phv_in_data_60),
    .io_pipe_phv_in_data_61(mau_2_io_pipe_phv_in_data_61),
    .io_pipe_phv_in_data_62(mau_2_io_pipe_phv_in_data_62),
    .io_pipe_phv_in_data_63(mau_2_io_pipe_phv_in_data_63),
    .io_pipe_phv_in_data_64(mau_2_io_pipe_phv_in_data_64),
    .io_pipe_phv_in_data_65(mau_2_io_pipe_phv_in_data_65),
    .io_pipe_phv_in_data_66(mau_2_io_pipe_phv_in_data_66),
    .io_pipe_phv_in_data_67(mau_2_io_pipe_phv_in_data_67),
    .io_pipe_phv_in_data_68(mau_2_io_pipe_phv_in_data_68),
    .io_pipe_phv_in_data_69(mau_2_io_pipe_phv_in_data_69),
    .io_pipe_phv_in_data_70(mau_2_io_pipe_phv_in_data_70),
    .io_pipe_phv_in_data_71(mau_2_io_pipe_phv_in_data_71),
    .io_pipe_phv_in_data_72(mau_2_io_pipe_phv_in_data_72),
    .io_pipe_phv_in_data_73(mau_2_io_pipe_phv_in_data_73),
    .io_pipe_phv_in_data_74(mau_2_io_pipe_phv_in_data_74),
    .io_pipe_phv_in_data_75(mau_2_io_pipe_phv_in_data_75),
    .io_pipe_phv_in_data_76(mau_2_io_pipe_phv_in_data_76),
    .io_pipe_phv_in_data_77(mau_2_io_pipe_phv_in_data_77),
    .io_pipe_phv_in_data_78(mau_2_io_pipe_phv_in_data_78),
    .io_pipe_phv_in_data_79(mau_2_io_pipe_phv_in_data_79),
    .io_pipe_phv_in_data_80(mau_2_io_pipe_phv_in_data_80),
    .io_pipe_phv_in_data_81(mau_2_io_pipe_phv_in_data_81),
    .io_pipe_phv_in_data_82(mau_2_io_pipe_phv_in_data_82),
    .io_pipe_phv_in_data_83(mau_2_io_pipe_phv_in_data_83),
    .io_pipe_phv_in_data_84(mau_2_io_pipe_phv_in_data_84),
    .io_pipe_phv_in_data_85(mau_2_io_pipe_phv_in_data_85),
    .io_pipe_phv_in_data_86(mau_2_io_pipe_phv_in_data_86),
    .io_pipe_phv_in_data_87(mau_2_io_pipe_phv_in_data_87),
    .io_pipe_phv_in_data_88(mau_2_io_pipe_phv_in_data_88),
    .io_pipe_phv_in_data_89(mau_2_io_pipe_phv_in_data_89),
    .io_pipe_phv_in_data_90(mau_2_io_pipe_phv_in_data_90),
    .io_pipe_phv_in_data_91(mau_2_io_pipe_phv_in_data_91),
    .io_pipe_phv_in_data_92(mau_2_io_pipe_phv_in_data_92),
    .io_pipe_phv_in_data_93(mau_2_io_pipe_phv_in_data_93),
    .io_pipe_phv_in_data_94(mau_2_io_pipe_phv_in_data_94),
    .io_pipe_phv_in_data_95(mau_2_io_pipe_phv_in_data_95),
    .io_pipe_phv_in_header_0(mau_2_io_pipe_phv_in_header_0),
    .io_pipe_phv_in_header_1(mau_2_io_pipe_phv_in_header_1),
    .io_pipe_phv_in_header_2(mau_2_io_pipe_phv_in_header_2),
    .io_pipe_phv_in_header_3(mau_2_io_pipe_phv_in_header_3),
    .io_pipe_phv_in_header_4(mau_2_io_pipe_phv_in_header_4),
    .io_pipe_phv_in_header_5(mau_2_io_pipe_phv_in_header_5),
    .io_pipe_phv_in_header_6(mau_2_io_pipe_phv_in_header_6),
    .io_pipe_phv_in_header_7(mau_2_io_pipe_phv_in_header_7),
    .io_pipe_phv_in_header_8(mau_2_io_pipe_phv_in_header_8),
    .io_pipe_phv_in_header_9(mau_2_io_pipe_phv_in_header_9),
    .io_pipe_phv_in_header_10(mau_2_io_pipe_phv_in_header_10),
    .io_pipe_phv_in_header_11(mau_2_io_pipe_phv_in_header_11),
    .io_pipe_phv_in_header_12(mau_2_io_pipe_phv_in_header_12),
    .io_pipe_phv_in_header_13(mau_2_io_pipe_phv_in_header_13),
    .io_pipe_phv_in_header_14(mau_2_io_pipe_phv_in_header_14),
    .io_pipe_phv_in_header_15(mau_2_io_pipe_phv_in_header_15),
    .io_pipe_phv_in_parse_current_state(mau_2_io_pipe_phv_in_parse_current_state),
    .io_pipe_phv_in_parse_current_offset(mau_2_io_pipe_phv_in_parse_current_offset),
    .io_pipe_phv_in_parse_transition_field(mau_2_io_pipe_phv_in_parse_transition_field),
    .io_pipe_phv_in_next_processor_id(mau_2_io_pipe_phv_in_next_processor_id),
    .io_pipe_phv_in_next_config_id(mau_2_io_pipe_phv_in_next_config_id),
    .io_pipe_phv_in_is_valid_processor(mau_2_io_pipe_phv_in_is_valid_processor),
    .io_pipe_phv_out_data_0(mau_2_io_pipe_phv_out_data_0),
    .io_pipe_phv_out_data_1(mau_2_io_pipe_phv_out_data_1),
    .io_pipe_phv_out_data_2(mau_2_io_pipe_phv_out_data_2),
    .io_pipe_phv_out_data_3(mau_2_io_pipe_phv_out_data_3),
    .io_pipe_phv_out_data_4(mau_2_io_pipe_phv_out_data_4),
    .io_pipe_phv_out_data_5(mau_2_io_pipe_phv_out_data_5),
    .io_pipe_phv_out_data_6(mau_2_io_pipe_phv_out_data_6),
    .io_pipe_phv_out_data_7(mau_2_io_pipe_phv_out_data_7),
    .io_pipe_phv_out_data_8(mau_2_io_pipe_phv_out_data_8),
    .io_pipe_phv_out_data_9(mau_2_io_pipe_phv_out_data_9),
    .io_pipe_phv_out_data_10(mau_2_io_pipe_phv_out_data_10),
    .io_pipe_phv_out_data_11(mau_2_io_pipe_phv_out_data_11),
    .io_pipe_phv_out_data_12(mau_2_io_pipe_phv_out_data_12),
    .io_pipe_phv_out_data_13(mau_2_io_pipe_phv_out_data_13),
    .io_pipe_phv_out_data_14(mau_2_io_pipe_phv_out_data_14),
    .io_pipe_phv_out_data_15(mau_2_io_pipe_phv_out_data_15),
    .io_pipe_phv_out_data_16(mau_2_io_pipe_phv_out_data_16),
    .io_pipe_phv_out_data_17(mau_2_io_pipe_phv_out_data_17),
    .io_pipe_phv_out_data_18(mau_2_io_pipe_phv_out_data_18),
    .io_pipe_phv_out_data_19(mau_2_io_pipe_phv_out_data_19),
    .io_pipe_phv_out_data_20(mau_2_io_pipe_phv_out_data_20),
    .io_pipe_phv_out_data_21(mau_2_io_pipe_phv_out_data_21),
    .io_pipe_phv_out_data_22(mau_2_io_pipe_phv_out_data_22),
    .io_pipe_phv_out_data_23(mau_2_io_pipe_phv_out_data_23),
    .io_pipe_phv_out_data_24(mau_2_io_pipe_phv_out_data_24),
    .io_pipe_phv_out_data_25(mau_2_io_pipe_phv_out_data_25),
    .io_pipe_phv_out_data_26(mau_2_io_pipe_phv_out_data_26),
    .io_pipe_phv_out_data_27(mau_2_io_pipe_phv_out_data_27),
    .io_pipe_phv_out_data_28(mau_2_io_pipe_phv_out_data_28),
    .io_pipe_phv_out_data_29(mau_2_io_pipe_phv_out_data_29),
    .io_pipe_phv_out_data_30(mau_2_io_pipe_phv_out_data_30),
    .io_pipe_phv_out_data_31(mau_2_io_pipe_phv_out_data_31),
    .io_pipe_phv_out_data_32(mau_2_io_pipe_phv_out_data_32),
    .io_pipe_phv_out_data_33(mau_2_io_pipe_phv_out_data_33),
    .io_pipe_phv_out_data_34(mau_2_io_pipe_phv_out_data_34),
    .io_pipe_phv_out_data_35(mau_2_io_pipe_phv_out_data_35),
    .io_pipe_phv_out_data_36(mau_2_io_pipe_phv_out_data_36),
    .io_pipe_phv_out_data_37(mau_2_io_pipe_phv_out_data_37),
    .io_pipe_phv_out_data_38(mau_2_io_pipe_phv_out_data_38),
    .io_pipe_phv_out_data_39(mau_2_io_pipe_phv_out_data_39),
    .io_pipe_phv_out_data_40(mau_2_io_pipe_phv_out_data_40),
    .io_pipe_phv_out_data_41(mau_2_io_pipe_phv_out_data_41),
    .io_pipe_phv_out_data_42(mau_2_io_pipe_phv_out_data_42),
    .io_pipe_phv_out_data_43(mau_2_io_pipe_phv_out_data_43),
    .io_pipe_phv_out_data_44(mau_2_io_pipe_phv_out_data_44),
    .io_pipe_phv_out_data_45(mau_2_io_pipe_phv_out_data_45),
    .io_pipe_phv_out_data_46(mau_2_io_pipe_phv_out_data_46),
    .io_pipe_phv_out_data_47(mau_2_io_pipe_phv_out_data_47),
    .io_pipe_phv_out_data_48(mau_2_io_pipe_phv_out_data_48),
    .io_pipe_phv_out_data_49(mau_2_io_pipe_phv_out_data_49),
    .io_pipe_phv_out_data_50(mau_2_io_pipe_phv_out_data_50),
    .io_pipe_phv_out_data_51(mau_2_io_pipe_phv_out_data_51),
    .io_pipe_phv_out_data_52(mau_2_io_pipe_phv_out_data_52),
    .io_pipe_phv_out_data_53(mau_2_io_pipe_phv_out_data_53),
    .io_pipe_phv_out_data_54(mau_2_io_pipe_phv_out_data_54),
    .io_pipe_phv_out_data_55(mau_2_io_pipe_phv_out_data_55),
    .io_pipe_phv_out_data_56(mau_2_io_pipe_phv_out_data_56),
    .io_pipe_phv_out_data_57(mau_2_io_pipe_phv_out_data_57),
    .io_pipe_phv_out_data_58(mau_2_io_pipe_phv_out_data_58),
    .io_pipe_phv_out_data_59(mau_2_io_pipe_phv_out_data_59),
    .io_pipe_phv_out_data_60(mau_2_io_pipe_phv_out_data_60),
    .io_pipe_phv_out_data_61(mau_2_io_pipe_phv_out_data_61),
    .io_pipe_phv_out_data_62(mau_2_io_pipe_phv_out_data_62),
    .io_pipe_phv_out_data_63(mau_2_io_pipe_phv_out_data_63),
    .io_pipe_phv_out_data_64(mau_2_io_pipe_phv_out_data_64),
    .io_pipe_phv_out_data_65(mau_2_io_pipe_phv_out_data_65),
    .io_pipe_phv_out_data_66(mau_2_io_pipe_phv_out_data_66),
    .io_pipe_phv_out_data_67(mau_2_io_pipe_phv_out_data_67),
    .io_pipe_phv_out_data_68(mau_2_io_pipe_phv_out_data_68),
    .io_pipe_phv_out_data_69(mau_2_io_pipe_phv_out_data_69),
    .io_pipe_phv_out_data_70(mau_2_io_pipe_phv_out_data_70),
    .io_pipe_phv_out_data_71(mau_2_io_pipe_phv_out_data_71),
    .io_pipe_phv_out_data_72(mau_2_io_pipe_phv_out_data_72),
    .io_pipe_phv_out_data_73(mau_2_io_pipe_phv_out_data_73),
    .io_pipe_phv_out_data_74(mau_2_io_pipe_phv_out_data_74),
    .io_pipe_phv_out_data_75(mau_2_io_pipe_phv_out_data_75),
    .io_pipe_phv_out_data_76(mau_2_io_pipe_phv_out_data_76),
    .io_pipe_phv_out_data_77(mau_2_io_pipe_phv_out_data_77),
    .io_pipe_phv_out_data_78(mau_2_io_pipe_phv_out_data_78),
    .io_pipe_phv_out_data_79(mau_2_io_pipe_phv_out_data_79),
    .io_pipe_phv_out_data_80(mau_2_io_pipe_phv_out_data_80),
    .io_pipe_phv_out_data_81(mau_2_io_pipe_phv_out_data_81),
    .io_pipe_phv_out_data_82(mau_2_io_pipe_phv_out_data_82),
    .io_pipe_phv_out_data_83(mau_2_io_pipe_phv_out_data_83),
    .io_pipe_phv_out_data_84(mau_2_io_pipe_phv_out_data_84),
    .io_pipe_phv_out_data_85(mau_2_io_pipe_phv_out_data_85),
    .io_pipe_phv_out_data_86(mau_2_io_pipe_phv_out_data_86),
    .io_pipe_phv_out_data_87(mau_2_io_pipe_phv_out_data_87),
    .io_pipe_phv_out_data_88(mau_2_io_pipe_phv_out_data_88),
    .io_pipe_phv_out_data_89(mau_2_io_pipe_phv_out_data_89),
    .io_pipe_phv_out_data_90(mau_2_io_pipe_phv_out_data_90),
    .io_pipe_phv_out_data_91(mau_2_io_pipe_phv_out_data_91),
    .io_pipe_phv_out_data_92(mau_2_io_pipe_phv_out_data_92),
    .io_pipe_phv_out_data_93(mau_2_io_pipe_phv_out_data_93),
    .io_pipe_phv_out_data_94(mau_2_io_pipe_phv_out_data_94),
    .io_pipe_phv_out_data_95(mau_2_io_pipe_phv_out_data_95),
    .io_pipe_phv_out_header_0(mau_2_io_pipe_phv_out_header_0),
    .io_pipe_phv_out_header_1(mau_2_io_pipe_phv_out_header_1),
    .io_pipe_phv_out_header_2(mau_2_io_pipe_phv_out_header_2),
    .io_pipe_phv_out_header_3(mau_2_io_pipe_phv_out_header_3),
    .io_pipe_phv_out_header_4(mau_2_io_pipe_phv_out_header_4),
    .io_pipe_phv_out_header_5(mau_2_io_pipe_phv_out_header_5),
    .io_pipe_phv_out_header_6(mau_2_io_pipe_phv_out_header_6),
    .io_pipe_phv_out_header_7(mau_2_io_pipe_phv_out_header_7),
    .io_pipe_phv_out_header_8(mau_2_io_pipe_phv_out_header_8),
    .io_pipe_phv_out_header_9(mau_2_io_pipe_phv_out_header_9),
    .io_pipe_phv_out_header_10(mau_2_io_pipe_phv_out_header_10),
    .io_pipe_phv_out_header_11(mau_2_io_pipe_phv_out_header_11),
    .io_pipe_phv_out_header_12(mau_2_io_pipe_phv_out_header_12),
    .io_pipe_phv_out_header_13(mau_2_io_pipe_phv_out_header_13),
    .io_pipe_phv_out_header_14(mau_2_io_pipe_phv_out_header_14),
    .io_pipe_phv_out_header_15(mau_2_io_pipe_phv_out_header_15),
    .io_pipe_phv_out_parse_current_state(mau_2_io_pipe_phv_out_parse_current_state),
    .io_pipe_phv_out_parse_current_offset(mau_2_io_pipe_phv_out_parse_current_offset),
    .io_pipe_phv_out_parse_transition_field(mau_2_io_pipe_phv_out_parse_transition_field),
    .io_pipe_phv_out_next_processor_id(mau_2_io_pipe_phv_out_next_processor_id),
    .io_pipe_phv_out_next_config_id(mau_2_io_pipe_phv_out_next_config_id),
    .io_pipe_phv_out_is_valid_processor(mau_2_io_pipe_phv_out_is_valid_processor),
    .io_mod_state_id_mod(mau_2_io_mod_state_id_mod),
    .io_mod_state_id(mau_2_io_mod_state_id),
    .io_mod_sram_w_cs(mau_2_io_mod_sram_w_cs),
    .io_mod_sram_w_addr(mau_2_io_mod_sram_w_addr),
    .io_mod_sram_w_data(mau_2_io_mod_sram_w_data)
  );
  ParseModule mau_3 ( // @[parser.scala 21:25]
    .clock(mau_3_clock),
    .io_pipe_phv_in_data_0(mau_3_io_pipe_phv_in_data_0),
    .io_pipe_phv_in_data_1(mau_3_io_pipe_phv_in_data_1),
    .io_pipe_phv_in_data_2(mau_3_io_pipe_phv_in_data_2),
    .io_pipe_phv_in_data_3(mau_3_io_pipe_phv_in_data_3),
    .io_pipe_phv_in_data_4(mau_3_io_pipe_phv_in_data_4),
    .io_pipe_phv_in_data_5(mau_3_io_pipe_phv_in_data_5),
    .io_pipe_phv_in_data_6(mau_3_io_pipe_phv_in_data_6),
    .io_pipe_phv_in_data_7(mau_3_io_pipe_phv_in_data_7),
    .io_pipe_phv_in_data_8(mau_3_io_pipe_phv_in_data_8),
    .io_pipe_phv_in_data_9(mau_3_io_pipe_phv_in_data_9),
    .io_pipe_phv_in_data_10(mau_3_io_pipe_phv_in_data_10),
    .io_pipe_phv_in_data_11(mau_3_io_pipe_phv_in_data_11),
    .io_pipe_phv_in_data_12(mau_3_io_pipe_phv_in_data_12),
    .io_pipe_phv_in_data_13(mau_3_io_pipe_phv_in_data_13),
    .io_pipe_phv_in_data_14(mau_3_io_pipe_phv_in_data_14),
    .io_pipe_phv_in_data_15(mau_3_io_pipe_phv_in_data_15),
    .io_pipe_phv_in_data_16(mau_3_io_pipe_phv_in_data_16),
    .io_pipe_phv_in_data_17(mau_3_io_pipe_phv_in_data_17),
    .io_pipe_phv_in_data_18(mau_3_io_pipe_phv_in_data_18),
    .io_pipe_phv_in_data_19(mau_3_io_pipe_phv_in_data_19),
    .io_pipe_phv_in_data_20(mau_3_io_pipe_phv_in_data_20),
    .io_pipe_phv_in_data_21(mau_3_io_pipe_phv_in_data_21),
    .io_pipe_phv_in_data_22(mau_3_io_pipe_phv_in_data_22),
    .io_pipe_phv_in_data_23(mau_3_io_pipe_phv_in_data_23),
    .io_pipe_phv_in_data_24(mau_3_io_pipe_phv_in_data_24),
    .io_pipe_phv_in_data_25(mau_3_io_pipe_phv_in_data_25),
    .io_pipe_phv_in_data_26(mau_3_io_pipe_phv_in_data_26),
    .io_pipe_phv_in_data_27(mau_3_io_pipe_phv_in_data_27),
    .io_pipe_phv_in_data_28(mau_3_io_pipe_phv_in_data_28),
    .io_pipe_phv_in_data_29(mau_3_io_pipe_phv_in_data_29),
    .io_pipe_phv_in_data_30(mau_3_io_pipe_phv_in_data_30),
    .io_pipe_phv_in_data_31(mau_3_io_pipe_phv_in_data_31),
    .io_pipe_phv_in_data_32(mau_3_io_pipe_phv_in_data_32),
    .io_pipe_phv_in_data_33(mau_3_io_pipe_phv_in_data_33),
    .io_pipe_phv_in_data_34(mau_3_io_pipe_phv_in_data_34),
    .io_pipe_phv_in_data_35(mau_3_io_pipe_phv_in_data_35),
    .io_pipe_phv_in_data_36(mau_3_io_pipe_phv_in_data_36),
    .io_pipe_phv_in_data_37(mau_3_io_pipe_phv_in_data_37),
    .io_pipe_phv_in_data_38(mau_3_io_pipe_phv_in_data_38),
    .io_pipe_phv_in_data_39(mau_3_io_pipe_phv_in_data_39),
    .io_pipe_phv_in_data_40(mau_3_io_pipe_phv_in_data_40),
    .io_pipe_phv_in_data_41(mau_3_io_pipe_phv_in_data_41),
    .io_pipe_phv_in_data_42(mau_3_io_pipe_phv_in_data_42),
    .io_pipe_phv_in_data_43(mau_3_io_pipe_phv_in_data_43),
    .io_pipe_phv_in_data_44(mau_3_io_pipe_phv_in_data_44),
    .io_pipe_phv_in_data_45(mau_3_io_pipe_phv_in_data_45),
    .io_pipe_phv_in_data_46(mau_3_io_pipe_phv_in_data_46),
    .io_pipe_phv_in_data_47(mau_3_io_pipe_phv_in_data_47),
    .io_pipe_phv_in_data_48(mau_3_io_pipe_phv_in_data_48),
    .io_pipe_phv_in_data_49(mau_3_io_pipe_phv_in_data_49),
    .io_pipe_phv_in_data_50(mau_3_io_pipe_phv_in_data_50),
    .io_pipe_phv_in_data_51(mau_3_io_pipe_phv_in_data_51),
    .io_pipe_phv_in_data_52(mau_3_io_pipe_phv_in_data_52),
    .io_pipe_phv_in_data_53(mau_3_io_pipe_phv_in_data_53),
    .io_pipe_phv_in_data_54(mau_3_io_pipe_phv_in_data_54),
    .io_pipe_phv_in_data_55(mau_3_io_pipe_phv_in_data_55),
    .io_pipe_phv_in_data_56(mau_3_io_pipe_phv_in_data_56),
    .io_pipe_phv_in_data_57(mau_3_io_pipe_phv_in_data_57),
    .io_pipe_phv_in_data_58(mau_3_io_pipe_phv_in_data_58),
    .io_pipe_phv_in_data_59(mau_3_io_pipe_phv_in_data_59),
    .io_pipe_phv_in_data_60(mau_3_io_pipe_phv_in_data_60),
    .io_pipe_phv_in_data_61(mau_3_io_pipe_phv_in_data_61),
    .io_pipe_phv_in_data_62(mau_3_io_pipe_phv_in_data_62),
    .io_pipe_phv_in_data_63(mau_3_io_pipe_phv_in_data_63),
    .io_pipe_phv_in_data_64(mau_3_io_pipe_phv_in_data_64),
    .io_pipe_phv_in_data_65(mau_3_io_pipe_phv_in_data_65),
    .io_pipe_phv_in_data_66(mau_3_io_pipe_phv_in_data_66),
    .io_pipe_phv_in_data_67(mau_3_io_pipe_phv_in_data_67),
    .io_pipe_phv_in_data_68(mau_3_io_pipe_phv_in_data_68),
    .io_pipe_phv_in_data_69(mau_3_io_pipe_phv_in_data_69),
    .io_pipe_phv_in_data_70(mau_3_io_pipe_phv_in_data_70),
    .io_pipe_phv_in_data_71(mau_3_io_pipe_phv_in_data_71),
    .io_pipe_phv_in_data_72(mau_3_io_pipe_phv_in_data_72),
    .io_pipe_phv_in_data_73(mau_3_io_pipe_phv_in_data_73),
    .io_pipe_phv_in_data_74(mau_3_io_pipe_phv_in_data_74),
    .io_pipe_phv_in_data_75(mau_3_io_pipe_phv_in_data_75),
    .io_pipe_phv_in_data_76(mau_3_io_pipe_phv_in_data_76),
    .io_pipe_phv_in_data_77(mau_3_io_pipe_phv_in_data_77),
    .io_pipe_phv_in_data_78(mau_3_io_pipe_phv_in_data_78),
    .io_pipe_phv_in_data_79(mau_3_io_pipe_phv_in_data_79),
    .io_pipe_phv_in_data_80(mau_3_io_pipe_phv_in_data_80),
    .io_pipe_phv_in_data_81(mau_3_io_pipe_phv_in_data_81),
    .io_pipe_phv_in_data_82(mau_3_io_pipe_phv_in_data_82),
    .io_pipe_phv_in_data_83(mau_3_io_pipe_phv_in_data_83),
    .io_pipe_phv_in_data_84(mau_3_io_pipe_phv_in_data_84),
    .io_pipe_phv_in_data_85(mau_3_io_pipe_phv_in_data_85),
    .io_pipe_phv_in_data_86(mau_3_io_pipe_phv_in_data_86),
    .io_pipe_phv_in_data_87(mau_3_io_pipe_phv_in_data_87),
    .io_pipe_phv_in_data_88(mau_3_io_pipe_phv_in_data_88),
    .io_pipe_phv_in_data_89(mau_3_io_pipe_phv_in_data_89),
    .io_pipe_phv_in_data_90(mau_3_io_pipe_phv_in_data_90),
    .io_pipe_phv_in_data_91(mau_3_io_pipe_phv_in_data_91),
    .io_pipe_phv_in_data_92(mau_3_io_pipe_phv_in_data_92),
    .io_pipe_phv_in_data_93(mau_3_io_pipe_phv_in_data_93),
    .io_pipe_phv_in_data_94(mau_3_io_pipe_phv_in_data_94),
    .io_pipe_phv_in_data_95(mau_3_io_pipe_phv_in_data_95),
    .io_pipe_phv_in_header_0(mau_3_io_pipe_phv_in_header_0),
    .io_pipe_phv_in_header_1(mau_3_io_pipe_phv_in_header_1),
    .io_pipe_phv_in_header_2(mau_3_io_pipe_phv_in_header_2),
    .io_pipe_phv_in_header_3(mau_3_io_pipe_phv_in_header_3),
    .io_pipe_phv_in_header_4(mau_3_io_pipe_phv_in_header_4),
    .io_pipe_phv_in_header_5(mau_3_io_pipe_phv_in_header_5),
    .io_pipe_phv_in_header_6(mau_3_io_pipe_phv_in_header_6),
    .io_pipe_phv_in_header_7(mau_3_io_pipe_phv_in_header_7),
    .io_pipe_phv_in_header_8(mau_3_io_pipe_phv_in_header_8),
    .io_pipe_phv_in_header_9(mau_3_io_pipe_phv_in_header_9),
    .io_pipe_phv_in_header_10(mau_3_io_pipe_phv_in_header_10),
    .io_pipe_phv_in_header_11(mau_3_io_pipe_phv_in_header_11),
    .io_pipe_phv_in_header_12(mau_3_io_pipe_phv_in_header_12),
    .io_pipe_phv_in_header_13(mau_3_io_pipe_phv_in_header_13),
    .io_pipe_phv_in_header_14(mau_3_io_pipe_phv_in_header_14),
    .io_pipe_phv_in_header_15(mau_3_io_pipe_phv_in_header_15),
    .io_pipe_phv_in_parse_current_state(mau_3_io_pipe_phv_in_parse_current_state),
    .io_pipe_phv_in_parse_current_offset(mau_3_io_pipe_phv_in_parse_current_offset),
    .io_pipe_phv_in_parse_transition_field(mau_3_io_pipe_phv_in_parse_transition_field),
    .io_pipe_phv_in_next_processor_id(mau_3_io_pipe_phv_in_next_processor_id),
    .io_pipe_phv_in_next_config_id(mau_3_io_pipe_phv_in_next_config_id),
    .io_pipe_phv_in_is_valid_processor(mau_3_io_pipe_phv_in_is_valid_processor),
    .io_pipe_phv_out_data_0(mau_3_io_pipe_phv_out_data_0),
    .io_pipe_phv_out_data_1(mau_3_io_pipe_phv_out_data_1),
    .io_pipe_phv_out_data_2(mau_3_io_pipe_phv_out_data_2),
    .io_pipe_phv_out_data_3(mau_3_io_pipe_phv_out_data_3),
    .io_pipe_phv_out_data_4(mau_3_io_pipe_phv_out_data_4),
    .io_pipe_phv_out_data_5(mau_3_io_pipe_phv_out_data_5),
    .io_pipe_phv_out_data_6(mau_3_io_pipe_phv_out_data_6),
    .io_pipe_phv_out_data_7(mau_3_io_pipe_phv_out_data_7),
    .io_pipe_phv_out_data_8(mau_3_io_pipe_phv_out_data_8),
    .io_pipe_phv_out_data_9(mau_3_io_pipe_phv_out_data_9),
    .io_pipe_phv_out_data_10(mau_3_io_pipe_phv_out_data_10),
    .io_pipe_phv_out_data_11(mau_3_io_pipe_phv_out_data_11),
    .io_pipe_phv_out_data_12(mau_3_io_pipe_phv_out_data_12),
    .io_pipe_phv_out_data_13(mau_3_io_pipe_phv_out_data_13),
    .io_pipe_phv_out_data_14(mau_3_io_pipe_phv_out_data_14),
    .io_pipe_phv_out_data_15(mau_3_io_pipe_phv_out_data_15),
    .io_pipe_phv_out_data_16(mau_3_io_pipe_phv_out_data_16),
    .io_pipe_phv_out_data_17(mau_3_io_pipe_phv_out_data_17),
    .io_pipe_phv_out_data_18(mau_3_io_pipe_phv_out_data_18),
    .io_pipe_phv_out_data_19(mau_3_io_pipe_phv_out_data_19),
    .io_pipe_phv_out_data_20(mau_3_io_pipe_phv_out_data_20),
    .io_pipe_phv_out_data_21(mau_3_io_pipe_phv_out_data_21),
    .io_pipe_phv_out_data_22(mau_3_io_pipe_phv_out_data_22),
    .io_pipe_phv_out_data_23(mau_3_io_pipe_phv_out_data_23),
    .io_pipe_phv_out_data_24(mau_3_io_pipe_phv_out_data_24),
    .io_pipe_phv_out_data_25(mau_3_io_pipe_phv_out_data_25),
    .io_pipe_phv_out_data_26(mau_3_io_pipe_phv_out_data_26),
    .io_pipe_phv_out_data_27(mau_3_io_pipe_phv_out_data_27),
    .io_pipe_phv_out_data_28(mau_3_io_pipe_phv_out_data_28),
    .io_pipe_phv_out_data_29(mau_3_io_pipe_phv_out_data_29),
    .io_pipe_phv_out_data_30(mau_3_io_pipe_phv_out_data_30),
    .io_pipe_phv_out_data_31(mau_3_io_pipe_phv_out_data_31),
    .io_pipe_phv_out_data_32(mau_3_io_pipe_phv_out_data_32),
    .io_pipe_phv_out_data_33(mau_3_io_pipe_phv_out_data_33),
    .io_pipe_phv_out_data_34(mau_3_io_pipe_phv_out_data_34),
    .io_pipe_phv_out_data_35(mau_3_io_pipe_phv_out_data_35),
    .io_pipe_phv_out_data_36(mau_3_io_pipe_phv_out_data_36),
    .io_pipe_phv_out_data_37(mau_3_io_pipe_phv_out_data_37),
    .io_pipe_phv_out_data_38(mau_3_io_pipe_phv_out_data_38),
    .io_pipe_phv_out_data_39(mau_3_io_pipe_phv_out_data_39),
    .io_pipe_phv_out_data_40(mau_3_io_pipe_phv_out_data_40),
    .io_pipe_phv_out_data_41(mau_3_io_pipe_phv_out_data_41),
    .io_pipe_phv_out_data_42(mau_3_io_pipe_phv_out_data_42),
    .io_pipe_phv_out_data_43(mau_3_io_pipe_phv_out_data_43),
    .io_pipe_phv_out_data_44(mau_3_io_pipe_phv_out_data_44),
    .io_pipe_phv_out_data_45(mau_3_io_pipe_phv_out_data_45),
    .io_pipe_phv_out_data_46(mau_3_io_pipe_phv_out_data_46),
    .io_pipe_phv_out_data_47(mau_3_io_pipe_phv_out_data_47),
    .io_pipe_phv_out_data_48(mau_3_io_pipe_phv_out_data_48),
    .io_pipe_phv_out_data_49(mau_3_io_pipe_phv_out_data_49),
    .io_pipe_phv_out_data_50(mau_3_io_pipe_phv_out_data_50),
    .io_pipe_phv_out_data_51(mau_3_io_pipe_phv_out_data_51),
    .io_pipe_phv_out_data_52(mau_3_io_pipe_phv_out_data_52),
    .io_pipe_phv_out_data_53(mau_3_io_pipe_phv_out_data_53),
    .io_pipe_phv_out_data_54(mau_3_io_pipe_phv_out_data_54),
    .io_pipe_phv_out_data_55(mau_3_io_pipe_phv_out_data_55),
    .io_pipe_phv_out_data_56(mau_3_io_pipe_phv_out_data_56),
    .io_pipe_phv_out_data_57(mau_3_io_pipe_phv_out_data_57),
    .io_pipe_phv_out_data_58(mau_3_io_pipe_phv_out_data_58),
    .io_pipe_phv_out_data_59(mau_3_io_pipe_phv_out_data_59),
    .io_pipe_phv_out_data_60(mau_3_io_pipe_phv_out_data_60),
    .io_pipe_phv_out_data_61(mau_3_io_pipe_phv_out_data_61),
    .io_pipe_phv_out_data_62(mau_3_io_pipe_phv_out_data_62),
    .io_pipe_phv_out_data_63(mau_3_io_pipe_phv_out_data_63),
    .io_pipe_phv_out_data_64(mau_3_io_pipe_phv_out_data_64),
    .io_pipe_phv_out_data_65(mau_3_io_pipe_phv_out_data_65),
    .io_pipe_phv_out_data_66(mau_3_io_pipe_phv_out_data_66),
    .io_pipe_phv_out_data_67(mau_3_io_pipe_phv_out_data_67),
    .io_pipe_phv_out_data_68(mau_3_io_pipe_phv_out_data_68),
    .io_pipe_phv_out_data_69(mau_3_io_pipe_phv_out_data_69),
    .io_pipe_phv_out_data_70(mau_3_io_pipe_phv_out_data_70),
    .io_pipe_phv_out_data_71(mau_3_io_pipe_phv_out_data_71),
    .io_pipe_phv_out_data_72(mau_3_io_pipe_phv_out_data_72),
    .io_pipe_phv_out_data_73(mau_3_io_pipe_phv_out_data_73),
    .io_pipe_phv_out_data_74(mau_3_io_pipe_phv_out_data_74),
    .io_pipe_phv_out_data_75(mau_3_io_pipe_phv_out_data_75),
    .io_pipe_phv_out_data_76(mau_3_io_pipe_phv_out_data_76),
    .io_pipe_phv_out_data_77(mau_3_io_pipe_phv_out_data_77),
    .io_pipe_phv_out_data_78(mau_3_io_pipe_phv_out_data_78),
    .io_pipe_phv_out_data_79(mau_3_io_pipe_phv_out_data_79),
    .io_pipe_phv_out_data_80(mau_3_io_pipe_phv_out_data_80),
    .io_pipe_phv_out_data_81(mau_3_io_pipe_phv_out_data_81),
    .io_pipe_phv_out_data_82(mau_3_io_pipe_phv_out_data_82),
    .io_pipe_phv_out_data_83(mau_3_io_pipe_phv_out_data_83),
    .io_pipe_phv_out_data_84(mau_3_io_pipe_phv_out_data_84),
    .io_pipe_phv_out_data_85(mau_3_io_pipe_phv_out_data_85),
    .io_pipe_phv_out_data_86(mau_3_io_pipe_phv_out_data_86),
    .io_pipe_phv_out_data_87(mau_3_io_pipe_phv_out_data_87),
    .io_pipe_phv_out_data_88(mau_3_io_pipe_phv_out_data_88),
    .io_pipe_phv_out_data_89(mau_3_io_pipe_phv_out_data_89),
    .io_pipe_phv_out_data_90(mau_3_io_pipe_phv_out_data_90),
    .io_pipe_phv_out_data_91(mau_3_io_pipe_phv_out_data_91),
    .io_pipe_phv_out_data_92(mau_3_io_pipe_phv_out_data_92),
    .io_pipe_phv_out_data_93(mau_3_io_pipe_phv_out_data_93),
    .io_pipe_phv_out_data_94(mau_3_io_pipe_phv_out_data_94),
    .io_pipe_phv_out_data_95(mau_3_io_pipe_phv_out_data_95),
    .io_pipe_phv_out_header_0(mau_3_io_pipe_phv_out_header_0),
    .io_pipe_phv_out_header_1(mau_3_io_pipe_phv_out_header_1),
    .io_pipe_phv_out_header_2(mau_3_io_pipe_phv_out_header_2),
    .io_pipe_phv_out_header_3(mau_3_io_pipe_phv_out_header_3),
    .io_pipe_phv_out_header_4(mau_3_io_pipe_phv_out_header_4),
    .io_pipe_phv_out_header_5(mau_3_io_pipe_phv_out_header_5),
    .io_pipe_phv_out_header_6(mau_3_io_pipe_phv_out_header_6),
    .io_pipe_phv_out_header_7(mau_3_io_pipe_phv_out_header_7),
    .io_pipe_phv_out_header_8(mau_3_io_pipe_phv_out_header_8),
    .io_pipe_phv_out_header_9(mau_3_io_pipe_phv_out_header_9),
    .io_pipe_phv_out_header_10(mau_3_io_pipe_phv_out_header_10),
    .io_pipe_phv_out_header_11(mau_3_io_pipe_phv_out_header_11),
    .io_pipe_phv_out_header_12(mau_3_io_pipe_phv_out_header_12),
    .io_pipe_phv_out_header_13(mau_3_io_pipe_phv_out_header_13),
    .io_pipe_phv_out_header_14(mau_3_io_pipe_phv_out_header_14),
    .io_pipe_phv_out_header_15(mau_3_io_pipe_phv_out_header_15),
    .io_pipe_phv_out_parse_current_state(mau_3_io_pipe_phv_out_parse_current_state),
    .io_pipe_phv_out_parse_current_offset(mau_3_io_pipe_phv_out_parse_current_offset),
    .io_pipe_phv_out_parse_transition_field(mau_3_io_pipe_phv_out_parse_transition_field),
    .io_pipe_phv_out_next_processor_id(mau_3_io_pipe_phv_out_next_processor_id),
    .io_pipe_phv_out_next_config_id(mau_3_io_pipe_phv_out_next_config_id),
    .io_pipe_phv_out_is_valid_processor(mau_3_io_pipe_phv_out_is_valid_processor),
    .io_mod_state_id_mod(mau_3_io_mod_state_id_mod),
    .io_mod_state_id(mau_3_io_mod_state_id),
    .io_mod_sram_w_cs(mau_3_io_mod_sram_w_cs),
    .io_mod_sram_w_addr(mau_3_io_mod_sram_w_addr),
    .io_mod_sram_w_data(mau_3_io_mod_sram_w_data)
  );
  ParseModule mau_4 ( // @[parser.scala 21:25]
    .clock(mau_4_clock),
    .io_pipe_phv_in_data_0(mau_4_io_pipe_phv_in_data_0),
    .io_pipe_phv_in_data_1(mau_4_io_pipe_phv_in_data_1),
    .io_pipe_phv_in_data_2(mau_4_io_pipe_phv_in_data_2),
    .io_pipe_phv_in_data_3(mau_4_io_pipe_phv_in_data_3),
    .io_pipe_phv_in_data_4(mau_4_io_pipe_phv_in_data_4),
    .io_pipe_phv_in_data_5(mau_4_io_pipe_phv_in_data_5),
    .io_pipe_phv_in_data_6(mau_4_io_pipe_phv_in_data_6),
    .io_pipe_phv_in_data_7(mau_4_io_pipe_phv_in_data_7),
    .io_pipe_phv_in_data_8(mau_4_io_pipe_phv_in_data_8),
    .io_pipe_phv_in_data_9(mau_4_io_pipe_phv_in_data_9),
    .io_pipe_phv_in_data_10(mau_4_io_pipe_phv_in_data_10),
    .io_pipe_phv_in_data_11(mau_4_io_pipe_phv_in_data_11),
    .io_pipe_phv_in_data_12(mau_4_io_pipe_phv_in_data_12),
    .io_pipe_phv_in_data_13(mau_4_io_pipe_phv_in_data_13),
    .io_pipe_phv_in_data_14(mau_4_io_pipe_phv_in_data_14),
    .io_pipe_phv_in_data_15(mau_4_io_pipe_phv_in_data_15),
    .io_pipe_phv_in_data_16(mau_4_io_pipe_phv_in_data_16),
    .io_pipe_phv_in_data_17(mau_4_io_pipe_phv_in_data_17),
    .io_pipe_phv_in_data_18(mau_4_io_pipe_phv_in_data_18),
    .io_pipe_phv_in_data_19(mau_4_io_pipe_phv_in_data_19),
    .io_pipe_phv_in_data_20(mau_4_io_pipe_phv_in_data_20),
    .io_pipe_phv_in_data_21(mau_4_io_pipe_phv_in_data_21),
    .io_pipe_phv_in_data_22(mau_4_io_pipe_phv_in_data_22),
    .io_pipe_phv_in_data_23(mau_4_io_pipe_phv_in_data_23),
    .io_pipe_phv_in_data_24(mau_4_io_pipe_phv_in_data_24),
    .io_pipe_phv_in_data_25(mau_4_io_pipe_phv_in_data_25),
    .io_pipe_phv_in_data_26(mau_4_io_pipe_phv_in_data_26),
    .io_pipe_phv_in_data_27(mau_4_io_pipe_phv_in_data_27),
    .io_pipe_phv_in_data_28(mau_4_io_pipe_phv_in_data_28),
    .io_pipe_phv_in_data_29(mau_4_io_pipe_phv_in_data_29),
    .io_pipe_phv_in_data_30(mau_4_io_pipe_phv_in_data_30),
    .io_pipe_phv_in_data_31(mau_4_io_pipe_phv_in_data_31),
    .io_pipe_phv_in_data_32(mau_4_io_pipe_phv_in_data_32),
    .io_pipe_phv_in_data_33(mau_4_io_pipe_phv_in_data_33),
    .io_pipe_phv_in_data_34(mau_4_io_pipe_phv_in_data_34),
    .io_pipe_phv_in_data_35(mau_4_io_pipe_phv_in_data_35),
    .io_pipe_phv_in_data_36(mau_4_io_pipe_phv_in_data_36),
    .io_pipe_phv_in_data_37(mau_4_io_pipe_phv_in_data_37),
    .io_pipe_phv_in_data_38(mau_4_io_pipe_phv_in_data_38),
    .io_pipe_phv_in_data_39(mau_4_io_pipe_phv_in_data_39),
    .io_pipe_phv_in_data_40(mau_4_io_pipe_phv_in_data_40),
    .io_pipe_phv_in_data_41(mau_4_io_pipe_phv_in_data_41),
    .io_pipe_phv_in_data_42(mau_4_io_pipe_phv_in_data_42),
    .io_pipe_phv_in_data_43(mau_4_io_pipe_phv_in_data_43),
    .io_pipe_phv_in_data_44(mau_4_io_pipe_phv_in_data_44),
    .io_pipe_phv_in_data_45(mau_4_io_pipe_phv_in_data_45),
    .io_pipe_phv_in_data_46(mau_4_io_pipe_phv_in_data_46),
    .io_pipe_phv_in_data_47(mau_4_io_pipe_phv_in_data_47),
    .io_pipe_phv_in_data_48(mau_4_io_pipe_phv_in_data_48),
    .io_pipe_phv_in_data_49(mau_4_io_pipe_phv_in_data_49),
    .io_pipe_phv_in_data_50(mau_4_io_pipe_phv_in_data_50),
    .io_pipe_phv_in_data_51(mau_4_io_pipe_phv_in_data_51),
    .io_pipe_phv_in_data_52(mau_4_io_pipe_phv_in_data_52),
    .io_pipe_phv_in_data_53(mau_4_io_pipe_phv_in_data_53),
    .io_pipe_phv_in_data_54(mau_4_io_pipe_phv_in_data_54),
    .io_pipe_phv_in_data_55(mau_4_io_pipe_phv_in_data_55),
    .io_pipe_phv_in_data_56(mau_4_io_pipe_phv_in_data_56),
    .io_pipe_phv_in_data_57(mau_4_io_pipe_phv_in_data_57),
    .io_pipe_phv_in_data_58(mau_4_io_pipe_phv_in_data_58),
    .io_pipe_phv_in_data_59(mau_4_io_pipe_phv_in_data_59),
    .io_pipe_phv_in_data_60(mau_4_io_pipe_phv_in_data_60),
    .io_pipe_phv_in_data_61(mau_4_io_pipe_phv_in_data_61),
    .io_pipe_phv_in_data_62(mau_4_io_pipe_phv_in_data_62),
    .io_pipe_phv_in_data_63(mau_4_io_pipe_phv_in_data_63),
    .io_pipe_phv_in_data_64(mau_4_io_pipe_phv_in_data_64),
    .io_pipe_phv_in_data_65(mau_4_io_pipe_phv_in_data_65),
    .io_pipe_phv_in_data_66(mau_4_io_pipe_phv_in_data_66),
    .io_pipe_phv_in_data_67(mau_4_io_pipe_phv_in_data_67),
    .io_pipe_phv_in_data_68(mau_4_io_pipe_phv_in_data_68),
    .io_pipe_phv_in_data_69(mau_4_io_pipe_phv_in_data_69),
    .io_pipe_phv_in_data_70(mau_4_io_pipe_phv_in_data_70),
    .io_pipe_phv_in_data_71(mau_4_io_pipe_phv_in_data_71),
    .io_pipe_phv_in_data_72(mau_4_io_pipe_phv_in_data_72),
    .io_pipe_phv_in_data_73(mau_4_io_pipe_phv_in_data_73),
    .io_pipe_phv_in_data_74(mau_4_io_pipe_phv_in_data_74),
    .io_pipe_phv_in_data_75(mau_4_io_pipe_phv_in_data_75),
    .io_pipe_phv_in_data_76(mau_4_io_pipe_phv_in_data_76),
    .io_pipe_phv_in_data_77(mau_4_io_pipe_phv_in_data_77),
    .io_pipe_phv_in_data_78(mau_4_io_pipe_phv_in_data_78),
    .io_pipe_phv_in_data_79(mau_4_io_pipe_phv_in_data_79),
    .io_pipe_phv_in_data_80(mau_4_io_pipe_phv_in_data_80),
    .io_pipe_phv_in_data_81(mau_4_io_pipe_phv_in_data_81),
    .io_pipe_phv_in_data_82(mau_4_io_pipe_phv_in_data_82),
    .io_pipe_phv_in_data_83(mau_4_io_pipe_phv_in_data_83),
    .io_pipe_phv_in_data_84(mau_4_io_pipe_phv_in_data_84),
    .io_pipe_phv_in_data_85(mau_4_io_pipe_phv_in_data_85),
    .io_pipe_phv_in_data_86(mau_4_io_pipe_phv_in_data_86),
    .io_pipe_phv_in_data_87(mau_4_io_pipe_phv_in_data_87),
    .io_pipe_phv_in_data_88(mau_4_io_pipe_phv_in_data_88),
    .io_pipe_phv_in_data_89(mau_4_io_pipe_phv_in_data_89),
    .io_pipe_phv_in_data_90(mau_4_io_pipe_phv_in_data_90),
    .io_pipe_phv_in_data_91(mau_4_io_pipe_phv_in_data_91),
    .io_pipe_phv_in_data_92(mau_4_io_pipe_phv_in_data_92),
    .io_pipe_phv_in_data_93(mau_4_io_pipe_phv_in_data_93),
    .io_pipe_phv_in_data_94(mau_4_io_pipe_phv_in_data_94),
    .io_pipe_phv_in_data_95(mau_4_io_pipe_phv_in_data_95),
    .io_pipe_phv_in_header_0(mau_4_io_pipe_phv_in_header_0),
    .io_pipe_phv_in_header_1(mau_4_io_pipe_phv_in_header_1),
    .io_pipe_phv_in_header_2(mau_4_io_pipe_phv_in_header_2),
    .io_pipe_phv_in_header_3(mau_4_io_pipe_phv_in_header_3),
    .io_pipe_phv_in_header_4(mau_4_io_pipe_phv_in_header_4),
    .io_pipe_phv_in_header_5(mau_4_io_pipe_phv_in_header_5),
    .io_pipe_phv_in_header_6(mau_4_io_pipe_phv_in_header_6),
    .io_pipe_phv_in_header_7(mau_4_io_pipe_phv_in_header_7),
    .io_pipe_phv_in_header_8(mau_4_io_pipe_phv_in_header_8),
    .io_pipe_phv_in_header_9(mau_4_io_pipe_phv_in_header_9),
    .io_pipe_phv_in_header_10(mau_4_io_pipe_phv_in_header_10),
    .io_pipe_phv_in_header_11(mau_4_io_pipe_phv_in_header_11),
    .io_pipe_phv_in_header_12(mau_4_io_pipe_phv_in_header_12),
    .io_pipe_phv_in_header_13(mau_4_io_pipe_phv_in_header_13),
    .io_pipe_phv_in_header_14(mau_4_io_pipe_phv_in_header_14),
    .io_pipe_phv_in_header_15(mau_4_io_pipe_phv_in_header_15),
    .io_pipe_phv_in_parse_current_state(mau_4_io_pipe_phv_in_parse_current_state),
    .io_pipe_phv_in_parse_current_offset(mau_4_io_pipe_phv_in_parse_current_offset),
    .io_pipe_phv_in_parse_transition_field(mau_4_io_pipe_phv_in_parse_transition_field),
    .io_pipe_phv_in_next_processor_id(mau_4_io_pipe_phv_in_next_processor_id),
    .io_pipe_phv_in_next_config_id(mau_4_io_pipe_phv_in_next_config_id),
    .io_pipe_phv_in_is_valid_processor(mau_4_io_pipe_phv_in_is_valid_processor),
    .io_pipe_phv_out_data_0(mau_4_io_pipe_phv_out_data_0),
    .io_pipe_phv_out_data_1(mau_4_io_pipe_phv_out_data_1),
    .io_pipe_phv_out_data_2(mau_4_io_pipe_phv_out_data_2),
    .io_pipe_phv_out_data_3(mau_4_io_pipe_phv_out_data_3),
    .io_pipe_phv_out_data_4(mau_4_io_pipe_phv_out_data_4),
    .io_pipe_phv_out_data_5(mau_4_io_pipe_phv_out_data_5),
    .io_pipe_phv_out_data_6(mau_4_io_pipe_phv_out_data_6),
    .io_pipe_phv_out_data_7(mau_4_io_pipe_phv_out_data_7),
    .io_pipe_phv_out_data_8(mau_4_io_pipe_phv_out_data_8),
    .io_pipe_phv_out_data_9(mau_4_io_pipe_phv_out_data_9),
    .io_pipe_phv_out_data_10(mau_4_io_pipe_phv_out_data_10),
    .io_pipe_phv_out_data_11(mau_4_io_pipe_phv_out_data_11),
    .io_pipe_phv_out_data_12(mau_4_io_pipe_phv_out_data_12),
    .io_pipe_phv_out_data_13(mau_4_io_pipe_phv_out_data_13),
    .io_pipe_phv_out_data_14(mau_4_io_pipe_phv_out_data_14),
    .io_pipe_phv_out_data_15(mau_4_io_pipe_phv_out_data_15),
    .io_pipe_phv_out_data_16(mau_4_io_pipe_phv_out_data_16),
    .io_pipe_phv_out_data_17(mau_4_io_pipe_phv_out_data_17),
    .io_pipe_phv_out_data_18(mau_4_io_pipe_phv_out_data_18),
    .io_pipe_phv_out_data_19(mau_4_io_pipe_phv_out_data_19),
    .io_pipe_phv_out_data_20(mau_4_io_pipe_phv_out_data_20),
    .io_pipe_phv_out_data_21(mau_4_io_pipe_phv_out_data_21),
    .io_pipe_phv_out_data_22(mau_4_io_pipe_phv_out_data_22),
    .io_pipe_phv_out_data_23(mau_4_io_pipe_phv_out_data_23),
    .io_pipe_phv_out_data_24(mau_4_io_pipe_phv_out_data_24),
    .io_pipe_phv_out_data_25(mau_4_io_pipe_phv_out_data_25),
    .io_pipe_phv_out_data_26(mau_4_io_pipe_phv_out_data_26),
    .io_pipe_phv_out_data_27(mau_4_io_pipe_phv_out_data_27),
    .io_pipe_phv_out_data_28(mau_4_io_pipe_phv_out_data_28),
    .io_pipe_phv_out_data_29(mau_4_io_pipe_phv_out_data_29),
    .io_pipe_phv_out_data_30(mau_4_io_pipe_phv_out_data_30),
    .io_pipe_phv_out_data_31(mau_4_io_pipe_phv_out_data_31),
    .io_pipe_phv_out_data_32(mau_4_io_pipe_phv_out_data_32),
    .io_pipe_phv_out_data_33(mau_4_io_pipe_phv_out_data_33),
    .io_pipe_phv_out_data_34(mau_4_io_pipe_phv_out_data_34),
    .io_pipe_phv_out_data_35(mau_4_io_pipe_phv_out_data_35),
    .io_pipe_phv_out_data_36(mau_4_io_pipe_phv_out_data_36),
    .io_pipe_phv_out_data_37(mau_4_io_pipe_phv_out_data_37),
    .io_pipe_phv_out_data_38(mau_4_io_pipe_phv_out_data_38),
    .io_pipe_phv_out_data_39(mau_4_io_pipe_phv_out_data_39),
    .io_pipe_phv_out_data_40(mau_4_io_pipe_phv_out_data_40),
    .io_pipe_phv_out_data_41(mau_4_io_pipe_phv_out_data_41),
    .io_pipe_phv_out_data_42(mau_4_io_pipe_phv_out_data_42),
    .io_pipe_phv_out_data_43(mau_4_io_pipe_phv_out_data_43),
    .io_pipe_phv_out_data_44(mau_4_io_pipe_phv_out_data_44),
    .io_pipe_phv_out_data_45(mau_4_io_pipe_phv_out_data_45),
    .io_pipe_phv_out_data_46(mau_4_io_pipe_phv_out_data_46),
    .io_pipe_phv_out_data_47(mau_4_io_pipe_phv_out_data_47),
    .io_pipe_phv_out_data_48(mau_4_io_pipe_phv_out_data_48),
    .io_pipe_phv_out_data_49(mau_4_io_pipe_phv_out_data_49),
    .io_pipe_phv_out_data_50(mau_4_io_pipe_phv_out_data_50),
    .io_pipe_phv_out_data_51(mau_4_io_pipe_phv_out_data_51),
    .io_pipe_phv_out_data_52(mau_4_io_pipe_phv_out_data_52),
    .io_pipe_phv_out_data_53(mau_4_io_pipe_phv_out_data_53),
    .io_pipe_phv_out_data_54(mau_4_io_pipe_phv_out_data_54),
    .io_pipe_phv_out_data_55(mau_4_io_pipe_phv_out_data_55),
    .io_pipe_phv_out_data_56(mau_4_io_pipe_phv_out_data_56),
    .io_pipe_phv_out_data_57(mau_4_io_pipe_phv_out_data_57),
    .io_pipe_phv_out_data_58(mau_4_io_pipe_phv_out_data_58),
    .io_pipe_phv_out_data_59(mau_4_io_pipe_phv_out_data_59),
    .io_pipe_phv_out_data_60(mau_4_io_pipe_phv_out_data_60),
    .io_pipe_phv_out_data_61(mau_4_io_pipe_phv_out_data_61),
    .io_pipe_phv_out_data_62(mau_4_io_pipe_phv_out_data_62),
    .io_pipe_phv_out_data_63(mau_4_io_pipe_phv_out_data_63),
    .io_pipe_phv_out_data_64(mau_4_io_pipe_phv_out_data_64),
    .io_pipe_phv_out_data_65(mau_4_io_pipe_phv_out_data_65),
    .io_pipe_phv_out_data_66(mau_4_io_pipe_phv_out_data_66),
    .io_pipe_phv_out_data_67(mau_4_io_pipe_phv_out_data_67),
    .io_pipe_phv_out_data_68(mau_4_io_pipe_phv_out_data_68),
    .io_pipe_phv_out_data_69(mau_4_io_pipe_phv_out_data_69),
    .io_pipe_phv_out_data_70(mau_4_io_pipe_phv_out_data_70),
    .io_pipe_phv_out_data_71(mau_4_io_pipe_phv_out_data_71),
    .io_pipe_phv_out_data_72(mau_4_io_pipe_phv_out_data_72),
    .io_pipe_phv_out_data_73(mau_4_io_pipe_phv_out_data_73),
    .io_pipe_phv_out_data_74(mau_4_io_pipe_phv_out_data_74),
    .io_pipe_phv_out_data_75(mau_4_io_pipe_phv_out_data_75),
    .io_pipe_phv_out_data_76(mau_4_io_pipe_phv_out_data_76),
    .io_pipe_phv_out_data_77(mau_4_io_pipe_phv_out_data_77),
    .io_pipe_phv_out_data_78(mau_4_io_pipe_phv_out_data_78),
    .io_pipe_phv_out_data_79(mau_4_io_pipe_phv_out_data_79),
    .io_pipe_phv_out_data_80(mau_4_io_pipe_phv_out_data_80),
    .io_pipe_phv_out_data_81(mau_4_io_pipe_phv_out_data_81),
    .io_pipe_phv_out_data_82(mau_4_io_pipe_phv_out_data_82),
    .io_pipe_phv_out_data_83(mau_4_io_pipe_phv_out_data_83),
    .io_pipe_phv_out_data_84(mau_4_io_pipe_phv_out_data_84),
    .io_pipe_phv_out_data_85(mau_4_io_pipe_phv_out_data_85),
    .io_pipe_phv_out_data_86(mau_4_io_pipe_phv_out_data_86),
    .io_pipe_phv_out_data_87(mau_4_io_pipe_phv_out_data_87),
    .io_pipe_phv_out_data_88(mau_4_io_pipe_phv_out_data_88),
    .io_pipe_phv_out_data_89(mau_4_io_pipe_phv_out_data_89),
    .io_pipe_phv_out_data_90(mau_4_io_pipe_phv_out_data_90),
    .io_pipe_phv_out_data_91(mau_4_io_pipe_phv_out_data_91),
    .io_pipe_phv_out_data_92(mau_4_io_pipe_phv_out_data_92),
    .io_pipe_phv_out_data_93(mau_4_io_pipe_phv_out_data_93),
    .io_pipe_phv_out_data_94(mau_4_io_pipe_phv_out_data_94),
    .io_pipe_phv_out_data_95(mau_4_io_pipe_phv_out_data_95),
    .io_pipe_phv_out_header_0(mau_4_io_pipe_phv_out_header_0),
    .io_pipe_phv_out_header_1(mau_4_io_pipe_phv_out_header_1),
    .io_pipe_phv_out_header_2(mau_4_io_pipe_phv_out_header_2),
    .io_pipe_phv_out_header_3(mau_4_io_pipe_phv_out_header_3),
    .io_pipe_phv_out_header_4(mau_4_io_pipe_phv_out_header_4),
    .io_pipe_phv_out_header_5(mau_4_io_pipe_phv_out_header_5),
    .io_pipe_phv_out_header_6(mau_4_io_pipe_phv_out_header_6),
    .io_pipe_phv_out_header_7(mau_4_io_pipe_phv_out_header_7),
    .io_pipe_phv_out_header_8(mau_4_io_pipe_phv_out_header_8),
    .io_pipe_phv_out_header_9(mau_4_io_pipe_phv_out_header_9),
    .io_pipe_phv_out_header_10(mau_4_io_pipe_phv_out_header_10),
    .io_pipe_phv_out_header_11(mau_4_io_pipe_phv_out_header_11),
    .io_pipe_phv_out_header_12(mau_4_io_pipe_phv_out_header_12),
    .io_pipe_phv_out_header_13(mau_4_io_pipe_phv_out_header_13),
    .io_pipe_phv_out_header_14(mau_4_io_pipe_phv_out_header_14),
    .io_pipe_phv_out_header_15(mau_4_io_pipe_phv_out_header_15),
    .io_pipe_phv_out_parse_current_state(mau_4_io_pipe_phv_out_parse_current_state),
    .io_pipe_phv_out_parse_current_offset(mau_4_io_pipe_phv_out_parse_current_offset),
    .io_pipe_phv_out_parse_transition_field(mau_4_io_pipe_phv_out_parse_transition_field),
    .io_pipe_phv_out_next_processor_id(mau_4_io_pipe_phv_out_next_processor_id),
    .io_pipe_phv_out_next_config_id(mau_4_io_pipe_phv_out_next_config_id),
    .io_pipe_phv_out_is_valid_processor(mau_4_io_pipe_phv_out_is_valid_processor),
    .io_mod_state_id_mod(mau_4_io_mod_state_id_mod),
    .io_mod_state_id(mau_4_io_mod_state_id),
    .io_mod_sram_w_cs(mau_4_io_mod_sram_w_cs),
    .io_mod_sram_w_addr(mau_4_io_mod_sram_w_addr),
    .io_mod_sram_w_data(mau_4_io_mod_sram_w_data)
  );
  ParseModule mau_5 ( // @[parser.scala 21:25]
    .clock(mau_5_clock),
    .io_pipe_phv_in_data_0(mau_5_io_pipe_phv_in_data_0),
    .io_pipe_phv_in_data_1(mau_5_io_pipe_phv_in_data_1),
    .io_pipe_phv_in_data_2(mau_5_io_pipe_phv_in_data_2),
    .io_pipe_phv_in_data_3(mau_5_io_pipe_phv_in_data_3),
    .io_pipe_phv_in_data_4(mau_5_io_pipe_phv_in_data_4),
    .io_pipe_phv_in_data_5(mau_5_io_pipe_phv_in_data_5),
    .io_pipe_phv_in_data_6(mau_5_io_pipe_phv_in_data_6),
    .io_pipe_phv_in_data_7(mau_5_io_pipe_phv_in_data_7),
    .io_pipe_phv_in_data_8(mau_5_io_pipe_phv_in_data_8),
    .io_pipe_phv_in_data_9(mau_5_io_pipe_phv_in_data_9),
    .io_pipe_phv_in_data_10(mau_5_io_pipe_phv_in_data_10),
    .io_pipe_phv_in_data_11(mau_5_io_pipe_phv_in_data_11),
    .io_pipe_phv_in_data_12(mau_5_io_pipe_phv_in_data_12),
    .io_pipe_phv_in_data_13(mau_5_io_pipe_phv_in_data_13),
    .io_pipe_phv_in_data_14(mau_5_io_pipe_phv_in_data_14),
    .io_pipe_phv_in_data_15(mau_5_io_pipe_phv_in_data_15),
    .io_pipe_phv_in_data_16(mau_5_io_pipe_phv_in_data_16),
    .io_pipe_phv_in_data_17(mau_5_io_pipe_phv_in_data_17),
    .io_pipe_phv_in_data_18(mau_5_io_pipe_phv_in_data_18),
    .io_pipe_phv_in_data_19(mau_5_io_pipe_phv_in_data_19),
    .io_pipe_phv_in_data_20(mau_5_io_pipe_phv_in_data_20),
    .io_pipe_phv_in_data_21(mau_5_io_pipe_phv_in_data_21),
    .io_pipe_phv_in_data_22(mau_5_io_pipe_phv_in_data_22),
    .io_pipe_phv_in_data_23(mau_5_io_pipe_phv_in_data_23),
    .io_pipe_phv_in_data_24(mau_5_io_pipe_phv_in_data_24),
    .io_pipe_phv_in_data_25(mau_5_io_pipe_phv_in_data_25),
    .io_pipe_phv_in_data_26(mau_5_io_pipe_phv_in_data_26),
    .io_pipe_phv_in_data_27(mau_5_io_pipe_phv_in_data_27),
    .io_pipe_phv_in_data_28(mau_5_io_pipe_phv_in_data_28),
    .io_pipe_phv_in_data_29(mau_5_io_pipe_phv_in_data_29),
    .io_pipe_phv_in_data_30(mau_5_io_pipe_phv_in_data_30),
    .io_pipe_phv_in_data_31(mau_5_io_pipe_phv_in_data_31),
    .io_pipe_phv_in_data_32(mau_5_io_pipe_phv_in_data_32),
    .io_pipe_phv_in_data_33(mau_5_io_pipe_phv_in_data_33),
    .io_pipe_phv_in_data_34(mau_5_io_pipe_phv_in_data_34),
    .io_pipe_phv_in_data_35(mau_5_io_pipe_phv_in_data_35),
    .io_pipe_phv_in_data_36(mau_5_io_pipe_phv_in_data_36),
    .io_pipe_phv_in_data_37(mau_5_io_pipe_phv_in_data_37),
    .io_pipe_phv_in_data_38(mau_5_io_pipe_phv_in_data_38),
    .io_pipe_phv_in_data_39(mau_5_io_pipe_phv_in_data_39),
    .io_pipe_phv_in_data_40(mau_5_io_pipe_phv_in_data_40),
    .io_pipe_phv_in_data_41(mau_5_io_pipe_phv_in_data_41),
    .io_pipe_phv_in_data_42(mau_5_io_pipe_phv_in_data_42),
    .io_pipe_phv_in_data_43(mau_5_io_pipe_phv_in_data_43),
    .io_pipe_phv_in_data_44(mau_5_io_pipe_phv_in_data_44),
    .io_pipe_phv_in_data_45(mau_5_io_pipe_phv_in_data_45),
    .io_pipe_phv_in_data_46(mau_5_io_pipe_phv_in_data_46),
    .io_pipe_phv_in_data_47(mau_5_io_pipe_phv_in_data_47),
    .io_pipe_phv_in_data_48(mau_5_io_pipe_phv_in_data_48),
    .io_pipe_phv_in_data_49(mau_5_io_pipe_phv_in_data_49),
    .io_pipe_phv_in_data_50(mau_5_io_pipe_phv_in_data_50),
    .io_pipe_phv_in_data_51(mau_5_io_pipe_phv_in_data_51),
    .io_pipe_phv_in_data_52(mau_5_io_pipe_phv_in_data_52),
    .io_pipe_phv_in_data_53(mau_5_io_pipe_phv_in_data_53),
    .io_pipe_phv_in_data_54(mau_5_io_pipe_phv_in_data_54),
    .io_pipe_phv_in_data_55(mau_5_io_pipe_phv_in_data_55),
    .io_pipe_phv_in_data_56(mau_5_io_pipe_phv_in_data_56),
    .io_pipe_phv_in_data_57(mau_5_io_pipe_phv_in_data_57),
    .io_pipe_phv_in_data_58(mau_5_io_pipe_phv_in_data_58),
    .io_pipe_phv_in_data_59(mau_5_io_pipe_phv_in_data_59),
    .io_pipe_phv_in_data_60(mau_5_io_pipe_phv_in_data_60),
    .io_pipe_phv_in_data_61(mau_5_io_pipe_phv_in_data_61),
    .io_pipe_phv_in_data_62(mau_5_io_pipe_phv_in_data_62),
    .io_pipe_phv_in_data_63(mau_5_io_pipe_phv_in_data_63),
    .io_pipe_phv_in_data_64(mau_5_io_pipe_phv_in_data_64),
    .io_pipe_phv_in_data_65(mau_5_io_pipe_phv_in_data_65),
    .io_pipe_phv_in_data_66(mau_5_io_pipe_phv_in_data_66),
    .io_pipe_phv_in_data_67(mau_5_io_pipe_phv_in_data_67),
    .io_pipe_phv_in_data_68(mau_5_io_pipe_phv_in_data_68),
    .io_pipe_phv_in_data_69(mau_5_io_pipe_phv_in_data_69),
    .io_pipe_phv_in_data_70(mau_5_io_pipe_phv_in_data_70),
    .io_pipe_phv_in_data_71(mau_5_io_pipe_phv_in_data_71),
    .io_pipe_phv_in_data_72(mau_5_io_pipe_phv_in_data_72),
    .io_pipe_phv_in_data_73(mau_5_io_pipe_phv_in_data_73),
    .io_pipe_phv_in_data_74(mau_5_io_pipe_phv_in_data_74),
    .io_pipe_phv_in_data_75(mau_5_io_pipe_phv_in_data_75),
    .io_pipe_phv_in_data_76(mau_5_io_pipe_phv_in_data_76),
    .io_pipe_phv_in_data_77(mau_5_io_pipe_phv_in_data_77),
    .io_pipe_phv_in_data_78(mau_5_io_pipe_phv_in_data_78),
    .io_pipe_phv_in_data_79(mau_5_io_pipe_phv_in_data_79),
    .io_pipe_phv_in_data_80(mau_5_io_pipe_phv_in_data_80),
    .io_pipe_phv_in_data_81(mau_5_io_pipe_phv_in_data_81),
    .io_pipe_phv_in_data_82(mau_5_io_pipe_phv_in_data_82),
    .io_pipe_phv_in_data_83(mau_5_io_pipe_phv_in_data_83),
    .io_pipe_phv_in_data_84(mau_5_io_pipe_phv_in_data_84),
    .io_pipe_phv_in_data_85(mau_5_io_pipe_phv_in_data_85),
    .io_pipe_phv_in_data_86(mau_5_io_pipe_phv_in_data_86),
    .io_pipe_phv_in_data_87(mau_5_io_pipe_phv_in_data_87),
    .io_pipe_phv_in_data_88(mau_5_io_pipe_phv_in_data_88),
    .io_pipe_phv_in_data_89(mau_5_io_pipe_phv_in_data_89),
    .io_pipe_phv_in_data_90(mau_5_io_pipe_phv_in_data_90),
    .io_pipe_phv_in_data_91(mau_5_io_pipe_phv_in_data_91),
    .io_pipe_phv_in_data_92(mau_5_io_pipe_phv_in_data_92),
    .io_pipe_phv_in_data_93(mau_5_io_pipe_phv_in_data_93),
    .io_pipe_phv_in_data_94(mau_5_io_pipe_phv_in_data_94),
    .io_pipe_phv_in_data_95(mau_5_io_pipe_phv_in_data_95),
    .io_pipe_phv_in_header_0(mau_5_io_pipe_phv_in_header_0),
    .io_pipe_phv_in_header_1(mau_5_io_pipe_phv_in_header_1),
    .io_pipe_phv_in_header_2(mau_5_io_pipe_phv_in_header_2),
    .io_pipe_phv_in_header_3(mau_5_io_pipe_phv_in_header_3),
    .io_pipe_phv_in_header_4(mau_5_io_pipe_phv_in_header_4),
    .io_pipe_phv_in_header_5(mau_5_io_pipe_phv_in_header_5),
    .io_pipe_phv_in_header_6(mau_5_io_pipe_phv_in_header_6),
    .io_pipe_phv_in_header_7(mau_5_io_pipe_phv_in_header_7),
    .io_pipe_phv_in_header_8(mau_5_io_pipe_phv_in_header_8),
    .io_pipe_phv_in_header_9(mau_5_io_pipe_phv_in_header_9),
    .io_pipe_phv_in_header_10(mau_5_io_pipe_phv_in_header_10),
    .io_pipe_phv_in_header_11(mau_5_io_pipe_phv_in_header_11),
    .io_pipe_phv_in_header_12(mau_5_io_pipe_phv_in_header_12),
    .io_pipe_phv_in_header_13(mau_5_io_pipe_phv_in_header_13),
    .io_pipe_phv_in_header_14(mau_5_io_pipe_phv_in_header_14),
    .io_pipe_phv_in_header_15(mau_5_io_pipe_phv_in_header_15),
    .io_pipe_phv_in_parse_current_state(mau_5_io_pipe_phv_in_parse_current_state),
    .io_pipe_phv_in_parse_current_offset(mau_5_io_pipe_phv_in_parse_current_offset),
    .io_pipe_phv_in_parse_transition_field(mau_5_io_pipe_phv_in_parse_transition_field),
    .io_pipe_phv_in_next_processor_id(mau_5_io_pipe_phv_in_next_processor_id),
    .io_pipe_phv_in_next_config_id(mau_5_io_pipe_phv_in_next_config_id),
    .io_pipe_phv_in_is_valid_processor(mau_5_io_pipe_phv_in_is_valid_processor),
    .io_pipe_phv_out_data_0(mau_5_io_pipe_phv_out_data_0),
    .io_pipe_phv_out_data_1(mau_5_io_pipe_phv_out_data_1),
    .io_pipe_phv_out_data_2(mau_5_io_pipe_phv_out_data_2),
    .io_pipe_phv_out_data_3(mau_5_io_pipe_phv_out_data_3),
    .io_pipe_phv_out_data_4(mau_5_io_pipe_phv_out_data_4),
    .io_pipe_phv_out_data_5(mau_5_io_pipe_phv_out_data_5),
    .io_pipe_phv_out_data_6(mau_5_io_pipe_phv_out_data_6),
    .io_pipe_phv_out_data_7(mau_5_io_pipe_phv_out_data_7),
    .io_pipe_phv_out_data_8(mau_5_io_pipe_phv_out_data_8),
    .io_pipe_phv_out_data_9(mau_5_io_pipe_phv_out_data_9),
    .io_pipe_phv_out_data_10(mau_5_io_pipe_phv_out_data_10),
    .io_pipe_phv_out_data_11(mau_5_io_pipe_phv_out_data_11),
    .io_pipe_phv_out_data_12(mau_5_io_pipe_phv_out_data_12),
    .io_pipe_phv_out_data_13(mau_5_io_pipe_phv_out_data_13),
    .io_pipe_phv_out_data_14(mau_5_io_pipe_phv_out_data_14),
    .io_pipe_phv_out_data_15(mau_5_io_pipe_phv_out_data_15),
    .io_pipe_phv_out_data_16(mau_5_io_pipe_phv_out_data_16),
    .io_pipe_phv_out_data_17(mau_5_io_pipe_phv_out_data_17),
    .io_pipe_phv_out_data_18(mau_5_io_pipe_phv_out_data_18),
    .io_pipe_phv_out_data_19(mau_5_io_pipe_phv_out_data_19),
    .io_pipe_phv_out_data_20(mau_5_io_pipe_phv_out_data_20),
    .io_pipe_phv_out_data_21(mau_5_io_pipe_phv_out_data_21),
    .io_pipe_phv_out_data_22(mau_5_io_pipe_phv_out_data_22),
    .io_pipe_phv_out_data_23(mau_5_io_pipe_phv_out_data_23),
    .io_pipe_phv_out_data_24(mau_5_io_pipe_phv_out_data_24),
    .io_pipe_phv_out_data_25(mau_5_io_pipe_phv_out_data_25),
    .io_pipe_phv_out_data_26(mau_5_io_pipe_phv_out_data_26),
    .io_pipe_phv_out_data_27(mau_5_io_pipe_phv_out_data_27),
    .io_pipe_phv_out_data_28(mau_5_io_pipe_phv_out_data_28),
    .io_pipe_phv_out_data_29(mau_5_io_pipe_phv_out_data_29),
    .io_pipe_phv_out_data_30(mau_5_io_pipe_phv_out_data_30),
    .io_pipe_phv_out_data_31(mau_5_io_pipe_phv_out_data_31),
    .io_pipe_phv_out_data_32(mau_5_io_pipe_phv_out_data_32),
    .io_pipe_phv_out_data_33(mau_5_io_pipe_phv_out_data_33),
    .io_pipe_phv_out_data_34(mau_5_io_pipe_phv_out_data_34),
    .io_pipe_phv_out_data_35(mau_5_io_pipe_phv_out_data_35),
    .io_pipe_phv_out_data_36(mau_5_io_pipe_phv_out_data_36),
    .io_pipe_phv_out_data_37(mau_5_io_pipe_phv_out_data_37),
    .io_pipe_phv_out_data_38(mau_5_io_pipe_phv_out_data_38),
    .io_pipe_phv_out_data_39(mau_5_io_pipe_phv_out_data_39),
    .io_pipe_phv_out_data_40(mau_5_io_pipe_phv_out_data_40),
    .io_pipe_phv_out_data_41(mau_5_io_pipe_phv_out_data_41),
    .io_pipe_phv_out_data_42(mau_5_io_pipe_phv_out_data_42),
    .io_pipe_phv_out_data_43(mau_5_io_pipe_phv_out_data_43),
    .io_pipe_phv_out_data_44(mau_5_io_pipe_phv_out_data_44),
    .io_pipe_phv_out_data_45(mau_5_io_pipe_phv_out_data_45),
    .io_pipe_phv_out_data_46(mau_5_io_pipe_phv_out_data_46),
    .io_pipe_phv_out_data_47(mau_5_io_pipe_phv_out_data_47),
    .io_pipe_phv_out_data_48(mau_5_io_pipe_phv_out_data_48),
    .io_pipe_phv_out_data_49(mau_5_io_pipe_phv_out_data_49),
    .io_pipe_phv_out_data_50(mau_5_io_pipe_phv_out_data_50),
    .io_pipe_phv_out_data_51(mau_5_io_pipe_phv_out_data_51),
    .io_pipe_phv_out_data_52(mau_5_io_pipe_phv_out_data_52),
    .io_pipe_phv_out_data_53(mau_5_io_pipe_phv_out_data_53),
    .io_pipe_phv_out_data_54(mau_5_io_pipe_phv_out_data_54),
    .io_pipe_phv_out_data_55(mau_5_io_pipe_phv_out_data_55),
    .io_pipe_phv_out_data_56(mau_5_io_pipe_phv_out_data_56),
    .io_pipe_phv_out_data_57(mau_5_io_pipe_phv_out_data_57),
    .io_pipe_phv_out_data_58(mau_5_io_pipe_phv_out_data_58),
    .io_pipe_phv_out_data_59(mau_5_io_pipe_phv_out_data_59),
    .io_pipe_phv_out_data_60(mau_5_io_pipe_phv_out_data_60),
    .io_pipe_phv_out_data_61(mau_5_io_pipe_phv_out_data_61),
    .io_pipe_phv_out_data_62(mau_5_io_pipe_phv_out_data_62),
    .io_pipe_phv_out_data_63(mau_5_io_pipe_phv_out_data_63),
    .io_pipe_phv_out_data_64(mau_5_io_pipe_phv_out_data_64),
    .io_pipe_phv_out_data_65(mau_5_io_pipe_phv_out_data_65),
    .io_pipe_phv_out_data_66(mau_5_io_pipe_phv_out_data_66),
    .io_pipe_phv_out_data_67(mau_5_io_pipe_phv_out_data_67),
    .io_pipe_phv_out_data_68(mau_5_io_pipe_phv_out_data_68),
    .io_pipe_phv_out_data_69(mau_5_io_pipe_phv_out_data_69),
    .io_pipe_phv_out_data_70(mau_5_io_pipe_phv_out_data_70),
    .io_pipe_phv_out_data_71(mau_5_io_pipe_phv_out_data_71),
    .io_pipe_phv_out_data_72(mau_5_io_pipe_phv_out_data_72),
    .io_pipe_phv_out_data_73(mau_5_io_pipe_phv_out_data_73),
    .io_pipe_phv_out_data_74(mau_5_io_pipe_phv_out_data_74),
    .io_pipe_phv_out_data_75(mau_5_io_pipe_phv_out_data_75),
    .io_pipe_phv_out_data_76(mau_5_io_pipe_phv_out_data_76),
    .io_pipe_phv_out_data_77(mau_5_io_pipe_phv_out_data_77),
    .io_pipe_phv_out_data_78(mau_5_io_pipe_phv_out_data_78),
    .io_pipe_phv_out_data_79(mau_5_io_pipe_phv_out_data_79),
    .io_pipe_phv_out_data_80(mau_5_io_pipe_phv_out_data_80),
    .io_pipe_phv_out_data_81(mau_5_io_pipe_phv_out_data_81),
    .io_pipe_phv_out_data_82(mau_5_io_pipe_phv_out_data_82),
    .io_pipe_phv_out_data_83(mau_5_io_pipe_phv_out_data_83),
    .io_pipe_phv_out_data_84(mau_5_io_pipe_phv_out_data_84),
    .io_pipe_phv_out_data_85(mau_5_io_pipe_phv_out_data_85),
    .io_pipe_phv_out_data_86(mau_5_io_pipe_phv_out_data_86),
    .io_pipe_phv_out_data_87(mau_5_io_pipe_phv_out_data_87),
    .io_pipe_phv_out_data_88(mau_5_io_pipe_phv_out_data_88),
    .io_pipe_phv_out_data_89(mau_5_io_pipe_phv_out_data_89),
    .io_pipe_phv_out_data_90(mau_5_io_pipe_phv_out_data_90),
    .io_pipe_phv_out_data_91(mau_5_io_pipe_phv_out_data_91),
    .io_pipe_phv_out_data_92(mau_5_io_pipe_phv_out_data_92),
    .io_pipe_phv_out_data_93(mau_5_io_pipe_phv_out_data_93),
    .io_pipe_phv_out_data_94(mau_5_io_pipe_phv_out_data_94),
    .io_pipe_phv_out_data_95(mau_5_io_pipe_phv_out_data_95),
    .io_pipe_phv_out_header_0(mau_5_io_pipe_phv_out_header_0),
    .io_pipe_phv_out_header_1(mau_5_io_pipe_phv_out_header_1),
    .io_pipe_phv_out_header_2(mau_5_io_pipe_phv_out_header_2),
    .io_pipe_phv_out_header_3(mau_5_io_pipe_phv_out_header_3),
    .io_pipe_phv_out_header_4(mau_5_io_pipe_phv_out_header_4),
    .io_pipe_phv_out_header_5(mau_5_io_pipe_phv_out_header_5),
    .io_pipe_phv_out_header_6(mau_5_io_pipe_phv_out_header_6),
    .io_pipe_phv_out_header_7(mau_5_io_pipe_phv_out_header_7),
    .io_pipe_phv_out_header_8(mau_5_io_pipe_phv_out_header_8),
    .io_pipe_phv_out_header_9(mau_5_io_pipe_phv_out_header_9),
    .io_pipe_phv_out_header_10(mau_5_io_pipe_phv_out_header_10),
    .io_pipe_phv_out_header_11(mau_5_io_pipe_phv_out_header_11),
    .io_pipe_phv_out_header_12(mau_5_io_pipe_phv_out_header_12),
    .io_pipe_phv_out_header_13(mau_5_io_pipe_phv_out_header_13),
    .io_pipe_phv_out_header_14(mau_5_io_pipe_phv_out_header_14),
    .io_pipe_phv_out_header_15(mau_5_io_pipe_phv_out_header_15),
    .io_pipe_phv_out_parse_current_state(mau_5_io_pipe_phv_out_parse_current_state),
    .io_pipe_phv_out_parse_current_offset(mau_5_io_pipe_phv_out_parse_current_offset),
    .io_pipe_phv_out_parse_transition_field(mau_5_io_pipe_phv_out_parse_transition_field),
    .io_pipe_phv_out_next_processor_id(mau_5_io_pipe_phv_out_next_processor_id),
    .io_pipe_phv_out_next_config_id(mau_5_io_pipe_phv_out_next_config_id),
    .io_pipe_phv_out_is_valid_processor(mau_5_io_pipe_phv_out_is_valid_processor),
    .io_mod_state_id_mod(mau_5_io_mod_state_id_mod),
    .io_mod_state_id(mau_5_io_mod_state_id),
    .io_mod_sram_w_cs(mau_5_io_mod_sram_w_cs),
    .io_mod_sram_w_addr(mau_5_io_mod_sram_w_addr),
    .io_mod_sram_w_data(mau_5_io_mod_sram_w_data)
  );
  ParseModule mau_6 ( // @[parser.scala 21:25]
    .clock(mau_6_clock),
    .io_pipe_phv_in_data_0(mau_6_io_pipe_phv_in_data_0),
    .io_pipe_phv_in_data_1(mau_6_io_pipe_phv_in_data_1),
    .io_pipe_phv_in_data_2(mau_6_io_pipe_phv_in_data_2),
    .io_pipe_phv_in_data_3(mau_6_io_pipe_phv_in_data_3),
    .io_pipe_phv_in_data_4(mau_6_io_pipe_phv_in_data_4),
    .io_pipe_phv_in_data_5(mau_6_io_pipe_phv_in_data_5),
    .io_pipe_phv_in_data_6(mau_6_io_pipe_phv_in_data_6),
    .io_pipe_phv_in_data_7(mau_6_io_pipe_phv_in_data_7),
    .io_pipe_phv_in_data_8(mau_6_io_pipe_phv_in_data_8),
    .io_pipe_phv_in_data_9(mau_6_io_pipe_phv_in_data_9),
    .io_pipe_phv_in_data_10(mau_6_io_pipe_phv_in_data_10),
    .io_pipe_phv_in_data_11(mau_6_io_pipe_phv_in_data_11),
    .io_pipe_phv_in_data_12(mau_6_io_pipe_phv_in_data_12),
    .io_pipe_phv_in_data_13(mau_6_io_pipe_phv_in_data_13),
    .io_pipe_phv_in_data_14(mau_6_io_pipe_phv_in_data_14),
    .io_pipe_phv_in_data_15(mau_6_io_pipe_phv_in_data_15),
    .io_pipe_phv_in_data_16(mau_6_io_pipe_phv_in_data_16),
    .io_pipe_phv_in_data_17(mau_6_io_pipe_phv_in_data_17),
    .io_pipe_phv_in_data_18(mau_6_io_pipe_phv_in_data_18),
    .io_pipe_phv_in_data_19(mau_6_io_pipe_phv_in_data_19),
    .io_pipe_phv_in_data_20(mau_6_io_pipe_phv_in_data_20),
    .io_pipe_phv_in_data_21(mau_6_io_pipe_phv_in_data_21),
    .io_pipe_phv_in_data_22(mau_6_io_pipe_phv_in_data_22),
    .io_pipe_phv_in_data_23(mau_6_io_pipe_phv_in_data_23),
    .io_pipe_phv_in_data_24(mau_6_io_pipe_phv_in_data_24),
    .io_pipe_phv_in_data_25(mau_6_io_pipe_phv_in_data_25),
    .io_pipe_phv_in_data_26(mau_6_io_pipe_phv_in_data_26),
    .io_pipe_phv_in_data_27(mau_6_io_pipe_phv_in_data_27),
    .io_pipe_phv_in_data_28(mau_6_io_pipe_phv_in_data_28),
    .io_pipe_phv_in_data_29(mau_6_io_pipe_phv_in_data_29),
    .io_pipe_phv_in_data_30(mau_6_io_pipe_phv_in_data_30),
    .io_pipe_phv_in_data_31(mau_6_io_pipe_phv_in_data_31),
    .io_pipe_phv_in_data_32(mau_6_io_pipe_phv_in_data_32),
    .io_pipe_phv_in_data_33(mau_6_io_pipe_phv_in_data_33),
    .io_pipe_phv_in_data_34(mau_6_io_pipe_phv_in_data_34),
    .io_pipe_phv_in_data_35(mau_6_io_pipe_phv_in_data_35),
    .io_pipe_phv_in_data_36(mau_6_io_pipe_phv_in_data_36),
    .io_pipe_phv_in_data_37(mau_6_io_pipe_phv_in_data_37),
    .io_pipe_phv_in_data_38(mau_6_io_pipe_phv_in_data_38),
    .io_pipe_phv_in_data_39(mau_6_io_pipe_phv_in_data_39),
    .io_pipe_phv_in_data_40(mau_6_io_pipe_phv_in_data_40),
    .io_pipe_phv_in_data_41(mau_6_io_pipe_phv_in_data_41),
    .io_pipe_phv_in_data_42(mau_6_io_pipe_phv_in_data_42),
    .io_pipe_phv_in_data_43(mau_6_io_pipe_phv_in_data_43),
    .io_pipe_phv_in_data_44(mau_6_io_pipe_phv_in_data_44),
    .io_pipe_phv_in_data_45(mau_6_io_pipe_phv_in_data_45),
    .io_pipe_phv_in_data_46(mau_6_io_pipe_phv_in_data_46),
    .io_pipe_phv_in_data_47(mau_6_io_pipe_phv_in_data_47),
    .io_pipe_phv_in_data_48(mau_6_io_pipe_phv_in_data_48),
    .io_pipe_phv_in_data_49(mau_6_io_pipe_phv_in_data_49),
    .io_pipe_phv_in_data_50(mau_6_io_pipe_phv_in_data_50),
    .io_pipe_phv_in_data_51(mau_6_io_pipe_phv_in_data_51),
    .io_pipe_phv_in_data_52(mau_6_io_pipe_phv_in_data_52),
    .io_pipe_phv_in_data_53(mau_6_io_pipe_phv_in_data_53),
    .io_pipe_phv_in_data_54(mau_6_io_pipe_phv_in_data_54),
    .io_pipe_phv_in_data_55(mau_6_io_pipe_phv_in_data_55),
    .io_pipe_phv_in_data_56(mau_6_io_pipe_phv_in_data_56),
    .io_pipe_phv_in_data_57(mau_6_io_pipe_phv_in_data_57),
    .io_pipe_phv_in_data_58(mau_6_io_pipe_phv_in_data_58),
    .io_pipe_phv_in_data_59(mau_6_io_pipe_phv_in_data_59),
    .io_pipe_phv_in_data_60(mau_6_io_pipe_phv_in_data_60),
    .io_pipe_phv_in_data_61(mau_6_io_pipe_phv_in_data_61),
    .io_pipe_phv_in_data_62(mau_6_io_pipe_phv_in_data_62),
    .io_pipe_phv_in_data_63(mau_6_io_pipe_phv_in_data_63),
    .io_pipe_phv_in_data_64(mau_6_io_pipe_phv_in_data_64),
    .io_pipe_phv_in_data_65(mau_6_io_pipe_phv_in_data_65),
    .io_pipe_phv_in_data_66(mau_6_io_pipe_phv_in_data_66),
    .io_pipe_phv_in_data_67(mau_6_io_pipe_phv_in_data_67),
    .io_pipe_phv_in_data_68(mau_6_io_pipe_phv_in_data_68),
    .io_pipe_phv_in_data_69(mau_6_io_pipe_phv_in_data_69),
    .io_pipe_phv_in_data_70(mau_6_io_pipe_phv_in_data_70),
    .io_pipe_phv_in_data_71(mau_6_io_pipe_phv_in_data_71),
    .io_pipe_phv_in_data_72(mau_6_io_pipe_phv_in_data_72),
    .io_pipe_phv_in_data_73(mau_6_io_pipe_phv_in_data_73),
    .io_pipe_phv_in_data_74(mau_6_io_pipe_phv_in_data_74),
    .io_pipe_phv_in_data_75(mau_6_io_pipe_phv_in_data_75),
    .io_pipe_phv_in_data_76(mau_6_io_pipe_phv_in_data_76),
    .io_pipe_phv_in_data_77(mau_6_io_pipe_phv_in_data_77),
    .io_pipe_phv_in_data_78(mau_6_io_pipe_phv_in_data_78),
    .io_pipe_phv_in_data_79(mau_6_io_pipe_phv_in_data_79),
    .io_pipe_phv_in_data_80(mau_6_io_pipe_phv_in_data_80),
    .io_pipe_phv_in_data_81(mau_6_io_pipe_phv_in_data_81),
    .io_pipe_phv_in_data_82(mau_6_io_pipe_phv_in_data_82),
    .io_pipe_phv_in_data_83(mau_6_io_pipe_phv_in_data_83),
    .io_pipe_phv_in_data_84(mau_6_io_pipe_phv_in_data_84),
    .io_pipe_phv_in_data_85(mau_6_io_pipe_phv_in_data_85),
    .io_pipe_phv_in_data_86(mau_6_io_pipe_phv_in_data_86),
    .io_pipe_phv_in_data_87(mau_6_io_pipe_phv_in_data_87),
    .io_pipe_phv_in_data_88(mau_6_io_pipe_phv_in_data_88),
    .io_pipe_phv_in_data_89(mau_6_io_pipe_phv_in_data_89),
    .io_pipe_phv_in_data_90(mau_6_io_pipe_phv_in_data_90),
    .io_pipe_phv_in_data_91(mau_6_io_pipe_phv_in_data_91),
    .io_pipe_phv_in_data_92(mau_6_io_pipe_phv_in_data_92),
    .io_pipe_phv_in_data_93(mau_6_io_pipe_phv_in_data_93),
    .io_pipe_phv_in_data_94(mau_6_io_pipe_phv_in_data_94),
    .io_pipe_phv_in_data_95(mau_6_io_pipe_phv_in_data_95),
    .io_pipe_phv_in_header_0(mau_6_io_pipe_phv_in_header_0),
    .io_pipe_phv_in_header_1(mau_6_io_pipe_phv_in_header_1),
    .io_pipe_phv_in_header_2(mau_6_io_pipe_phv_in_header_2),
    .io_pipe_phv_in_header_3(mau_6_io_pipe_phv_in_header_3),
    .io_pipe_phv_in_header_4(mau_6_io_pipe_phv_in_header_4),
    .io_pipe_phv_in_header_5(mau_6_io_pipe_phv_in_header_5),
    .io_pipe_phv_in_header_6(mau_6_io_pipe_phv_in_header_6),
    .io_pipe_phv_in_header_7(mau_6_io_pipe_phv_in_header_7),
    .io_pipe_phv_in_header_8(mau_6_io_pipe_phv_in_header_8),
    .io_pipe_phv_in_header_9(mau_6_io_pipe_phv_in_header_9),
    .io_pipe_phv_in_header_10(mau_6_io_pipe_phv_in_header_10),
    .io_pipe_phv_in_header_11(mau_6_io_pipe_phv_in_header_11),
    .io_pipe_phv_in_header_12(mau_6_io_pipe_phv_in_header_12),
    .io_pipe_phv_in_header_13(mau_6_io_pipe_phv_in_header_13),
    .io_pipe_phv_in_header_14(mau_6_io_pipe_phv_in_header_14),
    .io_pipe_phv_in_header_15(mau_6_io_pipe_phv_in_header_15),
    .io_pipe_phv_in_parse_current_state(mau_6_io_pipe_phv_in_parse_current_state),
    .io_pipe_phv_in_parse_current_offset(mau_6_io_pipe_phv_in_parse_current_offset),
    .io_pipe_phv_in_parse_transition_field(mau_6_io_pipe_phv_in_parse_transition_field),
    .io_pipe_phv_in_next_processor_id(mau_6_io_pipe_phv_in_next_processor_id),
    .io_pipe_phv_in_next_config_id(mau_6_io_pipe_phv_in_next_config_id),
    .io_pipe_phv_in_is_valid_processor(mau_6_io_pipe_phv_in_is_valid_processor),
    .io_pipe_phv_out_data_0(mau_6_io_pipe_phv_out_data_0),
    .io_pipe_phv_out_data_1(mau_6_io_pipe_phv_out_data_1),
    .io_pipe_phv_out_data_2(mau_6_io_pipe_phv_out_data_2),
    .io_pipe_phv_out_data_3(mau_6_io_pipe_phv_out_data_3),
    .io_pipe_phv_out_data_4(mau_6_io_pipe_phv_out_data_4),
    .io_pipe_phv_out_data_5(mau_6_io_pipe_phv_out_data_5),
    .io_pipe_phv_out_data_6(mau_6_io_pipe_phv_out_data_6),
    .io_pipe_phv_out_data_7(mau_6_io_pipe_phv_out_data_7),
    .io_pipe_phv_out_data_8(mau_6_io_pipe_phv_out_data_8),
    .io_pipe_phv_out_data_9(mau_6_io_pipe_phv_out_data_9),
    .io_pipe_phv_out_data_10(mau_6_io_pipe_phv_out_data_10),
    .io_pipe_phv_out_data_11(mau_6_io_pipe_phv_out_data_11),
    .io_pipe_phv_out_data_12(mau_6_io_pipe_phv_out_data_12),
    .io_pipe_phv_out_data_13(mau_6_io_pipe_phv_out_data_13),
    .io_pipe_phv_out_data_14(mau_6_io_pipe_phv_out_data_14),
    .io_pipe_phv_out_data_15(mau_6_io_pipe_phv_out_data_15),
    .io_pipe_phv_out_data_16(mau_6_io_pipe_phv_out_data_16),
    .io_pipe_phv_out_data_17(mau_6_io_pipe_phv_out_data_17),
    .io_pipe_phv_out_data_18(mau_6_io_pipe_phv_out_data_18),
    .io_pipe_phv_out_data_19(mau_6_io_pipe_phv_out_data_19),
    .io_pipe_phv_out_data_20(mau_6_io_pipe_phv_out_data_20),
    .io_pipe_phv_out_data_21(mau_6_io_pipe_phv_out_data_21),
    .io_pipe_phv_out_data_22(mau_6_io_pipe_phv_out_data_22),
    .io_pipe_phv_out_data_23(mau_6_io_pipe_phv_out_data_23),
    .io_pipe_phv_out_data_24(mau_6_io_pipe_phv_out_data_24),
    .io_pipe_phv_out_data_25(mau_6_io_pipe_phv_out_data_25),
    .io_pipe_phv_out_data_26(mau_6_io_pipe_phv_out_data_26),
    .io_pipe_phv_out_data_27(mau_6_io_pipe_phv_out_data_27),
    .io_pipe_phv_out_data_28(mau_6_io_pipe_phv_out_data_28),
    .io_pipe_phv_out_data_29(mau_6_io_pipe_phv_out_data_29),
    .io_pipe_phv_out_data_30(mau_6_io_pipe_phv_out_data_30),
    .io_pipe_phv_out_data_31(mau_6_io_pipe_phv_out_data_31),
    .io_pipe_phv_out_data_32(mau_6_io_pipe_phv_out_data_32),
    .io_pipe_phv_out_data_33(mau_6_io_pipe_phv_out_data_33),
    .io_pipe_phv_out_data_34(mau_6_io_pipe_phv_out_data_34),
    .io_pipe_phv_out_data_35(mau_6_io_pipe_phv_out_data_35),
    .io_pipe_phv_out_data_36(mau_6_io_pipe_phv_out_data_36),
    .io_pipe_phv_out_data_37(mau_6_io_pipe_phv_out_data_37),
    .io_pipe_phv_out_data_38(mau_6_io_pipe_phv_out_data_38),
    .io_pipe_phv_out_data_39(mau_6_io_pipe_phv_out_data_39),
    .io_pipe_phv_out_data_40(mau_6_io_pipe_phv_out_data_40),
    .io_pipe_phv_out_data_41(mau_6_io_pipe_phv_out_data_41),
    .io_pipe_phv_out_data_42(mau_6_io_pipe_phv_out_data_42),
    .io_pipe_phv_out_data_43(mau_6_io_pipe_phv_out_data_43),
    .io_pipe_phv_out_data_44(mau_6_io_pipe_phv_out_data_44),
    .io_pipe_phv_out_data_45(mau_6_io_pipe_phv_out_data_45),
    .io_pipe_phv_out_data_46(mau_6_io_pipe_phv_out_data_46),
    .io_pipe_phv_out_data_47(mau_6_io_pipe_phv_out_data_47),
    .io_pipe_phv_out_data_48(mau_6_io_pipe_phv_out_data_48),
    .io_pipe_phv_out_data_49(mau_6_io_pipe_phv_out_data_49),
    .io_pipe_phv_out_data_50(mau_6_io_pipe_phv_out_data_50),
    .io_pipe_phv_out_data_51(mau_6_io_pipe_phv_out_data_51),
    .io_pipe_phv_out_data_52(mau_6_io_pipe_phv_out_data_52),
    .io_pipe_phv_out_data_53(mau_6_io_pipe_phv_out_data_53),
    .io_pipe_phv_out_data_54(mau_6_io_pipe_phv_out_data_54),
    .io_pipe_phv_out_data_55(mau_6_io_pipe_phv_out_data_55),
    .io_pipe_phv_out_data_56(mau_6_io_pipe_phv_out_data_56),
    .io_pipe_phv_out_data_57(mau_6_io_pipe_phv_out_data_57),
    .io_pipe_phv_out_data_58(mau_6_io_pipe_phv_out_data_58),
    .io_pipe_phv_out_data_59(mau_6_io_pipe_phv_out_data_59),
    .io_pipe_phv_out_data_60(mau_6_io_pipe_phv_out_data_60),
    .io_pipe_phv_out_data_61(mau_6_io_pipe_phv_out_data_61),
    .io_pipe_phv_out_data_62(mau_6_io_pipe_phv_out_data_62),
    .io_pipe_phv_out_data_63(mau_6_io_pipe_phv_out_data_63),
    .io_pipe_phv_out_data_64(mau_6_io_pipe_phv_out_data_64),
    .io_pipe_phv_out_data_65(mau_6_io_pipe_phv_out_data_65),
    .io_pipe_phv_out_data_66(mau_6_io_pipe_phv_out_data_66),
    .io_pipe_phv_out_data_67(mau_6_io_pipe_phv_out_data_67),
    .io_pipe_phv_out_data_68(mau_6_io_pipe_phv_out_data_68),
    .io_pipe_phv_out_data_69(mau_6_io_pipe_phv_out_data_69),
    .io_pipe_phv_out_data_70(mau_6_io_pipe_phv_out_data_70),
    .io_pipe_phv_out_data_71(mau_6_io_pipe_phv_out_data_71),
    .io_pipe_phv_out_data_72(mau_6_io_pipe_phv_out_data_72),
    .io_pipe_phv_out_data_73(mau_6_io_pipe_phv_out_data_73),
    .io_pipe_phv_out_data_74(mau_6_io_pipe_phv_out_data_74),
    .io_pipe_phv_out_data_75(mau_6_io_pipe_phv_out_data_75),
    .io_pipe_phv_out_data_76(mau_6_io_pipe_phv_out_data_76),
    .io_pipe_phv_out_data_77(mau_6_io_pipe_phv_out_data_77),
    .io_pipe_phv_out_data_78(mau_6_io_pipe_phv_out_data_78),
    .io_pipe_phv_out_data_79(mau_6_io_pipe_phv_out_data_79),
    .io_pipe_phv_out_data_80(mau_6_io_pipe_phv_out_data_80),
    .io_pipe_phv_out_data_81(mau_6_io_pipe_phv_out_data_81),
    .io_pipe_phv_out_data_82(mau_6_io_pipe_phv_out_data_82),
    .io_pipe_phv_out_data_83(mau_6_io_pipe_phv_out_data_83),
    .io_pipe_phv_out_data_84(mau_6_io_pipe_phv_out_data_84),
    .io_pipe_phv_out_data_85(mau_6_io_pipe_phv_out_data_85),
    .io_pipe_phv_out_data_86(mau_6_io_pipe_phv_out_data_86),
    .io_pipe_phv_out_data_87(mau_6_io_pipe_phv_out_data_87),
    .io_pipe_phv_out_data_88(mau_6_io_pipe_phv_out_data_88),
    .io_pipe_phv_out_data_89(mau_6_io_pipe_phv_out_data_89),
    .io_pipe_phv_out_data_90(mau_6_io_pipe_phv_out_data_90),
    .io_pipe_phv_out_data_91(mau_6_io_pipe_phv_out_data_91),
    .io_pipe_phv_out_data_92(mau_6_io_pipe_phv_out_data_92),
    .io_pipe_phv_out_data_93(mau_6_io_pipe_phv_out_data_93),
    .io_pipe_phv_out_data_94(mau_6_io_pipe_phv_out_data_94),
    .io_pipe_phv_out_data_95(mau_6_io_pipe_phv_out_data_95),
    .io_pipe_phv_out_header_0(mau_6_io_pipe_phv_out_header_0),
    .io_pipe_phv_out_header_1(mau_6_io_pipe_phv_out_header_1),
    .io_pipe_phv_out_header_2(mau_6_io_pipe_phv_out_header_2),
    .io_pipe_phv_out_header_3(mau_6_io_pipe_phv_out_header_3),
    .io_pipe_phv_out_header_4(mau_6_io_pipe_phv_out_header_4),
    .io_pipe_phv_out_header_5(mau_6_io_pipe_phv_out_header_5),
    .io_pipe_phv_out_header_6(mau_6_io_pipe_phv_out_header_6),
    .io_pipe_phv_out_header_7(mau_6_io_pipe_phv_out_header_7),
    .io_pipe_phv_out_header_8(mau_6_io_pipe_phv_out_header_8),
    .io_pipe_phv_out_header_9(mau_6_io_pipe_phv_out_header_9),
    .io_pipe_phv_out_header_10(mau_6_io_pipe_phv_out_header_10),
    .io_pipe_phv_out_header_11(mau_6_io_pipe_phv_out_header_11),
    .io_pipe_phv_out_header_12(mau_6_io_pipe_phv_out_header_12),
    .io_pipe_phv_out_header_13(mau_6_io_pipe_phv_out_header_13),
    .io_pipe_phv_out_header_14(mau_6_io_pipe_phv_out_header_14),
    .io_pipe_phv_out_header_15(mau_6_io_pipe_phv_out_header_15),
    .io_pipe_phv_out_parse_current_state(mau_6_io_pipe_phv_out_parse_current_state),
    .io_pipe_phv_out_parse_current_offset(mau_6_io_pipe_phv_out_parse_current_offset),
    .io_pipe_phv_out_parse_transition_field(mau_6_io_pipe_phv_out_parse_transition_field),
    .io_pipe_phv_out_next_processor_id(mau_6_io_pipe_phv_out_next_processor_id),
    .io_pipe_phv_out_next_config_id(mau_6_io_pipe_phv_out_next_config_id),
    .io_pipe_phv_out_is_valid_processor(mau_6_io_pipe_phv_out_is_valid_processor),
    .io_mod_state_id_mod(mau_6_io_mod_state_id_mod),
    .io_mod_state_id(mau_6_io_mod_state_id),
    .io_mod_sram_w_cs(mau_6_io_mod_sram_w_cs),
    .io_mod_sram_w_addr(mau_6_io_mod_sram_w_addr),
    .io_mod_sram_w_data(mau_6_io_mod_sram_w_data)
  );
  ParseModule mau_7 ( // @[parser.scala 21:25]
    .clock(mau_7_clock),
    .io_pipe_phv_in_data_0(mau_7_io_pipe_phv_in_data_0),
    .io_pipe_phv_in_data_1(mau_7_io_pipe_phv_in_data_1),
    .io_pipe_phv_in_data_2(mau_7_io_pipe_phv_in_data_2),
    .io_pipe_phv_in_data_3(mau_7_io_pipe_phv_in_data_3),
    .io_pipe_phv_in_data_4(mau_7_io_pipe_phv_in_data_4),
    .io_pipe_phv_in_data_5(mau_7_io_pipe_phv_in_data_5),
    .io_pipe_phv_in_data_6(mau_7_io_pipe_phv_in_data_6),
    .io_pipe_phv_in_data_7(mau_7_io_pipe_phv_in_data_7),
    .io_pipe_phv_in_data_8(mau_7_io_pipe_phv_in_data_8),
    .io_pipe_phv_in_data_9(mau_7_io_pipe_phv_in_data_9),
    .io_pipe_phv_in_data_10(mau_7_io_pipe_phv_in_data_10),
    .io_pipe_phv_in_data_11(mau_7_io_pipe_phv_in_data_11),
    .io_pipe_phv_in_data_12(mau_7_io_pipe_phv_in_data_12),
    .io_pipe_phv_in_data_13(mau_7_io_pipe_phv_in_data_13),
    .io_pipe_phv_in_data_14(mau_7_io_pipe_phv_in_data_14),
    .io_pipe_phv_in_data_15(mau_7_io_pipe_phv_in_data_15),
    .io_pipe_phv_in_data_16(mau_7_io_pipe_phv_in_data_16),
    .io_pipe_phv_in_data_17(mau_7_io_pipe_phv_in_data_17),
    .io_pipe_phv_in_data_18(mau_7_io_pipe_phv_in_data_18),
    .io_pipe_phv_in_data_19(mau_7_io_pipe_phv_in_data_19),
    .io_pipe_phv_in_data_20(mau_7_io_pipe_phv_in_data_20),
    .io_pipe_phv_in_data_21(mau_7_io_pipe_phv_in_data_21),
    .io_pipe_phv_in_data_22(mau_7_io_pipe_phv_in_data_22),
    .io_pipe_phv_in_data_23(mau_7_io_pipe_phv_in_data_23),
    .io_pipe_phv_in_data_24(mau_7_io_pipe_phv_in_data_24),
    .io_pipe_phv_in_data_25(mau_7_io_pipe_phv_in_data_25),
    .io_pipe_phv_in_data_26(mau_7_io_pipe_phv_in_data_26),
    .io_pipe_phv_in_data_27(mau_7_io_pipe_phv_in_data_27),
    .io_pipe_phv_in_data_28(mau_7_io_pipe_phv_in_data_28),
    .io_pipe_phv_in_data_29(mau_7_io_pipe_phv_in_data_29),
    .io_pipe_phv_in_data_30(mau_7_io_pipe_phv_in_data_30),
    .io_pipe_phv_in_data_31(mau_7_io_pipe_phv_in_data_31),
    .io_pipe_phv_in_data_32(mau_7_io_pipe_phv_in_data_32),
    .io_pipe_phv_in_data_33(mau_7_io_pipe_phv_in_data_33),
    .io_pipe_phv_in_data_34(mau_7_io_pipe_phv_in_data_34),
    .io_pipe_phv_in_data_35(mau_7_io_pipe_phv_in_data_35),
    .io_pipe_phv_in_data_36(mau_7_io_pipe_phv_in_data_36),
    .io_pipe_phv_in_data_37(mau_7_io_pipe_phv_in_data_37),
    .io_pipe_phv_in_data_38(mau_7_io_pipe_phv_in_data_38),
    .io_pipe_phv_in_data_39(mau_7_io_pipe_phv_in_data_39),
    .io_pipe_phv_in_data_40(mau_7_io_pipe_phv_in_data_40),
    .io_pipe_phv_in_data_41(mau_7_io_pipe_phv_in_data_41),
    .io_pipe_phv_in_data_42(mau_7_io_pipe_phv_in_data_42),
    .io_pipe_phv_in_data_43(mau_7_io_pipe_phv_in_data_43),
    .io_pipe_phv_in_data_44(mau_7_io_pipe_phv_in_data_44),
    .io_pipe_phv_in_data_45(mau_7_io_pipe_phv_in_data_45),
    .io_pipe_phv_in_data_46(mau_7_io_pipe_phv_in_data_46),
    .io_pipe_phv_in_data_47(mau_7_io_pipe_phv_in_data_47),
    .io_pipe_phv_in_data_48(mau_7_io_pipe_phv_in_data_48),
    .io_pipe_phv_in_data_49(mau_7_io_pipe_phv_in_data_49),
    .io_pipe_phv_in_data_50(mau_7_io_pipe_phv_in_data_50),
    .io_pipe_phv_in_data_51(mau_7_io_pipe_phv_in_data_51),
    .io_pipe_phv_in_data_52(mau_7_io_pipe_phv_in_data_52),
    .io_pipe_phv_in_data_53(mau_7_io_pipe_phv_in_data_53),
    .io_pipe_phv_in_data_54(mau_7_io_pipe_phv_in_data_54),
    .io_pipe_phv_in_data_55(mau_7_io_pipe_phv_in_data_55),
    .io_pipe_phv_in_data_56(mau_7_io_pipe_phv_in_data_56),
    .io_pipe_phv_in_data_57(mau_7_io_pipe_phv_in_data_57),
    .io_pipe_phv_in_data_58(mau_7_io_pipe_phv_in_data_58),
    .io_pipe_phv_in_data_59(mau_7_io_pipe_phv_in_data_59),
    .io_pipe_phv_in_data_60(mau_7_io_pipe_phv_in_data_60),
    .io_pipe_phv_in_data_61(mau_7_io_pipe_phv_in_data_61),
    .io_pipe_phv_in_data_62(mau_7_io_pipe_phv_in_data_62),
    .io_pipe_phv_in_data_63(mau_7_io_pipe_phv_in_data_63),
    .io_pipe_phv_in_data_64(mau_7_io_pipe_phv_in_data_64),
    .io_pipe_phv_in_data_65(mau_7_io_pipe_phv_in_data_65),
    .io_pipe_phv_in_data_66(mau_7_io_pipe_phv_in_data_66),
    .io_pipe_phv_in_data_67(mau_7_io_pipe_phv_in_data_67),
    .io_pipe_phv_in_data_68(mau_7_io_pipe_phv_in_data_68),
    .io_pipe_phv_in_data_69(mau_7_io_pipe_phv_in_data_69),
    .io_pipe_phv_in_data_70(mau_7_io_pipe_phv_in_data_70),
    .io_pipe_phv_in_data_71(mau_7_io_pipe_phv_in_data_71),
    .io_pipe_phv_in_data_72(mau_7_io_pipe_phv_in_data_72),
    .io_pipe_phv_in_data_73(mau_7_io_pipe_phv_in_data_73),
    .io_pipe_phv_in_data_74(mau_7_io_pipe_phv_in_data_74),
    .io_pipe_phv_in_data_75(mau_7_io_pipe_phv_in_data_75),
    .io_pipe_phv_in_data_76(mau_7_io_pipe_phv_in_data_76),
    .io_pipe_phv_in_data_77(mau_7_io_pipe_phv_in_data_77),
    .io_pipe_phv_in_data_78(mau_7_io_pipe_phv_in_data_78),
    .io_pipe_phv_in_data_79(mau_7_io_pipe_phv_in_data_79),
    .io_pipe_phv_in_data_80(mau_7_io_pipe_phv_in_data_80),
    .io_pipe_phv_in_data_81(mau_7_io_pipe_phv_in_data_81),
    .io_pipe_phv_in_data_82(mau_7_io_pipe_phv_in_data_82),
    .io_pipe_phv_in_data_83(mau_7_io_pipe_phv_in_data_83),
    .io_pipe_phv_in_data_84(mau_7_io_pipe_phv_in_data_84),
    .io_pipe_phv_in_data_85(mau_7_io_pipe_phv_in_data_85),
    .io_pipe_phv_in_data_86(mau_7_io_pipe_phv_in_data_86),
    .io_pipe_phv_in_data_87(mau_7_io_pipe_phv_in_data_87),
    .io_pipe_phv_in_data_88(mau_7_io_pipe_phv_in_data_88),
    .io_pipe_phv_in_data_89(mau_7_io_pipe_phv_in_data_89),
    .io_pipe_phv_in_data_90(mau_7_io_pipe_phv_in_data_90),
    .io_pipe_phv_in_data_91(mau_7_io_pipe_phv_in_data_91),
    .io_pipe_phv_in_data_92(mau_7_io_pipe_phv_in_data_92),
    .io_pipe_phv_in_data_93(mau_7_io_pipe_phv_in_data_93),
    .io_pipe_phv_in_data_94(mau_7_io_pipe_phv_in_data_94),
    .io_pipe_phv_in_data_95(mau_7_io_pipe_phv_in_data_95),
    .io_pipe_phv_in_header_0(mau_7_io_pipe_phv_in_header_0),
    .io_pipe_phv_in_header_1(mau_7_io_pipe_phv_in_header_1),
    .io_pipe_phv_in_header_2(mau_7_io_pipe_phv_in_header_2),
    .io_pipe_phv_in_header_3(mau_7_io_pipe_phv_in_header_3),
    .io_pipe_phv_in_header_4(mau_7_io_pipe_phv_in_header_4),
    .io_pipe_phv_in_header_5(mau_7_io_pipe_phv_in_header_5),
    .io_pipe_phv_in_header_6(mau_7_io_pipe_phv_in_header_6),
    .io_pipe_phv_in_header_7(mau_7_io_pipe_phv_in_header_7),
    .io_pipe_phv_in_header_8(mau_7_io_pipe_phv_in_header_8),
    .io_pipe_phv_in_header_9(mau_7_io_pipe_phv_in_header_9),
    .io_pipe_phv_in_header_10(mau_7_io_pipe_phv_in_header_10),
    .io_pipe_phv_in_header_11(mau_7_io_pipe_phv_in_header_11),
    .io_pipe_phv_in_header_12(mau_7_io_pipe_phv_in_header_12),
    .io_pipe_phv_in_header_13(mau_7_io_pipe_phv_in_header_13),
    .io_pipe_phv_in_header_14(mau_7_io_pipe_phv_in_header_14),
    .io_pipe_phv_in_header_15(mau_7_io_pipe_phv_in_header_15),
    .io_pipe_phv_in_parse_current_state(mau_7_io_pipe_phv_in_parse_current_state),
    .io_pipe_phv_in_parse_current_offset(mau_7_io_pipe_phv_in_parse_current_offset),
    .io_pipe_phv_in_parse_transition_field(mau_7_io_pipe_phv_in_parse_transition_field),
    .io_pipe_phv_in_next_processor_id(mau_7_io_pipe_phv_in_next_processor_id),
    .io_pipe_phv_in_next_config_id(mau_7_io_pipe_phv_in_next_config_id),
    .io_pipe_phv_in_is_valid_processor(mau_7_io_pipe_phv_in_is_valid_processor),
    .io_pipe_phv_out_data_0(mau_7_io_pipe_phv_out_data_0),
    .io_pipe_phv_out_data_1(mau_7_io_pipe_phv_out_data_1),
    .io_pipe_phv_out_data_2(mau_7_io_pipe_phv_out_data_2),
    .io_pipe_phv_out_data_3(mau_7_io_pipe_phv_out_data_3),
    .io_pipe_phv_out_data_4(mau_7_io_pipe_phv_out_data_4),
    .io_pipe_phv_out_data_5(mau_7_io_pipe_phv_out_data_5),
    .io_pipe_phv_out_data_6(mau_7_io_pipe_phv_out_data_6),
    .io_pipe_phv_out_data_7(mau_7_io_pipe_phv_out_data_7),
    .io_pipe_phv_out_data_8(mau_7_io_pipe_phv_out_data_8),
    .io_pipe_phv_out_data_9(mau_7_io_pipe_phv_out_data_9),
    .io_pipe_phv_out_data_10(mau_7_io_pipe_phv_out_data_10),
    .io_pipe_phv_out_data_11(mau_7_io_pipe_phv_out_data_11),
    .io_pipe_phv_out_data_12(mau_7_io_pipe_phv_out_data_12),
    .io_pipe_phv_out_data_13(mau_7_io_pipe_phv_out_data_13),
    .io_pipe_phv_out_data_14(mau_7_io_pipe_phv_out_data_14),
    .io_pipe_phv_out_data_15(mau_7_io_pipe_phv_out_data_15),
    .io_pipe_phv_out_data_16(mau_7_io_pipe_phv_out_data_16),
    .io_pipe_phv_out_data_17(mau_7_io_pipe_phv_out_data_17),
    .io_pipe_phv_out_data_18(mau_7_io_pipe_phv_out_data_18),
    .io_pipe_phv_out_data_19(mau_7_io_pipe_phv_out_data_19),
    .io_pipe_phv_out_data_20(mau_7_io_pipe_phv_out_data_20),
    .io_pipe_phv_out_data_21(mau_7_io_pipe_phv_out_data_21),
    .io_pipe_phv_out_data_22(mau_7_io_pipe_phv_out_data_22),
    .io_pipe_phv_out_data_23(mau_7_io_pipe_phv_out_data_23),
    .io_pipe_phv_out_data_24(mau_7_io_pipe_phv_out_data_24),
    .io_pipe_phv_out_data_25(mau_7_io_pipe_phv_out_data_25),
    .io_pipe_phv_out_data_26(mau_7_io_pipe_phv_out_data_26),
    .io_pipe_phv_out_data_27(mau_7_io_pipe_phv_out_data_27),
    .io_pipe_phv_out_data_28(mau_7_io_pipe_phv_out_data_28),
    .io_pipe_phv_out_data_29(mau_7_io_pipe_phv_out_data_29),
    .io_pipe_phv_out_data_30(mau_7_io_pipe_phv_out_data_30),
    .io_pipe_phv_out_data_31(mau_7_io_pipe_phv_out_data_31),
    .io_pipe_phv_out_data_32(mau_7_io_pipe_phv_out_data_32),
    .io_pipe_phv_out_data_33(mau_7_io_pipe_phv_out_data_33),
    .io_pipe_phv_out_data_34(mau_7_io_pipe_phv_out_data_34),
    .io_pipe_phv_out_data_35(mau_7_io_pipe_phv_out_data_35),
    .io_pipe_phv_out_data_36(mau_7_io_pipe_phv_out_data_36),
    .io_pipe_phv_out_data_37(mau_7_io_pipe_phv_out_data_37),
    .io_pipe_phv_out_data_38(mau_7_io_pipe_phv_out_data_38),
    .io_pipe_phv_out_data_39(mau_7_io_pipe_phv_out_data_39),
    .io_pipe_phv_out_data_40(mau_7_io_pipe_phv_out_data_40),
    .io_pipe_phv_out_data_41(mau_7_io_pipe_phv_out_data_41),
    .io_pipe_phv_out_data_42(mau_7_io_pipe_phv_out_data_42),
    .io_pipe_phv_out_data_43(mau_7_io_pipe_phv_out_data_43),
    .io_pipe_phv_out_data_44(mau_7_io_pipe_phv_out_data_44),
    .io_pipe_phv_out_data_45(mau_7_io_pipe_phv_out_data_45),
    .io_pipe_phv_out_data_46(mau_7_io_pipe_phv_out_data_46),
    .io_pipe_phv_out_data_47(mau_7_io_pipe_phv_out_data_47),
    .io_pipe_phv_out_data_48(mau_7_io_pipe_phv_out_data_48),
    .io_pipe_phv_out_data_49(mau_7_io_pipe_phv_out_data_49),
    .io_pipe_phv_out_data_50(mau_7_io_pipe_phv_out_data_50),
    .io_pipe_phv_out_data_51(mau_7_io_pipe_phv_out_data_51),
    .io_pipe_phv_out_data_52(mau_7_io_pipe_phv_out_data_52),
    .io_pipe_phv_out_data_53(mau_7_io_pipe_phv_out_data_53),
    .io_pipe_phv_out_data_54(mau_7_io_pipe_phv_out_data_54),
    .io_pipe_phv_out_data_55(mau_7_io_pipe_phv_out_data_55),
    .io_pipe_phv_out_data_56(mau_7_io_pipe_phv_out_data_56),
    .io_pipe_phv_out_data_57(mau_7_io_pipe_phv_out_data_57),
    .io_pipe_phv_out_data_58(mau_7_io_pipe_phv_out_data_58),
    .io_pipe_phv_out_data_59(mau_7_io_pipe_phv_out_data_59),
    .io_pipe_phv_out_data_60(mau_7_io_pipe_phv_out_data_60),
    .io_pipe_phv_out_data_61(mau_7_io_pipe_phv_out_data_61),
    .io_pipe_phv_out_data_62(mau_7_io_pipe_phv_out_data_62),
    .io_pipe_phv_out_data_63(mau_7_io_pipe_phv_out_data_63),
    .io_pipe_phv_out_data_64(mau_7_io_pipe_phv_out_data_64),
    .io_pipe_phv_out_data_65(mau_7_io_pipe_phv_out_data_65),
    .io_pipe_phv_out_data_66(mau_7_io_pipe_phv_out_data_66),
    .io_pipe_phv_out_data_67(mau_7_io_pipe_phv_out_data_67),
    .io_pipe_phv_out_data_68(mau_7_io_pipe_phv_out_data_68),
    .io_pipe_phv_out_data_69(mau_7_io_pipe_phv_out_data_69),
    .io_pipe_phv_out_data_70(mau_7_io_pipe_phv_out_data_70),
    .io_pipe_phv_out_data_71(mau_7_io_pipe_phv_out_data_71),
    .io_pipe_phv_out_data_72(mau_7_io_pipe_phv_out_data_72),
    .io_pipe_phv_out_data_73(mau_7_io_pipe_phv_out_data_73),
    .io_pipe_phv_out_data_74(mau_7_io_pipe_phv_out_data_74),
    .io_pipe_phv_out_data_75(mau_7_io_pipe_phv_out_data_75),
    .io_pipe_phv_out_data_76(mau_7_io_pipe_phv_out_data_76),
    .io_pipe_phv_out_data_77(mau_7_io_pipe_phv_out_data_77),
    .io_pipe_phv_out_data_78(mau_7_io_pipe_phv_out_data_78),
    .io_pipe_phv_out_data_79(mau_7_io_pipe_phv_out_data_79),
    .io_pipe_phv_out_data_80(mau_7_io_pipe_phv_out_data_80),
    .io_pipe_phv_out_data_81(mau_7_io_pipe_phv_out_data_81),
    .io_pipe_phv_out_data_82(mau_7_io_pipe_phv_out_data_82),
    .io_pipe_phv_out_data_83(mau_7_io_pipe_phv_out_data_83),
    .io_pipe_phv_out_data_84(mau_7_io_pipe_phv_out_data_84),
    .io_pipe_phv_out_data_85(mau_7_io_pipe_phv_out_data_85),
    .io_pipe_phv_out_data_86(mau_7_io_pipe_phv_out_data_86),
    .io_pipe_phv_out_data_87(mau_7_io_pipe_phv_out_data_87),
    .io_pipe_phv_out_data_88(mau_7_io_pipe_phv_out_data_88),
    .io_pipe_phv_out_data_89(mau_7_io_pipe_phv_out_data_89),
    .io_pipe_phv_out_data_90(mau_7_io_pipe_phv_out_data_90),
    .io_pipe_phv_out_data_91(mau_7_io_pipe_phv_out_data_91),
    .io_pipe_phv_out_data_92(mau_7_io_pipe_phv_out_data_92),
    .io_pipe_phv_out_data_93(mau_7_io_pipe_phv_out_data_93),
    .io_pipe_phv_out_data_94(mau_7_io_pipe_phv_out_data_94),
    .io_pipe_phv_out_data_95(mau_7_io_pipe_phv_out_data_95),
    .io_pipe_phv_out_header_0(mau_7_io_pipe_phv_out_header_0),
    .io_pipe_phv_out_header_1(mau_7_io_pipe_phv_out_header_1),
    .io_pipe_phv_out_header_2(mau_7_io_pipe_phv_out_header_2),
    .io_pipe_phv_out_header_3(mau_7_io_pipe_phv_out_header_3),
    .io_pipe_phv_out_header_4(mau_7_io_pipe_phv_out_header_4),
    .io_pipe_phv_out_header_5(mau_7_io_pipe_phv_out_header_5),
    .io_pipe_phv_out_header_6(mau_7_io_pipe_phv_out_header_6),
    .io_pipe_phv_out_header_7(mau_7_io_pipe_phv_out_header_7),
    .io_pipe_phv_out_header_8(mau_7_io_pipe_phv_out_header_8),
    .io_pipe_phv_out_header_9(mau_7_io_pipe_phv_out_header_9),
    .io_pipe_phv_out_header_10(mau_7_io_pipe_phv_out_header_10),
    .io_pipe_phv_out_header_11(mau_7_io_pipe_phv_out_header_11),
    .io_pipe_phv_out_header_12(mau_7_io_pipe_phv_out_header_12),
    .io_pipe_phv_out_header_13(mau_7_io_pipe_phv_out_header_13),
    .io_pipe_phv_out_header_14(mau_7_io_pipe_phv_out_header_14),
    .io_pipe_phv_out_header_15(mau_7_io_pipe_phv_out_header_15),
    .io_pipe_phv_out_parse_current_state(mau_7_io_pipe_phv_out_parse_current_state),
    .io_pipe_phv_out_parse_current_offset(mau_7_io_pipe_phv_out_parse_current_offset),
    .io_pipe_phv_out_parse_transition_field(mau_7_io_pipe_phv_out_parse_transition_field),
    .io_pipe_phv_out_next_processor_id(mau_7_io_pipe_phv_out_next_processor_id),
    .io_pipe_phv_out_next_config_id(mau_7_io_pipe_phv_out_next_config_id),
    .io_pipe_phv_out_is_valid_processor(mau_7_io_pipe_phv_out_is_valid_processor),
    .io_mod_state_id_mod(mau_7_io_mod_state_id_mod),
    .io_mod_state_id(mau_7_io_mod_state_id),
    .io_mod_sram_w_cs(mau_7_io_mod_sram_w_cs),
    .io_mod_sram_w_addr(mau_7_io_mod_sram_w_addr),
    .io_mod_sram_w_data(mau_7_io_mod_sram_w_data)
  );
  assign io_pipe_phv_out_data_0 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_0 : _GEN_612; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_1 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_1 : _GEN_613; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_2 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_2 : _GEN_614; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_3 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_3 : _GEN_615; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_4 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_4 : _GEN_616; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_5 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_5 : _GEN_617; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_6 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_6 : _GEN_618; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_7 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_7 : _GEN_619; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_8 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_8 : _GEN_620; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_9 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_9 : _GEN_621; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_10 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_10 : _GEN_622; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_11 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_11 : _GEN_623; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_12 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_12 : _GEN_624; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_13 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_13 : _GEN_625; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_14 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_14 : _GEN_626; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_15 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_15 : _GEN_627; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_16 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_16 : _GEN_628; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_17 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_17 : _GEN_629; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_18 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_18 : _GEN_630; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_19 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_19 : _GEN_631; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_20 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_20 : _GEN_632; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_21 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_21 : _GEN_633; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_22 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_22 : _GEN_634; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_23 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_23 : _GEN_635; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_24 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_24 : _GEN_636; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_25 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_25 : _GEN_637; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_26 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_26 : _GEN_638; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_27 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_27 : _GEN_639; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_28 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_28 : _GEN_640; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_29 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_29 : _GEN_641; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_30 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_30 : _GEN_642; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_31 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_31 : _GEN_643; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_32 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_32 : _GEN_644; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_33 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_33 : _GEN_645; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_34 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_34 : _GEN_646; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_35 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_35 : _GEN_647; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_36 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_36 : _GEN_648; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_37 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_37 : _GEN_649; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_38 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_38 : _GEN_650; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_39 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_39 : _GEN_651; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_40 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_40 : _GEN_652; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_41 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_41 : _GEN_653; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_42 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_42 : _GEN_654; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_43 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_43 : _GEN_655; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_44 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_44 : _GEN_656; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_45 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_45 : _GEN_657; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_46 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_46 : _GEN_658; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_47 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_47 : _GEN_659; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_48 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_48 : _GEN_660; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_49 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_49 : _GEN_661; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_50 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_50 : _GEN_662; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_51 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_51 : _GEN_663; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_52 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_52 : _GEN_664; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_53 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_53 : _GEN_665; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_54 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_54 : _GEN_666; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_55 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_55 : _GEN_667; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_56 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_56 : _GEN_668; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_57 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_57 : _GEN_669; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_58 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_58 : _GEN_670; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_59 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_59 : _GEN_671; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_60 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_60 : _GEN_672; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_61 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_61 : _GEN_673; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_62 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_62 : _GEN_674; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_63 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_63 : _GEN_675; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_64 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_64 : _GEN_676; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_65 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_65 : _GEN_677; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_66 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_66 : _GEN_678; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_67 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_67 : _GEN_679; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_68 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_68 : _GEN_680; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_69 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_69 : _GEN_681; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_70 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_70 : _GEN_682; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_71 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_71 : _GEN_683; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_72 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_72 : _GEN_684; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_73 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_73 : _GEN_685; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_74 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_74 : _GEN_686; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_75 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_75 : _GEN_687; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_76 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_76 : _GEN_688; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_77 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_77 : _GEN_689; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_78 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_78 : _GEN_690; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_79 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_79 : _GEN_691; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_80 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_80 : _GEN_692; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_81 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_81 : _GEN_693; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_82 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_82 : _GEN_694; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_83 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_83 : _GEN_695; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_84 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_84 : _GEN_696; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_85 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_85 : _GEN_697; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_86 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_86 : _GEN_698; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_87 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_87 : _GEN_699; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_88 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_88 : _GEN_700; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_89 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_89 : _GEN_701; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_90 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_90 : _GEN_702; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_91 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_91 : _GEN_703; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_92 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_92 : _GEN_704; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_93 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_93 : _GEN_705; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_94 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_94 : _GEN_706; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_data_95 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_95 : _GEN_707; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_header_0 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_header_0 : _GEN_596; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_header_1 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_header_1 : _GEN_597; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_header_2 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_header_2 : _GEN_598; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_header_3 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_header_3 : _GEN_599; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_header_4 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_header_4 : _GEN_600; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_header_5 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_header_5 : _GEN_601; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_header_6 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_header_6 : _GEN_602; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_header_7 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_header_7 : _GEN_603; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_header_8 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_header_8 : _GEN_604; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_header_9 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_header_9 : _GEN_605; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_header_10 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_header_10 : _GEN_606; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_header_11 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_header_11 : _GEN_607; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_header_12 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_header_12 : _GEN_608; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_header_13 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_header_13 : _GEN_609; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_header_14 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_header_14 : _GEN_610; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_header_15 = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_header_15 : _GEN_611; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_parse_current_state = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_parse_current_state :
    _GEN_595; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_parse_current_offset = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_parse_current_offset :
    _GEN_594; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_parse_transition_field = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_parse_transition_field :
    _GEN_593; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_next_processor_id = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_next_processor_id : _GEN_592; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_next_config_id = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_next_config_id : _GEN_591; // @[parser.scala 33:62 parser.scala 34:35]
  assign io_pipe_phv_out_is_valid_processor = 4'h7 == last_mau_id ? mau_7_io_pipe_phv_out_is_valid_processor : _GEN_590; // @[parser.scala 33:62 parser.scala 34:35]
  assign mau_0_clock = clock;
  assign mau_0_io_pipe_phv_in_data_0 = io_pipe_phv_in_data_0; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_1 = io_pipe_phv_in_data_1; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_2 = io_pipe_phv_in_data_2; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_3 = io_pipe_phv_in_data_3; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_4 = io_pipe_phv_in_data_4; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_5 = io_pipe_phv_in_data_5; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_6 = io_pipe_phv_in_data_6; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_7 = io_pipe_phv_in_data_7; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_8 = io_pipe_phv_in_data_8; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_9 = io_pipe_phv_in_data_9; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_10 = io_pipe_phv_in_data_10; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_11 = io_pipe_phv_in_data_11; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_12 = io_pipe_phv_in_data_12; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_13 = io_pipe_phv_in_data_13; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_14 = io_pipe_phv_in_data_14; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_15 = io_pipe_phv_in_data_15; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_16 = io_pipe_phv_in_data_16; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_17 = io_pipe_phv_in_data_17; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_18 = io_pipe_phv_in_data_18; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_19 = io_pipe_phv_in_data_19; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_20 = io_pipe_phv_in_data_20; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_21 = io_pipe_phv_in_data_21; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_22 = io_pipe_phv_in_data_22; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_23 = io_pipe_phv_in_data_23; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_24 = io_pipe_phv_in_data_24; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_25 = io_pipe_phv_in_data_25; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_26 = io_pipe_phv_in_data_26; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_27 = io_pipe_phv_in_data_27; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_28 = io_pipe_phv_in_data_28; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_29 = io_pipe_phv_in_data_29; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_30 = io_pipe_phv_in_data_30; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_31 = io_pipe_phv_in_data_31; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_32 = io_pipe_phv_in_data_32; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_33 = io_pipe_phv_in_data_33; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_34 = io_pipe_phv_in_data_34; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_35 = io_pipe_phv_in_data_35; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_36 = io_pipe_phv_in_data_36; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_37 = io_pipe_phv_in_data_37; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_38 = io_pipe_phv_in_data_38; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_39 = io_pipe_phv_in_data_39; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_40 = io_pipe_phv_in_data_40; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_41 = io_pipe_phv_in_data_41; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_42 = io_pipe_phv_in_data_42; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_43 = io_pipe_phv_in_data_43; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_44 = io_pipe_phv_in_data_44; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_45 = io_pipe_phv_in_data_45; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_46 = io_pipe_phv_in_data_46; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_47 = io_pipe_phv_in_data_47; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_48 = io_pipe_phv_in_data_48; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_49 = io_pipe_phv_in_data_49; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_50 = io_pipe_phv_in_data_50; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_51 = io_pipe_phv_in_data_51; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_52 = io_pipe_phv_in_data_52; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_53 = io_pipe_phv_in_data_53; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_54 = io_pipe_phv_in_data_54; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_55 = io_pipe_phv_in_data_55; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_56 = io_pipe_phv_in_data_56; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_57 = io_pipe_phv_in_data_57; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_58 = io_pipe_phv_in_data_58; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_59 = io_pipe_phv_in_data_59; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_60 = io_pipe_phv_in_data_60; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_61 = io_pipe_phv_in_data_61; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_62 = io_pipe_phv_in_data_62; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_63 = io_pipe_phv_in_data_63; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_64 = io_pipe_phv_in_data_64; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_65 = io_pipe_phv_in_data_65; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_66 = io_pipe_phv_in_data_66; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_67 = io_pipe_phv_in_data_67; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_68 = io_pipe_phv_in_data_68; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_69 = io_pipe_phv_in_data_69; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_70 = io_pipe_phv_in_data_70; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_71 = io_pipe_phv_in_data_71; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_72 = io_pipe_phv_in_data_72; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_73 = io_pipe_phv_in_data_73; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_74 = io_pipe_phv_in_data_74; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_75 = io_pipe_phv_in_data_75; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_76 = io_pipe_phv_in_data_76; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_77 = io_pipe_phv_in_data_77; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_78 = io_pipe_phv_in_data_78; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_79 = io_pipe_phv_in_data_79; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_80 = io_pipe_phv_in_data_80; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_81 = io_pipe_phv_in_data_81; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_82 = io_pipe_phv_in_data_82; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_83 = io_pipe_phv_in_data_83; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_84 = io_pipe_phv_in_data_84; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_85 = io_pipe_phv_in_data_85; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_86 = io_pipe_phv_in_data_86; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_87 = io_pipe_phv_in_data_87; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_88 = io_pipe_phv_in_data_88; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_89 = io_pipe_phv_in_data_89; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_90 = io_pipe_phv_in_data_90; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_91 = io_pipe_phv_in_data_91; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_92 = io_pipe_phv_in_data_92; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_93 = io_pipe_phv_in_data_93; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_94 = io_pipe_phv_in_data_94; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_data_95 = io_pipe_phv_in_data_95; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_header_0 = io_pipe_phv_in_header_0; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_header_1 = io_pipe_phv_in_header_1; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_header_2 = io_pipe_phv_in_header_2; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_header_3 = io_pipe_phv_in_header_3; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_header_4 = io_pipe_phv_in_header_4; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_header_5 = io_pipe_phv_in_header_5; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_header_6 = io_pipe_phv_in_header_6; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_header_7 = io_pipe_phv_in_header_7; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_header_8 = io_pipe_phv_in_header_8; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_header_9 = io_pipe_phv_in_header_9; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_header_10 = io_pipe_phv_in_header_10; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_header_11 = io_pipe_phv_in_header_11; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_header_12 = io_pipe_phv_in_header_12; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_header_13 = io_pipe_phv_in_header_13; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_header_14 = io_pipe_phv_in_header_14; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_header_15 = io_pipe_phv_in_header_15; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_parse_current_state = io_pipe_phv_in_parse_current_state; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_parse_current_offset = io_pipe_phv_in_parse_current_offset; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_parse_transition_field = io_pipe_phv_in_parse_transition_field; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_next_processor_id = io_pipe_phv_in_next_processor_id; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_next_config_id = io_pipe_phv_in_next_config_id; // @[parser.scala 30:35]
  assign mau_0_io_pipe_phv_in_is_valid_processor = io_pipe_phv_in_is_valid_processor; // @[parser.scala 30:35]
  assign mau_0_io_mod_state_id_mod = io_mod_en ? io_mod_module_mod_state_id_mod & mod_j : io_mod_module_mod_state_id_mod
    ; // @[parser.scala 41:22 parser.scala 48:40 parser.scala 37:23]
  assign mau_0_io_mod_state_id = io_mod_module_mod_state_id; // @[parser.scala 37:23]
  assign mau_0_io_mod_sram_w_cs = io_mod_module_mod_sram_w_cs; // @[parser.scala 37:23]
  assign mau_0_io_mod_sram_w_addr = io_mod_module_mod_sram_w_addr; // @[parser.scala 37:23]
  assign mau_0_io_mod_sram_w_data = io_mod_module_mod_sram_w_data; // @[parser.scala 37:23]
  assign mau_1_clock = clock;
  assign mau_1_io_pipe_phv_in_data_0 = mau_0_io_pipe_phv_out_data_0; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_1 = mau_0_io_pipe_phv_out_data_1; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_2 = mau_0_io_pipe_phv_out_data_2; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_3 = mau_0_io_pipe_phv_out_data_3; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_4 = mau_0_io_pipe_phv_out_data_4; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_5 = mau_0_io_pipe_phv_out_data_5; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_6 = mau_0_io_pipe_phv_out_data_6; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_7 = mau_0_io_pipe_phv_out_data_7; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_8 = mau_0_io_pipe_phv_out_data_8; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_9 = mau_0_io_pipe_phv_out_data_9; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_10 = mau_0_io_pipe_phv_out_data_10; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_11 = mau_0_io_pipe_phv_out_data_11; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_12 = mau_0_io_pipe_phv_out_data_12; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_13 = mau_0_io_pipe_phv_out_data_13; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_14 = mau_0_io_pipe_phv_out_data_14; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_15 = mau_0_io_pipe_phv_out_data_15; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_16 = mau_0_io_pipe_phv_out_data_16; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_17 = mau_0_io_pipe_phv_out_data_17; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_18 = mau_0_io_pipe_phv_out_data_18; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_19 = mau_0_io_pipe_phv_out_data_19; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_20 = mau_0_io_pipe_phv_out_data_20; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_21 = mau_0_io_pipe_phv_out_data_21; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_22 = mau_0_io_pipe_phv_out_data_22; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_23 = mau_0_io_pipe_phv_out_data_23; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_24 = mau_0_io_pipe_phv_out_data_24; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_25 = mau_0_io_pipe_phv_out_data_25; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_26 = mau_0_io_pipe_phv_out_data_26; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_27 = mau_0_io_pipe_phv_out_data_27; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_28 = mau_0_io_pipe_phv_out_data_28; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_29 = mau_0_io_pipe_phv_out_data_29; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_30 = mau_0_io_pipe_phv_out_data_30; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_31 = mau_0_io_pipe_phv_out_data_31; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_32 = mau_0_io_pipe_phv_out_data_32; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_33 = mau_0_io_pipe_phv_out_data_33; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_34 = mau_0_io_pipe_phv_out_data_34; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_35 = mau_0_io_pipe_phv_out_data_35; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_36 = mau_0_io_pipe_phv_out_data_36; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_37 = mau_0_io_pipe_phv_out_data_37; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_38 = mau_0_io_pipe_phv_out_data_38; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_39 = mau_0_io_pipe_phv_out_data_39; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_40 = mau_0_io_pipe_phv_out_data_40; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_41 = mau_0_io_pipe_phv_out_data_41; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_42 = mau_0_io_pipe_phv_out_data_42; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_43 = mau_0_io_pipe_phv_out_data_43; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_44 = mau_0_io_pipe_phv_out_data_44; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_45 = mau_0_io_pipe_phv_out_data_45; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_46 = mau_0_io_pipe_phv_out_data_46; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_47 = mau_0_io_pipe_phv_out_data_47; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_48 = mau_0_io_pipe_phv_out_data_48; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_49 = mau_0_io_pipe_phv_out_data_49; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_50 = mau_0_io_pipe_phv_out_data_50; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_51 = mau_0_io_pipe_phv_out_data_51; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_52 = mau_0_io_pipe_phv_out_data_52; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_53 = mau_0_io_pipe_phv_out_data_53; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_54 = mau_0_io_pipe_phv_out_data_54; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_55 = mau_0_io_pipe_phv_out_data_55; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_56 = mau_0_io_pipe_phv_out_data_56; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_57 = mau_0_io_pipe_phv_out_data_57; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_58 = mau_0_io_pipe_phv_out_data_58; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_59 = mau_0_io_pipe_phv_out_data_59; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_60 = mau_0_io_pipe_phv_out_data_60; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_61 = mau_0_io_pipe_phv_out_data_61; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_62 = mau_0_io_pipe_phv_out_data_62; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_63 = mau_0_io_pipe_phv_out_data_63; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_64 = mau_0_io_pipe_phv_out_data_64; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_65 = mau_0_io_pipe_phv_out_data_65; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_66 = mau_0_io_pipe_phv_out_data_66; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_67 = mau_0_io_pipe_phv_out_data_67; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_68 = mau_0_io_pipe_phv_out_data_68; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_69 = mau_0_io_pipe_phv_out_data_69; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_70 = mau_0_io_pipe_phv_out_data_70; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_71 = mau_0_io_pipe_phv_out_data_71; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_72 = mau_0_io_pipe_phv_out_data_72; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_73 = mau_0_io_pipe_phv_out_data_73; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_74 = mau_0_io_pipe_phv_out_data_74; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_75 = mau_0_io_pipe_phv_out_data_75; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_76 = mau_0_io_pipe_phv_out_data_76; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_77 = mau_0_io_pipe_phv_out_data_77; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_78 = mau_0_io_pipe_phv_out_data_78; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_79 = mau_0_io_pipe_phv_out_data_79; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_80 = mau_0_io_pipe_phv_out_data_80; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_81 = mau_0_io_pipe_phv_out_data_81; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_82 = mau_0_io_pipe_phv_out_data_82; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_83 = mau_0_io_pipe_phv_out_data_83; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_84 = mau_0_io_pipe_phv_out_data_84; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_85 = mau_0_io_pipe_phv_out_data_85; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_86 = mau_0_io_pipe_phv_out_data_86; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_87 = mau_0_io_pipe_phv_out_data_87; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_88 = mau_0_io_pipe_phv_out_data_88; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_89 = mau_0_io_pipe_phv_out_data_89; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_90 = mau_0_io_pipe_phv_out_data_90; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_91 = mau_0_io_pipe_phv_out_data_91; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_92 = mau_0_io_pipe_phv_out_data_92; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_93 = mau_0_io_pipe_phv_out_data_93; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_94 = mau_0_io_pipe_phv_out_data_94; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_data_95 = mau_0_io_pipe_phv_out_data_95; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_header_0 = mau_0_io_pipe_phv_out_header_0; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_header_1 = mau_0_io_pipe_phv_out_header_1; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_header_2 = mau_0_io_pipe_phv_out_header_2; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_header_3 = mau_0_io_pipe_phv_out_header_3; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_header_4 = mau_0_io_pipe_phv_out_header_4; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_header_5 = mau_0_io_pipe_phv_out_header_5; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_header_6 = mau_0_io_pipe_phv_out_header_6; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_header_7 = mau_0_io_pipe_phv_out_header_7; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_header_8 = mau_0_io_pipe_phv_out_header_8; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_header_9 = mau_0_io_pipe_phv_out_header_9; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_header_10 = mau_0_io_pipe_phv_out_header_10; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_header_11 = mau_0_io_pipe_phv_out_header_11; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_header_12 = mau_0_io_pipe_phv_out_header_12; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_header_13 = mau_0_io_pipe_phv_out_header_13; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_header_14 = mau_0_io_pipe_phv_out_header_14; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_header_15 = mau_0_io_pipe_phv_out_header_15; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_parse_current_state = mau_0_io_pipe_phv_out_parse_current_state; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_parse_current_offset = mau_0_io_pipe_phv_out_parse_current_offset; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_parse_transition_field = mau_0_io_pipe_phv_out_parse_transition_field; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_next_processor_id = mau_0_io_pipe_phv_out_next_processor_id; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_next_config_id = mau_0_io_pipe_phv_out_next_config_id; // @[parser.scala 32:35]
  assign mau_1_io_pipe_phv_in_is_valid_processor = mau_0_io_pipe_phv_out_is_valid_processor; // @[parser.scala 32:35]
  assign mau_1_io_mod_state_id_mod = io_mod_en ? io_mod_module_mod_state_id_mod & mod_j_1 :
    io_mod_module_mod_state_id_mod; // @[parser.scala 41:22 parser.scala 48:40 parser.scala 37:23]
  assign mau_1_io_mod_state_id = io_mod_module_mod_state_id; // @[parser.scala 37:23]
  assign mau_1_io_mod_sram_w_cs = io_mod_module_mod_sram_w_cs; // @[parser.scala 37:23]
  assign mau_1_io_mod_sram_w_addr = io_mod_module_mod_sram_w_addr; // @[parser.scala 37:23]
  assign mau_1_io_mod_sram_w_data = io_mod_module_mod_sram_w_data; // @[parser.scala 37:23]
  assign mau_2_clock = clock;
  assign mau_2_io_pipe_phv_in_data_0 = mau_1_io_pipe_phv_out_data_0; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_1 = mau_1_io_pipe_phv_out_data_1; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_2 = mau_1_io_pipe_phv_out_data_2; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_3 = mau_1_io_pipe_phv_out_data_3; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_4 = mau_1_io_pipe_phv_out_data_4; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_5 = mau_1_io_pipe_phv_out_data_5; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_6 = mau_1_io_pipe_phv_out_data_6; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_7 = mau_1_io_pipe_phv_out_data_7; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_8 = mau_1_io_pipe_phv_out_data_8; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_9 = mau_1_io_pipe_phv_out_data_9; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_10 = mau_1_io_pipe_phv_out_data_10; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_11 = mau_1_io_pipe_phv_out_data_11; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_12 = mau_1_io_pipe_phv_out_data_12; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_13 = mau_1_io_pipe_phv_out_data_13; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_14 = mau_1_io_pipe_phv_out_data_14; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_15 = mau_1_io_pipe_phv_out_data_15; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_16 = mau_1_io_pipe_phv_out_data_16; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_17 = mau_1_io_pipe_phv_out_data_17; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_18 = mau_1_io_pipe_phv_out_data_18; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_19 = mau_1_io_pipe_phv_out_data_19; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_20 = mau_1_io_pipe_phv_out_data_20; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_21 = mau_1_io_pipe_phv_out_data_21; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_22 = mau_1_io_pipe_phv_out_data_22; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_23 = mau_1_io_pipe_phv_out_data_23; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_24 = mau_1_io_pipe_phv_out_data_24; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_25 = mau_1_io_pipe_phv_out_data_25; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_26 = mau_1_io_pipe_phv_out_data_26; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_27 = mau_1_io_pipe_phv_out_data_27; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_28 = mau_1_io_pipe_phv_out_data_28; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_29 = mau_1_io_pipe_phv_out_data_29; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_30 = mau_1_io_pipe_phv_out_data_30; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_31 = mau_1_io_pipe_phv_out_data_31; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_32 = mau_1_io_pipe_phv_out_data_32; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_33 = mau_1_io_pipe_phv_out_data_33; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_34 = mau_1_io_pipe_phv_out_data_34; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_35 = mau_1_io_pipe_phv_out_data_35; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_36 = mau_1_io_pipe_phv_out_data_36; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_37 = mau_1_io_pipe_phv_out_data_37; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_38 = mau_1_io_pipe_phv_out_data_38; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_39 = mau_1_io_pipe_phv_out_data_39; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_40 = mau_1_io_pipe_phv_out_data_40; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_41 = mau_1_io_pipe_phv_out_data_41; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_42 = mau_1_io_pipe_phv_out_data_42; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_43 = mau_1_io_pipe_phv_out_data_43; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_44 = mau_1_io_pipe_phv_out_data_44; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_45 = mau_1_io_pipe_phv_out_data_45; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_46 = mau_1_io_pipe_phv_out_data_46; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_47 = mau_1_io_pipe_phv_out_data_47; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_48 = mau_1_io_pipe_phv_out_data_48; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_49 = mau_1_io_pipe_phv_out_data_49; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_50 = mau_1_io_pipe_phv_out_data_50; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_51 = mau_1_io_pipe_phv_out_data_51; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_52 = mau_1_io_pipe_phv_out_data_52; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_53 = mau_1_io_pipe_phv_out_data_53; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_54 = mau_1_io_pipe_phv_out_data_54; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_55 = mau_1_io_pipe_phv_out_data_55; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_56 = mau_1_io_pipe_phv_out_data_56; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_57 = mau_1_io_pipe_phv_out_data_57; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_58 = mau_1_io_pipe_phv_out_data_58; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_59 = mau_1_io_pipe_phv_out_data_59; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_60 = mau_1_io_pipe_phv_out_data_60; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_61 = mau_1_io_pipe_phv_out_data_61; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_62 = mau_1_io_pipe_phv_out_data_62; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_63 = mau_1_io_pipe_phv_out_data_63; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_64 = mau_1_io_pipe_phv_out_data_64; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_65 = mau_1_io_pipe_phv_out_data_65; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_66 = mau_1_io_pipe_phv_out_data_66; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_67 = mau_1_io_pipe_phv_out_data_67; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_68 = mau_1_io_pipe_phv_out_data_68; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_69 = mau_1_io_pipe_phv_out_data_69; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_70 = mau_1_io_pipe_phv_out_data_70; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_71 = mau_1_io_pipe_phv_out_data_71; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_72 = mau_1_io_pipe_phv_out_data_72; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_73 = mau_1_io_pipe_phv_out_data_73; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_74 = mau_1_io_pipe_phv_out_data_74; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_75 = mau_1_io_pipe_phv_out_data_75; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_76 = mau_1_io_pipe_phv_out_data_76; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_77 = mau_1_io_pipe_phv_out_data_77; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_78 = mau_1_io_pipe_phv_out_data_78; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_79 = mau_1_io_pipe_phv_out_data_79; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_80 = mau_1_io_pipe_phv_out_data_80; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_81 = mau_1_io_pipe_phv_out_data_81; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_82 = mau_1_io_pipe_phv_out_data_82; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_83 = mau_1_io_pipe_phv_out_data_83; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_84 = mau_1_io_pipe_phv_out_data_84; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_85 = mau_1_io_pipe_phv_out_data_85; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_86 = mau_1_io_pipe_phv_out_data_86; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_87 = mau_1_io_pipe_phv_out_data_87; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_88 = mau_1_io_pipe_phv_out_data_88; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_89 = mau_1_io_pipe_phv_out_data_89; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_90 = mau_1_io_pipe_phv_out_data_90; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_91 = mau_1_io_pipe_phv_out_data_91; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_92 = mau_1_io_pipe_phv_out_data_92; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_93 = mau_1_io_pipe_phv_out_data_93; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_94 = mau_1_io_pipe_phv_out_data_94; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_data_95 = mau_1_io_pipe_phv_out_data_95; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_header_0 = mau_1_io_pipe_phv_out_header_0; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_header_1 = mau_1_io_pipe_phv_out_header_1; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_header_2 = mau_1_io_pipe_phv_out_header_2; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_header_3 = mau_1_io_pipe_phv_out_header_3; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_header_4 = mau_1_io_pipe_phv_out_header_4; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_header_5 = mau_1_io_pipe_phv_out_header_5; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_header_6 = mau_1_io_pipe_phv_out_header_6; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_header_7 = mau_1_io_pipe_phv_out_header_7; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_header_8 = mau_1_io_pipe_phv_out_header_8; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_header_9 = mau_1_io_pipe_phv_out_header_9; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_header_10 = mau_1_io_pipe_phv_out_header_10; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_header_11 = mau_1_io_pipe_phv_out_header_11; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_header_12 = mau_1_io_pipe_phv_out_header_12; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_header_13 = mau_1_io_pipe_phv_out_header_13; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_header_14 = mau_1_io_pipe_phv_out_header_14; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_header_15 = mau_1_io_pipe_phv_out_header_15; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_parse_current_state = mau_1_io_pipe_phv_out_parse_current_state; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_parse_current_offset = mau_1_io_pipe_phv_out_parse_current_offset; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_parse_transition_field = mau_1_io_pipe_phv_out_parse_transition_field; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_next_processor_id = mau_1_io_pipe_phv_out_next_processor_id; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_next_config_id = mau_1_io_pipe_phv_out_next_config_id; // @[parser.scala 32:35]
  assign mau_2_io_pipe_phv_in_is_valid_processor = mau_1_io_pipe_phv_out_is_valid_processor; // @[parser.scala 32:35]
  assign mau_2_io_mod_state_id_mod = io_mod_en ? io_mod_module_mod_state_id_mod & mod_j_2 :
    io_mod_module_mod_state_id_mod; // @[parser.scala 41:22 parser.scala 48:40 parser.scala 37:23]
  assign mau_2_io_mod_state_id = io_mod_module_mod_state_id; // @[parser.scala 37:23]
  assign mau_2_io_mod_sram_w_cs = io_mod_module_mod_sram_w_cs; // @[parser.scala 37:23]
  assign mau_2_io_mod_sram_w_addr = io_mod_module_mod_sram_w_addr; // @[parser.scala 37:23]
  assign mau_2_io_mod_sram_w_data = io_mod_module_mod_sram_w_data; // @[parser.scala 37:23]
  assign mau_3_clock = clock;
  assign mau_3_io_pipe_phv_in_data_0 = mau_2_io_pipe_phv_out_data_0; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_1 = mau_2_io_pipe_phv_out_data_1; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_2 = mau_2_io_pipe_phv_out_data_2; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_3 = mau_2_io_pipe_phv_out_data_3; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_4 = mau_2_io_pipe_phv_out_data_4; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_5 = mau_2_io_pipe_phv_out_data_5; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_6 = mau_2_io_pipe_phv_out_data_6; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_7 = mau_2_io_pipe_phv_out_data_7; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_8 = mau_2_io_pipe_phv_out_data_8; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_9 = mau_2_io_pipe_phv_out_data_9; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_10 = mau_2_io_pipe_phv_out_data_10; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_11 = mau_2_io_pipe_phv_out_data_11; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_12 = mau_2_io_pipe_phv_out_data_12; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_13 = mau_2_io_pipe_phv_out_data_13; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_14 = mau_2_io_pipe_phv_out_data_14; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_15 = mau_2_io_pipe_phv_out_data_15; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_16 = mau_2_io_pipe_phv_out_data_16; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_17 = mau_2_io_pipe_phv_out_data_17; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_18 = mau_2_io_pipe_phv_out_data_18; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_19 = mau_2_io_pipe_phv_out_data_19; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_20 = mau_2_io_pipe_phv_out_data_20; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_21 = mau_2_io_pipe_phv_out_data_21; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_22 = mau_2_io_pipe_phv_out_data_22; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_23 = mau_2_io_pipe_phv_out_data_23; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_24 = mau_2_io_pipe_phv_out_data_24; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_25 = mau_2_io_pipe_phv_out_data_25; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_26 = mau_2_io_pipe_phv_out_data_26; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_27 = mau_2_io_pipe_phv_out_data_27; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_28 = mau_2_io_pipe_phv_out_data_28; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_29 = mau_2_io_pipe_phv_out_data_29; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_30 = mau_2_io_pipe_phv_out_data_30; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_31 = mau_2_io_pipe_phv_out_data_31; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_32 = mau_2_io_pipe_phv_out_data_32; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_33 = mau_2_io_pipe_phv_out_data_33; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_34 = mau_2_io_pipe_phv_out_data_34; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_35 = mau_2_io_pipe_phv_out_data_35; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_36 = mau_2_io_pipe_phv_out_data_36; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_37 = mau_2_io_pipe_phv_out_data_37; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_38 = mau_2_io_pipe_phv_out_data_38; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_39 = mau_2_io_pipe_phv_out_data_39; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_40 = mau_2_io_pipe_phv_out_data_40; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_41 = mau_2_io_pipe_phv_out_data_41; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_42 = mau_2_io_pipe_phv_out_data_42; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_43 = mau_2_io_pipe_phv_out_data_43; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_44 = mau_2_io_pipe_phv_out_data_44; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_45 = mau_2_io_pipe_phv_out_data_45; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_46 = mau_2_io_pipe_phv_out_data_46; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_47 = mau_2_io_pipe_phv_out_data_47; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_48 = mau_2_io_pipe_phv_out_data_48; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_49 = mau_2_io_pipe_phv_out_data_49; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_50 = mau_2_io_pipe_phv_out_data_50; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_51 = mau_2_io_pipe_phv_out_data_51; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_52 = mau_2_io_pipe_phv_out_data_52; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_53 = mau_2_io_pipe_phv_out_data_53; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_54 = mau_2_io_pipe_phv_out_data_54; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_55 = mau_2_io_pipe_phv_out_data_55; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_56 = mau_2_io_pipe_phv_out_data_56; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_57 = mau_2_io_pipe_phv_out_data_57; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_58 = mau_2_io_pipe_phv_out_data_58; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_59 = mau_2_io_pipe_phv_out_data_59; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_60 = mau_2_io_pipe_phv_out_data_60; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_61 = mau_2_io_pipe_phv_out_data_61; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_62 = mau_2_io_pipe_phv_out_data_62; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_63 = mau_2_io_pipe_phv_out_data_63; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_64 = mau_2_io_pipe_phv_out_data_64; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_65 = mau_2_io_pipe_phv_out_data_65; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_66 = mau_2_io_pipe_phv_out_data_66; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_67 = mau_2_io_pipe_phv_out_data_67; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_68 = mau_2_io_pipe_phv_out_data_68; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_69 = mau_2_io_pipe_phv_out_data_69; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_70 = mau_2_io_pipe_phv_out_data_70; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_71 = mau_2_io_pipe_phv_out_data_71; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_72 = mau_2_io_pipe_phv_out_data_72; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_73 = mau_2_io_pipe_phv_out_data_73; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_74 = mau_2_io_pipe_phv_out_data_74; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_75 = mau_2_io_pipe_phv_out_data_75; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_76 = mau_2_io_pipe_phv_out_data_76; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_77 = mau_2_io_pipe_phv_out_data_77; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_78 = mau_2_io_pipe_phv_out_data_78; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_79 = mau_2_io_pipe_phv_out_data_79; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_80 = mau_2_io_pipe_phv_out_data_80; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_81 = mau_2_io_pipe_phv_out_data_81; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_82 = mau_2_io_pipe_phv_out_data_82; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_83 = mau_2_io_pipe_phv_out_data_83; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_84 = mau_2_io_pipe_phv_out_data_84; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_85 = mau_2_io_pipe_phv_out_data_85; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_86 = mau_2_io_pipe_phv_out_data_86; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_87 = mau_2_io_pipe_phv_out_data_87; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_88 = mau_2_io_pipe_phv_out_data_88; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_89 = mau_2_io_pipe_phv_out_data_89; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_90 = mau_2_io_pipe_phv_out_data_90; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_91 = mau_2_io_pipe_phv_out_data_91; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_92 = mau_2_io_pipe_phv_out_data_92; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_93 = mau_2_io_pipe_phv_out_data_93; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_94 = mau_2_io_pipe_phv_out_data_94; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_data_95 = mau_2_io_pipe_phv_out_data_95; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_header_0 = mau_2_io_pipe_phv_out_header_0; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_header_1 = mau_2_io_pipe_phv_out_header_1; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_header_2 = mau_2_io_pipe_phv_out_header_2; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_header_3 = mau_2_io_pipe_phv_out_header_3; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_header_4 = mau_2_io_pipe_phv_out_header_4; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_header_5 = mau_2_io_pipe_phv_out_header_5; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_header_6 = mau_2_io_pipe_phv_out_header_6; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_header_7 = mau_2_io_pipe_phv_out_header_7; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_header_8 = mau_2_io_pipe_phv_out_header_8; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_header_9 = mau_2_io_pipe_phv_out_header_9; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_header_10 = mau_2_io_pipe_phv_out_header_10; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_header_11 = mau_2_io_pipe_phv_out_header_11; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_header_12 = mau_2_io_pipe_phv_out_header_12; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_header_13 = mau_2_io_pipe_phv_out_header_13; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_header_14 = mau_2_io_pipe_phv_out_header_14; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_header_15 = mau_2_io_pipe_phv_out_header_15; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_parse_current_state = mau_2_io_pipe_phv_out_parse_current_state; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_parse_current_offset = mau_2_io_pipe_phv_out_parse_current_offset; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_parse_transition_field = mau_2_io_pipe_phv_out_parse_transition_field; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_next_processor_id = mau_2_io_pipe_phv_out_next_processor_id; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_next_config_id = mau_2_io_pipe_phv_out_next_config_id; // @[parser.scala 32:35]
  assign mau_3_io_pipe_phv_in_is_valid_processor = mau_2_io_pipe_phv_out_is_valid_processor; // @[parser.scala 32:35]
  assign mau_3_io_mod_state_id_mod = io_mod_en ? io_mod_module_mod_state_id_mod & mod_j_3 :
    io_mod_module_mod_state_id_mod; // @[parser.scala 41:22 parser.scala 48:40 parser.scala 37:23]
  assign mau_3_io_mod_state_id = io_mod_module_mod_state_id; // @[parser.scala 37:23]
  assign mau_3_io_mod_sram_w_cs = io_mod_module_mod_sram_w_cs; // @[parser.scala 37:23]
  assign mau_3_io_mod_sram_w_addr = io_mod_module_mod_sram_w_addr; // @[parser.scala 37:23]
  assign mau_3_io_mod_sram_w_data = io_mod_module_mod_sram_w_data; // @[parser.scala 37:23]
  assign mau_4_clock = clock;
  assign mau_4_io_pipe_phv_in_data_0 = mau_3_io_pipe_phv_out_data_0; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_1 = mau_3_io_pipe_phv_out_data_1; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_2 = mau_3_io_pipe_phv_out_data_2; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_3 = mau_3_io_pipe_phv_out_data_3; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_4 = mau_3_io_pipe_phv_out_data_4; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_5 = mau_3_io_pipe_phv_out_data_5; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_6 = mau_3_io_pipe_phv_out_data_6; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_7 = mau_3_io_pipe_phv_out_data_7; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_8 = mau_3_io_pipe_phv_out_data_8; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_9 = mau_3_io_pipe_phv_out_data_9; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_10 = mau_3_io_pipe_phv_out_data_10; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_11 = mau_3_io_pipe_phv_out_data_11; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_12 = mau_3_io_pipe_phv_out_data_12; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_13 = mau_3_io_pipe_phv_out_data_13; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_14 = mau_3_io_pipe_phv_out_data_14; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_15 = mau_3_io_pipe_phv_out_data_15; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_16 = mau_3_io_pipe_phv_out_data_16; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_17 = mau_3_io_pipe_phv_out_data_17; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_18 = mau_3_io_pipe_phv_out_data_18; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_19 = mau_3_io_pipe_phv_out_data_19; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_20 = mau_3_io_pipe_phv_out_data_20; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_21 = mau_3_io_pipe_phv_out_data_21; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_22 = mau_3_io_pipe_phv_out_data_22; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_23 = mau_3_io_pipe_phv_out_data_23; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_24 = mau_3_io_pipe_phv_out_data_24; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_25 = mau_3_io_pipe_phv_out_data_25; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_26 = mau_3_io_pipe_phv_out_data_26; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_27 = mau_3_io_pipe_phv_out_data_27; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_28 = mau_3_io_pipe_phv_out_data_28; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_29 = mau_3_io_pipe_phv_out_data_29; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_30 = mau_3_io_pipe_phv_out_data_30; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_31 = mau_3_io_pipe_phv_out_data_31; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_32 = mau_3_io_pipe_phv_out_data_32; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_33 = mau_3_io_pipe_phv_out_data_33; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_34 = mau_3_io_pipe_phv_out_data_34; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_35 = mau_3_io_pipe_phv_out_data_35; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_36 = mau_3_io_pipe_phv_out_data_36; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_37 = mau_3_io_pipe_phv_out_data_37; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_38 = mau_3_io_pipe_phv_out_data_38; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_39 = mau_3_io_pipe_phv_out_data_39; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_40 = mau_3_io_pipe_phv_out_data_40; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_41 = mau_3_io_pipe_phv_out_data_41; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_42 = mau_3_io_pipe_phv_out_data_42; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_43 = mau_3_io_pipe_phv_out_data_43; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_44 = mau_3_io_pipe_phv_out_data_44; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_45 = mau_3_io_pipe_phv_out_data_45; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_46 = mau_3_io_pipe_phv_out_data_46; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_47 = mau_3_io_pipe_phv_out_data_47; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_48 = mau_3_io_pipe_phv_out_data_48; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_49 = mau_3_io_pipe_phv_out_data_49; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_50 = mau_3_io_pipe_phv_out_data_50; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_51 = mau_3_io_pipe_phv_out_data_51; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_52 = mau_3_io_pipe_phv_out_data_52; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_53 = mau_3_io_pipe_phv_out_data_53; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_54 = mau_3_io_pipe_phv_out_data_54; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_55 = mau_3_io_pipe_phv_out_data_55; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_56 = mau_3_io_pipe_phv_out_data_56; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_57 = mau_3_io_pipe_phv_out_data_57; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_58 = mau_3_io_pipe_phv_out_data_58; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_59 = mau_3_io_pipe_phv_out_data_59; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_60 = mau_3_io_pipe_phv_out_data_60; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_61 = mau_3_io_pipe_phv_out_data_61; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_62 = mau_3_io_pipe_phv_out_data_62; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_63 = mau_3_io_pipe_phv_out_data_63; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_64 = mau_3_io_pipe_phv_out_data_64; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_65 = mau_3_io_pipe_phv_out_data_65; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_66 = mau_3_io_pipe_phv_out_data_66; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_67 = mau_3_io_pipe_phv_out_data_67; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_68 = mau_3_io_pipe_phv_out_data_68; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_69 = mau_3_io_pipe_phv_out_data_69; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_70 = mau_3_io_pipe_phv_out_data_70; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_71 = mau_3_io_pipe_phv_out_data_71; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_72 = mau_3_io_pipe_phv_out_data_72; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_73 = mau_3_io_pipe_phv_out_data_73; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_74 = mau_3_io_pipe_phv_out_data_74; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_75 = mau_3_io_pipe_phv_out_data_75; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_76 = mau_3_io_pipe_phv_out_data_76; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_77 = mau_3_io_pipe_phv_out_data_77; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_78 = mau_3_io_pipe_phv_out_data_78; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_79 = mau_3_io_pipe_phv_out_data_79; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_80 = mau_3_io_pipe_phv_out_data_80; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_81 = mau_3_io_pipe_phv_out_data_81; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_82 = mau_3_io_pipe_phv_out_data_82; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_83 = mau_3_io_pipe_phv_out_data_83; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_84 = mau_3_io_pipe_phv_out_data_84; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_85 = mau_3_io_pipe_phv_out_data_85; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_86 = mau_3_io_pipe_phv_out_data_86; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_87 = mau_3_io_pipe_phv_out_data_87; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_88 = mau_3_io_pipe_phv_out_data_88; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_89 = mau_3_io_pipe_phv_out_data_89; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_90 = mau_3_io_pipe_phv_out_data_90; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_91 = mau_3_io_pipe_phv_out_data_91; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_92 = mau_3_io_pipe_phv_out_data_92; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_93 = mau_3_io_pipe_phv_out_data_93; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_94 = mau_3_io_pipe_phv_out_data_94; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_data_95 = mau_3_io_pipe_phv_out_data_95; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_header_0 = mau_3_io_pipe_phv_out_header_0; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_header_1 = mau_3_io_pipe_phv_out_header_1; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_header_2 = mau_3_io_pipe_phv_out_header_2; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_header_3 = mau_3_io_pipe_phv_out_header_3; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_header_4 = mau_3_io_pipe_phv_out_header_4; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_header_5 = mau_3_io_pipe_phv_out_header_5; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_header_6 = mau_3_io_pipe_phv_out_header_6; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_header_7 = mau_3_io_pipe_phv_out_header_7; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_header_8 = mau_3_io_pipe_phv_out_header_8; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_header_9 = mau_3_io_pipe_phv_out_header_9; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_header_10 = mau_3_io_pipe_phv_out_header_10; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_header_11 = mau_3_io_pipe_phv_out_header_11; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_header_12 = mau_3_io_pipe_phv_out_header_12; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_header_13 = mau_3_io_pipe_phv_out_header_13; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_header_14 = mau_3_io_pipe_phv_out_header_14; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_header_15 = mau_3_io_pipe_phv_out_header_15; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_parse_current_state = mau_3_io_pipe_phv_out_parse_current_state; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_parse_current_offset = mau_3_io_pipe_phv_out_parse_current_offset; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_parse_transition_field = mau_3_io_pipe_phv_out_parse_transition_field; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_next_processor_id = mau_3_io_pipe_phv_out_next_processor_id; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_next_config_id = mau_3_io_pipe_phv_out_next_config_id; // @[parser.scala 32:35]
  assign mau_4_io_pipe_phv_in_is_valid_processor = mau_3_io_pipe_phv_out_is_valid_processor; // @[parser.scala 32:35]
  assign mau_4_io_mod_state_id_mod = io_mod_en ? io_mod_module_mod_state_id_mod & mod_j_4 :
    io_mod_module_mod_state_id_mod; // @[parser.scala 41:22 parser.scala 48:40 parser.scala 37:23]
  assign mau_4_io_mod_state_id = io_mod_module_mod_state_id; // @[parser.scala 37:23]
  assign mau_4_io_mod_sram_w_cs = io_mod_module_mod_sram_w_cs; // @[parser.scala 37:23]
  assign mau_4_io_mod_sram_w_addr = io_mod_module_mod_sram_w_addr; // @[parser.scala 37:23]
  assign mau_4_io_mod_sram_w_data = io_mod_module_mod_sram_w_data; // @[parser.scala 37:23]
  assign mau_5_clock = clock;
  assign mau_5_io_pipe_phv_in_data_0 = mau_4_io_pipe_phv_out_data_0; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_1 = mau_4_io_pipe_phv_out_data_1; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_2 = mau_4_io_pipe_phv_out_data_2; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_3 = mau_4_io_pipe_phv_out_data_3; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_4 = mau_4_io_pipe_phv_out_data_4; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_5 = mau_4_io_pipe_phv_out_data_5; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_6 = mau_4_io_pipe_phv_out_data_6; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_7 = mau_4_io_pipe_phv_out_data_7; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_8 = mau_4_io_pipe_phv_out_data_8; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_9 = mau_4_io_pipe_phv_out_data_9; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_10 = mau_4_io_pipe_phv_out_data_10; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_11 = mau_4_io_pipe_phv_out_data_11; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_12 = mau_4_io_pipe_phv_out_data_12; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_13 = mau_4_io_pipe_phv_out_data_13; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_14 = mau_4_io_pipe_phv_out_data_14; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_15 = mau_4_io_pipe_phv_out_data_15; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_16 = mau_4_io_pipe_phv_out_data_16; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_17 = mau_4_io_pipe_phv_out_data_17; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_18 = mau_4_io_pipe_phv_out_data_18; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_19 = mau_4_io_pipe_phv_out_data_19; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_20 = mau_4_io_pipe_phv_out_data_20; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_21 = mau_4_io_pipe_phv_out_data_21; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_22 = mau_4_io_pipe_phv_out_data_22; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_23 = mau_4_io_pipe_phv_out_data_23; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_24 = mau_4_io_pipe_phv_out_data_24; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_25 = mau_4_io_pipe_phv_out_data_25; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_26 = mau_4_io_pipe_phv_out_data_26; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_27 = mau_4_io_pipe_phv_out_data_27; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_28 = mau_4_io_pipe_phv_out_data_28; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_29 = mau_4_io_pipe_phv_out_data_29; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_30 = mau_4_io_pipe_phv_out_data_30; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_31 = mau_4_io_pipe_phv_out_data_31; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_32 = mau_4_io_pipe_phv_out_data_32; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_33 = mau_4_io_pipe_phv_out_data_33; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_34 = mau_4_io_pipe_phv_out_data_34; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_35 = mau_4_io_pipe_phv_out_data_35; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_36 = mau_4_io_pipe_phv_out_data_36; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_37 = mau_4_io_pipe_phv_out_data_37; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_38 = mau_4_io_pipe_phv_out_data_38; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_39 = mau_4_io_pipe_phv_out_data_39; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_40 = mau_4_io_pipe_phv_out_data_40; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_41 = mau_4_io_pipe_phv_out_data_41; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_42 = mau_4_io_pipe_phv_out_data_42; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_43 = mau_4_io_pipe_phv_out_data_43; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_44 = mau_4_io_pipe_phv_out_data_44; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_45 = mau_4_io_pipe_phv_out_data_45; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_46 = mau_4_io_pipe_phv_out_data_46; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_47 = mau_4_io_pipe_phv_out_data_47; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_48 = mau_4_io_pipe_phv_out_data_48; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_49 = mau_4_io_pipe_phv_out_data_49; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_50 = mau_4_io_pipe_phv_out_data_50; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_51 = mau_4_io_pipe_phv_out_data_51; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_52 = mau_4_io_pipe_phv_out_data_52; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_53 = mau_4_io_pipe_phv_out_data_53; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_54 = mau_4_io_pipe_phv_out_data_54; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_55 = mau_4_io_pipe_phv_out_data_55; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_56 = mau_4_io_pipe_phv_out_data_56; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_57 = mau_4_io_pipe_phv_out_data_57; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_58 = mau_4_io_pipe_phv_out_data_58; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_59 = mau_4_io_pipe_phv_out_data_59; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_60 = mau_4_io_pipe_phv_out_data_60; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_61 = mau_4_io_pipe_phv_out_data_61; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_62 = mau_4_io_pipe_phv_out_data_62; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_63 = mau_4_io_pipe_phv_out_data_63; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_64 = mau_4_io_pipe_phv_out_data_64; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_65 = mau_4_io_pipe_phv_out_data_65; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_66 = mau_4_io_pipe_phv_out_data_66; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_67 = mau_4_io_pipe_phv_out_data_67; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_68 = mau_4_io_pipe_phv_out_data_68; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_69 = mau_4_io_pipe_phv_out_data_69; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_70 = mau_4_io_pipe_phv_out_data_70; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_71 = mau_4_io_pipe_phv_out_data_71; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_72 = mau_4_io_pipe_phv_out_data_72; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_73 = mau_4_io_pipe_phv_out_data_73; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_74 = mau_4_io_pipe_phv_out_data_74; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_75 = mau_4_io_pipe_phv_out_data_75; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_76 = mau_4_io_pipe_phv_out_data_76; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_77 = mau_4_io_pipe_phv_out_data_77; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_78 = mau_4_io_pipe_phv_out_data_78; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_79 = mau_4_io_pipe_phv_out_data_79; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_80 = mau_4_io_pipe_phv_out_data_80; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_81 = mau_4_io_pipe_phv_out_data_81; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_82 = mau_4_io_pipe_phv_out_data_82; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_83 = mau_4_io_pipe_phv_out_data_83; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_84 = mau_4_io_pipe_phv_out_data_84; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_85 = mau_4_io_pipe_phv_out_data_85; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_86 = mau_4_io_pipe_phv_out_data_86; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_87 = mau_4_io_pipe_phv_out_data_87; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_88 = mau_4_io_pipe_phv_out_data_88; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_89 = mau_4_io_pipe_phv_out_data_89; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_90 = mau_4_io_pipe_phv_out_data_90; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_91 = mau_4_io_pipe_phv_out_data_91; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_92 = mau_4_io_pipe_phv_out_data_92; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_93 = mau_4_io_pipe_phv_out_data_93; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_94 = mau_4_io_pipe_phv_out_data_94; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_data_95 = mau_4_io_pipe_phv_out_data_95; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_header_0 = mau_4_io_pipe_phv_out_header_0; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_header_1 = mau_4_io_pipe_phv_out_header_1; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_header_2 = mau_4_io_pipe_phv_out_header_2; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_header_3 = mau_4_io_pipe_phv_out_header_3; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_header_4 = mau_4_io_pipe_phv_out_header_4; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_header_5 = mau_4_io_pipe_phv_out_header_5; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_header_6 = mau_4_io_pipe_phv_out_header_6; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_header_7 = mau_4_io_pipe_phv_out_header_7; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_header_8 = mau_4_io_pipe_phv_out_header_8; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_header_9 = mau_4_io_pipe_phv_out_header_9; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_header_10 = mau_4_io_pipe_phv_out_header_10; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_header_11 = mau_4_io_pipe_phv_out_header_11; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_header_12 = mau_4_io_pipe_phv_out_header_12; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_header_13 = mau_4_io_pipe_phv_out_header_13; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_header_14 = mau_4_io_pipe_phv_out_header_14; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_header_15 = mau_4_io_pipe_phv_out_header_15; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_parse_current_state = mau_4_io_pipe_phv_out_parse_current_state; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_parse_current_offset = mau_4_io_pipe_phv_out_parse_current_offset; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_parse_transition_field = mau_4_io_pipe_phv_out_parse_transition_field; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_next_processor_id = mau_4_io_pipe_phv_out_next_processor_id; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_next_config_id = mau_4_io_pipe_phv_out_next_config_id; // @[parser.scala 32:35]
  assign mau_5_io_pipe_phv_in_is_valid_processor = mau_4_io_pipe_phv_out_is_valid_processor; // @[parser.scala 32:35]
  assign mau_5_io_mod_state_id_mod = io_mod_en ? io_mod_module_mod_state_id_mod & mod_j_5 :
    io_mod_module_mod_state_id_mod; // @[parser.scala 41:22 parser.scala 48:40 parser.scala 37:23]
  assign mau_5_io_mod_state_id = io_mod_module_mod_state_id; // @[parser.scala 37:23]
  assign mau_5_io_mod_sram_w_cs = io_mod_module_mod_sram_w_cs; // @[parser.scala 37:23]
  assign mau_5_io_mod_sram_w_addr = io_mod_module_mod_sram_w_addr; // @[parser.scala 37:23]
  assign mau_5_io_mod_sram_w_data = io_mod_module_mod_sram_w_data; // @[parser.scala 37:23]
  assign mau_6_clock = clock;
  assign mau_6_io_pipe_phv_in_data_0 = mau_5_io_pipe_phv_out_data_0; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_1 = mau_5_io_pipe_phv_out_data_1; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_2 = mau_5_io_pipe_phv_out_data_2; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_3 = mau_5_io_pipe_phv_out_data_3; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_4 = mau_5_io_pipe_phv_out_data_4; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_5 = mau_5_io_pipe_phv_out_data_5; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_6 = mau_5_io_pipe_phv_out_data_6; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_7 = mau_5_io_pipe_phv_out_data_7; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_8 = mau_5_io_pipe_phv_out_data_8; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_9 = mau_5_io_pipe_phv_out_data_9; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_10 = mau_5_io_pipe_phv_out_data_10; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_11 = mau_5_io_pipe_phv_out_data_11; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_12 = mau_5_io_pipe_phv_out_data_12; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_13 = mau_5_io_pipe_phv_out_data_13; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_14 = mau_5_io_pipe_phv_out_data_14; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_15 = mau_5_io_pipe_phv_out_data_15; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_16 = mau_5_io_pipe_phv_out_data_16; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_17 = mau_5_io_pipe_phv_out_data_17; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_18 = mau_5_io_pipe_phv_out_data_18; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_19 = mau_5_io_pipe_phv_out_data_19; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_20 = mau_5_io_pipe_phv_out_data_20; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_21 = mau_5_io_pipe_phv_out_data_21; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_22 = mau_5_io_pipe_phv_out_data_22; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_23 = mau_5_io_pipe_phv_out_data_23; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_24 = mau_5_io_pipe_phv_out_data_24; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_25 = mau_5_io_pipe_phv_out_data_25; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_26 = mau_5_io_pipe_phv_out_data_26; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_27 = mau_5_io_pipe_phv_out_data_27; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_28 = mau_5_io_pipe_phv_out_data_28; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_29 = mau_5_io_pipe_phv_out_data_29; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_30 = mau_5_io_pipe_phv_out_data_30; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_31 = mau_5_io_pipe_phv_out_data_31; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_32 = mau_5_io_pipe_phv_out_data_32; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_33 = mau_5_io_pipe_phv_out_data_33; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_34 = mau_5_io_pipe_phv_out_data_34; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_35 = mau_5_io_pipe_phv_out_data_35; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_36 = mau_5_io_pipe_phv_out_data_36; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_37 = mau_5_io_pipe_phv_out_data_37; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_38 = mau_5_io_pipe_phv_out_data_38; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_39 = mau_5_io_pipe_phv_out_data_39; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_40 = mau_5_io_pipe_phv_out_data_40; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_41 = mau_5_io_pipe_phv_out_data_41; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_42 = mau_5_io_pipe_phv_out_data_42; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_43 = mau_5_io_pipe_phv_out_data_43; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_44 = mau_5_io_pipe_phv_out_data_44; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_45 = mau_5_io_pipe_phv_out_data_45; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_46 = mau_5_io_pipe_phv_out_data_46; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_47 = mau_5_io_pipe_phv_out_data_47; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_48 = mau_5_io_pipe_phv_out_data_48; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_49 = mau_5_io_pipe_phv_out_data_49; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_50 = mau_5_io_pipe_phv_out_data_50; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_51 = mau_5_io_pipe_phv_out_data_51; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_52 = mau_5_io_pipe_phv_out_data_52; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_53 = mau_5_io_pipe_phv_out_data_53; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_54 = mau_5_io_pipe_phv_out_data_54; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_55 = mau_5_io_pipe_phv_out_data_55; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_56 = mau_5_io_pipe_phv_out_data_56; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_57 = mau_5_io_pipe_phv_out_data_57; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_58 = mau_5_io_pipe_phv_out_data_58; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_59 = mau_5_io_pipe_phv_out_data_59; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_60 = mau_5_io_pipe_phv_out_data_60; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_61 = mau_5_io_pipe_phv_out_data_61; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_62 = mau_5_io_pipe_phv_out_data_62; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_63 = mau_5_io_pipe_phv_out_data_63; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_64 = mau_5_io_pipe_phv_out_data_64; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_65 = mau_5_io_pipe_phv_out_data_65; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_66 = mau_5_io_pipe_phv_out_data_66; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_67 = mau_5_io_pipe_phv_out_data_67; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_68 = mau_5_io_pipe_phv_out_data_68; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_69 = mau_5_io_pipe_phv_out_data_69; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_70 = mau_5_io_pipe_phv_out_data_70; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_71 = mau_5_io_pipe_phv_out_data_71; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_72 = mau_5_io_pipe_phv_out_data_72; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_73 = mau_5_io_pipe_phv_out_data_73; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_74 = mau_5_io_pipe_phv_out_data_74; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_75 = mau_5_io_pipe_phv_out_data_75; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_76 = mau_5_io_pipe_phv_out_data_76; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_77 = mau_5_io_pipe_phv_out_data_77; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_78 = mau_5_io_pipe_phv_out_data_78; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_79 = mau_5_io_pipe_phv_out_data_79; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_80 = mau_5_io_pipe_phv_out_data_80; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_81 = mau_5_io_pipe_phv_out_data_81; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_82 = mau_5_io_pipe_phv_out_data_82; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_83 = mau_5_io_pipe_phv_out_data_83; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_84 = mau_5_io_pipe_phv_out_data_84; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_85 = mau_5_io_pipe_phv_out_data_85; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_86 = mau_5_io_pipe_phv_out_data_86; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_87 = mau_5_io_pipe_phv_out_data_87; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_88 = mau_5_io_pipe_phv_out_data_88; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_89 = mau_5_io_pipe_phv_out_data_89; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_90 = mau_5_io_pipe_phv_out_data_90; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_91 = mau_5_io_pipe_phv_out_data_91; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_92 = mau_5_io_pipe_phv_out_data_92; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_93 = mau_5_io_pipe_phv_out_data_93; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_94 = mau_5_io_pipe_phv_out_data_94; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_data_95 = mau_5_io_pipe_phv_out_data_95; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_header_0 = mau_5_io_pipe_phv_out_header_0; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_header_1 = mau_5_io_pipe_phv_out_header_1; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_header_2 = mau_5_io_pipe_phv_out_header_2; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_header_3 = mau_5_io_pipe_phv_out_header_3; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_header_4 = mau_5_io_pipe_phv_out_header_4; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_header_5 = mau_5_io_pipe_phv_out_header_5; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_header_6 = mau_5_io_pipe_phv_out_header_6; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_header_7 = mau_5_io_pipe_phv_out_header_7; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_header_8 = mau_5_io_pipe_phv_out_header_8; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_header_9 = mau_5_io_pipe_phv_out_header_9; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_header_10 = mau_5_io_pipe_phv_out_header_10; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_header_11 = mau_5_io_pipe_phv_out_header_11; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_header_12 = mau_5_io_pipe_phv_out_header_12; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_header_13 = mau_5_io_pipe_phv_out_header_13; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_header_14 = mau_5_io_pipe_phv_out_header_14; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_header_15 = mau_5_io_pipe_phv_out_header_15; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_parse_current_state = mau_5_io_pipe_phv_out_parse_current_state; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_parse_current_offset = mau_5_io_pipe_phv_out_parse_current_offset; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_parse_transition_field = mau_5_io_pipe_phv_out_parse_transition_field; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_next_processor_id = mau_5_io_pipe_phv_out_next_processor_id; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_next_config_id = mau_5_io_pipe_phv_out_next_config_id; // @[parser.scala 32:35]
  assign mau_6_io_pipe_phv_in_is_valid_processor = mau_5_io_pipe_phv_out_is_valid_processor; // @[parser.scala 32:35]
  assign mau_6_io_mod_state_id_mod = io_mod_en ? io_mod_module_mod_state_id_mod & mod_j_6 :
    io_mod_module_mod_state_id_mod; // @[parser.scala 41:22 parser.scala 48:40 parser.scala 37:23]
  assign mau_6_io_mod_state_id = io_mod_module_mod_state_id; // @[parser.scala 37:23]
  assign mau_6_io_mod_sram_w_cs = io_mod_module_mod_sram_w_cs; // @[parser.scala 37:23]
  assign mau_6_io_mod_sram_w_addr = io_mod_module_mod_sram_w_addr; // @[parser.scala 37:23]
  assign mau_6_io_mod_sram_w_data = io_mod_module_mod_sram_w_data; // @[parser.scala 37:23]
  assign mau_7_clock = clock;
  assign mau_7_io_pipe_phv_in_data_0 = mau_6_io_pipe_phv_out_data_0; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_1 = mau_6_io_pipe_phv_out_data_1; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_2 = mau_6_io_pipe_phv_out_data_2; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_3 = mau_6_io_pipe_phv_out_data_3; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_4 = mau_6_io_pipe_phv_out_data_4; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_5 = mau_6_io_pipe_phv_out_data_5; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_6 = mau_6_io_pipe_phv_out_data_6; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_7 = mau_6_io_pipe_phv_out_data_7; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_8 = mau_6_io_pipe_phv_out_data_8; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_9 = mau_6_io_pipe_phv_out_data_9; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_10 = mau_6_io_pipe_phv_out_data_10; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_11 = mau_6_io_pipe_phv_out_data_11; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_12 = mau_6_io_pipe_phv_out_data_12; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_13 = mau_6_io_pipe_phv_out_data_13; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_14 = mau_6_io_pipe_phv_out_data_14; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_15 = mau_6_io_pipe_phv_out_data_15; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_16 = mau_6_io_pipe_phv_out_data_16; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_17 = mau_6_io_pipe_phv_out_data_17; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_18 = mau_6_io_pipe_phv_out_data_18; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_19 = mau_6_io_pipe_phv_out_data_19; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_20 = mau_6_io_pipe_phv_out_data_20; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_21 = mau_6_io_pipe_phv_out_data_21; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_22 = mau_6_io_pipe_phv_out_data_22; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_23 = mau_6_io_pipe_phv_out_data_23; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_24 = mau_6_io_pipe_phv_out_data_24; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_25 = mau_6_io_pipe_phv_out_data_25; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_26 = mau_6_io_pipe_phv_out_data_26; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_27 = mau_6_io_pipe_phv_out_data_27; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_28 = mau_6_io_pipe_phv_out_data_28; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_29 = mau_6_io_pipe_phv_out_data_29; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_30 = mau_6_io_pipe_phv_out_data_30; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_31 = mau_6_io_pipe_phv_out_data_31; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_32 = mau_6_io_pipe_phv_out_data_32; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_33 = mau_6_io_pipe_phv_out_data_33; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_34 = mau_6_io_pipe_phv_out_data_34; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_35 = mau_6_io_pipe_phv_out_data_35; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_36 = mau_6_io_pipe_phv_out_data_36; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_37 = mau_6_io_pipe_phv_out_data_37; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_38 = mau_6_io_pipe_phv_out_data_38; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_39 = mau_6_io_pipe_phv_out_data_39; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_40 = mau_6_io_pipe_phv_out_data_40; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_41 = mau_6_io_pipe_phv_out_data_41; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_42 = mau_6_io_pipe_phv_out_data_42; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_43 = mau_6_io_pipe_phv_out_data_43; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_44 = mau_6_io_pipe_phv_out_data_44; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_45 = mau_6_io_pipe_phv_out_data_45; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_46 = mau_6_io_pipe_phv_out_data_46; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_47 = mau_6_io_pipe_phv_out_data_47; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_48 = mau_6_io_pipe_phv_out_data_48; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_49 = mau_6_io_pipe_phv_out_data_49; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_50 = mau_6_io_pipe_phv_out_data_50; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_51 = mau_6_io_pipe_phv_out_data_51; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_52 = mau_6_io_pipe_phv_out_data_52; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_53 = mau_6_io_pipe_phv_out_data_53; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_54 = mau_6_io_pipe_phv_out_data_54; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_55 = mau_6_io_pipe_phv_out_data_55; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_56 = mau_6_io_pipe_phv_out_data_56; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_57 = mau_6_io_pipe_phv_out_data_57; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_58 = mau_6_io_pipe_phv_out_data_58; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_59 = mau_6_io_pipe_phv_out_data_59; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_60 = mau_6_io_pipe_phv_out_data_60; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_61 = mau_6_io_pipe_phv_out_data_61; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_62 = mau_6_io_pipe_phv_out_data_62; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_63 = mau_6_io_pipe_phv_out_data_63; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_64 = mau_6_io_pipe_phv_out_data_64; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_65 = mau_6_io_pipe_phv_out_data_65; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_66 = mau_6_io_pipe_phv_out_data_66; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_67 = mau_6_io_pipe_phv_out_data_67; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_68 = mau_6_io_pipe_phv_out_data_68; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_69 = mau_6_io_pipe_phv_out_data_69; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_70 = mau_6_io_pipe_phv_out_data_70; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_71 = mau_6_io_pipe_phv_out_data_71; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_72 = mau_6_io_pipe_phv_out_data_72; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_73 = mau_6_io_pipe_phv_out_data_73; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_74 = mau_6_io_pipe_phv_out_data_74; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_75 = mau_6_io_pipe_phv_out_data_75; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_76 = mau_6_io_pipe_phv_out_data_76; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_77 = mau_6_io_pipe_phv_out_data_77; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_78 = mau_6_io_pipe_phv_out_data_78; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_79 = mau_6_io_pipe_phv_out_data_79; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_80 = mau_6_io_pipe_phv_out_data_80; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_81 = mau_6_io_pipe_phv_out_data_81; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_82 = mau_6_io_pipe_phv_out_data_82; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_83 = mau_6_io_pipe_phv_out_data_83; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_84 = mau_6_io_pipe_phv_out_data_84; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_85 = mau_6_io_pipe_phv_out_data_85; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_86 = mau_6_io_pipe_phv_out_data_86; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_87 = mau_6_io_pipe_phv_out_data_87; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_88 = mau_6_io_pipe_phv_out_data_88; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_89 = mau_6_io_pipe_phv_out_data_89; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_90 = mau_6_io_pipe_phv_out_data_90; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_91 = mau_6_io_pipe_phv_out_data_91; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_92 = mau_6_io_pipe_phv_out_data_92; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_93 = mau_6_io_pipe_phv_out_data_93; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_94 = mau_6_io_pipe_phv_out_data_94; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_data_95 = mau_6_io_pipe_phv_out_data_95; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_header_0 = mau_6_io_pipe_phv_out_header_0; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_header_1 = mau_6_io_pipe_phv_out_header_1; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_header_2 = mau_6_io_pipe_phv_out_header_2; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_header_3 = mau_6_io_pipe_phv_out_header_3; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_header_4 = mau_6_io_pipe_phv_out_header_4; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_header_5 = mau_6_io_pipe_phv_out_header_5; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_header_6 = mau_6_io_pipe_phv_out_header_6; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_header_7 = mau_6_io_pipe_phv_out_header_7; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_header_8 = mau_6_io_pipe_phv_out_header_8; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_header_9 = mau_6_io_pipe_phv_out_header_9; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_header_10 = mau_6_io_pipe_phv_out_header_10; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_header_11 = mau_6_io_pipe_phv_out_header_11; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_header_12 = mau_6_io_pipe_phv_out_header_12; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_header_13 = mau_6_io_pipe_phv_out_header_13; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_header_14 = mau_6_io_pipe_phv_out_header_14; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_header_15 = mau_6_io_pipe_phv_out_header_15; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_parse_current_state = mau_6_io_pipe_phv_out_parse_current_state; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_parse_current_offset = mau_6_io_pipe_phv_out_parse_current_offset; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_parse_transition_field = mau_6_io_pipe_phv_out_parse_transition_field; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_next_processor_id = mau_6_io_pipe_phv_out_next_processor_id; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_next_config_id = mau_6_io_pipe_phv_out_next_config_id; // @[parser.scala 32:35]
  assign mau_7_io_pipe_phv_in_is_valid_processor = mau_6_io_pipe_phv_out_is_valid_processor; // @[parser.scala 32:35]
  assign mau_7_io_mod_state_id_mod = io_mod_en ? io_mod_module_mod_state_id_mod & mod_j_7 :
    io_mod_module_mod_state_id_mod; // @[parser.scala 41:22 parser.scala 48:40 parser.scala 37:23]
  assign mau_7_io_mod_state_id = io_mod_module_mod_state_id; // @[parser.scala 37:23]
  assign mau_7_io_mod_sram_w_cs = io_mod_module_mod_sram_w_cs; // @[parser.scala 37:23]
  assign mau_7_io_mod_sram_w_addr = io_mod_module_mod_sram_w_addr; // @[parser.scala 37:23]
  assign mau_7_io_mod_sram_w_data = io_mod_module_mod_sram_w_data; // @[parser.scala 37:23]
  always @(posedge clock) begin
    if (io_mod_en) begin // @[parser.scala 41:22]
      if (io_mod_last_mau_id_mod) begin // @[parser.scala 42:39]
        last_mau_id <= {{1'd0}, io_mod_last_mau_id}; // @[parser.scala 43:25]
      end
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
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  last_mau_id = _RAND_0[3:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
