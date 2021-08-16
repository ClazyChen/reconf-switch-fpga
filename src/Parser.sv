module Parser(
  input         clock,
  input         reset,
  input         io_pipe_en,
  output        io_pipe_ready,
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
  input         io_mod_en,
  input         io_mod_last_mau_id_mod,
  input  [2:0]  io_mod_last_mau_id,
  input  [7:0]  io_mod_cs,
  input         io_mod_module_mod_state_id_mod,
  input  [7:0]  io_mod_module_mod_state_id,
  input         io_mod_module_mod_sram_w_en,
  input  [7:0]  io_mod_module_mod_sram_w_addr,
  input  [63:0] io_mod_module_mod_sram_w_data
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  mau_0_clock; // @[parser.scala 20:25]
  wire  mau_0_io_pipe_en; // @[parser.scala 20:25]
  wire  mau_0_io_pipe_ready; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_0; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_1; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_2; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_3; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_4; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_5; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_6; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_7; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_8; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_9; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_10; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_11; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_12; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_13; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_14; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_15; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_16; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_17; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_18; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_19; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_20; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_21; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_22; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_23; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_24; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_25; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_26; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_27; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_28; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_29; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_30; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_31; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_32; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_33; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_34; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_35; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_36; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_37; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_38; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_39; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_40; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_41; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_42; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_43; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_44; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_45; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_46; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_47; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_48; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_49; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_50; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_51; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_52; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_53; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_54; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_55; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_56; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_57; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_58; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_59; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_60; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_61; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_62; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_63; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_64; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_65; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_66; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_67; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_68; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_69; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_70; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_71; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_72; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_73; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_74; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_75; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_76; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_77; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_78; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_79; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_80; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_81; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_82; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_83; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_84; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_85; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_86; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_87; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_88; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_89; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_90; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_91; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_92; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_93; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_94; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_data_95; // @[parser.scala 20:25]
  wire [15:0] mau_0_io_pipe_phv_in_header_0; // @[parser.scala 20:25]
  wire [15:0] mau_0_io_pipe_phv_in_header_1; // @[parser.scala 20:25]
  wire [15:0] mau_0_io_pipe_phv_in_header_2; // @[parser.scala 20:25]
  wire [15:0] mau_0_io_pipe_phv_in_header_3; // @[parser.scala 20:25]
  wire [15:0] mau_0_io_pipe_phv_in_header_4; // @[parser.scala 20:25]
  wire [15:0] mau_0_io_pipe_phv_in_header_5; // @[parser.scala 20:25]
  wire [15:0] mau_0_io_pipe_phv_in_header_6; // @[parser.scala 20:25]
  wire [15:0] mau_0_io_pipe_phv_in_header_7; // @[parser.scala 20:25]
  wire [15:0] mau_0_io_pipe_phv_in_header_8; // @[parser.scala 20:25]
  wire [15:0] mau_0_io_pipe_phv_in_header_9; // @[parser.scala 20:25]
  wire [15:0] mau_0_io_pipe_phv_in_header_10; // @[parser.scala 20:25]
  wire [15:0] mau_0_io_pipe_phv_in_header_11; // @[parser.scala 20:25]
  wire [15:0] mau_0_io_pipe_phv_in_header_12; // @[parser.scala 20:25]
  wire [15:0] mau_0_io_pipe_phv_in_header_13; // @[parser.scala 20:25]
  wire [15:0] mau_0_io_pipe_phv_in_header_14; // @[parser.scala 20:25]
  wire [15:0] mau_0_io_pipe_phv_in_header_15; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_parse_current_state; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_in_parse_current_offset; // @[parser.scala 20:25]
  wire [15:0] mau_0_io_pipe_phv_in_parse_transition_field; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_0; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_1; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_2; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_3; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_4; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_5; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_6; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_7; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_8; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_9; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_10; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_11; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_12; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_13; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_14; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_15; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_16; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_17; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_18; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_19; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_20; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_21; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_22; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_23; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_24; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_25; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_26; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_27; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_28; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_29; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_30; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_31; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_32; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_33; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_34; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_35; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_36; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_37; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_38; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_39; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_40; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_41; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_42; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_43; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_44; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_45; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_46; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_47; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_48; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_49; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_50; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_51; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_52; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_53; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_54; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_55; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_56; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_57; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_58; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_59; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_60; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_61; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_62; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_63; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_64; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_65; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_66; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_67; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_68; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_69; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_70; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_71; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_72; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_73; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_74; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_75; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_76; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_77; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_78; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_79; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_80; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_81; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_82; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_83; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_84; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_85; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_86; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_87; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_88; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_89; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_90; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_91; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_92; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_93; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_94; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_data_95; // @[parser.scala 20:25]
  wire [15:0] mau_0_io_pipe_phv_out_header_0; // @[parser.scala 20:25]
  wire [15:0] mau_0_io_pipe_phv_out_header_1; // @[parser.scala 20:25]
  wire [15:0] mau_0_io_pipe_phv_out_header_2; // @[parser.scala 20:25]
  wire [15:0] mau_0_io_pipe_phv_out_header_3; // @[parser.scala 20:25]
  wire [15:0] mau_0_io_pipe_phv_out_header_4; // @[parser.scala 20:25]
  wire [15:0] mau_0_io_pipe_phv_out_header_5; // @[parser.scala 20:25]
  wire [15:0] mau_0_io_pipe_phv_out_header_6; // @[parser.scala 20:25]
  wire [15:0] mau_0_io_pipe_phv_out_header_7; // @[parser.scala 20:25]
  wire [15:0] mau_0_io_pipe_phv_out_header_8; // @[parser.scala 20:25]
  wire [15:0] mau_0_io_pipe_phv_out_header_9; // @[parser.scala 20:25]
  wire [15:0] mau_0_io_pipe_phv_out_header_10; // @[parser.scala 20:25]
  wire [15:0] mau_0_io_pipe_phv_out_header_11; // @[parser.scala 20:25]
  wire [15:0] mau_0_io_pipe_phv_out_header_12; // @[parser.scala 20:25]
  wire [15:0] mau_0_io_pipe_phv_out_header_13; // @[parser.scala 20:25]
  wire [15:0] mau_0_io_pipe_phv_out_header_14; // @[parser.scala 20:25]
  wire [15:0] mau_0_io_pipe_phv_out_header_15; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_parse_current_state; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_pipe_phv_out_parse_current_offset; // @[parser.scala 20:25]
  wire [15:0] mau_0_io_pipe_phv_out_parse_transition_field; // @[parser.scala 20:25]
  wire  mau_0_io_mod_state_id_mod; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_mod_state_id; // @[parser.scala 20:25]
  wire  mau_0_io_mod_sram_w_en; // @[parser.scala 20:25]
  wire [7:0] mau_0_io_mod_sram_w_addr; // @[parser.scala 20:25]
  wire [63:0] mau_0_io_mod_sram_w_data; // @[parser.scala 20:25]
  wire  mau_1_clock; // @[parser.scala 20:25]
  wire  mau_1_io_pipe_en; // @[parser.scala 20:25]
  wire  mau_1_io_pipe_ready; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_0; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_1; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_2; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_3; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_4; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_5; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_6; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_7; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_8; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_9; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_10; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_11; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_12; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_13; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_14; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_15; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_16; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_17; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_18; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_19; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_20; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_21; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_22; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_23; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_24; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_25; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_26; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_27; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_28; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_29; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_30; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_31; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_32; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_33; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_34; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_35; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_36; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_37; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_38; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_39; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_40; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_41; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_42; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_43; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_44; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_45; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_46; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_47; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_48; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_49; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_50; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_51; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_52; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_53; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_54; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_55; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_56; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_57; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_58; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_59; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_60; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_61; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_62; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_63; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_64; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_65; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_66; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_67; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_68; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_69; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_70; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_71; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_72; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_73; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_74; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_75; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_76; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_77; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_78; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_79; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_80; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_81; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_82; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_83; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_84; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_85; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_86; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_87; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_88; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_89; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_90; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_91; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_92; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_93; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_94; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_data_95; // @[parser.scala 20:25]
  wire [15:0] mau_1_io_pipe_phv_in_header_0; // @[parser.scala 20:25]
  wire [15:0] mau_1_io_pipe_phv_in_header_1; // @[parser.scala 20:25]
  wire [15:0] mau_1_io_pipe_phv_in_header_2; // @[parser.scala 20:25]
  wire [15:0] mau_1_io_pipe_phv_in_header_3; // @[parser.scala 20:25]
  wire [15:0] mau_1_io_pipe_phv_in_header_4; // @[parser.scala 20:25]
  wire [15:0] mau_1_io_pipe_phv_in_header_5; // @[parser.scala 20:25]
  wire [15:0] mau_1_io_pipe_phv_in_header_6; // @[parser.scala 20:25]
  wire [15:0] mau_1_io_pipe_phv_in_header_7; // @[parser.scala 20:25]
  wire [15:0] mau_1_io_pipe_phv_in_header_8; // @[parser.scala 20:25]
  wire [15:0] mau_1_io_pipe_phv_in_header_9; // @[parser.scala 20:25]
  wire [15:0] mau_1_io_pipe_phv_in_header_10; // @[parser.scala 20:25]
  wire [15:0] mau_1_io_pipe_phv_in_header_11; // @[parser.scala 20:25]
  wire [15:0] mau_1_io_pipe_phv_in_header_12; // @[parser.scala 20:25]
  wire [15:0] mau_1_io_pipe_phv_in_header_13; // @[parser.scala 20:25]
  wire [15:0] mau_1_io_pipe_phv_in_header_14; // @[parser.scala 20:25]
  wire [15:0] mau_1_io_pipe_phv_in_header_15; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_parse_current_state; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_in_parse_current_offset; // @[parser.scala 20:25]
  wire [15:0] mau_1_io_pipe_phv_in_parse_transition_field; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_0; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_1; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_2; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_3; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_4; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_5; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_6; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_7; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_8; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_9; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_10; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_11; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_12; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_13; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_14; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_15; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_16; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_17; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_18; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_19; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_20; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_21; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_22; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_23; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_24; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_25; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_26; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_27; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_28; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_29; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_30; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_31; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_32; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_33; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_34; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_35; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_36; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_37; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_38; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_39; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_40; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_41; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_42; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_43; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_44; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_45; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_46; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_47; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_48; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_49; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_50; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_51; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_52; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_53; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_54; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_55; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_56; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_57; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_58; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_59; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_60; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_61; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_62; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_63; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_64; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_65; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_66; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_67; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_68; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_69; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_70; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_71; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_72; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_73; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_74; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_75; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_76; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_77; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_78; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_79; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_80; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_81; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_82; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_83; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_84; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_85; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_86; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_87; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_88; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_89; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_90; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_91; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_92; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_93; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_94; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_data_95; // @[parser.scala 20:25]
  wire [15:0] mau_1_io_pipe_phv_out_header_0; // @[parser.scala 20:25]
  wire [15:0] mau_1_io_pipe_phv_out_header_1; // @[parser.scala 20:25]
  wire [15:0] mau_1_io_pipe_phv_out_header_2; // @[parser.scala 20:25]
  wire [15:0] mau_1_io_pipe_phv_out_header_3; // @[parser.scala 20:25]
  wire [15:0] mau_1_io_pipe_phv_out_header_4; // @[parser.scala 20:25]
  wire [15:0] mau_1_io_pipe_phv_out_header_5; // @[parser.scala 20:25]
  wire [15:0] mau_1_io_pipe_phv_out_header_6; // @[parser.scala 20:25]
  wire [15:0] mau_1_io_pipe_phv_out_header_7; // @[parser.scala 20:25]
  wire [15:0] mau_1_io_pipe_phv_out_header_8; // @[parser.scala 20:25]
  wire [15:0] mau_1_io_pipe_phv_out_header_9; // @[parser.scala 20:25]
  wire [15:0] mau_1_io_pipe_phv_out_header_10; // @[parser.scala 20:25]
  wire [15:0] mau_1_io_pipe_phv_out_header_11; // @[parser.scala 20:25]
  wire [15:0] mau_1_io_pipe_phv_out_header_12; // @[parser.scala 20:25]
  wire [15:0] mau_1_io_pipe_phv_out_header_13; // @[parser.scala 20:25]
  wire [15:0] mau_1_io_pipe_phv_out_header_14; // @[parser.scala 20:25]
  wire [15:0] mau_1_io_pipe_phv_out_header_15; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_parse_current_state; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_pipe_phv_out_parse_current_offset; // @[parser.scala 20:25]
  wire [15:0] mau_1_io_pipe_phv_out_parse_transition_field; // @[parser.scala 20:25]
  wire  mau_1_io_mod_state_id_mod; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_mod_state_id; // @[parser.scala 20:25]
  wire  mau_1_io_mod_sram_w_en; // @[parser.scala 20:25]
  wire [7:0] mau_1_io_mod_sram_w_addr; // @[parser.scala 20:25]
  wire [63:0] mau_1_io_mod_sram_w_data; // @[parser.scala 20:25]
  wire  mau_2_clock; // @[parser.scala 20:25]
  wire  mau_2_io_pipe_en; // @[parser.scala 20:25]
  wire  mau_2_io_pipe_ready; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_0; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_1; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_2; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_3; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_4; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_5; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_6; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_7; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_8; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_9; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_10; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_11; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_12; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_13; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_14; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_15; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_16; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_17; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_18; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_19; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_20; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_21; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_22; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_23; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_24; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_25; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_26; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_27; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_28; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_29; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_30; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_31; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_32; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_33; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_34; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_35; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_36; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_37; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_38; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_39; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_40; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_41; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_42; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_43; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_44; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_45; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_46; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_47; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_48; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_49; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_50; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_51; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_52; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_53; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_54; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_55; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_56; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_57; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_58; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_59; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_60; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_61; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_62; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_63; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_64; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_65; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_66; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_67; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_68; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_69; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_70; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_71; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_72; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_73; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_74; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_75; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_76; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_77; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_78; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_79; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_80; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_81; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_82; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_83; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_84; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_85; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_86; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_87; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_88; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_89; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_90; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_91; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_92; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_93; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_94; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_data_95; // @[parser.scala 20:25]
  wire [15:0] mau_2_io_pipe_phv_in_header_0; // @[parser.scala 20:25]
  wire [15:0] mau_2_io_pipe_phv_in_header_1; // @[parser.scala 20:25]
  wire [15:0] mau_2_io_pipe_phv_in_header_2; // @[parser.scala 20:25]
  wire [15:0] mau_2_io_pipe_phv_in_header_3; // @[parser.scala 20:25]
  wire [15:0] mau_2_io_pipe_phv_in_header_4; // @[parser.scala 20:25]
  wire [15:0] mau_2_io_pipe_phv_in_header_5; // @[parser.scala 20:25]
  wire [15:0] mau_2_io_pipe_phv_in_header_6; // @[parser.scala 20:25]
  wire [15:0] mau_2_io_pipe_phv_in_header_7; // @[parser.scala 20:25]
  wire [15:0] mau_2_io_pipe_phv_in_header_8; // @[parser.scala 20:25]
  wire [15:0] mau_2_io_pipe_phv_in_header_9; // @[parser.scala 20:25]
  wire [15:0] mau_2_io_pipe_phv_in_header_10; // @[parser.scala 20:25]
  wire [15:0] mau_2_io_pipe_phv_in_header_11; // @[parser.scala 20:25]
  wire [15:0] mau_2_io_pipe_phv_in_header_12; // @[parser.scala 20:25]
  wire [15:0] mau_2_io_pipe_phv_in_header_13; // @[parser.scala 20:25]
  wire [15:0] mau_2_io_pipe_phv_in_header_14; // @[parser.scala 20:25]
  wire [15:0] mau_2_io_pipe_phv_in_header_15; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_parse_current_state; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_in_parse_current_offset; // @[parser.scala 20:25]
  wire [15:0] mau_2_io_pipe_phv_in_parse_transition_field; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_0; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_1; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_2; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_3; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_4; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_5; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_6; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_7; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_8; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_9; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_10; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_11; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_12; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_13; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_14; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_15; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_16; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_17; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_18; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_19; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_20; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_21; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_22; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_23; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_24; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_25; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_26; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_27; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_28; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_29; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_30; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_31; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_32; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_33; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_34; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_35; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_36; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_37; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_38; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_39; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_40; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_41; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_42; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_43; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_44; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_45; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_46; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_47; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_48; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_49; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_50; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_51; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_52; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_53; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_54; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_55; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_56; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_57; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_58; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_59; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_60; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_61; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_62; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_63; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_64; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_65; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_66; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_67; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_68; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_69; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_70; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_71; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_72; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_73; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_74; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_75; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_76; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_77; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_78; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_79; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_80; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_81; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_82; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_83; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_84; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_85; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_86; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_87; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_88; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_89; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_90; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_91; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_92; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_93; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_94; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_data_95; // @[parser.scala 20:25]
  wire [15:0] mau_2_io_pipe_phv_out_header_0; // @[parser.scala 20:25]
  wire [15:0] mau_2_io_pipe_phv_out_header_1; // @[parser.scala 20:25]
  wire [15:0] mau_2_io_pipe_phv_out_header_2; // @[parser.scala 20:25]
  wire [15:0] mau_2_io_pipe_phv_out_header_3; // @[parser.scala 20:25]
  wire [15:0] mau_2_io_pipe_phv_out_header_4; // @[parser.scala 20:25]
  wire [15:0] mau_2_io_pipe_phv_out_header_5; // @[parser.scala 20:25]
  wire [15:0] mau_2_io_pipe_phv_out_header_6; // @[parser.scala 20:25]
  wire [15:0] mau_2_io_pipe_phv_out_header_7; // @[parser.scala 20:25]
  wire [15:0] mau_2_io_pipe_phv_out_header_8; // @[parser.scala 20:25]
  wire [15:0] mau_2_io_pipe_phv_out_header_9; // @[parser.scala 20:25]
  wire [15:0] mau_2_io_pipe_phv_out_header_10; // @[parser.scala 20:25]
  wire [15:0] mau_2_io_pipe_phv_out_header_11; // @[parser.scala 20:25]
  wire [15:0] mau_2_io_pipe_phv_out_header_12; // @[parser.scala 20:25]
  wire [15:0] mau_2_io_pipe_phv_out_header_13; // @[parser.scala 20:25]
  wire [15:0] mau_2_io_pipe_phv_out_header_14; // @[parser.scala 20:25]
  wire [15:0] mau_2_io_pipe_phv_out_header_15; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_parse_current_state; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_pipe_phv_out_parse_current_offset; // @[parser.scala 20:25]
  wire [15:0] mau_2_io_pipe_phv_out_parse_transition_field; // @[parser.scala 20:25]
  wire  mau_2_io_mod_state_id_mod; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_mod_state_id; // @[parser.scala 20:25]
  wire  mau_2_io_mod_sram_w_en; // @[parser.scala 20:25]
  wire [7:0] mau_2_io_mod_sram_w_addr; // @[parser.scala 20:25]
  wire [63:0] mau_2_io_mod_sram_w_data; // @[parser.scala 20:25]
  wire  mau_3_clock; // @[parser.scala 20:25]
  wire  mau_3_io_pipe_en; // @[parser.scala 20:25]
  wire  mau_3_io_pipe_ready; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_0; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_1; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_2; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_3; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_4; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_5; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_6; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_7; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_8; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_9; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_10; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_11; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_12; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_13; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_14; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_15; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_16; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_17; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_18; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_19; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_20; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_21; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_22; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_23; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_24; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_25; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_26; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_27; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_28; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_29; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_30; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_31; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_32; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_33; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_34; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_35; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_36; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_37; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_38; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_39; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_40; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_41; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_42; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_43; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_44; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_45; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_46; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_47; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_48; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_49; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_50; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_51; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_52; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_53; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_54; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_55; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_56; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_57; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_58; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_59; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_60; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_61; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_62; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_63; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_64; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_65; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_66; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_67; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_68; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_69; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_70; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_71; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_72; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_73; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_74; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_75; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_76; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_77; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_78; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_79; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_80; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_81; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_82; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_83; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_84; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_85; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_86; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_87; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_88; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_89; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_90; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_91; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_92; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_93; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_94; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_data_95; // @[parser.scala 20:25]
  wire [15:0] mau_3_io_pipe_phv_in_header_0; // @[parser.scala 20:25]
  wire [15:0] mau_3_io_pipe_phv_in_header_1; // @[parser.scala 20:25]
  wire [15:0] mau_3_io_pipe_phv_in_header_2; // @[parser.scala 20:25]
  wire [15:0] mau_3_io_pipe_phv_in_header_3; // @[parser.scala 20:25]
  wire [15:0] mau_3_io_pipe_phv_in_header_4; // @[parser.scala 20:25]
  wire [15:0] mau_3_io_pipe_phv_in_header_5; // @[parser.scala 20:25]
  wire [15:0] mau_3_io_pipe_phv_in_header_6; // @[parser.scala 20:25]
  wire [15:0] mau_3_io_pipe_phv_in_header_7; // @[parser.scala 20:25]
  wire [15:0] mau_3_io_pipe_phv_in_header_8; // @[parser.scala 20:25]
  wire [15:0] mau_3_io_pipe_phv_in_header_9; // @[parser.scala 20:25]
  wire [15:0] mau_3_io_pipe_phv_in_header_10; // @[parser.scala 20:25]
  wire [15:0] mau_3_io_pipe_phv_in_header_11; // @[parser.scala 20:25]
  wire [15:0] mau_3_io_pipe_phv_in_header_12; // @[parser.scala 20:25]
  wire [15:0] mau_3_io_pipe_phv_in_header_13; // @[parser.scala 20:25]
  wire [15:0] mau_3_io_pipe_phv_in_header_14; // @[parser.scala 20:25]
  wire [15:0] mau_3_io_pipe_phv_in_header_15; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_parse_current_state; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_in_parse_current_offset; // @[parser.scala 20:25]
  wire [15:0] mau_3_io_pipe_phv_in_parse_transition_field; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_0; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_1; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_2; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_3; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_4; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_5; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_6; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_7; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_8; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_9; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_10; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_11; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_12; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_13; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_14; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_15; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_16; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_17; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_18; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_19; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_20; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_21; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_22; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_23; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_24; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_25; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_26; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_27; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_28; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_29; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_30; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_31; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_32; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_33; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_34; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_35; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_36; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_37; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_38; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_39; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_40; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_41; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_42; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_43; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_44; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_45; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_46; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_47; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_48; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_49; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_50; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_51; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_52; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_53; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_54; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_55; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_56; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_57; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_58; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_59; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_60; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_61; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_62; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_63; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_64; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_65; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_66; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_67; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_68; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_69; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_70; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_71; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_72; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_73; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_74; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_75; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_76; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_77; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_78; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_79; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_80; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_81; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_82; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_83; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_84; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_85; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_86; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_87; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_88; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_89; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_90; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_91; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_92; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_93; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_94; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_data_95; // @[parser.scala 20:25]
  wire [15:0] mau_3_io_pipe_phv_out_header_0; // @[parser.scala 20:25]
  wire [15:0] mau_3_io_pipe_phv_out_header_1; // @[parser.scala 20:25]
  wire [15:0] mau_3_io_pipe_phv_out_header_2; // @[parser.scala 20:25]
  wire [15:0] mau_3_io_pipe_phv_out_header_3; // @[parser.scala 20:25]
  wire [15:0] mau_3_io_pipe_phv_out_header_4; // @[parser.scala 20:25]
  wire [15:0] mau_3_io_pipe_phv_out_header_5; // @[parser.scala 20:25]
  wire [15:0] mau_3_io_pipe_phv_out_header_6; // @[parser.scala 20:25]
  wire [15:0] mau_3_io_pipe_phv_out_header_7; // @[parser.scala 20:25]
  wire [15:0] mau_3_io_pipe_phv_out_header_8; // @[parser.scala 20:25]
  wire [15:0] mau_3_io_pipe_phv_out_header_9; // @[parser.scala 20:25]
  wire [15:0] mau_3_io_pipe_phv_out_header_10; // @[parser.scala 20:25]
  wire [15:0] mau_3_io_pipe_phv_out_header_11; // @[parser.scala 20:25]
  wire [15:0] mau_3_io_pipe_phv_out_header_12; // @[parser.scala 20:25]
  wire [15:0] mau_3_io_pipe_phv_out_header_13; // @[parser.scala 20:25]
  wire [15:0] mau_3_io_pipe_phv_out_header_14; // @[parser.scala 20:25]
  wire [15:0] mau_3_io_pipe_phv_out_header_15; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_parse_current_state; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_pipe_phv_out_parse_current_offset; // @[parser.scala 20:25]
  wire [15:0] mau_3_io_pipe_phv_out_parse_transition_field; // @[parser.scala 20:25]
  wire  mau_3_io_mod_state_id_mod; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_mod_state_id; // @[parser.scala 20:25]
  wire  mau_3_io_mod_sram_w_en; // @[parser.scala 20:25]
  wire [7:0] mau_3_io_mod_sram_w_addr; // @[parser.scala 20:25]
  wire [63:0] mau_3_io_mod_sram_w_data; // @[parser.scala 20:25]
  wire  mau_4_clock; // @[parser.scala 20:25]
  wire  mau_4_io_pipe_en; // @[parser.scala 20:25]
  wire  mau_4_io_pipe_ready; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_0; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_1; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_2; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_3; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_4; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_5; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_6; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_7; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_8; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_9; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_10; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_11; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_12; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_13; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_14; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_15; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_16; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_17; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_18; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_19; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_20; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_21; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_22; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_23; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_24; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_25; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_26; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_27; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_28; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_29; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_30; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_31; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_32; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_33; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_34; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_35; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_36; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_37; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_38; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_39; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_40; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_41; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_42; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_43; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_44; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_45; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_46; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_47; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_48; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_49; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_50; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_51; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_52; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_53; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_54; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_55; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_56; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_57; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_58; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_59; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_60; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_61; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_62; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_63; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_64; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_65; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_66; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_67; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_68; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_69; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_70; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_71; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_72; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_73; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_74; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_75; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_76; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_77; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_78; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_79; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_80; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_81; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_82; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_83; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_84; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_85; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_86; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_87; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_88; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_89; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_90; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_91; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_92; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_93; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_94; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_data_95; // @[parser.scala 20:25]
  wire [15:0] mau_4_io_pipe_phv_in_header_0; // @[parser.scala 20:25]
  wire [15:0] mau_4_io_pipe_phv_in_header_1; // @[parser.scala 20:25]
  wire [15:0] mau_4_io_pipe_phv_in_header_2; // @[parser.scala 20:25]
  wire [15:0] mau_4_io_pipe_phv_in_header_3; // @[parser.scala 20:25]
  wire [15:0] mau_4_io_pipe_phv_in_header_4; // @[parser.scala 20:25]
  wire [15:0] mau_4_io_pipe_phv_in_header_5; // @[parser.scala 20:25]
  wire [15:0] mau_4_io_pipe_phv_in_header_6; // @[parser.scala 20:25]
  wire [15:0] mau_4_io_pipe_phv_in_header_7; // @[parser.scala 20:25]
  wire [15:0] mau_4_io_pipe_phv_in_header_8; // @[parser.scala 20:25]
  wire [15:0] mau_4_io_pipe_phv_in_header_9; // @[parser.scala 20:25]
  wire [15:0] mau_4_io_pipe_phv_in_header_10; // @[parser.scala 20:25]
  wire [15:0] mau_4_io_pipe_phv_in_header_11; // @[parser.scala 20:25]
  wire [15:0] mau_4_io_pipe_phv_in_header_12; // @[parser.scala 20:25]
  wire [15:0] mau_4_io_pipe_phv_in_header_13; // @[parser.scala 20:25]
  wire [15:0] mau_4_io_pipe_phv_in_header_14; // @[parser.scala 20:25]
  wire [15:0] mau_4_io_pipe_phv_in_header_15; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_parse_current_state; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_in_parse_current_offset; // @[parser.scala 20:25]
  wire [15:0] mau_4_io_pipe_phv_in_parse_transition_field; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_0; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_1; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_2; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_3; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_4; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_5; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_6; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_7; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_8; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_9; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_10; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_11; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_12; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_13; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_14; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_15; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_16; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_17; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_18; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_19; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_20; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_21; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_22; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_23; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_24; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_25; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_26; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_27; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_28; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_29; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_30; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_31; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_32; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_33; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_34; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_35; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_36; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_37; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_38; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_39; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_40; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_41; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_42; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_43; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_44; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_45; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_46; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_47; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_48; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_49; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_50; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_51; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_52; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_53; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_54; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_55; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_56; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_57; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_58; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_59; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_60; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_61; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_62; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_63; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_64; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_65; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_66; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_67; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_68; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_69; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_70; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_71; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_72; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_73; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_74; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_75; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_76; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_77; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_78; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_79; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_80; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_81; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_82; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_83; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_84; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_85; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_86; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_87; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_88; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_89; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_90; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_91; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_92; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_93; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_94; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_data_95; // @[parser.scala 20:25]
  wire [15:0] mau_4_io_pipe_phv_out_header_0; // @[parser.scala 20:25]
  wire [15:0] mau_4_io_pipe_phv_out_header_1; // @[parser.scala 20:25]
  wire [15:0] mau_4_io_pipe_phv_out_header_2; // @[parser.scala 20:25]
  wire [15:0] mau_4_io_pipe_phv_out_header_3; // @[parser.scala 20:25]
  wire [15:0] mau_4_io_pipe_phv_out_header_4; // @[parser.scala 20:25]
  wire [15:0] mau_4_io_pipe_phv_out_header_5; // @[parser.scala 20:25]
  wire [15:0] mau_4_io_pipe_phv_out_header_6; // @[parser.scala 20:25]
  wire [15:0] mau_4_io_pipe_phv_out_header_7; // @[parser.scala 20:25]
  wire [15:0] mau_4_io_pipe_phv_out_header_8; // @[parser.scala 20:25]
  wire [15:0] mau_4_io_pipe_phv_out_header_9; // @[parser.scala 20:25]
  wire [15:0] mau_4_io_pipe_phv_out_header_10; // @[parser.scala 20:25]
  wire [15:0] mau_4_io_pipe_phv_out_header_11; // @[parser.scala 20:25]
  wire [15:0] mau_4_io_pipe_phv_out_header_12; // @[parser.scala 20:25]
  wire [15:0] mau_4_io_pipe_phv_out_header_13; // @[parser.scala 20:25]
  wire [15:0] mau_4_io_pipe_phv_out_header_14; // @[parser.scala 20:25]
  wire [15:0] mau_4_io_pipe_phv_out_header_15; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_parse_current_state; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_pipe_phv_out_parse_current_offset; // @[parser.scala 20:25]
  wire [15:0] mau_4_io_pipe_phv_out_parse_transition_field; // @[parser.scala 20:25]
  wire  mau_4_io_mod_state_id_mod; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_mod_state_id; // @[parser.scala 20:25]
  wire  mau_4_io_mod_sram_w_en; // @[parser.scala 20:25]
  wire [7:0] mau_4_io_mod_sram_w_addr; // @[parser.scala 20:25]
  wire [63:0] mau_4_io_mod_sram_w_data; // @[parser.scala 20:25]
  wire  mau_5_clock; // @[parser.scala 20:25]
  wire  mau_5_io_pipe_en; // @[parser.scala 20:25]
  wire  mau_5_io_pipe_ready; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_0; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_1; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_2; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_3; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_4; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_5; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_6; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_7; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_8; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_9; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_10; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_11; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_12; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_13; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_14; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_15; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_16; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_17; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_18; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_19; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_20; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_21; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_22; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_23; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_24; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_25; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_26; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_27; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_28; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_29; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_30; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_31; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_32; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_33; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_34; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_35; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_36; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_37; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_38; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_39; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_40; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_41; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_42; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_43; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_44; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_45; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_46; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_47; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_48; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_49; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_50; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_51; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_52; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_53; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_54; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_55; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_56; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_57; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_58; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_59; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_60; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_61; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_62; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_63; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_64; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_65; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_66; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_67; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_68; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_69; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_70; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_71; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_72; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_73; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_74; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_75; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_76; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_77; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_78; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_79; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_80; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_81; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_82; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_83; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_84; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_85; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_86; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_87; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_88; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_89; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_90; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_91; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_92; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_93; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_94; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_data_95; // @[parser.scala 20:25]
  wire [15:0] mau_5_io_pipe_phv_in_header_0; // @[parser.scala 20:25]
  wire [15:0] mau_5_io_pipe_phv_in_header_1; // @[parser.scala 20:25]
  wire [15:0] mau_5_io_pipe_phv_in_header_2; // @[parser.scala 20:25]
  wire [15:0] mau_5_io_pipe_phv_in_header_3; // @[parser.scala 20:25]
  wire [15:0] mau_5_io_pipe_phv_in_header_4; // @[parser.scala 20:25]
  wire [15:0] mau_5_io_pipe_phv_in_header_5; // @[parser.scala 20:25]
  wire [15:0] mau_5_io_pipe_phv_in_header_6; // @[parser.scala 20:25]
  wire [15:0] mau_5_io_pipe_phv_in_header_7; // @[parser.scala 20:25]
  wire [15:0] mau_5_io_pipe_phv_in_header_8; // @[parser.scala 20:25]
  wire [15:0] mau_5_io_pipe_phv_in_header_9; // @[parser.scala 20:25]
  wire [15:0] mau_5_io_pipe_phv_in_header_10; // @[parser.scala 20:25]
  wire [15:0] mau_5_io_pipe_phv_in_header_11; // @[parser.scala 20:25]
  wire [15:0] mau_5_io_pipe_phv_in_header_12; // @[parser.scala 20:25]
  wire [15:0] mau_5_io_pipe_phv_in_header_13; // @[parser.scala 20:25]
  wire [15:0] mau_5_io_pipe_phv_in_header_14; // @[parser.scala 20:25]
  wire [15:0] mau_5_io_pipe_phv_in_header_15; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_parse_current_state; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_in_parse_current_offset; // @[parser.scala 20:25]
  wire [15:0] mau_5_io_pipe_phv_in_parse_transition_field; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_0; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_1; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_2; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_3; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_4; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_5; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_6; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_7; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_8; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_9; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_10; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_11; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_12; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_13; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_14; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_15; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_16; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_17; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_18; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_19; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_20; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_21; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_22; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_23; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_24; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_25; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_26; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_27; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_28; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_29; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_30; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_31; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_32; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_33; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_34; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_35; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_36; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_37; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_38; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_39; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_40; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_41; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_42; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_43; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_44; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_45; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_46; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_47; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_48; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_49; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_50; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_51; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_52; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_53; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_54; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_55; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_56; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_57; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_58; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_59; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_60; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_61; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_62; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_63; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_64; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_65; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_66; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_67; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_68; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_69; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_70; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_71; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_72; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_73; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_74; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_75; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_76; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_77; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_78; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_79; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_80; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_81; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_82; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_83; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_84; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_85; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_86; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_87; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_88; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_89; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_90; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_91; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_92; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_93; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_94; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_data_95; // @[parser.scala 20:25]
  wire [15:0] mau_5_io_pipe_phv_out_header_0; // @[parser.scala 20:25]
  wire [15:0] mau_5_io_pipe_phv_out_header_1; // @[parser.scala 20:25]
  wire [15:0] mau_5_io_pipe_phv_out_header_2; // @[parser.scala 20:25]
  wire [15:0] mau_5_io_pipe_phv_out_header_3; // @[parser.scala 20:25]
  wire [15:0] mau_5_io_pipe_phv_out_header_4; // @[parser.scala 20:25]
  wire [15:0] mau_5_io_pipe_phv_out_header_5; // @[parser.scala 20:25]
  wire [15:0] mau_5_io_pipe_phv_out_header_6; // @[parser.scala 20:25]
  wire [15:0] mau_5_io_pipe_phv_out_header_7; // @[parser.scala 20:25]
  wire [15:0] mau_5_io_pipe_phv_out_header_8; // @[parser.scala 20:25]
  wire [15:0] mau_5_io_pipe_phv_out_header_9; // @[parser.scala 20:25]
  wire [15:0] mau_5_io_pipe_phv_out_header_10; // @[parser.scala 20:25]
  wire [15:0] mau_5_io_pipe_phv_out_header_11; // @[parser.scala 20:25]
  wire [15:0] mau_5_io_pipe_phv_out_header_12; // @[parser.scala 20:25]
  wire [15:0] mau_5_io_pipe_phv_out_header_13; // @[parser.scala 20:25]
  wire [15:0] mau_5_io_pipe_phv_out_header_14; // @[parser.scala 20:25]
  wire [15:0] mau_5_io_pipe_phv_out_header_15; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_parse_current_state; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_pipe_phv_out_parse_current_offset; // @[parser.scala 20:25]
  wire [15:0] mau_5_io_pipe_phv_out_parse_transition_field; // @[parser.scala 20:25]
  wire  mau_5_io_mod_state_id_mod; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_mod_state_id; // @[parser.scala 20:25]
  wire  mau_5_io_mod_sram_w_en; // @[parser.scala 20:25]
  wire [7:0] mau_5_io_mod_sram_w_addr; // @[parser.scala 20:25]
  wire [63:0] mau_5_io_mod_sram_w_data; // @[parser.scala 20:25]
  wire  mau_6_clock; // @[parser.scala 20:25]
  wire  mau_6_io_pipe_en; // @[parser.scala 20:25]
  wire  mau_6_io_pipe_ready; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_0; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_1; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_2; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_3; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_4; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_5; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_6; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_7; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_8; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_9; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_10; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_11; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_12; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_13; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_14; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_15; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_16; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_17; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_18; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_19; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_20; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_21; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_22; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_23; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_24; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_25; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_26; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_27; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_28; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_29; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_30; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_31; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_32; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_33; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_34; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_35; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_36; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_37; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_38; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_39; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_40; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_41; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_42; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_43; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_44; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_45; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_46; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_47; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_48; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_49; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_50; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_51; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_52; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_53; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_54; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_55; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_56; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_57; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_58; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_59; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_60; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_61; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_62; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_63; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_64; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_65; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_66; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_67; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_68; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_69; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_70; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_71; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_72; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_73; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_74; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_75; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_76; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_77; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_78; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_79; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_80; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_81; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_82; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_83; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_84; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_85; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_86; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_87; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_88; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_89; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_90; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_91; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_92; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_93; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_94; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_data_95; // @[parser.scala 20:25]
  wire [15:0] mau_6_io_pipe_phv_in_header_0; // @[parser.scala 20:25]
  wire [15:0] mau_6_io_pipe_phv_in_header_1; // @[parser.scala 20:25]
  wire [15:0] mau_6_io_pipe_phv_in_header_2; // @[parser.scala 20:25]
  wire [15:0] mau_6_io_pipe_phv_in_header_3; // @[parser.scala 20:25]
  wire [15:0] mau_6_io_pipe_phv_in_header_4; // @[parser.scala 20:25]
  wire [15:0] mau_6_io_pipe_phv_in_header_5; // @[parser.scala 20:25]
  wire [15:0] mau_6_io_pipe_phv_in_header_6; // @[parser.scala 20:25]
  wire [15:0] mau_6_io_pipe_phv_in_header_7; // @[parser.scala 20:25]
  wire [15:0] mau_6_io_pipe_phv_in_header_8; // @[parser.scala 20:25]
  wire [15:0] mau_6_io_pipe_phv_in_header_9; // @[parser.scala 20:25]
  wire [15:0] mau_6_io_pipe_phv_in_header_10; // @[parser.scala 20:25]
  wire [15:0] mau_6_io_pipe_phv_in_header_11; // @[parser.scala 20:25]
  wire [15:0] mau_6_io_pipe_phv_in_header_12; // @[parser.scala 20:25]
  wire [15:0] mau_6_io_pipe_phv_in_header_13; // @[parser.scala 20:25]
  wire [15:0] mau_6_io_pipe_phv_in_header_14; // @[parser.scala 20:25]
  wire [15:0] mau_6_io_pipe_phv_in_header_15; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_parse_current_state; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_in_parse_current_offset; // @[parser.scala 20:25]
  wire [15:0] mau_6_io_pipe_phv_in_parse_transition_field; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_0; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_1; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_2; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_3; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_4; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_5; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_6; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_7; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_8; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_9; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_10; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_11; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_12; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_13; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_14; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_15; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_16; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_17; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_18; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_19; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_20; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_21; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_22; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_23; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_24; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_25; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_26; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_27; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_28; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_29; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_30; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_31; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_32; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_33; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_34; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_35; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_36; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_37; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_38; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_39; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_40; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_41; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_42; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_43; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_44; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_45; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_46; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_47; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_48; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_49; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_50; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_51; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_52; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_53; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_54; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_55; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_56; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_57; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_58; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_59; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_60; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_61; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_62; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_63; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_64; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_65; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_66; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_67; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_68; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_69; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_70; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_71; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_72; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_73; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_74; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_75; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_76; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_77; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_78; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_79; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_80; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_81; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_82; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_83; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_84; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_85; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_86; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_87; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_88; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_89; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_90; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_91; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_92; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_93; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_94; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_data_95; // @[parser.scala 20:25]
  wire [15:0] mau_6_io_pipe_phv_out_header_0; // @[parser.scala 20:25]
  wire [15:0] mau_6_io_pipe_phv_out_header_1; // @[parser.scala 20:25]
  wire [15:0] mau_6_io_pipe_phv_out_header_2; // @[parser.scala 20:25]
  wire [15:0] mau_6_io_pipe_phv_out_header_3; // @[parser.scala 20:25]
  wire [15:0] mau_6_io_pipe_phv_out_header_4; // @[parser.scala 20:25]
  wire [15:0] mau_6_io_pipe_phv_out_header_5; // @[parser.scala 20:25]
  wire [15:0] mau_6_io_pipe_phv_out_header_6; // @[parser.scala 20:25]
  wire [15:0] mau_6_io_pipe_phv_out_header_7; // @[parser.scala 20:25]
  wire [15:0] mau_6_io_pipe_phv_out_header_8; // @[parser.scala 20:25]
  wire [15:0] mau_6_io_pipe_phv_out_header_9; // @[parser.scala 20:25]
  wire [15:0] mau_6_io_pipe_phv_out_header_10; // @[parser.scala 20:25]
  wire [15:0] mau_6_io_pipe_phv_out_header_11; // @[parser.scala 20:25]
  wire [15:0] mau_6_io_pipe_phv_out_header_12; // @[parser.scala 20:25]
  wire [15:0] mau_6_io_pipe_phv_out_header_13; // @[parser.scala 20:25]
  wire [15:0] mau_6_io_pipe_phv_out_header_14; // @[parser.scala 20:25]
  wire [15:0] mau_6_io_pipe_phv_out_header_15; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_parse_current_state; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_pipe_phv_out_parse_current_offset; // @[parser.scala 20:25]
  wire [15:0] mau_6_io_pipe_phv_out_parse_transition_field; // @[parser.scala 20:25]
  wire  mau_6_io_mod_state_id_mod; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_mod_state_id; // @[parser.scala 20:25]
  wire  mau_6_io_mod_sram_w_en; // @[parser.scala 20:25]
  wire [7:0] mau_6_io_mod_sram_w_addr; // @[parser.scala 20:25]
  wire [63:0] mau_6_io_mod_sram_w_data; // @[parser.scala 20:25]
  wire  mau_7_clock; // @[parser.scala 20:25]
  wire  mau_7_io_pipe_en; // @[parser.scala 20:25]
  wire  mau_7_io_pipe_ready; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_0; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_1; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_2; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_3; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_4; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_5; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_6; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_7; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_8; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_9; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_10; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_11; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_12; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_13; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_14; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_15; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_16; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_17; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_18; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_19; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_20; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_21; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_22; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_23; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_24; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_25; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_26; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_27; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_28; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_29; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_30; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_31; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_32; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_33; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_34; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_35; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_36; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_37; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_38; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_39; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_40; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_41; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_42; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_43; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_44; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_45; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_46; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_47; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_48; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_49; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_50; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_51; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_52; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_53; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_54; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_55; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_56; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_57; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_58; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_59; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_60; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_61; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_62; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_63; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_64; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_65; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_66; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_67; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_68; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_69; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_70; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_71; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_72; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_73; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_74; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_75; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_76; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_77; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_78; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_79; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_80; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_81; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_82; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_83; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_84; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_85; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_86; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_87; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_88; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_89; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_90; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_91; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_92; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_93; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_94; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_data_95; // @[parser.scala 20:25]
  wire [15:0] mau_7_io_pipe_phv_in_header_0; // @[parser.scala 20:25]
  wire [15:0] mau_7_io_pipe_phv_in_header_1; // @[parser.scala 20:25]
  wire [15:0] mau_7_io_pipe_phv_in_header_2; // @[parser.scala 20:25]
  wire [15:0] mau_7_io_pipe_phv_in_header_3; // @[parser.scala 20:25]
  wire [15:0] mau_7_io_pipe_phv_in_header_4; // @[parser.scala 20:25]
  wire [15:0] mau_7_io_pipe_phv_in_header_5; // @[parser.scala 20:25]
  wire [15:0] mau_7_io_pipe_phv_in_header_6; // @[parser.scala 20:25]
  wire [15:0] mau_7_io_pipe_phv_in_header_7; // @[parser.scala 20:25]
  wire [15:0] mau_7_io_pipe_phv_in_header_8; // @[parser.scala 20:25]
  wire [15:0] mau_7_io_pipe_phv_in_header_9; // @[parser.scala 20:25]
  wire [15:0] mau_7_io_pipe_phv_in_header_10; // @[parser.scala 20:25]
  wire [15:0] mau_7_io_pipe_phv_in_header_11; // @[parser.scala 20:25]
  wire [15:0] mau_7_io_pipe_phv_in_header_12; // @[parser.scala 20:25]
  wire [15:0] mau_7_io_pipe_phv_in_header_13; // @[parser.scala 20:25]
  wire [15:0] mau_7_io_pipe_phv_in_header_14; // @[parser.scala 20:25]
  wire [15:0] mau_7_io_pipe_phv_in_header_15; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_parse_current_state; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_in_parse_current_offset; // @[parser.scala 20:25]
  wire [15:0] mau_7_io_pipe_phv_in_parse_transition_field; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_0; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_1; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_2; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_3; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_4; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_5; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_6; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_7; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_8; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_9; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_10; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_11; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_12; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_13; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_14; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_15; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_16; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_17; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_18; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_19; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_20; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_21; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_22; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_23; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_24; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_25; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_26; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_27; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_28; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_29; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_30; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_31; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_32; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_33; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_34; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_35; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_36; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_37; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_38; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_39; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_40; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_41; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_42; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_43; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_44; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_45; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_46; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_47; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_48; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_49; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_50; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_51; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_52; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_53; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_54; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_55; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_56; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_57; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_58; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_59; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_60; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_61; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_62; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_63; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_64; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_65; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_66; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_67; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_68; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_69; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_70; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_71; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_72; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_73; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_74; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_75; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_76; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_77; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_78; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_79; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_80; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_81; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_82; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_83; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_84; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_85; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_86; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_87; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_88; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_89; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_90; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_91; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_92; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_93; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_94; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_data_95; // @[parser.scala 20:25]
  wire [15:0] mau_7_io_pipe_phv_out_header_0; // @[parser.scala 20:25]
  wire [15:0] mau_7_io_pipe_phv_out_header_1; // @[parser.scala 20:25]
  wire [15:0] mau_7_io_pipe_phv_out_header_2; // @[parser.scala 20:25]
  wire [15:0] mau_7_io_pipe_phv_out_header_3; // @[parser.scala 20:25]
  wire [15:0] mau_7_io_pipe_phv_out_header_4; // @[parser.scala 20:25]
  wire [15:0] mau_7_io_pipe_phv_out_header_5; // @[parser.scala 20:25]
  wire [15:0] mau_7_io_pipe_phv_out_header_6; // @[parser.scala 20:25]
  wire [15:0] mau_7_io_pipe_phv_out_header_7; // @[parser.scala 20:25]
  wire [15:0] mau_7_io_pipe_phv_out_header_8; // @[parser.scala 20:25]
  wire [15:0] mau_7_io_pipe_phv_out_header_9; // @[parser.scala 20:25]
  wire [15:0] mau_7_io_pipe_phv_out_header_10; // @[parser.scala 20:25]
  wire [15:0] mau_7_io_pipe_phv_out_header_11; // @[parser.scala 20:25]
  wire [15:0] mau_7_io_pipe_phv_out_header_12; // @[parser.scala 20:25]
  wire [15:0] mau_7_io_pipe_phv_out_header_13; // @[parser.scala 20:25]
  wire [15:0] mau_7_io_pipe_phv_out_header_14; // @[parser.scala 20:25]
  wire [15:0] mau_7_io_pipe_phv_out_header_15; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_parse_current_state; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_pipe_phv_out_parse_current_offset; // @[parser.scala 20:25]
  wire [15:0] mau_7_io_pipe_phv_out_parse_transition_field; // @[parser.scala 20:25]
  wire  mau_7_io_mod_state_id_mod; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_mod_state_id; // @[parser.scala 20:25]
  wire  mau_7_io_mod_sram_w_en; // @[parser.scala 20:25]
  wire [7:0] mau_7_io_mod_sram_w_addr; // @[parser.scala 20:25]
  wire [63:0] mau_7_io_mod_sram_w_data; // @[parser.scala 20:25]
  reg [2:0] last_mau_id; // @[parser.scala 14:26]
  wire  _GEN_0 = mau_0_io_pipe_ready; // @[parser.scala 33:58 parser.scala 34:35 parser.scala 23:21]
  wire [15:0] _GEN_1 = mau_0_io_pipe_phv_out_parse_transition_field; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_2 = mau_0_io_pipe_phv_out_parse_current_offset; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_3 = mau_0_io_pipe_phv_out_parse_current_state; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [15:0] _GEN_4 = mau_0_io_pipe_phv_out_header_0; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [15:0] _GEN_5 = mau_0_io_pipe_phv_out_header_1; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [15:0] _GEN_6 = mau_0_io_pipe_phv_out_header_2; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [15:0] _GEN_7 = mau_0_io_pipe_phv_out_header_3; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [15:0] _GEN_8 = mau_0_io_pipe_phv_out_header_4; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [15:0] _GEN_9 = mau_0_io_pipe_phv_out_header_5; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [15:0] _GEN_10 = mau_0_io_pipe_phv_out_header_6; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [15:0] _GEN_11 = mau_0_io_pipe_phv_out_header_7; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [15:0] _GEN_12 = mau_0_io_pipe_phv_out_header_8; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [15:0] _GEN_13 = mau_0_io_pipe_phv_out_header_9; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [15:0] _GEN_14 = mau_0_io_pipe_phv_out_header_10; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [15:0] _GEN_15 = mau_0_io_pipe_phv_out_header_11; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [15:0] _GEN_16 = mau_0_io_pipe_phv_out_header_12; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [15:0] _GEN_17 = mau_0_io_pipe_phv_out_header_13; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [15:0] _GEN_18 = mau_0_io_pipe_phv_out_header_14; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [15:0] _GEN_19 = mau_0_io_pipe_phv_out_header_15; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_20 = mau_0_io_pipe_phv_out_data_0; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_21 = mau_0_io_pipe_phv_out_data_1; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_22 = mau_0_io_pipe_phv_out_data_2; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_23 = mau_0_io_pipe_phv_out_data_3; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_24 = mau_0_io_pipe_phv_out_data_4; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_25 = mau_0_io_pipe_phv_out_data_5; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_26 = mau_0_io_pipe_phv_out_data_6; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_27 = mau_0_io_pipe_phv_out_data_7; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_28 = mau_0_io_pipe_phv_out_data_8; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_29 = mau_0_io_pipe_phv_out_data_9; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_30 = mau_0_io_pipe_phv_out_data_10; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_31 = mau_0_io_pipe_phv_out_data_11; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_32 = mau_0_io_pipe_phv_out_data_12; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_33 = mau_0_io_pipe_phv_out_data_13; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_34 = mau_0_io_pipe_phv_out_data_14; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_35 = mau_0_io_pipe_phv_out_data_15; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_36 = mau_0_io_pipe_phv_out_data_16; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_37 = mau_0_io_pipe_phv_out_data_17; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_38 = mau_0_io_pipe_phv_out_data_18; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_39 = mau_0_io_pipe_phv_out_data_19; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_40 = mau_0_io_pipe_phv_out_data_20; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_41 = mau_0_io_pipe_phv_out_data_21; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_42 = mau_0_io_pipe_phv_out_data_22; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_43 = mau_0_io_pipe_phv_out_data_23; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_44 = mau_0_io_pipe_phv_out_data_24; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_45 = mau_0_io_pipe_phv_out_data_25; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_46 = mau_0_io_pipe_phv_out_data_26; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_47 = mau_0_io_pipe_phv_out_data_27; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_48 = mau_0_io_pipe_phv_out_data_28; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_49 = mau_0_io_pipe_phv_out_data_29; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_50 = mau_0_io_pipe_phv_out_data_30; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_51 = mau_0_io_pipe_phv_out_data_31; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_52 = mau_0_io_pipe_phv_out_data_32; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_53 = mau_0_io_pipe_phv_out_data_33; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_54 = mau_0_io_pipe_phv_out_data_34; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_55 = mau_0_io_pipe_phv_out_data_35; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_56 = mau_0_io_pipe_phv_out_data_36; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_57 = mau_0_io_pipe_phv_out_data_37; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_58 = mau_0_io_pipe_phv_out_data_38; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_59 = mau_0_io_pipe_phv_out_data_39; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_60 = mau_0_io_pipe_phv_out_data_40; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_61 = mau_0_io_pipe_phv_out_data_41; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_62 = mau_0_io_pipe_phv_out_data_42; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_63 = mau_0_io_pipe_phv_out_data_43; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_64 = mau_0_io_pipe_phv_out_data_44; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_65 = mau_0_io_pipe_phv_out_data_45; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_66 = mau_0_io_pipe_phv_out_data_46; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_67 = mau_0_io_pipe_phv_out_data_47; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_68 = mau_0_io_pipe_phv_out_data_48; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_69 = mau_0_io_pipe_phv_out_data_49; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_70 = mau_0_io_pipe_phv_out_data_50; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_71 = mau_0_io_pipe_phv_out_data_51; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_72 = mau_0_io_pipe_phv_out_data_52; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_73 = mau_0_io_pipe_phv_out_data_53; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_74 = mau_0_io_pipe_phv_out_data_54; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_75 = mau_0_io_pipe_phv_out_data_55; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_76 = mau_0_io_pipe_phv_out_data_56; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_77 = mau_0_io_pipe_phv_out_data_57; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_78 = mau_0_io_pipe_phv_out_data_58; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_79 = mau_0_io_pipe_phv_out_data_59; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_80 = mau_0_io_pipe_phv_out_data_60; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_81 = mau_0_io_pipe_phv_out_data_61; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_82 = mau_0_io_pipe_phv_out_data_62; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_83 = mau_0_io_pipe_phv_out_data_63; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_84 = mau_0_io_pipe_phv_out_data_64; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_85 = mau_0_io_pipe_phv_out_data_65; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_86 = mau_0_io_pipe_phv_out_data_66; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_87 = mau_0_io_pipe_phv_out_data_67; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_88 = mau_0_io_pipe_phv_out_data_68; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_89 = mau_0_io_pipe_phv_out_data_69; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_90 = mau_0_io_pipe_phv_out_data_70; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_91 = mau_0_io_pipe_phv_out_data_71; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_92 = mau_0_io_pipe_phv_out_data_72; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_93 = mau_0_io_pipe_phv_out_data_73; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_94 = mau_0_io_pipe_phv_out_data_74; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_95 = mau_0_io_pipe_phv_out_data_75; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_96 = mau_0_io_pipe_phv_out_data_76; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_97 = mau_0_io_pipe_phv_out_data_77; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_98 = mau_0_io_pipe_phv_out_data_78; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_99 = mau_0_io_pipe_phv_out_data_79; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_100 = mau_0_io_pipe_phv_out_data_80; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_101 = mau_0_io_pipe_phv_out_data_81; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_102 = mau_0_io_pipe_phv_out_data_82; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_103 = mau_0_io_pipe_phv_out_data_83; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_104 = mau_0_io_pipe_phv_out_data_84; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_105 = mau_0_io_pipe_phv_out_data_85; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_106 = mau_0_io_pipe_phv_out_data_86; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_107 = mau_0_io_pipe_phv_out_data_87; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_108 = mau_0_io_pipe_phv_out_data_88; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_109 = mau_0_io_pipe_phv_out_data_89; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_110 = mau_0_io_pipe_phv_out_data_90; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_111 = mau_0_io_pipe_phv_out_data_91; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_112 = mau_0_io_pipe_phv_out_data_92; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_113 = mau_0_io_pipe_phv_out_data_93; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_114 = mau_0_io_pipe_phv_out_data_94; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire [7:0] _GEN_115 = mau_0_io_pipe_phv_out_data_95; // @[parser.scala 33:58 parser.scala 35:35 parser.scala 24:21]
  wire  _GEN_116 = 3'h1 == last_mau_id ? mau_1_io_pipe_ready : _GEN_0; // @[parser.scala 33:58 parser.scala 34:35]
  wire [15:0] _GEN_117 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_parse_transition_field : _GEN_1; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_118 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_parse_current_offset : _GEN_2; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_119 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_parse_current_state : _GEN_3; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_120 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_header_0 : _GEN_4; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_121 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_header_1 : _GEN_5; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_122 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_header_2 : _GEN_6; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_123 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_header_3 : _GEN_7; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_124 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_header_4 : _GEN_8; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_125 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_header_5 : _GEN_9; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_126 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_header_6 : _GEN_10; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_127 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_header_7 : _GEN_11; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_128 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_header_8 : _GEN_12; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_129 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_header_9 : _GEN_13; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_130 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_header_10 : _GEN_14; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_131 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_header_11 : _GEN_15; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_132 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_header_12 : _GEN_16; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_133 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_header_13 : _GEN_17; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_134 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_header_14 : _GEN_18; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_135 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_header_15 : _GEN_19; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_136 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_0 : _GEN_20; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_137 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_1 : _GEN_21; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_138 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_2 : _GEN_22; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_139 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_3 : _GEN_23; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_140 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_4 : _GEN_24; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_141 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_5 : _GEN_25; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_142 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_6 : _GEN_26; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_143 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_7 : _GEN_27; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_144 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_8 : _GEN_28; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_145 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_9 : _GEN_29; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_146 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_10 : _GEN_30; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_147 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_11 : _GEN_31; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_148 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_12 : _GEN_32; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_149 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_13 : _GEN_33; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_150 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_14 : _GEN_34; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_151 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_15 : _GEN_35; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_152 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_16 : _GEN_36; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_153 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_17 : _GEN_37; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_154 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_18 : _GEN_38; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_155 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_19 : _GEN_39; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_156 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_20 : _GEN_40; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_157 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_21 : _GEN_41; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_158 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_22 : _GEN_42; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_159 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_23 : _GEN_43; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_160 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_24 : _GEN_44; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_161 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_25 : _GEN_45; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_162 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_26 : _GEN_46; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_163 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_27 : _GEN_47; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_164 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_28 : _GEN_48; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_165 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_29 : _GEN_49; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_166 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_30 : _GEN_50; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_167 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_31 : _GEN_51; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_168 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_32 : _GEN_52; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_169 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_33 : _GEN_53; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_170 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_34 : _GEN_54; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_171 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_35 : _GEN_55; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_172 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_36 : _GEN_56; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_173 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_37 : _GEN_57; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_174 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_38 : _GEN_58; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_175 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_39 : _GEN_59; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_176 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_40 : _GEN_60; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_177 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_41 : _GEN_61; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_178 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_42 : _GEN_62; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_179 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_43 : _GEN_63; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_180 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_44 : _GEN_64; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_181 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_45 : _GEN_65; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_182 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_46 : _GEN_66; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_183 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_47 : _GEN_67; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_184 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_48 : _GEN_68; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_185 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_49 : _GEN_69; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_186 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_50 : _GEN_70; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_187 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_51 : _GEN_71; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_188 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_52 : _GEN_72; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_189 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_53 : _GEN_73; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_190 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_54 : _GEN_74; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_191 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_55 : _GEN_75; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_192 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_56 : _GEN_76; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_193 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_57 : _GEN_77; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_194 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_58 : _GEN_78; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_195 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_59 : _GEN_79; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_196 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_60 : _GEN_80; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_197 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_61 : _GEN_81; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_198 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_62 : _GEN_82; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_199 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_63 : _GEN_83; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_200 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_64 : _GEN_84; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_201 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_65 : _GEN_85; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_202 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_66 : _GEN_86; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_203 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_67 : _GEN_87; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_204 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_68 : _GEN_88; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_205 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_69 : _GEN_89; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_206 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_70 : _GEN_90; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_207 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_71 : _GEN_91; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_208 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_72 : _GEN_92; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_209 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_73 : _GEN_93; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_210 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_74 : _GEN_94; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_211 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_75 : _GEN_95; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_212 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_76 : _GEN_96; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_213 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_77 : _GEN_97; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_214 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_78 : _GEN_98; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_215 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_79 : _GEN_99; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_216 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_80 : _GEN_100; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_217 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_81 : _GEN_101; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_218 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_82 : _GEN_102; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_219 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_83 : _GEN_103; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_220 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_84 : _GEN_104; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_221 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_85 : _GEN_105; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_222 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_86 : _GEN_106; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_223 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_87 : _GEN_107; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_224 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_88 : _GEN_108; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_225 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_89 : _GEN_109; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_226 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_90 : _GEN_110; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_227 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_91 : _GEN_111; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_228 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_92 : _GEN_112; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_229 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_93 : _GEN_113; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_230 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_94 : _GEN_114; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_231 = 3'h1 == last_mau_id ? mau_1_io_pipe_phv_out_data_95 : _GEN_115; // @[parser.scala 33:58 parser.scala 35:35]
  wire  _GEN_232 = 3'h2 == last_mau_id ? mau_2_io_pipe_ready : _GEN_116; // @[parser.scala 33:58 parser.scala 34:35]
  wire [15:0] _GEN_233 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_parse_transition_field : _GEN_117; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_234 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_parse_current_offset : _GEN_118; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_235 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_parse_current_state : _GEN_119; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_236 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_header_0 : _GEN_120; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_237 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_header_1 : _GEN_121; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_238 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_header_2 : _GEN_122; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_239 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_header_3 : _GEN_123; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_240 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_header_4 : _GEN_124; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_241 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_header_5 : _GEN_125; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_242 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_header_6 : _GEN_126; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_243 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_header_7 : _GEN_127; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_244 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_header_8 : _GEN_128; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_245 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_header_9 : _GEN_129; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_246 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_header_10 : _GEN_130; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_247 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_header_11 : _GEN_131; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_248 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_header_12 : _GEN_132; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_249 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_header_13 : _GEN_133; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_250 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_header_14 : _GEN_134; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_251 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_header_15 : _GEN_135; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_252 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_0 : _GEN_136; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_253 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_1 : _GEN_137; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_254 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_2 : _GEN_138; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_255 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_3 : _GEN_139; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_256 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_4 : _GEN_140; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_257 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_5 : _GEN_141; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_258 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_6 : _GEN_142; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_259 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_7 : _GEN_143; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_260 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_8 : _GEN_144; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_261 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_9 : _GEN_145; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_262 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_10 : _GEN_146; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_263 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_11 : _GEN_147; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_264 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_12 : _GEN_148; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_265 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_13 : _GEN_149; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_266 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_14 : _GEN_150; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_267 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_15 : _GEN_151; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_268 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_16 : _GEN_152; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_269 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_17 : _GEN_153; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_270 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_18 : _GEN_154; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_271 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_19 : _GEN_155; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_272 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_20 : _GEN_156; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_273 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_21 : _GEN_157; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_274 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_22 : _GEN_158; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_275 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_23 : _GEN_159; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_276 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_24 : _GEN_160; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_277 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_25 : _GEN_161; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_278 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_26 : _GEN_162; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_279 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_27 : _GEN_163; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_280 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_28 : _GEN_164; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_281 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_29 : _GEN_165; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_282 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_30 : _GEN_166; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_283 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_31 : _GEN_167; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_284 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_32 : _GEN_168; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_285 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_33 : _GEN_169; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_286 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_34 : _GEN_170; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_287 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_35 : _GEN_171; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_288 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_36 : _GEN_172; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_289 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_37 : _GEN_173; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_290 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_38 : _GEN_174; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_291 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_39 : _GEN_175; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_292 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_40 : _GEN_176; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_293 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_41 : _GEN_177; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_294 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_42 : _GEN_178; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_295 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_43 : _GEN_179; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_296 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_44 : _GEN_180; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_297 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_45 : _GEN_181; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_298 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_46 : _GEN_182; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_299 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_47 : _GEN_183; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_300 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_48 : _GEN_184; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_301 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_49 : _GEN_185; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_302 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_50 : _GEN_186; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_303 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_51 : _GEN_187; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_304 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_52 : _GEN_188; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_305 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_53 : _GEN_189; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_306 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_54 : _GEN_190; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_307 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_55 : _GEN_191; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_308 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_56 : _GEN_192; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_309 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_57 : _GEN_193; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_310 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_58 : _GEN_194; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_311 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_59 : _GEN_195; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_312 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_60 : _GEN_196; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_313 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_61 : _GEN_197; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_314 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_62 : _GEN_198; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_315 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_63 : _GEN_199; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_316 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_64 : _GEN_200; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_317 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_65 : _GEN_201; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_318 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_66 : _GEN_202; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_319 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_67 : _GEN_203; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_320 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_68 : _GEN_204; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_321 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_69 : _GEN_205; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_322 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_70 : _GEN_206; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_323 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_71 : _GEN_207; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_324 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_72 : _GEN_208; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_325 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_73 : _GEN_209; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_326 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_74 : _GEN_210; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_327 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_75 : _GEN_211; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_328 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_76 : _GEN_212; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_329 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_77 : _GEN_213; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_330 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_78 : _GEN_214; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_331 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_79 : _GEN_215; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_332 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_80 : _GEN_216; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_333 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_81 : _GEN_217; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_334 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_82 : _GEN_218; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_335 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_83 : _GEN_219; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_336 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_84 : _GEN_220; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_337 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_85 : _GEN_221; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_338 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_86 : _GEN_222; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_339 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_87 : _GEN_223; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_340 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_88 : _GEN_224; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_341 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_89 : _GEN_225; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_342 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_90 : _GEN_226; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_343 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_91 : _GEN_227; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_344 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_92 : _GEN_228; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_345 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_93 : _GEN_229; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_346 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_94 : _GEN_230; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_347 = 3'h2 == last_mau_id ? mau_2_io_pipe_phv_out_data_95 : _GEN_231; // @[parser.scala 33:58 parser.scala 35:35]
  wire  _GEN_348 = 3'h3 == last_mau_id ? mau_3_io_pipe_ready : _GEN_232; // @[parser.scala 33:58 parser.scala 34:35]
  wire [15:0] _GEN_349 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_parse_transition_field : _GEN_233; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_350 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_parse_current_offset : _GEN_234; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_351 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_parse_current_state : _GEN_235; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_352 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_header_0 : _GEN_236; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_353 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_header_1 : _GEN_237; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_354 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_header_2 : _GEN_238; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_355 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_header_3 : _GEN_239; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_356 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_header_4 : _GEN_240; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_357 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_header_5 : _GEN_241; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_358 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_header_6 : _GEN_242; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_359 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_header_7 : _GEN_243; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_360 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_header_8 : _GEN_244; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_361 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_header_9 : _GEN_245; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_362 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_header_10 : _GEN_246; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_363 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_header_11 : _GEN_247; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_364 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_header_12 : _GEN_248; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_365 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_header_13 : _GEN_249; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_366 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_header_14 : _GEN_250; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_367 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_header_15 : _GEN_251; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_368 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_0 : _GEN_252; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_369 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_1 : _GEN_253; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_370 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_2 : _GEN_254; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_371 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_3 : _GEN_255; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_372 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_4 : _GEN_256; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_373 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_5 : _GEN_257; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_374 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_6 : _GEN_258; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_375 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_7 : _GEN_259; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_376 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_8 : _GEN_260; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_377 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_9 : _GEN_261; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_378 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_10 : _GEN_262; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_379 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_11 : _GEN_263; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_380 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_12 : _GEN_264; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_381 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_13 : _GEN_265; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_382 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_14 : _GEN_266; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_383 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_15 : _GEN_267; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_384 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_16 : _GEN_268; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_385 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_17 : _GEN_269; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_386 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_18 : _GEN_270; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_387 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_19 : _GEN_271; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_388 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_20 : _GEN_272; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_389 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_21 : _GEN_273; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_390 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_22 : _GEN_274; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_391 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_23 : _GEN_275; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_392 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_24 : _GEN_276; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_393 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_25 : _GEN_277; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_394 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_26 : _GEN_278; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_395 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_27 : _GEN_279; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_396 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_28 : _GEN_280; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_397 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_29 : _GEN_281; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_398 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_30 : _GEN_282; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_399 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_31 : _GEN_283; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_400 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_32 : _GEN_284; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_401 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_33 : _GEN_285; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_402 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_34 : _GEN_286; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_403 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_35 : _GEN_287; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_404 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_36 : _GEN_288; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_405 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_37 : _GEN_289; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_406 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_38 : _GEN_290; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_407 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_39 : _GEN_291; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_408 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_40 : _GEN_292; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_409 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_41 : _GEN_293; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_410 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_42 : _GEN_294; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_411 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_43 : _GEN_295; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_412 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_44 : _GEN_296; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_413 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_45 : _GEN_297; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_414 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_46 : _GEN_298; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_415 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_47 : _GEN_299; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_416 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_48 : _GEN_300; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_417 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_49 : _GEN_301; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_418 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_50 : _GEN_302; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_419 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_51 : _GEN_303; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_420 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_52 : _GEN_304; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_421 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_53 : _GEN_305; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_422 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_54 : _GEN_306; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_423 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_55 : _GEN_307; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_424 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_56 : _GEN_308; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_425 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_57 : _GEN_309; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_426 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_58 : _GEN_310; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_427 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_59 : _GEN_311; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_428 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_60 : _GEN_312; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_429 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_61 : _GEN_313; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_430 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_62 : _GEN_314; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_431 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_63 : _GEN_315; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_432 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_64 : _GEN_316; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_433 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_65 : _GEN_317; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_434 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_66 : _GEN_318; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_435 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_67 : _GEN_319; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_436 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_68 : _GEN_320; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_437 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_69 : _GEN_321; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_438 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_70 : _GEN_322; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_439 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_71 : _GEN_323; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_440 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_72 : _GEN_324; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_441 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_73 : _GEN_325; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_442 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_74 : _GEN_326; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_443 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_75 : _GEN_327; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_444 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_76 : _GEN_328; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_445 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_77 : _GEN_329; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_446 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_78 : _GEN_330; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_447 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_79 : _GEN_331; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_448 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_80 : _GEN_332; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_449 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_81 : _GEN_333; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_450 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_82 : _GEN_334; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_451 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_83 : _GEN_335; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_452 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_84 : _GEN_336; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_453 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_85 : _GEN_337; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_454 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_86 : _GEN_338; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_455 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_87 : _GEN_339; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_456 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_88 : _GEN_340; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_457 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_89 : _GEN_341; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_458 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_90 : _GEN_342; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_459 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_91 : _GEN_343; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_460 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_92 : _GEN_344; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_461 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_93 : _GEN_345; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_462 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_94 : _GEN_346; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_463 = 3'h3 == last_mau_id ? mau_3_io_pipe_phv_out_data_95 : _GEN_347; // @[parser.scala 33:58 parser.scala 35:35]
  wire  _GEN_464 = 3'h4 == last_mau_id ? mau_4_io_pipe_ready : _GEN_348; // @[parser.scala 33:58 parser.scala 34:35]
  wire [15:0] _GEN_465 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_parse_transition_field : _GEN_349; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_466 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_parse_current_offset : _GEN_350; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_467 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_parse_current_state : _GEN_351; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_468 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_header_0 : _GEN_352; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_469 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_header_1 : _GEN_353; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_470 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_header_2 : _GEN_354; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_471 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_header_3 : _GEN_355; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_472 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_header_4 : _GEN_356; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_473 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_header_5 : _GEN_357; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_474 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_header_6 : _GEN_358; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_475 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_header_7 : _GEN_359; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_476 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_header_8 : _GEN_360; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_477 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_header_9 : _GEN_361; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_478 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_header_10 : _GEN_362; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_479 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_header_11 : _GEN_363; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_480 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_header_12 : _GEN_364; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_481 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_header_13 : _GEN_365; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_482 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_header_14 : _GEN_366; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_483 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_header_15 : _GEN_367; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_484 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_0 : _GEN_368; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_485 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_1 : _GEN_369; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_486 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_2 : _GEN_370; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_487 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_3 : _GEN_371; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_488 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_4 : _GEN_372; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_489 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_5 : _GEN_373; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_490 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_6 : _GEN_374; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_491 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_7 : _GEN_375; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_492 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_8 : _GEN_376; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_493 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_9 : _GEN_377; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_494 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_10 : _GEN_378; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_495 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_11 : _GEN_379; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_496 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_12 : _GEN_380; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_497 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_13 : _GEN_381; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_498 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_14 : _GEN_382; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_499 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_15 : _GEN_383; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_500 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_16 : _GEN_384; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_501 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_17 : _GEN_385; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_502 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_18 : _GEN_386; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_503 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_19 : _GEN_387; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_504 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_20 : _GEN_388; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_505 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_21 : _GEN_389; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_506 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_22 : _GEN_390; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_507 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_23 : _GEN_391; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_508 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_24 : _GEN_392; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_509 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_25 : _GEN_393; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_510 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_26 : _GEN_394; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_511 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_27 : _GEN_395; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_512 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_28 : _GEN_396; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_513 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_29 : _GEN_397; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_514 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_30 : _GEN_398; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_515 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_31 : _GEN_399; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_516 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_32 : _GEN_400; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_517 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_33 : _GEN_401; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_518 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_34 : _GEN_402; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_519 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_35 : _GEN_403; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_520 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_36 : _GEN_404; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_521 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_37 : _GEN_405; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_522 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_38 : _GEN_406; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_523 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_39 : _GEN_407; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_524 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_40 : _GEN_408; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_525 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_41 : _GEN_409; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_526 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_42 : _GEN_410; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_527 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_43 : _GEN_411; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_528 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_44 : _GEN_412; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_529 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_45 : _GEN_413; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_530 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_46 : _GEN_414; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_531 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_47 : _GEN_415; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_532 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_48 : _GEN_416; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_533 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_49 : _GEN_417; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_534 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_50 : _GEN_418; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_535 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_51 : _GEN_419; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_536 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_52 : _GEN_420; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_537 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_53 : _GEN_421; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_538 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_54 : _GEN_422; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_539 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_55 : _GEN_423; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_540 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_56 : _GEN_424; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_541 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_57 : _GEN_425; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_542 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_58 : _GEN_426; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_543 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_59 : _GEN_427; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_544 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_60 : _GEN_428; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_545 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_61 : _GEN_429; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_546 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_62 : _GEN_430; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_547 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_63 : _GEN_431; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_548 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_64 : _GEN_432; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_549 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_65 : _GEN_433; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_550 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_66 : _GEN_434; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_551 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_67 : _GEN_435; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_552 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_68 : _GEN_436; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_553 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_69 : _GEN_437; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_554 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_70 : _GEN_438; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_555 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_71 : _GEN_439; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_556 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_72 : _GEN_440; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_557 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_73 : _GEN_441; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_558 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_74 : _GEN_442; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_559 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_75 : _GEN_443; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_560 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_76 : _GEN_444; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_561 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_77 : _GEN_445; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_562 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_78 : _GEN_446; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_563 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_79 : _GEN_447; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_564 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_80 : _GEN_448; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_565 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_81 : _GEN_449; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_566 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_82 : _GEN_450; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_567 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_83 : _GEN_451; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_568 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_84 : _GEN_452; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_569 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_85 : _GEN_453; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_570 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_86 : _GEN_454; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_571 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_87 : _GEN_455; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_572 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_88 : _GEN_456; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_573 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_89 : _GEN_457; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_574 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_90 : _GEN_458; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_575 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_91 : _GEN_459; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_576 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_92 : _GEN_460; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_577 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_93 : _GEN_461; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_578 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_94 : _GEN_462; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_579 = 3'h4 == last_mau_id ? mau_4_io_pipe_phv_out_data_95 : _GEN_463; // @[parser.scala 33:58 parser.scala 35:35]
  wire  _GEN_580 = 3'h5 == last_mau_id ? mau_5_io_pipe_ready : _GEN_464; // @[parser.scala 33:58 parser.scala 34:35]
  wire [15:0] _GEN_581 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_parse_transition_field : _GEN_465; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_582 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_parse_current_offset : _GEN_466; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_583 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_parse_current_state : _GEN_467; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_584 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_header_0 : _GEN_468; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_585 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_header_1 : _GEN_469; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_586 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_header_2 : _GEN_470; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_587 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_header_3 : _GEN_471; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_588 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_header_4 : _GEN_472; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_589 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_header_5 : _GEN_473; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_590 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_header_6 : _GEN_474; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_591 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_header_7 : _GEN_475; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_592 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_header_8 : _GEN_476; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_593 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_header_9 : _GEN_477; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_594 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_header_10 : _GEN_478; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_595 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_header_11 : _GEN_479; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_596 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_header_12 : _GEN_480; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_597 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_header_13 : _GEN_481; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_598 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_header_14 : _GEN_482; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_599 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_header_15 : _GEN_483; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_600 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_0 : _GEN_484; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_601 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_1 : _GEN_485; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_602 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_2 : _GEN_486; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_603 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_3 : _GEN_487; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_604 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_4 : _GEN_488; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_605 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_5 : _GEN_489; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_606 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_6 : _GEN_490; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_607 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_7 : _GEN_491; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_608 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_8 : _GEN_492; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_609 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_9 : _GEN_493; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_610 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_10 : _GEN_494; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_611 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_11 : _GEN_495; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_612 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_12 : _GEN_496; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_613 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_13 : _GEN_497; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_614 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_14 : _GEN_498; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_615 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_15 : _GEN_499; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_616 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_16 : _GEN_500; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_617 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_17 : _GEN_501; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_618 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_18 : _GEN_502; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_619 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_19 : _GEN_503; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_620 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_20 : _GEN_504; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_621 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_21 : _GEN_505; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_622 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_22 : _GEN_506; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_623 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_23 : _GEN_507; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_624 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_24 : _GEN_508; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_625 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_25 : _GEN_509; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_626 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_26 : _GEN_510; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_627 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_27 : _GEN_511; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_628 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_28 : _GEN_512; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_629 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_29 : _GEN_513; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_630 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_30 : _GEN_514; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_631 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_31 : _GEN_515; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_632 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_32 : _GEN_516; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_633 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_33 : _GEN_517; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_634 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_34 : _GEN_518; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_635 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_35 : _GEN_519; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_636 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_36 : _GEN_520; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_637 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_37 : _GEN_521; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_638 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_38 : _GEN_522; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_639 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_39 : _GEN_523; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_640 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_40 : _GEN_524; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_641 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_41 : _GEN_525; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_642 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_42 : _GEN_526; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_643 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_43 : _GEN_527; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_644 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_44 : _GEN_528; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_645 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_45 : _GEN_529; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_646 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_46 : _GEN_530; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_647 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_47 : _GEN_531; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_648 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_48 : _GEN_532; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_649 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_49 : _GEN_533; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_650 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_50 : _GEN_534; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_651 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_51 : _GEN_535; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_652 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_52 : _GEN_536; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_653 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_53 : _GEN_537; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_654 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_54 : _GEN_538; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_655 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_55 : _GEN_539; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_656 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_56 : _GEN_540; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_657 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_57 : _GEN_541; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_658 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_58 : _GEN_542; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_659 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_59 : _GEN_543; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_660 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_60 : _GEN_544; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_661 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_61 : _GEN_545; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_662 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_62 : _GEN_546; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_663 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_63 : _GEN_547; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_664 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_64 : _GEN_548; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_665 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_65 : _GEN_549; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_666 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_66 : _GEN_550; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_667 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_67 : _GEN_551; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_668 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_68 : _GEN_552; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_669 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_69 : _GEN_553; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_670 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_70 : _GEN_554; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_671 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_71 : _GEN_555; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_672 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_72 : _GEN_556; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_673 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_73 : _GEN_557; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_674 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_74 : _GEN_558; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_675 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_75 : _GEN_559; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_676 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_76 : _GEN_560; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_677 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_77 : _GEN_561; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_678 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_78 : _GEN_562; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_679 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_79 : _GEN_563; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_680 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_80 : _GEN_564; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_681 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_81 : _GEN_565; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_682 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_82 : _GEN_566; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_683 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_83 : _GEN_567; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_684 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_84 : _GEN_568; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_685 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_85 : _GEN_569; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_686 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_86 : _GEN_570; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_687 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_87 : _GEN_571; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_688 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_88 : _GEN_572; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_689 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_89 : _GEN_573; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_690 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_90 : _GEN_574; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_691 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_91 : _GEN_575; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_692 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_92 : _GEN_576; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_693 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_93 : _GEN_577; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_694 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_94 : _GEN_578; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_695 = 3'h5 == last_mau_id ? mau_5_io_pipe_phv_out_data_95 : _GEN_579; // @[parser.scala 33:58 parser.scala 35:35]
  wire  _GEN_696 = 3'h6 == last_mau_id ? mau_6_io_pipe_ready : _GEN_580; // @[parser.scala 33:58 parser.scala 34:35]
  wire [15:0] _GEN_697 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_parse_transition_field : _GEN_581; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_698 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_parse_current_offset : _GEN_582; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_699 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_parse_current_state : _GEN_583; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_700 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_header_0 : _GEN_584; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_701 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_header_1 : _GEN_585; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_702 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_header_2 : _GEN_586; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_703 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_header_3 : _GEN_587; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_704 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_header_4 : _GEN_588; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_705 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_header_5 : _GEN_589; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_706 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_header_6 : _GEN_590; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_707 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_header_7 : _GEN_591; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_708 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_header_8 : _GEN_592; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_709 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_header_9 : _GEN_593; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_710 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_header_10 : _GEN_594; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_711 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_header_11 : _GEN_595; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_712 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_header_12 : _GEN_596; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_713 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_header_13 : _GEN_597; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_714 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_header_14 : _GEN_598; // @[parser.scala 33:58 parser.scala 35:35]
  wire [15:0] _GEN_715 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_header_15 : _GEN_599; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_716 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_0 : _GEN_600; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_717 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_1 : _GEN_601; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_718 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_2 : _GEN_602; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_719 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_3 : _GEN_603; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_720 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_4 : _GEN_604; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_721 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_5 : _GEN_605; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_722 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_6 : _GEN_606; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_723 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_7 : _GEN_607; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_724 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_8 : _GEN_608; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_725 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_9 : _GEN_609; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_726 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_10 : _GEN_610; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_727 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_11 : _GEN_611; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_728 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_12 : _GEN_612; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_729 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_13 : _GEN_613; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_730 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_14 : _GEN_614; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_731 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_15 : _GEN_615; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_732 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_16 : _GEN_616; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_733 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_17 : _GEN_617; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_734 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_18 : _GEN_618; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_735 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_19 : _GEN_619; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_736 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_20 : _GEN_620; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_737 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_21 : _GEN_621; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_738 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_22 : _GEN_622; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_739 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_23 : _GEN_623; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_740 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_24 : _GEN_624; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_741 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_25 : _GEN_625; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_742 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_26 : _GEN_626; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_743 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_27 : _GEN_627; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_744 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_28 : _GEN_628; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_745 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_29 : _GEN_629; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_746 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_30 : _GEN_630; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_747 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_31 : _GEN_631; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_748 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_32 : _GEN_632; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_749 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_33 : _GEN_633; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_750 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_34 : _GEN_634; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_751 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_35 : _GEN_635; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_752 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_36 : _GEN_636; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_753 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_37 : _GEN_637; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_754 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_38 : _GEN_638; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_755 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_39 : _GEN_639; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_756 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_40 : _GEN_640; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_757 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_41 : _GEN_641; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_758 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_42 : _GEN_642; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_759 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_43 : _GEN_643; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_760 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_44 : _GEN_644; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_761 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_45 : _GEN_645; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_762 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_46 : _GEN_646; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_763 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_47 : _GEN_647; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_764 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_48 : _GEN_648; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_765 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_49 : _GEN_649; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_766 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_50 : _GEN_650; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_767 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_51 : _GEN_651; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_768 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_52 : _GEN_652; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_769 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_53 : _GEN_653; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_770 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_54 : _GEN_654; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_771 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_55 : _GEN_655; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_772 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_56 : _GEN_656; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_773 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_57 : _GEN_657; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_774 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_58 : _GEN_658; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_775 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_59 : _GEN_659; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_776 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_60 : _GEN_660; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_777 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_61 : _GEN_661; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_778 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_62 : _GEN_662; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_779 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_63 : _GEN_663; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_780 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_64 : _GEN_664; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_781 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_65 : _GEN_665; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_782 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_66 : _GEN_666; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_783 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_67 : _GEN_667; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_784 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_68 : _GEN_668; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_785 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_69 : _GEN_669; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_786 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_70 : _GEN_670; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_787 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_71 : _GEN_671; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_788 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_72 : _GEN_672; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_789 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_73 : _GEN_673; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_790 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_74 : _GEN_674; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_791 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_75 : _GEN_675; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_792 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_76 : _GEN_676; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_793 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_77 : _GEN_677; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_794 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_78 : _GEN_678; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_795 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_79 : _GEN_679; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_796 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_80 : _GEN_680; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_797 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_81 : _GEN_681; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_798 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_82 : _GEN_682; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_799 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_83 : _GEN_683; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_800 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_84 : _GEN_684; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_801 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_85 : _GEN_685; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_802 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_86 : _GEN_686; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_803 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_87 : _GEN_687; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_804 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_88 : _GEN_688; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_805 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_89 : _GEN_689; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_806 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_90 : _GEN_690; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_807 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_91 : _GEN_691; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_808 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_92 : _GEN_692; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_809 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_93 : _GEN_693; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_810 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_94 : _GEN_694; // @[parser.scala 33:58 parser.scala 35:35]
  wire [7:0] _GEN_811 = 3'h6 == last_mau_id ? mau_6_io_pipe_phv_out_data_95 : _GEN_695; // @[parser.scala 33:58 parser.scala 35:35]
  wire  mod_j = io_mod_cs[0]; // @[parser.scala 46:34]
  wire  mod_j_1 = io_mod_cs[1]; // @[parser.scala 46:34]
  wire  mod_j_2 = io_mod_cs[2]; // @[parser.scala 46:34]
  wire  mod_j_3 = io_mod_cs[3]; // @[parser.scala 46:34]
  wire  mod_j_4 = io_mod_cs[4]; // @[parser.scala 46:34]
  wire  mod_j_5 = io_mod_cs[5]; // @[parser.scala 46:34]
  wire  mod_j_6 = io_mod_cs[6]; // @[parser.scala 46:34]
  wire  mod_j_7 = io_mod_cs[7]; // @[parser.scala 46:34]
  ParseModule mau_0 ( // @[parser.scala 20:25]
    .clock(mau_0_clock),
    .io_pipe_en(mau_0_io_pipe_en),
    .io_pipe_ready(mau_0_io_pipe_ready),
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
    .io_mod_state_id_mod(mau_0_io_mod_state_id_mod),
    .io_mod_state_id(mau_0_io_mod_state_id),
    .io_mod_sram_w_en(mau_0_io_mod_sram_w_en),
    .io_mod_sram_w_addr(mau_0_io_mod_sram_w_addr),
    .io_mod_sram_w_data(mau_0_io_mod_sram_w_data)
  );
  ParseModule mau_1 ( // @[parser.scala 20:25]
    .clock(mau_1_clock),
    .io_pipe_en(mau_1_io_pipe_en),
    .io_pipe_ready(mau_1_io_pipe_ready),
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
    .io_mod_state_id_mod(mau_1_io_mod_state_id_mod),
    .io_mod_state_id(mau_1_io_mod_state_id),
    .io_mod_sram_w_en(mau_1_io_mod_sram_w_en),
    .io_mod_sram_w_addr(mau_1_io_mod_sram_w_addr),
    .io_mod_sram_w_data(mau_1_io_mod_sram_w_data)
  );
  ParseModule mau_2 ( // @[parser.scala 20:25]
    .clock(mau_2_clock),
    .io_pipe_en(mau_2_io_pipe_en),
    .io_pipe_ready(mau_2_io_pipe_ready),
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
    .io_mod_state_id_mod(mau_2_io_mod_state_id_mod),
    .io_mod_state_id(mau_2_io_mod_state_id),
    .io_mod_sram_w_en(mau_2_io_mod_sram_w_en),
    .io_mod_sram_w_addr(mau_2_io_mod_sram_w_addr),
    .io_mod_sram_w_data(mau_2_io_mod_sram_w_data)
  );
  ParseModule mau_3 ( // @[parser.scala 20:25]
    .clock(mau_3_clock),
    .io_pipe_en(mau_3_io_pipe_en),
    .io_pipe_ready(mau_3_io_pipe_ready),
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
    .io_mod_state_id_mod(mau_3_io_mod_state_id_mod),
    .io_mod_state_id(mau_3_io_mod_state_id),
    .io_mod_sram_w_en(mau_3_io_mod_sram_w_en),
    .io_mod_sram_w_addr(mau_3_io_mod_sram_w_addr),
    .io_mod_sram_w_data(mau_3_io_mod_sram_w_data)
  );
  ParseModule mau_4 ( // @[parser.scala 20:25]
    .clock(mau_4_clock),
    .io_pipe_en(mau_4_io_pipe_en),
    .io_pipe_ready(mau_4_io_pipe_ready),
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
    .io_mod_state_id_mod(mau_4_io_mod_state_id_mod),
    .io_mod_state_id(mau_4_io_mod_state_id),
    .io_mod_sram_w_en(mau_4_io_mod_sram_w_en),
    .io_mod_sram_w_addr(mau_4_io_mod_sram_w_addr),
    .io_mod_sram_w_data(mau_4_io_mod_sram_w_data)
  );
  ParseModule mau_5 ( // @[parser.scala 20:25]
    .clock(mau_5_clock),
    .io_pipe_en(mau_5_io_pipe_en),
    .io_pipe_ready(mau_5_io_pipe_ready),
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
    .io_mod_state_id_mod(mau_5_io_mod_state_id_mod),
    .io_mod_state_id(mau_5_io_mod_state_id),
    .io_mod_sram_w_en(mau_5_io_mod_sram_w_en),
    .io_mod_sram_w_addr(mau_5_io_mod_sram_w_addr),
    .io_mod_sram_w_data(mau_5_io_mod_sram_w_data)
  );
  ParseModule mau_6 ( // @[parser.scala 20:25]
    .clock(mau_6_clock),
    .io_pipe_en(mau_6_io_pipe_en),
    .io_pipe_ready(mau_6_io_pipe_ready),
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
    .io_mod_state_id_mod(mau_6_io_mod_state_id_mod),
    .io_mod_state_id(mau_6_io_mod_state_id),
    .io_mod_sram_w_en(mau_6_io_mod_sram_w_en),
    .io_mod_sram_w_addr(mau_6_io_mod_sram_w_addr),
    .io_mod_sram_w_data(mau_6_io_mod_sram_w_data)
  );
  ParseModule mau_7 ( // @[parser.scala 20:25]
    .clock(mau_7_clock),
    .io_pipe_en(mau_7_io_pipe_en),
    .io_pipe_ready(mau_7_io_pipe_ready),
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
    .io_mod_state_id_mod(mau_7_io_mod_state_id_mod),
    .io_mod_state_id(mau_7_io_mod_state_id),
    .io_mod_sram_w_en(mau_7_io_mod_sram_w_en),
    .io_mod_sram_w_addr(mau_7_io_mod_sram_w_addr),
    .io_mod_sram_w_data(mau_7_io_mod_sram_w_data)
  );
  assign io_pipe_ready = 3'h7 == last_mau_id ? mau_7_io_pipe_ready : _GEN_696; // @[parser.scala 33:58 parser.scala 34:35]
  assign io_pipe_phv_out_data_0 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_0 : _GEN_716; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_1 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_1 : _GEN_717; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_2 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_2 : _GEN_718; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_3 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_3 : _GEN_719; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_4 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_4 : _GEN_720; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_5 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_5 : _GEN_721; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_6 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_6 : _GEN_722; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_7 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_7 : _GEN_723; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_8 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_8 : _GEN_724; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_9 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_9 : _GEN_725; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_10 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_10 : _GEN_726; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_11 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_11 : _GEN_727; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_12 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_12 : _GEN_728; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_13 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_13 : _GEN_729; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_14 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_14 : _GEN_730; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_15 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_15 : _GEN_731; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_16 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_16 : _GEN_732; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_17 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_17 : _GEN_733; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_18 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_18 : _GEN_734; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_19 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_19 : _GEN_735; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_20 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_20 : _GEN_736; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_21 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_21 : _GEN_737; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_22 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_22 : _GEN_738; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_23 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_23 : _GEN_739; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_24 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_24 : _GEN_740; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_25 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_25 : _GEN_741; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_26 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_26 : _GEN_742; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_27 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_27 : _GEN_743; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_28 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_28 : _GEN_744; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_29 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_29 : _GEN_745; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_30 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_30 : _GEN_746; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_31 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_31 : _GEN_747; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_32 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_32 : _GEN_748; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_33 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_33 : _GEN_749; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_34 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_34 : _GEN_750; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_35 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_35 : _GEN_751; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_36 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_36 : _GEN_752; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_37 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_37 : _GEN_753; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_38 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_38 : _GEN_754; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_39 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_39 : _GEN_755; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_40 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_40 : _GEN_756; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_41 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_41 : _GEN_757; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_42 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_42 : _GEN_758; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_43 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_43 : _GEN_759; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_44 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_44 : _GEN_760; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_45 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_45 : _GEN_761; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_46 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_46 : _GEN_762; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_47 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_47 : _GEN_763; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_48 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_48 : _GEN_764; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_49 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_49 : _GEN_765; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_50 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_50 : _GEN_766; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_51 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_51 : _GEN_767; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_52 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_52 : _GEN_768; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_53 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_53 : _GEN_769; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_54 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_54 : _GEN_770; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_55 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_55 : _GEN_771; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_56 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_56 : _GEN_772; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_57 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_57 : _GEN_773; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_58 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_58 : _GEN_774; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_59 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_59 : _GEN_775; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_60 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_60 : _GEN_776; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_61 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_61 : _GEN_777; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_62 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_62 : _GEN_778; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_63 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_63 : _GEN_779; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_64 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_64 : _GEN_780; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_65 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_65 : _GEN_781; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_66 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_66 : _GEN_782; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_67 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_67 : _GEN_783; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_68 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_68 : _GEN_784; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_69 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_69 : _GEN_785; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_70 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_70 : _GEN_786; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_71 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_71 : _GEN_787; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_72 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_72 : _GEN_788; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_73 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_73 : _GEN_789; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_74 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_74 : _GEN_790; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_75 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_75 : _GEN_791; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_76 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_76 : _GEN_792; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_77 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_77 : _GEN_793; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_78 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_78 : _GEN_794; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_79 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_79 : _GEN_795; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_80 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_80 : _GEN_796; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_81 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_81 : _GEN_797; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_82 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_82 : _GEN_798; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_83 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_83 : _GEN_799; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_84 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_84 : _GEN_800; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_85 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_85 : _GEN_801; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_86 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_86 : _GEN_802; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_87 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_87 : _GEN_803; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_88 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_88 : _GEN_804; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_89 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_89 : _GEN_805; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_90 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_90 : _GEN_806; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_91 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_91 : _GEN_807; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_92 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_92 : _GEN_808; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_93 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_93 : _GEN_809; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_94 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_94 : _GEN_810; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_data_95 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_data_95 : _GEN_811; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_header_0 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_header_0 : _GEN_700; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_header_1 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_header_1 : _GEN_701; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_header_2 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_header_2 : _GEN_702; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_header_3 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_header_3 : _GEN_703; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_header_4 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_header_4 : _GEN_704; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_header_5 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_header_5 : _GEN_705; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_header_6 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_header_6 : _GEN_706; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_header_7 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_header_7 : _GEN_707; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_header_8 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_header_8 : _GEN_708; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_header_9 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_header_9 : _GEN_709; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_header_10 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_header_10 : _GEN_710; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_header_11 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_header_11 : _GEN_711; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_header_12 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_header_12 : _GEN_712; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_header_13 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_header_13 : _GEN_713; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_header_14 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_header_14 : _GEN_714; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_header_15 = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_header_15 : _GEN_715; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_parse_current_state = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_parse_current_state :
    _GEN_699; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_parse_current_offset = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_parse_current_offset :
    _GEN_698; // @[parser.scala 33:58 parser.scala 35:35]
  assign io_pipe_phv_out_parse_transition_field = 3'h7 == last_mau_id ? mau_7_io_pipe_phv_out_parse_transition_field :
    _GEN_697; // @[parser.scala 33:58 parser.scala 35:35]
  assign mau_0_clock = clock;
  assign mau_0_io_pipe_en = io_pipe_en; // @[parser.scala 27:35]
  assign mau_0_io_pipe_phv_in_data_0 = io_pipe_phv_in_data_0; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_1 = io_pipe_phv_in_data_1; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_2 = io_pipe_phv_in_data_2; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_3 = io_pipe_phv_in_data_3; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_4 = io_pipe_phv_in_data_4; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_5 = io_pipe_phv_in_data_5; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_6 = io_pipe_phv_in_data_6; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_7 = io_pipe_phv_in_data_7; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_8 = io_pipe_phv_in_data_8; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_9 = io_pipe_phv_in_data_9; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_10 = io_pipe_phv_in_data_10; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_11 = io_pipe_phv_in_data_11; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_12 = io_pipe_phv_in_data_12; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_13 = io_pipe_phv_in_data_13; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_14 = io_pipe_phv_in_data_14; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_15 = io_pipe_phv_in_data_15; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_16 = io_pipe_phv_in_data_16; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_17 = io_pipe_phv_in_data_17; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_18 = io_pipe_phv_in_data_18; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_19 = io_pipe_phv_in_data_19; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_20 = io_pipe_phv_in_data_20; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_21 = io_pipe_phv_in_data_21; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_22 = io_pipe_phv_in_data_22; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_23 = io_pipe_phv_in_data_23; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_24 = io_pipe_phv_in_data_24; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_25 = io_pipe_phv_in_data_25; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_26 = io_pipe_phv_in_data_26; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_27 = io_pipe_phv_in_data_27; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_28 = io_pipe_phv_in_data_28; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_29 = io_pipe_phv_in_data_29; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_30 = io_pipe_phv_in_data_30; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_31 = io_pipe_phv_in_data_31; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_32 = io_pipe_phv_in_data_32; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_33 = io_pipe_phv_in_data_33; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_34 = io_pipe_phv_in_data_34; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_35 = io_pipe_phv_in_data_35; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_36 = io_pipe_phv_in_data_36; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_37 = io_pipe_phv_in_data_37; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_38 = io_pipe_phv_in_data_38; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_39 = io_pipe_phv_in_data_39; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_40 = io_pipe_phv_in_data_40; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_41 = io_pipe_phv_in_data_41; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_42 = io_pipe_phv_in_data_42; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_43 = io_pipe_phv_in_data_43; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_44 = io_pipe_phv_in_data_44; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_45 = io_pipe_phv_in_data_45; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_46 = io_pipe_phv_in_data_46; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_47 = io_pipe_phv_in_data_47; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_48 = io_pipe_phv_in_data_48; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_49 = io_pipe_phv_in_data_49; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_50 = io_pipe_phv_in_data_50; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_51 = io_pipe_phv_in_data_51; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_52 = io_pipe_phv_in_data_52; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_53 = io_pipe_phv_in_data_53; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_54 = io_pipe_phv_in_data_54; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_55 = io_pipe_phv_in_data_55; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_56 = io_pipe_phv_in_data_56; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_57 = io_pipe_phv_in_data_57; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_58 = io_pipe_phv_in_data_58; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_59 = io_pipe_phv_in_data_59; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_60 = io_pipe_phv_in_data_60; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_61 = io_pipe_phv_in_data_61; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_62 = io_pipe_phv_in_data_62; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_63 = io_pipe_phv_in_data_63; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_64 = io_pipe_phv_in_data_64; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_65 = io_pipe_phv_in_data_65; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_66 = io_pipe_phv_in_data_66; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_67 = io_pipe_phv_in_data_67; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_68 = io_pipe_phv_in_data_68; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_69 = io_pipe_phv_in_data_69; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_70 = io_pipe_phv_in_data_70; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_71 = io_pipe_phv_in_data_71; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_72 = io_pipe_phv_in_data_72; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_73 = io_pipe_phv_in_data_73; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_74 = io_pipe_phv_in_data_74; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_75 = io_pipe_phv_in_data_75; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_76 = io_pipe_phv_in_data_76; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_77 = io_pipe_phv_in_data_77; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_78 = io_pipe_phv_in_data_78; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_79 = io_pipe_phv_in_data_79; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_80 = io_pipe_phv_in_data_80; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_81 = io_pipe_phv_in_data_81; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_82 = io_pipe_phv_in_data_82; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_83 = io_pipe_phv_in_data_83; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_84 = io_pipe_phv_in_data_84; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_85 = io_pipe_phv_in_data_85; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_86 = io_pipe_phv_in_data_86; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_87 = io_pipe_phv_in_data_87; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_88 = io_pipe_phv_in_data_88; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_89 = io_pipe_phv_in_data_89; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_90 = io_pipe_phv_in_data_90; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_91 = io_pipe_phv_in_data_91; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_92 = io_pipe_phv_in_data_92; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_93 = io_pipe_phv_in_data_93; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_94 = io_pipe_phv_in_data_94; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_data_95 = io_pipe_phv_in_data_95; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_header_0 = io_pipe_phv_in_header_0; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_header_1 = io_pipe_phv_in_header_1; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_header_2 = io_pipe_phv_in_header_2; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_header_3 = io_pipe_phv_in_header_3; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_header_4 = io_pipe_phv_in_header_4; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_header_5 = io_pipe_phv_in_header_5; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_header_6 = io_pipe_phv_in_header_6; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_header_7 = io_pipe_phv_in_header_7; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_header_8 = io_pipe_phv_in_header_8; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_header_9 = io_pipe_phv_in_header_9; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_header_10 = io_pipe_phv_in_header_10; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_header_11 = io_pipe_phv_in_header_11; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_header_12 = io_pipe_phv_in_header_12; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_header_13 = io_pipe_phv_in_header_13; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_header_14 = io_pipe_phv_in_header_14; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_header_15 = io_pipe_phv_in_header_15; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_parse_current_state = io_pipe_phv_in_parse_current_state; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_parse_current_offset = io_pipe_phv_in_parse_current_offset; // @[parser.scala 28:35]
  assign mau_0_io_pipe_phv_in_parse_transition_field = io_pipe_phv_in_parse_transition_field; // @[parser.scala 28:35]
  assign mau_0_io_mod_state_id_mod = io_mod_en ? io_mod_module_mod_state_id_mod & mod_j : io_mod_module_mod_state_id_mod
    ; // @[parser.scala 41:22 parser.scala 48:40 parser.scala 37:23]
  assign mau_0_io_mod_state_id = io_mod_module_mod_state_id; // @[parser.scala 37:23]
  assign mau_0_io_mod_sram_w_en = io_mod_en ? io_mod_module_mod_sram_w_en & mod_j : io_mod_module_mod_sram_w_en; // @[parser.scala 41:22 parser.scala 47:40 parser.scala 37:23]
  assign mau_0_io_mod_sram_w_addr = io_mod_module_mod_sram_w_addr; // @[parser.scala 37:23]
  assign mau_0_io_mod_sram_w_data = io_mod_module_mod_sram_w_data; // @[parser.scala 37:23]
  assign mau_1_clock = clock;
  assign mau_1_io_pipe_en = mau_0_io_pipe_ready; // @[parser.scala 30:35]
  assign mau_1_io_pipe_phv_in_data_0 = mau_0_io_pipe_phv_out_data_0; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_1 = mau_0_io_pipe_phv_out_data_1; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_2 = mau_0_io_pipe_phv_out_data_2; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_3 = mau_0_io_pipe_phv_out_data_3; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_4 = mau_0_io_pipe_phv_out_data_4; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_5 = mau_0_io_pipe_phv_out_data_5; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_6 = mau_0_io_pipe_phv_out_data_6; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_7 = mau_0_io_pipe_phv_out_data_7; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_8 = mau_0_io_pipe_phv_out_data_8; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_9 = mau_0_io_pipe_phv_out_data_9; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_10 = mau_0_io_pipe_phv_out_data_10; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_11 = mau_0_io_pipe_phv_out_data_11; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_12 = mau_0_io_pipe_phv_out_data_12; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_13 = mau_0_io_pipe_phv_out_data_13; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_14 = mau_0_io_pipe_phv_out_data_14; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_15 = mau_0_io_pipe_phv_out_data_15; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_16 = mau_0_io_pipe_phv_out_data_16; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_17 = mau_0_io_pipe_phv_out_data_17; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_18 = mau_0_io_pipe_phv_out_data_18; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_19 = mau_0_io_pipe_phv_out_data_19; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_20 = mau_0_io_pipe_phv_out_data_20; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_21 = mau_0_io_pipe_phv_out_data_21; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_22 = mau_0_io_pipe_phv_out_data_22; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_23 = mau_0_io_pipe_phv_out_data_23; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_24 = mau_0_io_pipe_phv_out_data_24; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_25 = mau_0_io_pipe_phv_out_data_25; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_26 = mau_0_io_pipe_phv_out_data_26; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_27 = mau_0_io_pipe_phv_out_data_27; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_28 = mau_0_io_pipe_phv_out_data_28; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_29 = mau_0_io_pipe_phv_out_data_29; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_30 = mau_0_io_pipe_phv_out_data_30; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_31 = mau_0_io_pipe_phv_out_data_31; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_32 = mau_0_io_pipe_phv_out_data_32; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_33 = mau_0_io_pipe_phv_out_data_33; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_34 = mau_0_io_pipe_phv_out_data_34; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_35 = mau_0_io_pipe_phv_out_data_35; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_36 = mau_0_io_pipe_phv_out_data_36; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_37 = mau_0_io_pipe_phv_out_data_37; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_38 = mau_0_io_pipe_phv_out_data_38; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_39 = mau_0_io_pipe_phv_out_data_39; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_40 = mau_0_io_pipe_phv_out_data_40; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_41 = mau_0_io_pipe_phv_out_data_41; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_42 = mau_0_io_pipe_phv_out_data_42; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_43 = mau_0_io_pipe_phv_out_data_43; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_44 = mau_0_io_pipe_phv_out_data_44; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_45 = mau_0_io_pipe_phv_out_data_45; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_46 = mau_0_io_pipe_phv_out_data_46; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_47 = mau_0_io_pipe_phv_out_data_47; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_48 = mau_0_io_pipe_phv_out_data_48; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_49 = mau_0_io_pipe_phv_out_data_49; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_50 = mau_0_io_pipe_phv_out_data_50; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_51 = mau_0_io_pipe_phv_out_data_51; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_52 = mau_0_io_pipe_phv_out_data_52; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_53 = mau_0_io_pipe_phv_out_data_53; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_54 = mau_0_io_pipe_phv_out_data_54; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_55 = mau_0_io_pipe_phv_out_data_55; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_56 = mau_0_io_pipe_phv_out_data_56; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_57 = mau_0_io_pipe_phv_out_data_57; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_58 = mau_0_io_pipe_phv_out_data_58; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_59 = mau_0_io_pipe_phv_out_data_59; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_60 = mau_0_io_pipe_phv_out_data_60; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_61 = mau_0_io_pipe_phv_out_data_61; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_62 = mau_0_io_pipe_phv_out_data_62; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_63 = mau_0_io_pipe_phv_out_data_63; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_64 = mau_0_io_pipe_phv_out_data_64; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_65 = mau_0_io_pipe_phv_out_data_65; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_66 = mau_0_io_pipe_phv_out_data_66; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_67 = mau_0_io_pipe_phv_out_data_67; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_68 = mau_0_io_pipe_phv_out_data_68; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_69 = mau_0_io_pipe_phv_out_data_69; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_70 = mau_0_io_pipe_phv_out_data_70; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_71 = mau_0_io_pipe_phv_out_data_71; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_72 = mau_0_io_pipe_phv_out_data_72; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_73 = mau_0_io_pipe_phv_out_data_73; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_74 = mau_0_io_pipe_phv_out_data_74; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_75 = mau_0_io_pipe_phv_out_data_75; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_76 = mau_0_io_pipe_phv_out_data_76; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_77 = mau_0_io_pipe_phv_out_data_77; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_78 = mau_0_io_pipe_phv_out_data_78; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_79 = mau_0_io_pipe_phv_out_data_79; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_80 = mau_0_io_pipe_phv_out_data_80; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_81 = mau_0_io_pipe_phv_out_data_81; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_82 = mau_0_io_pipe_phv_out_data_82; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_83 = mau_0_io_pipe_phv_out_data_83; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_84 = mau_0_io_pipe_phv_out_data_84; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_85 = mau_0_io_pipe_phv_out_data_85; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_86 = mau_0_io_pipe_phv_out_data_86; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_87 = mau_0_io_pipe_phv_out_data_87; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_88 = mau_0_io_pipe_phv_out_data_88; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_89 = mau_0_io_pipe_phv_out_data_89; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_90 = mau_0_io_pipe_phv_out_data_90; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_91 = mau_0_io_pipe_phv_out_data_91; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_92 = mau_0_io_pipe_phv_out_data_92; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_93 = mau_0_io_pipe_phv_out_data_93; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_94 = mau_0_io_pipe_phv_out_data_94; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_data_95 = mau_0_io_pipe_phv_out_data_95; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_header_0 = mau_0_io_pipe_phv_out_header_0; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_header_1 = mau_0_io_pipe_phv_out_header_1; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_header_2 = mau_0_io_pipe_phv_out_header_2; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_header_3 = mau_0_io_pipe_phv_out_header_3; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_header_4 = mau_0_io_pipe_phv_out_header_4; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_header_5 = mau_0_io_pipe_phv_out_header_5; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_header_6 = mau_0_io_pipe_phv_out_header_6; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_header_7 = mau_0_io_pipe_phv_out_header_7; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_header_8 = mau_0_io_pipe_phv_out_header_8; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_header_9 = mau_0_io_pipe_phv_out_header_9; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_header_10 = mau_0_io_pipe_phv_out_header_10; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_header_11 = mau_0_io_pipe_phv_out_header_11; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_header_12 = mau_0_io_pipe_phv_out_header_12; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_header_13 = mau_0_io_pipe_phv_out_header_13; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_header_14 = mau_0_io_pipe_phv_out_header_14; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_header_15 = mau_0_io_pipe_phv_out_header_15; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_parse_current_state = mau_0_io_pipe_phv_out_parse_current_state; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_parse_current_offset = mau_0_io_pipe_phv_out_parse_current_offset; // @[parser.scala 31:35]
  assign mau_1_io_pipe_phv_in_parse_transition_field = mau_0_io_pipe_phv_out_parse_transition_field; // @[parser.scala 31:35]
  assign mau_1_io_mod_state_id_mod = io_mod_en ? io_mod_module_mod_state_id_mod & mod_j_1 :
    io_mod_module_mod_state_id_mod; // @[parser.scala 41:22 parser.scala 48:40 parser.scala 37:23]
  assign mau_1_io_mod_state_id = io_mod_module_mod_state_id; // @[parser.scala 37:23]
  assign mau_1_io_mod_sram_w_en = io_mod_en ? io_mod_module_mod_sram_w_en & mod_j_1 : io_mod_module_mod_sram_w_en; // @[parser.scala 41:22 parser.scala 47:40 parser.scala 37:23]
  assign mau_1_io_mod_sram_w_addr = io_mod_module_mod_sram_w_addr; // @[parser.scala 37:23]
  assign mau_1_io_mod_sram_w_data = io_mod_module_mod_sram_w_data; // @[parser.scala 37:23]
  assign mau_2_clock = clock;
  assign mau_2_io_pipe_en = mau_1_io_pipe_ready; // @[parser.scala 30:35]
  assign mau_2_io_pipe_phv_in_data_0 = mau_1_io_pipe_phv_out_data_0; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_1 = mau_1_io_pipe_phv_out_data_1; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_2 = mau_1_io_pipe_phv_out_data_2; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_3 = mau_1_io_pipe_phv_out_data_3; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_4 = mau_1_io_pipe_phv_out_data_4; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_5 = mau_1_io_pipe_phv_out_data_5; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_6 = mau_1_io_pipe_phv_out_data_6; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_7 = mau_1_io_pipe_phv_out_data_7; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_8 = mau_1_io_pipe_phv_out_data_8; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_9 = mau_1_io_pipe_phv_out_data_9; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_10 = mau_1_io_pipe_phv_out_data_10; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_11 = mau_1_io_pipe_phv_out_data_11; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_12 = mau_1_io_pipe_phv_out_data_12; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_13 = mau_1_io_pipe_phv_out_data_13; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_14 = mau_1_io_pipe_phv_out_data_14; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_15 = mau_1_io_pipe_phv_out_data_15; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_16 = mau_1_io_pipe_phv_out_data_16; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_17 = mau_1_io_pipe_phv_out_data_17; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_18 = mau_1_io_pipe_phv_out_data_18; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_19 = mau_1_io_pipe_phv_out_data_19; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_20 = mau_1_io_pipe_phv_out_data_20; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_21 = mau_1_io_pipe_phv_out_data_21; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_22 = mau_1_io_pipe_phv_out_data_22; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_23 = mau_1_io_pipe_phv_out_data_23; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_24 = mau_1_io_pipe_phv_out_data_24; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_25 = mau_1_io_pipe_phv_out_data_25; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_26 = mau_1_io_pipe_phv_out_data_26; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_27 = mau_1_io_pipe_phv_out_data_27; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_28 = mau_1_io_pipe_phv_out_data_28; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_29 = mau_1_io_pipe_phv_out_data_29; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_30 = mau_1_io_pipe_phv_out_data_30; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_31 = mau_1_io_pipe_phv_out_data_31; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_32 = mau_1_io_pipe_phv_out_data_32; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_33 = mau_1_io_pipe_phv_out_data_33; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_34 = mau_1_io_pipe_phv_out_data_34; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_35 = mau_1_io_pipe_phv_out_data_35; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_36 = mau_1_io_pipe_phv_out_data_36; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_37 = mau_1_io_pipe_phv_out_data_37; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_38 = mau_1_io_pipe_phv_out_data_38; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_39 = mau_1_io_pipe_phv_out_data_39; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_40 = mau_1_io_pipe_phv_out_data_40; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_41 = mau_1_io_pipe_phv_out_data_41; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_42 = mau_1_io_pipe_phv_out_data_42; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_43 = mau_1_io_pipe_phv_out_data_43; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_44 = mau_1_io_pipe_phv_out_data_44; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_45 = mau_1_io_pipe_phv_out_data_45; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_46 = mau_1_io_pipe_phv_out_data_46; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_47 = mau_1_io_pipe_phv_out_data_47; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_48 = mau_1_io_pipe_phv_out_data_48; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_49 = mau_1_io_pipe_phv_out_data_49; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_50 = mau_1_io_pipe_phv_out_data_50; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_51 = mau_1_io_pipe_phv_out_data_51; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_52 = mau_1_io_pipe_phv_out_data_52; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_53 = mau_1_io_pipe_phv_out_data_53; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_54 = mau_1_io_pipe_phv_out_data_54; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_55 = mau_1_io_pipe_phv_out_data_55; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_56 = mau_1_io_pipe_phv_out_data_56; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_57 = mau_1_io_pipe_phv_out_data_57; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_58 = mau_1_io_pipe_phv_out_data_58; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_59 = mau_1_io_pipe_phv_out_data_59; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_60 = mau_1_io_pipe_phv_out_data_60; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_61 = mau_1_io_pipe_phv_out_data_61; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_62 = mau_1_io_pipe_phv_out_data_62; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_63 = mau_1_io_pipe_phv_out_data_63; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_64 = mau_1_io_pipe_phv_out_data_64; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_65 = mau_1_io_pipe_phv_out_data_65; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_66 = mau_1_io_pipe_phv_out_data_66; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_67 = mau_1_io_pipe_phv_out_data_67; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_68 = mau_1_io_pipe_phv_out_data_68; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_69 = mau_1_io_pipe_phv_out_data_69; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_70 = mau_1_io_pipe_phv_out_data_70; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_71 = mau_1_io_pipe_phv_out_data_71; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_72 = mau_1_io_pipe_phv_out_data_72; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_73 = mau_1_io_pipe_phv_out_data_73; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_74 = mau_1_io_pipe_phv_out_data_74; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_75 = mau_1_io_pipe_phv_out_data_75; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_76 = mau_1_io_pipe_phv_out_data_76; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_77 = mau_1_io_pipe_phv_out_data_77; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_78 = mau_1_io_pipe_phv_out_data_78; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_79 = mau_1_io_pipe_phv_out_data_79; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_80 = mau_1_io_pipe_phv_out_data_80; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_81 = mau_1_io_pipe_phv_out_data_81; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_82 = mau_1_io_pipe_phv_out_data_82; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_83 = mau_1_io_pipe_phv_out_data_83; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_84 = mau_1_io_pipe_phv_out_data_84; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_85 = mau_1_io_pipe_phv_out_data_85; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_86 = mau_1_io_pipe_phv_out_data_86; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_87 = mau_1_io_pipe_phv_out_data_87; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_88 = mau_1_io_pipe_phv_out_data_88; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_89 = mau_1_io_pipe_phv_out_data_89; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_90 = mau_1_io_pipe_phv_out_data_90; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_91 = mau_1_io_pipe_phv_out_data_91; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_92 = mau_1_io_pipe_phv_out_data_92; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_93 = mau_1_io_pipe_phv_out_data_93; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_94 = mau_1_io_pipe_phv_out_data_94; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_data_95 = mau_1_io_pipe_phv_out_data_95; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_header_0 = mau_1_io_pipe_phv_out_header_0; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_header_1 = mau_1_io_pipe_phv_out_header_1; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_header_2 = mau_1_io_pipe_phv_out_header_2; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_header_3 = mau_1_io_pipe_phv_out_header_3; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_header_4 = mau_1_io_pipe_phv_out_header_4; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_header_5 = mau_1_io_pipe_phv_out_header_5; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_header_6 = mau_1_io_pipe_phv_out_header_6; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_header_7 = mau_1_io_pipe_phv_out_header_7; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_header_8 = mau_1_io_pipe_phv_out_header_8; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_header_9 = mau_1_io_pipe_phv_out_header_9; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_header_10 = mau_1_io_pipe_phv_out_header_10; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_header_11 = mau_1_io_pipe_phv_out_header_11; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_header_12 = mau_1_io_pipe_phv_out_header_12; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_header_13 = mau_1_io_pipe_phv_out_header_13; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_header_14 = mau_1_io_pipe_phv_out_header_14; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_header_15 = mau_1_io_pipe_phv_out_header_15; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_parse_current_state = mau_1_io_pipe_phv_out_parse_current_state; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_parse_current_offset = mau_1_io_pipe_phv_out_parse_current_offset; // @[parser.scala 31:35]
  assign mau_2_io_pipe_phv_in_parse_transition_field = mau_1_io_pipe_phv_out_parse_transition_field; // @[parser.scala 31:35]
  assign mau_2_io_mod_state_id_mod = io_mod_en ? io_mod_module_mod_state_id_mod & mod_j_2 :
    io_mod_module_mod_state_id_mod; // @[parser.scala 41:22 parser.scala 48:40 parser.scala 37:23]
  assign mau_2_io_mod_state_id = io_mod_module_mod_state_id; // @[parser.scala 37:23]
  assign mau_2_io_mod_sram_w_en = io_mod_en ? io_mod_module_mod_sram_w_en & mod_j_2 : io_mod_module_mod_sram_w_en; // @[parser.scala 41:22 parser.scala 47:40 parser.scala 37:23]
  assign mau_2_io_mod_sram_w_addr = io_mod_module_mod_sram_w_addr; // @[parser.scala 37:23]
  assign mau_2_io_mod_sram_w_data = io_mod_module_mod_sram_w_data; // @[parser.scala 37:23]
  assign mau_3_clock = clock;
  assign mau_3_io_pipe_en = mau_2_io_pipe_ready; // @[parser.scala 30:35]
  assign mau_3_io_pipe_phv_in_data_0 = mau_2_io_pipe_phv_out_data_0; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_1 = mau_2_io_pipe_phv_out_data_1; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_2 = mau_2_io_pipe_phv_out_data_2; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_3 = mau_2_io_pipe_phv_out_data_3; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_4 = mau_2_io_pipe_phv_out_data_4; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_5 = mau_2_io_pipe_phv_out_data_5; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_6 = mau_2_io_pipe_phv_out_data_6; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_7 = mau_2_io_pipe_phv_out_data_7; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_8 = mau_2_io_pipe_phv_out_data_8; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_9 = mau_2_io_pipe_phv_out_data_9; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_10 = mau_2_io_pipe_phv_out_data_10; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_11 = mau_2_io_pipe_phv_out_data_11; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_12 = mau_2_io_pipe_phv_out_data_12; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_13 = mau_2_io_pipe_phv_out_data_13; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_14 = mau_2_io_pipe_phv_out_data_14; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_15 = mau_2_io_pipe_phv_out_data_15; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_16 = mau_2_io_pipe_phv_out_data_16; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_17 = mau_2_io_pipe_phv_out_data_17; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_18 = mau_2_io_pipe_phv_out_data_18; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_19 = mau_2_io_pipe_phv_out_data_19; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_20 = mau_2_io_pipe_phv_out_data_20; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_21 = mau_2_io_pipe_phv_out_data_21; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_22 = mau_2_io_pipe_phv_out_data_22; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_23 = mau_2_io_pipe_phv_out_data_23; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_24 = mau_2_io_pipe_phv_out_data_24; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_25 = mau_2_io_pipe_phv_out_data_25; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_26 = mau_2_io_pipe_phv_out_data_26; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_27 = mau_2_io_pipe_phv_out_data_27; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_28 = mau_2_io_pipe_phv_out_data_28; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_29 = mau_2_io_pipe_phv_out_data_29; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_30 = mau_2_io_pipe_phv_out_data_30; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_31 = mau_2_io_pipe_phv_out_data_31; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_32 = mau_2_io_pipe_phv_out_data_32; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_33 = mau_2_io_pipe_phv_out_data_33; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_34 = mau_2_io_pipe_phv_out_data_34; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_35 = mau_2_io_pipe_phv_out_data_35; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_36 = mau_2_io_pipe_phv_out_data_36; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_37 = mau_2_io_pipe_phv_out_data_37; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_38 = mau_2_io_pipe_phv_out_data_38; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_39 = mau_2_io_pipe_phv_out_data_39; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_40 = mau_2_io_pipe_phv_out_data_40; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_41 = mau_2_io_pipe_phv_out_data_41; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_42 = mau_2_io_pipe_phv_out_data_42; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_43 = mau_2_io_pipe_phv_out_data_43; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_44 = mau_2_io_pipe_phv_out_data_44; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_45 = mau_2_io_pipe_phv_out_data_45; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_46 = mau_2_io_pipe_phv_out_data_46; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_47 = mau_2_io_pipe_phv_out_data_47; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_48 = mau_2_io_pipe_phv_out_data_48; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_49 = mau_2_io_pipe_phv_out_data_49; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_50 = mau_2_io_pipe_phv_out_data_50; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_51 = mau_2_io_pipe_phv_out_data_51; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_52 = mau_2_io_pipe_phv_out_data_52; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_53 = mau_2_io_pipe_phv_out_data_53; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_54 = mau_2_io_pipe_phv_out_data_54; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_55 = mau_2_io_pipe_phv_out_data_55; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_56 = mau_2_io_pipe_phv_out_data_56; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_57 = mau_2_io_pipe_phv_out_data_57; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_58 = mau_2_io_pipe_phv_out_data_58; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_59 = mau_2_io_pipe_phv_out_data_59; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_60 = mau_2_io_pipe_phv_out_data_60; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_61 = mau_2_io_pipe_phv_out_data_61; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_62 = mau_2_io_pipe_phv_out_data_62; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_63 = mau_2_io_pipe_phv_out_data_63; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_64 = mau_2_io_pipe_phv_out_data_64; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_65 = mau_2_io_pipe_phv_out_data_65; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_66 = mau_2_io_pipe_phv_out_data_66; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_67 = mau_2_io_pipe_phv_out_data_67; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_68 = mau_2_io_pipe_phv_out_data_68; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_69 = mau_2_io_pipe_phv_out_data_69; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_70 = mau_2_io_pipe_phv_out_data_70; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_71 = mau_2_io_pipe_phv_out_data_71; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_72 = mau_2_io_pipe_phv_out_data_72; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_73 = mau_2_io_pipe_phv_out_data_73; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_74 = mau_2_io_pipe_phv_out_data_74; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_75 = mau_2_io_pipe_phv_out_data_75; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_76 = mau_2_io_pipe_phv_out_data_76; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_77 = mau_2_io_pipe_phv_out_data_77; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_78 = mau_2_io_pipe_phv_out_data_78; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_79 = mau_2_io_pipe_phv_out_data_79; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_80 = mau_2_io_pipe_phv_out_data_80; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_81 = mau_2_io_pipe_phv_out_data_81; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_82 = mau_2_io_pipe_phv_out_data_82; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_83 = mau_2_io_pipe_phv_out_data_83; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_84 = mau_2_io_pipe_phv_out_data_84; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_85 = mau_2_io_pipe_phv_out_data_85; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_86 = mau_2_io_pipe_phv_out_data_86; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_87 = mau_2_io_pipe_phv_out_data_87; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_88 = mau_2_io_pipe_phv_out_data_88; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_89 = mau_2_io_pipe_phv_out_data_89; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_90 = mau_2_io_pipe_phv_out_data_90; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_91 = mau_2_io_pipe_phv_out_data_91; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_92 = mau_2_io_pipe_phv_out_data_92; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_93 = mau_2_io_pipe_phv_out_data_93; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_94 = mau_2_io_pipe_phv_out_data_94; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_data_95 = mau_2_io_pipe_phv_out_data_95; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_header_0 = mau_2_io_pipe_phv_out_header_0; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_header_1 = mau_2_io_pipe_phv_out_header_1; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_header_2 = mau_2_io_pipe_phv_out_header_2; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_header_3 = mau_2_io_pipe_phv_out_header_3; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_header_4 = mau_2_io_pipe_phv_out_header_4; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_header_5 = mau_2_io_pipe_phv_out_header_5; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_header_6 = mau_2_io_pipe_phv_out_header_6; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_header_7 = mau_2_io_pipe_phv_out_header_7; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_header_8 = mau_2_io_pipe_phv_out_header_8; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_header_9 = mau_2_io_pipe_phv_out_header_9; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_header_10 = mau_2_io_pipe_phv_out_header_10; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_header_11 = mau_2_io_pipe_phv_out_header_11; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_header_12 = mau_2_io_pipe_phv_out_header_12; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_header_13 = mau_2_io_pipe_phv_out_header_13; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_header_14 = mau_2_io_pipe_phv_out_header_14; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_header_15 = mau_2_io_pipe_phv_out_header_15; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_parse_current_state = mau_2_io_pipe_phv_out_parse_current_state; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_parse_current_offset = mau_2_io_pipe_phv_out_parse_current_offset; // @[parser.scala 31:35]
  assign mau_3_io_pipe_phv_in_parse_transition_field = mau_2_io_pipe_phv_out_parse_transition_field; // @[parser.scala 31:35]
  assign mau_3_io_mod_state_id_mod = io_mod_en ? io_mod_module_mod_state_id_mod & mod_j_3 :
    io_mod_module_mod_state_id_mod; // @[parser.scala 41:22 parser.scala 48:40 parser.scala 37:23]
  assign mau_3_io_mod_state_id = io_mod_module_mod_state_id; // @[parser.scala 37:23]
  assign mau_3_io_mod_sram_w_en = io_mod_en ? io_mod_module_mod_sram_w_en & mod_j_3 : io_mod_module_mod_sram_w_en; // @[parser.scala 41:22 parser.scala 47:40 parser.scala 37:23]
  assign mau_3_io_mod_sram_w_addr = io_mod_module_mod_sram_w_addr; // @[parser.scala 37:23]
  assign mau_3_io_mod_sram_w_data = io_mod_module_mod_sram_w_data; // @[parser.scala 37:23]
  assign mau_4_clock = clock;
  assign mau_4_io_pipe_en = mau_3_io_pipe_ready; // @[parser.scala 30:35]
  assign mau_4_io_pipe_phv_in_data_0 = mau_3_io_pipe_phv_out_data_0; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_1 = mau_3_io_pipe_phv_out_data_1; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_2 = mau_3_io_pipe_phv_out_data_2; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_3 = mau_3_io_pipe_phv_out_data_3; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_4 = mau_3_io_pipe_phv_out_data_4; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_5 = mau_3_io_pipe_phv_out_data_5; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_6 = mau_3_io_pipe_phv_out_data_6; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_7 = mau_3_io_pipe_phv_out_data_7; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_8 = mau_3_io_pipe_phv_out_data_8; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_9 = mau_3_io_pipe_phv_out_data_9; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_10 = mau_3_io_pipe_phv_out_data_10; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_11 = mau_3_io_pipe_phv_out_data_11; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_12 = mau_3_io_pipe_phv_out_data_12; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_13 = mau_3_io_pipe_phv_out_data_13; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_14 = mau_3_io_pipe_phv_out_data_14; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_15 = mau_3_io_pipe_phv_out_data_15; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_16 = mau_3_io_pipe_phv_out_data_16; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_17 = mau_3_io_pipe_phv_out_data_17; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_18 = mau_3_io_pipe_phv_out_data_18; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_19 = mau_3_io_pipe_phv_out_data_19; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_20 = mau_3_io_pipe_phv_out_data_20; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_21 = mau_3_io_pipe_phv_out_data_21; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_22 = mau_3_io_pipe_phv_out_data_22; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_23 = mau_3_io_pipe_phv_out_data_23; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_24 = mau_3_io_pipe_phv_out_data_24; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_25 = mau_3_io_pipe_phv_out_data_25; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_26 = mau_3_io_pipe_phv_out_data_26; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_27 = mau_3_io_pipe_phv_out_data_27; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_28 = mau_3_io_pipe_phv_out_data_28; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_29 = mau_3_io_pipe_phv_out_data_29; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_30 = mau_3_io_pipe_phv_out_data_30; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_31 = mau_3_io_pipe_phv_out_data_31; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_32 = mau_3_io_pipe_phv_out_data_32; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_33 = mau_3_io_pipe_phv_out_data_33; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_34 = mau_3_io_pipe_phv_out_data_34; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_35 = mau_3_io_pipe_phv_out_data_35; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_36 = mau_3_io_pipe_phv_out_data_36; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_37 = mau_3_io_pipe_phv_out_data_37; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_38 = mau_3_io_pipe_phv_out_data_38; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_39 = mau_3_io_pipe_phv_out_data_39; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_40 = mau_3_io_pipe_phv_out_data_40; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_41 = mau_3_io_pipe_phv_out_data_41; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_42 = mau_3_io_pipe_phv_out_data_42; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_43 = mau_3_io_pipe_phv_out_data_43; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_44 = mau_3_io_pipe_phv_out_data_44; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_45 = mau_3_io_pipe_phv_out_data_45; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_46 = mau_3_io_pipe_phv_out_data_46; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_47 = mau_3_io_pipe_phv_out_data_47; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_48 = mau_3_io_pipe_phv_out_data_48; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_49 = mau_3_io_pipe_phv_out_data_49; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_50 = mau_3_io_pipe_phv_out_data_50; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_51 = mau_3_io_pipe_phv_out_data_51; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_52 = mau_3_io_pipe_phv_out_data_52; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_53 = mau_3_io_pipe_phv_out_data_53; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_54 = mau_3_io_pipe_phv_out_data_54; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_55 = mau_3_io_pipe_phv_out_data_55; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_56 = mau_3_io_pipe_phv_out_data_56; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_57 = mau_3_io_pipe_phv_out_data_57; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_58 = mau_3_io_pipe_phv_out_data_58; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_59 = mau_3_io_pipe_phv_out_data_59; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_60 = mau_3_io_pipe_phv_out_data_60; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_61 = mau_3_io_pipe_phv_out_data_61; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_62 = mau_3_io_pipe_phv_out_data_62; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_63 = mau_3_io_pipe_phv_out_data_63; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_64 = mau_3_io_pipe_phv_out_data_64; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_65 = mau_3_io_pipe_phv_out_data_65; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_66 = mau_3_io_pipe_phv_out_data_66; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_67 = mau_3_io_pipe_phv_out_data_67; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_68 = mau_3_io_pipe_phv_out_data_68; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_69 = mau_3_io_pipe_phv_out_data_69; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_70 = mau_3_io_pipe_phv_out_data_70; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_71 = mau_3_io_pipe_phv_out_data_71; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_72 = mau_3_io_pipe_phv_out_data_72; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_73 = mau_3_io_pipe_phv_out_data_73; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_74 = mau_3_io_pipe_phv_out_data_74; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_75 = mau_3_io_pipe_phv_out_data_75; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_76 = mau_3_io_pipe_phv_out_data_76; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_77 = mau_3_io_pipe_phv_out_data_77; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_78 = mau_3_io_pipe_phv_out_data_78; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_79 = mau_3_io_pipe_phv_out_data_79; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_80 = mau_3_io_pipe_phv_out_data_80; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_81 = mau_3_io_pipe_phv_out_data_81; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_82 = mau_3_io_pipe_phv_out_data_82; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_83 = mau_3_io_pipe_phv_out_data_83; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_84 = mau_3_io_pipe_phv_out_data_84; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_85 = mau_3_io_pipe_phv_out_data_85; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_86 = mau_3_io_pipe_phv_out_data_86; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_87 = mau_3_io_pipe_phv_out_data_87; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_88 = mau_3_io_pipe_phv_out_data_88; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_89 = mau_3_io_pipe_phv_out_data_89; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_90 = mau_3_io_pipe_phv_out_data_90; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_91 = mau_3_io_pipe_phv_out_data_91; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_92 = mau_3_io_pipe_phv_out_data_92; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_93 = mau_3_io_pipe_phv_out_data_93; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_94 = mau_3_io_pipe_phv_out_data_94; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_data_95 = mau_3_io_pipe_phv_out_data_95; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_header_0 = mau_3_io_pipe_phv_out_header_0; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_header_1 = mau_3_io_pipe_phv_out_header_1; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_header_2 = mau_3_io_pipe_phv_out_header_2; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_header_3 = mau_3_io_pipe_phv_out_header_3; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_header_4 = mau_3_io_pipe_phv_out_header_4; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_header_5 = mau_3_io_pipe_phv_out_header_5; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_header_6 = mau_3_io_pipe_phv_out_header_6; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_header_7 = mau_3_io_pipe_phv_out_header_7; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_header_8 = mau_3_io_pipe_phv_out_header_8; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_header_9 = mau_3_io_pipe_phv_out_header_9; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_header_10 = mau_3_io_pipe_phv_out_header_10; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_header_11 = mau_3_io_pipe_phv_out_header_11; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_header_12 = mau_3_io_pipe_phv_out_header_12; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_header_13 = mau_3_io_pipe_phv_out_header_13; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_header_14 = mau_3_io_pipe_phv_out_header_14; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_header_15 = mau_3_io_pipe_phv_out_header_15; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_parse_current_state = mau_3_io_pipe_phv_out_parse_current_state; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_parse_current_offset = mau_3_io_pipe_phv_out_parse_current_offset; // @[parser.scala 31:35]
  assign mau_4_io_pipe_phv_in_parse_transition_field = mau_3_io_pipe_phv_out_parse_transition_field; // @[parser.scala 31:35]
  assign mau_4_io_mod_state_id_mod = io_mod_en ? io_mod_module_mod_state_id_mod & mod_j_4 :
    io_mod_module_mod_state_id_mod; // @[parser.scala 41:22 parser.scala 48:40 parser.scala 37:23]
  assign mau_4_io_mod_state_id = io_mod_module_mod_state_id; // @[parser.scala 37:23]
  assign mau_4_io_mod_sram_w_en = io_mod_en ? io_mod_module_mod_sram_w_en & mod_j_4 : io_mod_module_mod_sram_w_en; // @[parser.scala 41:22 parser.scala 47:40 parser.scala 37:23]
  assign mau_4_io_mod_sram_w_addr = io_mod_module_mod_sram_w_addr; // @[parser.scala 37:23]
  assign mau_4_io_mod_sram_w_data = io_mod_module_mod_sram_w_data; // @[parser.scala 37:23]
  assign mau_5_clock = clock;
  assign mau_5_io_pipe_en = mau_4_io_pipe_ready; // @[parser.scala 30:35]
  assign mau_5_io_pipe_phv_in_data_0 = mau_4_io_pipe_phv_out_data_0; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_1 = mau_4_io_pipe_phv_out_data_1; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_2 = mau_4_io_pipe_phv_out_data_2; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_3 = mau_4_io_pipe_phv_out_data_3; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_4 = mau_4_io_pipe_phv_out_data_4; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_5 = mau_4_io_pipe_phv_out_data_5; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_6 = mau_4_io_pipe_phv_out_data_6; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_7 = mau_4_io_pipe_phv_out_data_7; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_8 = mau_4_io_pipe_phv_out_data_8; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_9 = mau_4_io_pipe_phv_out_data_9; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_10 = mau_4_io_pipe_phv_out_data_10; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_11 = mau_4_io_pipe_phv_out_data_11; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_12 = mau_4_io_pipe_phv_out_data_12; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_13 = mau_4_io_pipe_phv_out_data_13; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_14 = mau_4_io_pipe_phv_out_data_14; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_15 = mau_4_io_pipe_phv_out_data_15; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_16 = mau_4_io_pipe_phv_out_data_16; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_17 = mau_4_io_pipe_phv_out_data_17; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_18 = mau_4_io_pipe_phv_out_data_18; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_19 = mau_4_io_pipe_phv_out_data_19; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_20 = mau_4_io_pipe_phv_out_data_20; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_21 = mau_4_io_pipe_phv_out_data_21; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_22 = mau_4_io_pipe_phv_out_data_22; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_23 = mau_4_io_pipe_phv_out_data_23; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_24 = mau_4_io_pipe_phv_out_data_24; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_25 = mau_4_io_pipe_phv_out_data_25; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_26 = mau_4_io_pipe_phv_out_data_26; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_27 = mau_4_io_pipe_phv_out_data_27; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_28 = mau_4_io_pipe_phv_out_data_28; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_29 = mau_4_io_pipe_phv_out_data_29; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_30 = mau_4_io_pipe_phv_out_data_30; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_31 = mau_4_io_pipe_phv_out_data_31; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_32 = mau_4_io_pipe_phv_out_data_32; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_33 = mau_4_io_pipe_phv_out_data_33; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_34 = mau_4_io_pipe_phv_out_data_34; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_35 = mau_4_io_pipe_phv_out_data_35; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_36 = mau_4_io_pipe_phv_out_data_36; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_37 = mau_4_io_pipe_phv_out_data_37; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_38 = mau_4_io_pipe_phv_out_data_38; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_39 = mau_4_io_pipe_phv_out_data_39; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_40 = mau_4_io_pipe_phv_out_data_40; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_41 = mau_4_io_pipe_phv_out_data_41; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_42 = mau_4_io_pipe_phv_out_data_42; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_43 = mau_4_io_pipe_phv_out_data_43; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_44 = mau_4_io_pipe_phv_out_data_44; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_45 = mau_4_io_pipe_phv_out_data_45; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_46 = mau_4_io_pipe_phv_out_data_46; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_47 = mau_4_io_pipe_phv_out_data_47; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_48 = mau_4_io_pipe_phv_out_data_48; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_49 = mau_4_io_pipe_phv_out_data_49; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_50 = mau_4_io_pipe_phv_out_data_50; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_51 = mau_4_io_pipe_phv_out_data_51; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_52 = mau_4_io_pipe_phv_out_data_52; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_53 = mau_4_io_pipe_phv_out_data_53; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_54 = mau_4_io_pipe_phv_out_data_54; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_55 = mau_4_io_pipe_phv_out_data_55; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_56 = mau_4_io_pipe_phv_out_data_56; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_57 = mau_4_io_pipe_phv_out_data_57; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_58 = mau_4_io_pipe_phv_out_data_58; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_59 = mau_4_io_pipe_phv_out_data_59; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_60 = mau_4_io_pipe_phv_out_data_60; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_61 = mau_4_io_pipe_phv_out_data_61; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_62 = mau_4_io_pipe_phv_out_data_62; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_63 = mau_4_io_pipe_phv_out_data_63; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_64 = mau_4_io_pipe_phv_out_data_64; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_65 = mau_4_io_pipe_phv_out_data_65; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_66 = mau_4_io_pipe_phv_out_data_66; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_67 = mau_4_io_pipe_phv_out_data_67; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_68 = mau_4_io_pipe_phv_out_data_68; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_69 = mau_4_io_pipe_phv_out_data_69; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_70 = mau_4_io_pipe_phv_out_data_70; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_71 = mau_4_io_pipe_phv_out_data_71; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_72 = mau_4_io_pipe_phv_out_data_72; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_73 = mau_4_io_pipe_phv_out_data_73; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_74 = mau_4_io_pipe_phv_out_data_74; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_75 = mau_4_io_pipe_phv_out_data_75; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_76 = mau_4_io_pipe_phv_out_data_76; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_77 = mau_4_io_pipe_phv_out_data_77; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_78 = mau_4_io_pipe_phv_out_data_78; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_79 = mau_4_io_pipe_phv_out_data_79; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_80 = mau_4_io_pipe_phv_out_data_80; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_81 = mau_4_io_pipe_phv_out_data_81; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_82 = mau_4_io_pipe_phv_out_data_82; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_83 = mau_4_io_pipe_phv_out_data_83; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_84 = mau_4_io_pipe_phv_out_data_84; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_85 = mau_4_io_pipe_phv_out_data_85; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_86 = mau_4_io_pipe_phv_out_data_86; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_87 = mau_4_io_pipe_phv_out_data_87; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_88 = mau_4_io_pipe_phv_out_data_88; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_89 = mau_4_io_pipe_phv_out_data_89; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_90 = mau_4_io_pipe_phv_out_data_90; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_91 = mau_4_io_pipe_phv_out_data_91; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_92 = mau_4_io_pipe_phv_out_data_92; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_93 = mau_4_io_pipe_phv_out_data_93; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_94 = mau_4_io_pipe_phv_out_data_94; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_data_95 = mau_4_io_pipe_phv_out_data_95; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_header_0 = mau_4_io_pipe_phv_out_header_0; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_header_1 = mau_4_io_pipe_phv_out_header_1; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_header_2 = mau_4_io_pipe_phv_out_header_2; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_header_3 = mau_4_io_pipe_phv_out_header_3; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_header_4 = mau_4_io_pipe_phv_out_header_4; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_header_5 = mau_4_io_pipe_phv_out_header_5; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_header_6 = mau_4_io_pipe_phv_out_header_6; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_header_7 = mau_4_io_pipe_phv_out_header_7; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_header_8 = mau_4_io_pipe_phv_out_header_8; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_header_9 = mau_4_io_pipe_phv_out_header_9; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_header_10 = mau_4_io_pipe_phv_out_header_10; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_header_11 = mau_4_io_pipe_phv_out_header_11; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_header_12 = mau_4_io_pipe_phv_out_header_12; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_header_13 = mau_4_io_pipe_phv_out_header_13; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_header_14 = mau_4_io_pipe_phv_out_header_14; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_header_15 = mau_4_io_pipe_phv_out_header_15; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_parse_current_state = mau_4_io_pipe_phv_out_parse_current_state; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_parse_current_offset = mau_4_io_pipe_phv_out_parse_current_offset; // @[parser.scala 31:35]
  assign mau_5_io_pipe_phv_in_parse_transition_field = mau_4_io_pipe_phv_out_parse_transition_field; // @[parser.scala 31:35]
  assign mau_5_io_mod_state_id_mod = io_mod_en ? io_mod_module_mod_state_id_mod & mod_j_5 :
    io_mod_module_mod_state_id_mod; // @[parser.scala 41:22 parser.scala 48:40 parser.scala 37:23]
  assign mau_5_io_mod_state_id = io_mod_module_mod_state_id; // @[parser.scala 37:23]
  assign mau_5_io_mod_sram_w_en = io_mod_en ? io_mod_module_mod_sram_w_en & mod_j_5 : io_mod_module_mod_sram_w_en; // @[parser.scala 41:22 parser.scala 47:40 parser.scala 37:23]
  assign mau_5_io_mod_sram_w_addr = io_mod_module_mod_sram_w_addr; // @[parser.scala 37:23]
  assign mau_5_io_mod_sram_w_data = io_mod_module_mod_sram_w_data; // @[parser.scala 37:23]
  assign mau_6_clock = clock;
  assign mau_6_io_pipe_en = mau_5_io_pipe_ready; // @[parser.scala 30:35]
  assign mau_6_io_pipe_phv_in_data_0 = mau_5_io_pipe_phv_out_data_0; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_1 = mau_5_io_pipe_phv_out_data_1; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_2 = mau_5_io_pipe_phv_out_data_2; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_3 = mau_5_io_pipe_phv_out_data_3; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_4 = mau_5_io_pipe_phv_out_data_4; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_5 = mau_5_io_pipe_phv_out_data_5; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_6 = mau_5_io_pipe_phv_out_data_6; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_7 = mau_5_io_pipe_phv_out_data_7; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_8 = mau_5_io_pipe_phv_out_data_8; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_9 = mau_5_io_pipe_phv_out_data_9; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_10 = mau_5_io_pipe_phv_out_data_10; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_11 = mau_5_io_pipe_phv_out_data_11; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_12 = mau_5_io_pipe_phv_out_data_12; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_13 = mau_5_io_pipe_phv_out_data_13; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_14 = mau_5_io_pipe_phv_out_data_14; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_15 = mau_5_io_pipe_phv_out_data_15; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_16 = mau_5_io_pipe_phv_out_data_16; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_17 = mau_5_io_pipe_phv_out_data_17; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_18 = mau_5_io_pipe_phv_out_data_18; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_19 = mau_5_io_pipe_phv_out_data_19; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_20 = mau_5_io_pipe_phv_out_data_20; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_21 = mau_5_io_pipe_phv_out_data_21; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_22 = mau_5_io_pipe_phv_out_data_22; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_23 = mau_5_io_pipe_phv_out_data_23; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_24 = mau_5_io_pipe_phv_out_data_24; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_25 = mau_5_io_pipe_phv_out_data_25; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_26 = mau_5_io_pipe_phv_out_data_26; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_27 = mau_5_io_pipe_phv_out_data_27; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_28 = mau_5_io_pipe_phv_out_data_28; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_29 = mau_5_io_pipe_phv_out_data_29; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_30 = mau_5_io_pipe_phv_out_data_30; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_31 = mau_5_io_pipe_phv_out_data_31; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_32 = mau_5_io_pipe_phv_out_data_32; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_33 = mau_5_io_pipe_phv_out_data_33; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_34 = mau_5_io_pipe_phv_out_data_34; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_35 = mau_5_io_pipe_phv_out_data_35; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_36 = mau_5_io_pipe_phv_out_data_36; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_37 = mau_5_io_pipe_phv_out_data_37; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_38 = mau_5_io_pipe_phv_out_data_38; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_39 = mau_5_io_pipe_phv_out_data_39; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_40 = mau_5_io_pipe_phv_out_data_40; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_41 = mau_5_io_pipe_phv_out_data_41; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_42 = mau_5_io_pipe_phv_out_data_42; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_43 = mau_5_io_pipe_phv_out_data_43; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_44 = mau_5_io_pipe_phv_out_data_44; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_45 = mau_5_io_pipe_phv_out_data_45; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_46 = mau_5_io_pipe_phv_out_data_46; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_47 = mau_5_io_pipe_phv_out_data_47; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_48 = mau_5_io_pipe_phv_out_data_48; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_49 = mau_5_io_pipe_phv_out_data_49; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_50 = mau_5_io_pipe_phv_out_data_50; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_51 = mau_5_io_pipe_phv_out_data_51; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_52 = mau_5_io_pipe_phv_out_data_52; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_53 = mau_5_io_pipe_phv_out_data_53; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_54 = mau_5_io_pipe_phv_out_data_54; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_55 = mau_5_io_pipe_phv_out_data_55; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_56 = mau_5_io_pipe_phv_out_data_56; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_57 = mau_5_io_pipe_phv_out_data_57; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_58 = mau_5_io_pipe_phv_out_data_58; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_59 = mau_5_io_pipe_phv_out_data_59; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_60 = mau_5_io_pipe_phv_out_data_60; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_61 = mau_5_io_pipe_phv_out_data_61; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_62 = mau_5_io_pipe_phv_out_data_62; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_63 = mau_5_io_pipe_phv_out_data_63; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_64 = mau_5_io_pipe_phv_out_data_64; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_65 = mau_5_io_pipe_phv_out_data_65; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_66 = mau_5_io_pipe_phv_out_data_66; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_67 = mau_5_io_pipe_phv_out_data_67; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_68 = mau_5_io_pipe_phv_out_data_68; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_69 = mau_5_io_pipe_phv_out_data_69; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_70 = mau_5_io_pipe_phv_out_data_70; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_71 = mau_5_io_pipe_phv_out_data_71; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_72 = mau_5_io_pipe_phv_out_data_72; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_73 = mau_5_io_pipe_phv_out_data_73; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_74 = mau_5_io_pipe_phv_out_data_74; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_75 = mau_5_io_pipe_phv_out_data_75; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_76 = mau_5_io_pipe_phv_out_data_76; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_77 = mau_5_io_pipe_phv_out_data_77; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_78 = mau_5_io_pipe_phv_out_data_78; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_79 = mau_5_io_pipe_phv_out_data_79; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_80 = mau_5_io_pipe_phv_out_data_80; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_81 = mau_5_io_pipe_phv_out_data_81; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_82 = mau_5_io_pipe_phv_out_data_82; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_83 = mau_5_io_pipe_phv_out_data_83; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_84 = mau_5_io_pipe_phv_out_data_84; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_85 = mau_5_io_pipe_phv_out_data_85; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_86 = mau_5_io_pipe_phv_out_data_86; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_87 = mau_5_io_pipe_phv_out_data_87; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_88 = mau_5_io_pipe_phv_out_data_88; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_89 = mau_5_io_pipe_phv_out_data_89; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_90 = mau_5_io_pipe_phv_out_data_90; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_91 = mau_5_io_pipe_phv_out_data_91; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_92 = mau_5_io_pipe_phv_out_data_92; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_93 = mau_5_io_pipe_phv_out_data_93; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_94 = mau_5_io_pipe_phv_out_data_94; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_data_95 = mau_5_io_pipe_phv_out_data_95; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_header_0 = mau_5_io_pipe_phv_out_header_0; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_header_1 = mau_5_io_pipe_phv_out_header_1; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_header_2 = mau_5_io_pipe_phv_out_header_2; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_header_3 = mau_5_io_pipe_phv_out_header_3; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_header_4 = mau_5_io_pipe_phv_out_header_4; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_header_5 = mau_5_io_pipe_phv_out_header_5; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_header_6 = mau_5_io_pipe_phv_out_header_6; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_header_7 = mau_5_io_pipe_phv_out_header_7; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_header_8 = mau_5_io_pipe_phv_out_header_8; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_header_9 = mau_5_io_pipe_phv_out_header_9; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_header_10 = mau_5_io_pipe_phv_out_header_10; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_header_11 = mau_5_io_pipe_phv_out_header_11; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_header_12 = mau_5_io_pipe_phv_out_header_12; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_header_13 = mau_5_io_pipe_phv_out_header_13; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_header_14 = mau_5_io_pipe_phv_out_header_14; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_header_15 = mau_5_io_pipe_phv_out_header_15; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_parse_current_state = mau_5_io_pipe_phv_out_parse_current_state; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_parse_current_offset = mau_5_io_pipe_phv_out_parse_current_offset; // @[parser.scala 31:35]
  assign mau_6_io_pipe_phv_in_parse_transition_field = mau_5_io_pipe_phv_out_parse_transition_field; // @[parser.scala 31:35]
  assign mau_6_io_mod_state_id_mod = io_mod_en ? io_mod_module_mod_state_id_mod & mod_j_6 :
    io_mod_module_mod_state_id_mod; // @[parser.scala 41:22 parser.scala 48:40 parser.scala 37:23]
  assign mau_6_io_mod_state_id = io_mod_module_mod_state_id; // @[parser.scala 37:23]
  assign mau_6_io_mod_sram_w_en = io_mod_en ? io_mod_module_mod_sram_w_en & mod_j_6 : io_mod_module_mod_sram_w_en; // @[parser.scala 41:22 parser.scala 47:40 parser.scala 37:23]
  assign mau_6_io_mod_sram_w_addr = io_mod_module_mod_sram_w_addr; // @[parser.scala 37:23]
  assign mau_6_io_mod_sram_w_data = io_mod_module_mod_sram_w_data; // @[parser.scala 37:23]
  assign mau_7_clock = clock;
  assign mau_7_io_pipe_en = mau_6_io_pipe_ready; // @[parser.scala 30:35]
  assign mau_7_io_pipe_phv_in_data_0 = mau_6_io_pipe_phv_out_data_0; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_1 = mau_6_io_pipe_phv_out_data_1; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_2 = mau_6_io_pipe_phv_out_data_2; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_3 = mau_6_io_pipe_phv_out_data_3; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_4 = mau_6_io_pipe_phv_out_data_4; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_5 = mau_6_io_pipe_phv_out_data_5; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_6 = mau_6_io_pipe_phv_out_data_6; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_7 = mau_6_io_pipe_phv_out_data_7; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_8 = mau_6_io_pipe_phv_out_data_8; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_9 = mau_6_io_pipe_phv_out_data_9; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_10 = mau_6_io_pipe_phv_out_data_10; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_11 = mau_6_io_pipe_phv_out_data_11; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_12 = mau_6_io_pipe_phv_out_data_12; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_13 = mau_6_io_pipe_phv_out_data_13; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_14 = mau_6_io_pipe_phv_out_data_14; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_15 = mau_6_io_pipe_phv_out_data_15; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_16 = mau_6_io_pipe_phv_out_data_16; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_17 = mau_6_io_pipe_phv_out_data_17; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_18 = mau_6_io_pipe_phv_out_data_18; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_19 = mau_6_io_pipe_phv_out_data_19; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_20 = mau_6_io_pipe_phv_out_data_20; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_21 = mau_6_io_pipe_phv_out_data_21; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_22 = mau_6_io_pipe_phv_out_data_22; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_23 = mau_6_io_pipe_phv_out_data_23; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_24 = mau_6_io_pipe_phv_out_data_24; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_25 = mau_6_io_pipe_phv_out_data_25; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_26 = mau_6_io_pipe_phv_out_data_26; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_27 = mau_6_io_pipe_phv_out_data_27; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_28 = mau_6_io_pipe_phv_out_data_28; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_29 = mau_6_io_pipe_phv_out_data_29; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_30 = mau_6_io_pipe_phv_out_data_30; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_31 = mau_6_io_pipe_phv_out_data_31; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_32 = mau_6_io_pipe_phv_out_data_32; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_33 = mau_6_io_pipe_phv_out_data_33; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_34 = mau_6_io_pipe_phv_out_data_34; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_35 = mau_6_io_pipe_phv_out_data_35; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_36 = mau_6_io_pipe_phv_out_data_36; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_37 = mau_6_io_pipe_phv_out_data_37; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_38 = mau_6_io_pipe_phv_out_data_38; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_39 = mau_6_io_pipe_phv_out_data_39; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_40 = mau_6_io_pipe_phv_out_data_40; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_41 = mau_6_io_pipe_phv_out_data_41; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_42 = mau_6_io_pipe_phv_out_data_42; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_43 = mau_6_io_pipe_phv_out_data_43; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_44 = mau_6_io_pipe_phv_out_data_44; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_45 = mau_6_io_pipe_phv_out_data_45; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_46 = mau_6_io_pipe_phv_out_data_46; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_47 = mau_6_io_pipe_phv_out_data_47; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_48 = mau_6_io_pipe_phv_out_data_48; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_49 = mau_6_io_pipe_phv_out_data_49; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_50 = mau_6_io_pipe_phv_out_data_50; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_51 = mau_6_io_pipe_phv_out_data_51; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_52 = mau_6_io_pipe_phv_out_data_52; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_53 = mau_6_io_pipe_phv_out_data_53; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_54 = mau_6_io_pipe_phv_out_data_54; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_55 = mau_6_io_pipe_phv_out_data_55; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_56 = mau_6_io_pipe_phv_out_data_56; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_57 = mau_6_io_pipe_phv_out_data_57; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_58 = mau_6_io_pipe_phv_out_data_58; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_59 = mau_6_io_pipe_phv_out_data_59; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_60 = mau_6_io_pipe_phv_out_data_60; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_61 = mau_6_io_pipe_phv_out_data_61; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_62 = mau_6_io_pipe_phv_out_data_62; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_63 = mau_6_io_pipe_phv_out_data_63; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_64 = mau_6_io_pipe_phv_out_data_64; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_65 = mau_6_io_pipe_phv_out_data_65; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_66 = mau_6_io_pipe_phv_out_data_66; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_67 = mau_6_io_pipe_phv_out_data_67; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_68 = mau_6_io_pipe_phv_out_data_68; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_69 = mau_6_io_pipe_phv_out_data_69; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_70 = mau_6_io_pipe_phv_out_data_70; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_71 = mau_6_io_pipe_phv_out_data_71; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_72 = mau_6_io_pipe_phv_out_data_72; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_73 = mau_6_io_pipe_phv_out_data_73; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_74 = mau_6_io_pipe_phv_out_data_74; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_75 = mau_6_io_pipe_phv_out_data_75; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_76 = mau_6_io_pipe_phv_out_data_76; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_77 = mau_6_io_pipe_phv_out_data_77; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_78 = mau_6_io_pipe_phv_out_data_78; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_79 = mau_6_io_pipe_phv_out_data_79; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_80 = mau_6_io_pipe_phv_out_data_80; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_81 = mau_6_io_pipe_phv_out_data_81; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_82 = mau_6_io_pipe_phv_out_data_82; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_83 = mau_6_io_pipe_phv_out_data_83; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_84 = mau_6_io_pipe_phv_out_data_84; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_85 = mau_6_io_pipe_phv_out_data_85; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_86 = mau_6_io_pipe_phv_out_data_86; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_87 = mau_6_io_pipe_phv_out_data_87; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_88 = mau_6_io_pipe_phv_out_data_88; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_89 = mau_6_io_pipe_phv_out_data_89; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_90 = mau_6_io_pipe_phv_out_data_90; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_91 = mau_6_io_pipe_phv_out_data_91; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_92 = mau_6_io_pipe_phv_out_data_92; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_93 = mau_6_io_pipe_phv_out_data_93; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_94 = mau_6_io_pipe_phv_out_data_94; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_data_95 = mau_6_io_pipe_phv_out_data_95; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_header_0 = mau_6_io_pipe_phv_out_header_0; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_header_1 = mau_6_io_pipe_phv_out_header_1; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_header_2 = mau_6_io_pipe_phv_out_header_2; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_header_3 = mau_6_io_pipe_phv_out_header_3; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_header_4 = mau_6_io_pipe_phv_out_header_4; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_header_5 = mau_6_io_pipe_phv_out_header_5; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_header_6 = mau_6_io_pipe_phv_out_header_6; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_header_7 = mau_6_io_pipe_phv_out_header_7; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_header_8 = mau_6_io_pipe_phv_out_header_8; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_header_9 = mau_6_io_pipe_phv_out_header_9; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_header_10 = mau_6_io_pipe_phv_out_header_10; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_header_11 = mau_6_io_pipe_phv_out_header_11; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_header_12 = mau_6_io_pipe_phv_out_header_12; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_header_13 = mau_6_io_pipe_phv_out_header_13; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_header_14 = mau_6_io_pipe_phv_out_header_14; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_header_15 = mau_6_io_pipe_phv_out_header_15; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_parse_current_state = mau_6_io_pipe_phv_out_parse_current_state; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_parse_current_offset = mau_6_io_pipe_phv_out_parse_current_offset; // @[parser.scala 31:35]
  assign mau_7_io_pipe_phv_in_parse_transition_field = mau_6_io_pipe_phv_out_parse_transition_field; // @[parser.scala 31:35]
  assign mau_7_io_mod_state_id_mod = io_mod_en ? io_mod_module_mod_state_id_mod & mod_j_7 :
    io_mod_module_mod_state_id_mod; // @[parser.scala 41:22 parser.scala 48:40 parser.scala 37:23]
  assign mau_7_io_mod_state_id = io_mod_module_mod_state_id; // @[parser.scala 37:23]
  assign mau_7_io_mod_sram_w_en = io_mod_en ? io_mod_module_mod_sram_w_en & mod_j_7 : io_mod_module_mod_sram_w_en; // @[parser.scala 41:22 parser.scala 47:40 parser.scala 37:23]
  assign mau_7_io_mod_sram_w_addr = io_mod_module_mod_sram_w_addr; // @[parser.scala 37:23]
  assign mau_7_io_mod_sram_w_data = io_mod_module_mod_sram_w_data; // @[parser.scala 37:23]
  always @(posedge clock) begin
    if (io_mod_en) begin // @[parser.scala 41:22]
      if (io_mod_last_mau_id_mod) begin // @[parser.scala 42:39]
        last_mau_id <= io_mod_last_mau_id; // @[parser.scala 43:25]
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
  last_mau_id = _RAND_0[2:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
