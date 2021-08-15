module ParseModule(
  input         clock,
  input         reset,
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
  input         io_mod_state_id_mod,
  input  [7:0]  io_mod_state_id,
  input         io_mod_sram_w_cs,
  input         io_mod_sram_w_en,
  input  [7:0]  io_mod_sram_w_addr,
  input  [63:0] io_mod_sram_w_data
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  pipe1_clock; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_0; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_1; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_2; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_3; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_4; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_5; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_6; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_7; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_8; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_9; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_10; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_11; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_12; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_13; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_14; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_15; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_16; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_17; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_18; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_19; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_20; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_21; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_22; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_23; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_24; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_25; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_26; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_27; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_28; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_29; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_30; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_31; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_32; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_33; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_34; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_35; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_36; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_37; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_38; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_39; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_40; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_41; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_42; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_43; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_44; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_45; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_46; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_47; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_48; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_49; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_50; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_51; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_52; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_53; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_54; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_55; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_56; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_57; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_58; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_59; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_60; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_61; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_62; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_63; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_64; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_65; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_66; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_67; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_68; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_69; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_70; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_71; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_72; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_73; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_74; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_75; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_76; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_77; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_78; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_79; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_80; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_81; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_82; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_83; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_84; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_85; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_86; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_87; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_88; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_89; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_90; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_91; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_92; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_93; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_94; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_data_95; // @[parse_module.scala 96:23]
  wire [15:0] pipe1_io_pipe_phv_in_header_0; // @[parse_module.scala 96:23]
  wire [15:0] pipe1_io_pipe_phv_in_header_1; // @[parse_module.scala 96:23]
  wire [15:0] pipe1_io_pipe_phv_in_header_2; // @[parse_module.scala 96:23]
  wire [15:0] pipe1_io_pipe_phv_in_header_3; // @[parse_module.scala 96:23]
  wire [15:0] pipe1_io_pipe_phv_in_header_4; // @[parse_module.scala 96:23]
  wire [15:0] pipe1_io_pipe_phv_in_header_5; // @[parse_module.scala 96:23]
  wire [15:0] pipe1_io_pipe_phv_in_header_6; // @[parse_module.scala 96:23]
  wire [15:0] pipe1_io_pipe_phv_in_header_7; // @[parse_module.scala 96:23]
  wire [15:0] pipe1_io_pipe_phv_in_header_8; // @[parse_module.scala 96:23]
  wire [15:0] pipe1_io_pipe_phv_in_header_9; // @[parse_module.scala 96:23]
  wire [15:0] pipe1_io_pipe_phv_in_header_10; // @[parse_module.scala 96:23]
  wire [15:0] pipe1_io_pipe_phv_in_header_11; // @[parse_module.scala 96:23]
  wire [15:0] pipe1_io_pipe_phv_in_header_12; // @[parse_module.scala 96:23]
  wire [15:0] pipe1_io_pipe_phv_in_header_13; // @[parse_module.scala 96:23]
  wire [15:0] pipe1_io_pipe_phv_in_header_14; // @[parse_module.scala 96:23]
  wire [15:0] pipe1_io_pipe_phv_in_header_15; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_parse_current_state; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_in_parse_current_offset; // @[parse_module.scala 96:23]
  wire [15:0] pipe1_io_pipe_phv_in_parse_transition_field; // @[parse_module.scala 96:23]
  wire [1:0] pipe1_io_pipe_phv_in_next_processor_id; // @[parse_module.scala 96:23]
  wire  pipe1_io_pipe_phv_in_next_config_id; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_0; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_1; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_2; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_3; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_4; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_5; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_6; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_7; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_8; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_9; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_10; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_11; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_12; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_13; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_14; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_15; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_16; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_17; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_18; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_19; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_20; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_21; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_22; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_23; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_24; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_25; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_26; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_27; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_28; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_29; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_30; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_31; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_32; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_33; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_34; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_35; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_36; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_37; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_38; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_39; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_40; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_41; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_42; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_43; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_44; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_45; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_46; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_47; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_48; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_49; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_50; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_51; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_52; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_53; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_54; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_55; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_56; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_57; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_58; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_59; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_60; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_61; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_62; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_63; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_64; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_65; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_66; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_67; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_68; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_69; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_70; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_71; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_72; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_73; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_74; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_75; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_76; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_77; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_78; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_79; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_80; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_81; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_82; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_83; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_84; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_85; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_86; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_87; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_88; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_89; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_90; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_91; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_92; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_93; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_94; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_data_95; // @[parse_module.scala 96:23]
  wire [15:0] pipe1_io_pipe_phv_out_header_0; // @[parse_module.scala 96:23]
  wire [15:0] pipe1_io_pipe_phv_out_header_1; // @[parse_module.scala 96:23]
  wire [15:0] pipe1_io_pipe_phv_out_header_2; // @[parse_module.scala 96:23]
  wire [15:0] pipe1_io_pipe_phv_out_header_3; // @[parse_module.scala 96:23]
  wire [15:0] pipe1_io_pipe_phv_out_header_4; // @[parse_module.scala 96:23]
  wire [15:0] pipe1_io_pipe_phv_out_header_5; // @[parse_module.scala 96:23]
  wire [15:0] pipe1_io_pipe_phv_out_header_6; // @[parse_module.scala 96:23]
  wire [15:0] pipe1_io_pipe_phv_out_header_7; // @[parse_module.scala 96:23]
  wire [15:0] pipe1_io_pipe_phv_out_header_8; // @[parse_module.scala 96:23]
  wire [15:0] pipe1_io_pipe_phv_out_header_9; // @[parse_module.scala 96:23]
  wire [15:0] pipe1_io_pipe_phv_out_header_10; // @[parse_module.scala 96:23]
  wire [15:0] pipe1_io_pipe_phv_out_header_11; // @[parse_module.scala 96:23]
  wire [15:0] pipe1_io_pipe_phv_out_header_12; // @[parse_module.scala 96:23]
  wire [15:0] pipe1_io_pipe_phv_out_header_13; // @[parse_module.scala 96:23]
  wire [15:0] pipe1_io_pipe_phv_out_header_14; // @[parse_module.scala 96:23]
  wire [15:0] pipe1_io_pipe_phv_out_header_15; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_parse_current_state; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_pipe_phv_out_parse_current_offset; // @[parse_module.scala 96:23]
  wire [15:0] pipe1_io_pipe_phv_out_parse_transition_field; // @[parse_module.scala 96:23]
  wire [1:0] pipe1_io_pipe_phv_out_next_processor_id; // @[parse_module.scala 96:23]
  wire  pipe1_io_pipe_phv_out_next_config_id; // @[parse_module.scala 96:23]
  wire  pipe1_io_sram_w_cs; // @[parse_module.scala 96:23]
  wire [7:0] pipe1_io_sram_w_addr; // @[parse_module.scala 96:23]
  wire [63:0] pipe1_io_sram_w_data; // @[parse_module.scala 96:23]
  wire  pipe1_io_valid; // @[parse_module.scala 96:23]
  wire [63:0] pipe1_io_rdata; // @[parse_module.scala 96:23]
  wire  pipe2_clock; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_0; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_1; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_2; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_3; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_4; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_5; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_6; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_7; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_8; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_9; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_10; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_11; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_12; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_13; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_14; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_15; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_16; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_17; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_18; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_19; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_20; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_21; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_22; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_23; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_24; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_25; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_26; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_27; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_28; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_29; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_30; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_31; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_32; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_33; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_34; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_35; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_36; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_37; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_38; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_39; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_40; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_41; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_42; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_43; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_44; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_45; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_46; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_47; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_48; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_49; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_50; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_51; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_52; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_53; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_54; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_55; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_56; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_57; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_58; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_59; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_60; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_61; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_62; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_63; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_64; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_65; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_66; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_67; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_68; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_69; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_70; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_71; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_72; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_73; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_74; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_75; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_76; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_77; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_78; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_79; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_80; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_81; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_82; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_83; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_84; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_85; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_86; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_87; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_88; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_89; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_90; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_91; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_92; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_93; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_94; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_data_95; // @[parse_module.scala 97:23]
  wire [15:0] pipe2_io_pipe_phv_in_header_0; // @[parse_module.scala 97:23]
  wire [15:0] pipe2_io_pipe_phv_in_header_1; // @[parse_module.scala 97:23]
  wire [15:0] pipe2_io_pipe_phv_in_header_2; // @[parse_module.scala 97:23]
  wire [15:0] pipe2_io_pipe_phv_in_header_3; // @[parse_module.scala 97:23]
  wire [15:0] pipe2_io_pipe_phv_in_header_4; // @[parse_module.scala 97:23]
  wire [15:0] pipe2_io_pipe_phv_in_header_5; // @[parse_module.scala 97:23]
  wire [15:0] pipe2_io_pipe_phv_in_header_6; // @[parse_module.scala 97:23]
  wire [15:0] pipe2_io_pipe_phv_in_header_7; // @[parse_module.scala 97:23]
  wire [15:0] pipe2_io_pipe_phv_in_header_8; // @[parse_module.scala 97:23]
  wire [15:0] pipe2_io_pipe_phv_in_header_9; // @[parse_module.scala 97:23]
  wire [15:0] pipe2_io_pipe_phv_in_header_10; // @[parse_module.scala 97:23]
  wire [15:0] pipe2_io_pipe_phv_in_header_11; // @[parse_module.scala 97:23]
  wire [15:0] pipe2_io_pipe_phv_in_header_12; // @[parse_module.scala 97:23]
  wire [15:0] pipe2_io_pipe_phv_in_header_13; // @[parse_module.scala 97:23]
  wire [15:0] pipe2_io_pipe_phv_in_header_14; // @[parse_module.scala 97:23]
  wire [15:0] pipe2_io_pipe_phv_in_header_15; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_parse_current_state; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_in_parse_current_offset; // @[parse_module.scala 97:23]
  wire [15:0] pipe2_io_pipe_phv_in_parse_transition_field; // @[parse_module.scala 97:23]
  wire [1:0] pipe2_io_pipe_phv_in_next_processor_id; // @[parse_module.scala 97:23]
  wire  pipe2_io_pipe_phv_in_next_config_id; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_0; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_1; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_2; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_3; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_4; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_5; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_6; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_7; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_8; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_9; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_10; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_11; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_12; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_13; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_14; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_15; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_16; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_17; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_18; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_19; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_20; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_21; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_22; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_23; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_24; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_25; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_26; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_27; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_28; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_29; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_30; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_31; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_32; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_33; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_34; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_35; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_36; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_37; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_38; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_39; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_40; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_41; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_42; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_43; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_44; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_45; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_46; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_47; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_48; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_49; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_50; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_51; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_52; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_53; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_54; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_55; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_56; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_57; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_58; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_59; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_60; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_61; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_62; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_63; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_64; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_65; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_66; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_67; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_68; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_69; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_70; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_71; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_72; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_73; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_74; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_75; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_76; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_77; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_78; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_79; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_80; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_81; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_82; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_83; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_84; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_85; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_86; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_87; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_88; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_89; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_90; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_91; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_92; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_93; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_94; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_data_95; // @[parse_module.scala 97:23]
  wire [15:0] pipe2_io_pipe_phv_out_header_0; // @[parse_module.scala 97:23]
  wire [15:0] pipe2_io_pipe_phv_out_header_1; // @[parse_module.scala 97:23]
  wire [15:0] pipe2_io_pipe_phv_out_header_2; // @[parse_module.scala 97:23]
  wire [15:0] pipe2_io_pipe_phv_out_header_3; // @[parse_module.scala 97:23]
  wire [15:0] pipe2_io_pipe_phv_out_header_4; // @[parse_module.scala 97:23]
  wire [15:0] pipe2_io_pipe_phv_out_header_5; // @[parse_module.scala 97:23]
  wire [15:0] pipe2_io_pipe_phv_out_header_6; // @[parse_module.scala 97:23]
  wire [15:0] pipe2_io_pipe_phv_out_header_7; // @[parse_module.scala 97:23]
  wire [15:0] pipe2_io_pipe_phv_out_header_8; // @[parse_module.scala 97:23]
  wire [15:0] pipe2_io_pipe_phv_out_header_9; // @[parse_module.scala 97:23]
  wire [15:0] pipe2_io_pipe_phv_out_header_10; // @[parse_module.scala 97:23]
  wire [15:0] pipe2_io_pipe_phv_out_header_11; // @[parse_module.scala 97:23]
  wire [15:0] pipe2_io_pipe_phv_out_header_12; // @[parse_module.scala 97:23]
  wire [15:0] pipe2_io_pipe_phv_out_header_13; // @[parse_module.scala 97:23]
  wire [15:0] pipe2_io_pipe_phv_out_header_14; // @[parse_module.scala 97:23]
  wire [15:0] pipe2_io_pipe_phv_out_header_15; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_parse_current_state; // @[parse_module.scala 97:23]
  wire [7:0] pipe2_io_pipe_phv_out_parse_current_offset; // @[parse_module.scala 97:23]
  wire [15:0] pipe2_io_pipe_phv_out_parse_transition_field; // @[parse_module.scala 97:23]
  wire [1:0] pipe2_io_pipe_phv_out_next_processor_id; // @[parse_module.scala 97:23]
  wire  pipe2_io_pipe_phv_out_next_config_id; // @[parse_module.scala 97:23]
  wire [63:0] pipe2_io_rdata; // @[parse_module.scala 97:23]
  wire  pipe2_io_valid; // @[parse_module.scala 97:23]
  reg [7:0] state_id; // @[parse_module.scala 91:23]
  ParseMatcher pipe1 ( // @[parse_module.scala 96:23]
    .clock(pipe1_clock),
    .io_pipe_phv_in_data_0(pipe1_io_pipe_phv_in_data_0),
    .io_pipe_phv_in_data_1(pipe1_io_pipe_phv_in_data_1),
    .io_pipe_phv_in_data_2(pipe1_io_pipe_phv_in_data_2),
    .io_pipe_phv_in_data_3(pipe1_io_pipe_phv_in_data_3),
    .io_pipe_phv_in_data_4(pipe1_io_pipe_phv_in_data_4),
    .io_pipe_phv_in_data_5(pipe1_io_pipe_phv_in_data_5),
    .io_pipe_phv_in_data_6(pipe1_io_pipe_phv_in_data_6),
    .io_pipe_phv_in_data_7(pipe1_io_pipe_phv_in_data_7),
    .io_pipe_phv_in_data_8(pipe1_io_pipe_phv_in_data_8),
    .io_pipe_phv_in_data_9(pipe1_io_pipe_phv_in_data_9),
    .io_pipe_phv_in_data_10(pipe1_io_pipe_phv_in_data_10),
    .io_pipe_phv_in_data_11(pipe1_io_pipe_phv_in_data_11),
    .io_pipe_phv_in_data_12(pipe1_io_pipe_phv_in_data_12),
    .io_pipe_phv_in_data_13(pipe1_io_pipe_phv_in_data_13),
    .io_pipe_phv_in_data_14(pipe1_io_pipe_phv_in_data_14),
    .io_pipe_phv_in_data_15(pipe1_io_pipe_phv_in_data_15),
    .io_pipe_phv_in_data_16(pipe1_io_pipe_phv_in_data_16),
    .io_pipe_phv_in_data_17(pipe1_io_pipe_phv_in_data_17),
    .io_pipe_phv_in_data_18(pipe1_io_pipe_phv_in_data_18),
    .io_pipe_phv_in_data_19(pipe1_io_pipe_phv_in_data_19),
    .io_pipe_phv_in_data_20(pipe1_io_pipe_phv_in_data_20),
    .io_pipe_phv_in_data_21(pipe1_io_pipe_phv_in_data_21),
    .io_pipe_phv_in_data_22(pipe1_io_pipe_phv_in_data_22),
    .io_pipe_phv_in_data_23(pipe1_io_pipe_phv_in_data_23),
    .io_pipe_phv_in_data_24(pipe1_io_pipe_phv_in_data_24),
    .io_pipe_phv_in_data_25(pipe1_io_pipe_phv_in_data_25),
    .io_pipe_phv_in_data_26(pipe1_io_pipe_phv_in_data_26),
    .io_pipe_phv_in_data_27(pipe1_io_pipe_phv_in_data_27),
    .io_pipe_phv_in_data_28(pipe1_io_pipe_phv_in_data_28),
    .io_pipe_phv_in_data_29(pipe1_io_pipe_phv_in_data_29),
    .io_pipe_phv_in_data_30(pipe1_io_pipe_phv_in_data_30),
    .io_pipe_phv_in_data_31(pipe1_io_pipe_phv_in_data_31),
    .io_pipe_phv_in_data_32(pipe1_io_pipe_phv_in_data_32),
    .io_pipe_phv_in_data_33(pipe1_io_pipe_phv_in_data_33),
    .io_pipe_phv_in_data_34(pipe1_io_pipe_phv_in_data_34),
    .io_pipe_phv_in_data_35(pipe1_io_pipe_phv_in_data_35),
    .io_pipe_phv_in_data_36(pipe1_io_pipe_phv_in_data_36),
    .io_pipe_phv_in_data_37(pipe1_io_pipe_phv_in_data_37),
    .io_pipe_phv_in_data_38(pipe1_io_pipe_phv_in_data_38),
    .io_pipe_phv_in_data_39(pipe1_io_pipe_phv_in_data_39),
    .io_pipe_phv_in_data_40(pipe1_io_pipe_phv_in_data_40),
    .io_pipe_phv_in_data_41(pipe1_io_pipe_phv_in_data_41),
    .io_pipe_phv_in_data_42(pipe1_io_pipe_phv_in_data_42),
    .io_pipe_phv_in_data_43(pipe1_io_pipe_phv_in_data_43),
    .io_pipe_phv_in_data_44(pipe1_io_pipe_phv_in_data_44),
    .io_pipe_phv_in_data_45(pipe1_io_pipe_phv_in_data_45),
    .io_pipe_phv_in_data_46(pipe1_io_pipe_phv_in_data_46),
    .io_pipe_phv_in_data_47(pipe1_io_pipe_phv_in_data_47),
    .io_pipe_phv_in_data_48(pipe1_io_pipe_phv_in_data_48),
    .io_pipe_phv_in_data_49(pipe1_io_pipe_phv_in_data_49),
    .io_pipe_phv_in_data_50(pipe1_io_pipe_phv_in_data_50),
    .io_pipe_phv_in_data_51(pipe1_io_pipe_phv_in_data_51),
    .io_pipe_phv_in_data_52(pipe1_io_pipe_phv_in_data_52),
    .io_pipe_phv_in_data_53(pipe1_io_pipe_phv_in_data_53),
    .io_pipe_phv_in_data_54(pipe1_io_pipe_phv_in_data_54),
    .io_pipe_phv_in_data_55(pipe1_io_pipe_phv_in_data_55),
    .io_pipe_phv_in_data_56(pipe1_io_pipe_phv_in_data_56),
    .io_pipe_phv_in_data_57(pipe1_io_pipe_phv_in_data_57),
    .io_pipe_phv_in_data_58(pipe1_io_pipe_phv_in_data_58),
    .io_pipe_phv_in_data_59(pipe1_io_pipe_phv_in_data_59),
    .io_pipe_phv_in_data_60(pipe1_io_pipe_phv_in_data_60),
    .io_pipe_phv_in_data_61(pipe1_io_pipe_phv_in_data_61),
    .io_pipe_phv_in_data_62(pipe1_io_pipe_phv_in_data_62),
    .io_pipe_phv_in_data_63(pipe1_io_pipe_phv_in_data_63),
    .io_pipe_phv_in_data_64(pipe1_io_pipe_phv_in_data_64),
    .io_pipe_phv_in_data_65(pipe1_io_pipe_phv_in_data_65),
    .io_pipe_phv_in_data_66(pipe1_io_pipe_phv_in_data_66),
    .io_pipe_phv_in_data_67(pipe1_io_pipe_phv_in_data_67),
    .io_pipe_phv_in_data_68(pipe1_io_pipe_phv_in_data_68),
    .io_pipe_phv_in_data_69(pipe1_io_pipe_phv_in_data_69),
    .io_pipe_phv_in_data_70(pipe1_io_pipe_phv_in_data_70),
    .io_pipe_phv_in_data_71(pipe1_io_pipe_phv_in_data_71),
    .io_pipe_phv_in_data_72(pipe1_io_pipe_phv_in_data_72),
    .io_pipe_phv_in_data_73(pipe1_io_pipe_phv_in_data_73),
    .io_pipe_phv_in_data_74(pipe1_io_pipe_phv_in_data_74),
    .io_pipe_phv_in_data_75(pipe1_io_pipe_phv_in_data_75),
    .io_pipe_phv_in_data_76(pipe1_io_pipe_phv_in_data_76),
    .io_pipe_phv_in_data_77(pipe1_io_pipe_phv_in_data_77),
    .io_pipe_phv_in_data_78(pipe1_io_pipe_phv_in_data_78),
    .io_pipe_phv_in_data_79(pipe1_io_pipe_phv_in_data_79),
    .io_pipe_phv_in_data_80(pipe1_io_pipe_phv_in_data_80),
    .io_pipe_phv_in_data_81(pipe1_io_pipe_phv_in_data_81),
    .io_pipe_phv_in_data_82(pipe1_io_pipe_phv_in_data_82),
    .io_pipe_phv_in_data_83(pipe1_io_pipe_phv_in_data_83),
    .io_pipe_phv_in_data_84(pipe1_io_pipe_phv_in_data_84),
    .io_pipe_phv_in_data_85(pipe1_io_pipe_phv_in_data_85),
    .io_pipe_phv_in_data_86(pipe1_io_pipe_phv_in_data_86),
    .io_pipe_phv_in_data_87(pipe1_io_pipe_phv_in_data_87),
    .io_pipe_phv_in_data_88(pipe1_io_pipe_phv_in_data_88),
    .io_pipe_phv_in_data_89(pipe1_io_pipe_phv_in_data_89),
    .io_pipe_phv_in_data_90(pipe1_io_pipe_phv_in_data_90),
    .io_pipe_phv_in_data_91(pipe1_io_pipe_phv_in_data_91),
    .io_pipe_phv_in_data_92(pipe1_io_pipe_phv_in_data_92),
    .io_pipe_phv_in_data_93(pipe1_io_pipe_phv_in_data_93),
    .io_pipe_phv_in_data_94(pipe1_io_pipe_phv_in_data_94),
    .io_pipe_phv_in_data_95(pipe1_io_pipe_phv_in_data_95),
    .io_pipe_phv_in_header_0(pipe1_io_pipe_phv_in_header_0),
    .io_pipe_phv_in_header_1(pipe1_io_pipe_phv_in_header_1),
    .io_pipe_phv_in_header_2(pipe1_io_pipe_phv_in_header_2),
    .io_pipe_phv_in_header_3(pipe1_io_pipe_phv_in_header_3),
    .io_pipe_phv_in_header_4(pipe1_io_pipe_phv_in_header_4),
    .io_pipe_phv_in_header_5(pipe1_io_pipe_phv_in_header_5),
    .io_pipe_phv_in_header_6(pipe1_io_pipe_phv_in_header_6),
    .io_pipe_phv_in_header_7(pipe1_io_pipe_phv_in_header_7),
    .io_pipe_phv_in_header_8(pipe1_io_pipe_phv_in_header_8),
    .io_pipe_phv_in_header_9(pipe1_io_pipe_phv_in_header_9),
    .io_pipe_phv_in_header_10(pipe1_io_pipe_phv_in_header_10),
    .io_pipe_phv_in_header_11(pipe1_io_pipe_phv_in_header_11),
    .io_pipe_phv_in_header_12(pipe1_io_pipe_phv_in_header_12),
    .io_pipe_phv_in_header_13(pipe1_io_pipe_phv_in_header_13),
    .io_pipe_phv_in_header_14(pipe1_io_pipe_phv_in_header_14),
    .io_pipe_phv_in_header_15(pipe1_io_pipe_phv_in_header_15),
    .io_pipe_phv_in_parse_current_state(pipe1_io_pipe_phv_in_parse_current_state),
    .io_pipe_phv_in_parse_current_offset(pipe1_io_pipe_phv_in_parse_current_offset),
    .io_pipe_phv_in_parse_transition_field(pipe1_io_pipe_phv_in_parse_transition_field),
    .io_pipe_phv_in_next_processor_id(pipe1_io_pipe_phv_in_next_processor_id),
    .io_pipe_phv_in_next_config_id(pipe1_io_pipe_phv_in_next_config_id),
    .io_pipe_phv_out_data_0(pipe1_io_pipe_phv_out_data_0),
    .io_pipe_phv_out_data_1(pipe1_io_pipe_phv_out_data_1),
    .io_pipe_phv_out_data_2(pipe1_io_pipe_phv_out_data_2),
    .io_pipe_phv_out_data_3(pipe1_io_pipe_phv_out_data_3),
    .io_pipe_phv_out_data_4(pipe1_io_pipe_phv_out_data_4),
    .io_pipe_phv_out_data_5(pipe1_io_pipe_phv_out_data_5),
    .io_pipe_phv_out_data_6(pipe1_io_pipe_phv_out_data_6),
    .io_pipe_phv_out_data_7(pipe1_io_pipe_phv_out_data_7),
    .io_pipe_phv_out_data_8(pipe1_io_pipe_phv_out_data_8),
    .io_pipe_phv_out_data_9(pipe1_io_pipe_phv_out_data_9),
    .io_pipe_phv_out_data_10(pipe1_io_pipe_phv_out_data_10),
    .io_pipe_phv_out_data_11(pipe1_io_pipe_phv_out_data_11),
    .io_pipe_phv_out_data_12(pipe1_io_pipe_phv_out_data_12),
    .io_pipe_phv_out_data_13(pipe1_io_pipe_phv_out_data_13),
    .io_pipe_phv_out_data_14(pipe1_io_pipe_phv_out_data_14),
    .io_pipe_phv_out_data_15(pipe1_io_pipe_phv_out_data_15),
    .io_pipe_phv_out_data_16(pipe1_io_pipe_phv_out_data_16),
    .io_pipe_phv_out_data_17(pipe1_io_pipe_phv_out_data_17),
    .io_pipe_phv_out_data_18(pipe1_io_pipe_phv_out_data_18),
    .io_pipe_phv_out_data_19(pipe1_io_pipe_phv_out_data_19),
    .io_pipe_phv_out_data_20(pipe1_io_pipe_phv_out_data_20),
    .io_pipe_phv_out_data_21(pipe1_io_pipe_phv_out_data_21),
    .io_pipe_phv_out_data_22(pipe1_io_pipe_phv_out_data_22),
    .io_pipe_phv_out_data_23(pipe1_io_pipe_phv_out_data_23),
    .io_pipe_phv_out_data_24(pipe1_io_pipe_phv_out_data_24),
    .io_pipe_phv_out_data_25(pipe1_io_pipe_phv_out_data_25),
    .io_pipe_phv_out_data_26(pipe1_io_pipe_phv_out_data_26),
    .io_pipe_phv_out_data_27(pipe1_io_pipe_phv_out_data_27),
    .io_pipe_phv_out_data_28(pipe1_io_pipe_phv_out_data_28),
    .io_pipe_phv_out_data_29(pipe1_io_pipe_phv_out_data_29),
    .io_pipe_phv_out_data_30(pipe1_io_pipe_phv_out_data_30),
    .io_pipe_phv_out_data_31(pipe1_io_pipe_phv_out_data_31),
    .io_pipe_phv_out_data_32(pipe1_io_pipe_phv_out_data_32),
    .io_pipe_phv_out_data_33(pipe1_io_pipe_phv_out_data_33),
    .io_pipe_phv_out_data_34(pipe1_io_pipe_phv_out_data_34),
    .io_pipe_phv_out_data_35(pipe1_io_pipe_phv_out_data_35),
    .io_pipe_phv_out_data_36(pipe1_io_pipe_phv_out_data_36),
    .io_pipe_phv_out_data_37(pipe1_io_pipe_phv_out_data_37),
    .io_pipe_phv_out_data_38(pipe1_io_pipe_phv_out_data_38),
    .io_pipe_phv_out_data_39(pipe1_io_pipe_phv_out_data_39),
    .io_pipe_phv_out_data_40(pipe1_io_pipe_phv_out_data_40),
    .io_pipe_phv_out_data_41(pipe1_io_pipe_phv_out_data_41),
    .io_pipe_phv_out_data_42(pipe1_io_pipe_phv_out_data_42),
    .io_pipe_phv_out_data_43(pipe1_io_pipe_phv_out_data_43),
    .io_pipe_phv_out_data_44(pipe1_io_pipe_phv_out_data_44),
    .io_pipe_phv_out_data_45(pipe1_io_pipe_phv_out_data_45),
    .io_pipe_phv_out_data_46(pipe1_io_pipe_phv_out_data_46),
    .io_pipe_phv_out_data_47(pipe1_io_pipe_phv_out_data_47),
    .io_pipe_phv_out_data_48(pipe1_io_pipe_phv_out_data_48),
    .io_pipe_phv_out_data_49(pipe1_io_pipe_phv_out_data_49),
    .io_pipe_phv_out_data_50(pipe1_io_pipe_phv_out_data_50),
    .io_pipe_phv_out_data_51(pipe1_io_pipe_phv_out_data_51),
    .io_pipe_phv_out_data_52(pipe1_io_pipe_phv_out_data_52),
    .io_pipe_phv_out_data_53(pipe1_io_pipe_phv_out_data_53),
    .io_pipe_phv_out_data_54(pipe1_io_pipe_phv_out_data_54),
    .io_pipe_phv_out_data_55(pipe1_io_pipe_phv_out_data_55),
    .io_pipe_phv_out_data_56(pipe1_io_pipe_phv_out_data_56),
    .io_pipe_phv_out_data_57(pipe1_io_pipe_phv_out_data_57),
    .io_pipe_phv_out_data_58(pipe1_io_pipe_phv_out_data_58),
    .io_pipe_phv_out_data_59(pipe1_io_pipe_phv_out_data_59),
    .io_pipe_phv_out_data_60(pipe1_io_pipe_phv_out_data_60),
    .io_pipe_phv_out_data_61(pipe1_io_pipe_phv_out_data_61),
    .io_pipe_phv_out_data_62(pipe1_io_pipe_phv_out_data_62),
    .io_pipe_phv_out_data_63(pipe1_io_pipe_phv_out_data_63),
    .io_pipe_phv_out_data_64(pipe1_io_pipe_phv_out_data_64),
    .io_pipe_phv_out_data_65(pipe1_io_pipe_phv_out_data_65),
    .io_pipe_phv_out_data_66(pipe1_io_pipe_phv_out_data_66),
    .io_pipe_phv_out_data_67(pipe1_io_pipe_phv_out_data_67),
    .io_pipe_phv_out_data_68(pipe1_io_pipe_phv_out_data_68),
    .io_pipe_phv_out_data_69(pipe1_io_pipe_phv_out_data_69),
    .io_pipe_phv_out_data_70(pipe1_io_pipe_phv_out_data_70),
    .io_pipe_phv_out_data_71(pipe1_io_pipe_phv_out_data_71),
    .io_pipe_phv_out_data_72(pipe1_io_pipe_phv_out_data_72),
    .io_pipe_phv_out_data_73(pipe1_io_pipe_phv_out_data_73),
    .io_pipe_phv_out_data_74(pipe1_io_pipe_phv_out_data_74),
    .io_pipe_phv_out_data_75(pipe1_io_pipe_phv_out_data_75),
    .io_pipe_phv_out_data_76(pipe1_io_pipe_phv_out_data_76),
    .io_pipe_phv_out_data_77(pipe1_io_pipe_phv_out_data_77),
    .io_pipe_phv_out_data_78(pipe1_io_pipe_phv_out_data_78),
    .io_pipe_phv_out_data_79(pipe1_io_pipe_phv_out_data_79),
    .io_pipe_phv_out_data_80(pipe1_io_pipe_phv_out_data_80),
    .io_pipe_phv_out_data_81(pipe1_io_pipe_phv_out_data_81),
    .io_pipe_phv_out_data_82(pipe1_io_pipe_phv_out_data_82),
    .io_pipe_phv_out_data_83(pipe1_io_pipe_phv_out_data_83),
    .io_pipe_phv_out_data_84(pipe1_io_pipe_phv_out_data_84),
    .io_pipe_phv_out_data_85(pipe1_io_pipe_phv_out_data_85),
    .io_pipe_phv_out_data_86(pipe1_io_pipe_phv_out_data_86),
    .io_pipe_phv_out_data_87(pipe1_io_pipe_phv_out_data_87),
    .io_pipe_phv_out_data_88(pipe1_io_pipe_phv_out_data_88),
    .io_pipe_phv_out_data_89(pipe1_io_pipe_phv_out_data_89),
    .io_pipe_phv_out_data_90(pipe1_io_pipe_phv_out_data_90),
    .io_pipe_phv_out_data_91(pipe1_io_pipe_phv_out_data_91),
    .io_pipe_phv_out_data_92(pipe1_io_pipe_phv_out_data_92),
    .io_pipe_phv_out_data_93(pipe1_io_pipe_phv_out_data_93),
    .io_pipe_phv_out_data_94(pipe1_io_pipe_phv_out_data_94),
    .io_pipe_phv_out_data_95(pipe1_io_pipe_phv_out_data_95),
    .io_pipe_phv_out_header_0(pipe1_io_pipe_phv_out_header_0),
    .io_pipe_phv_out_header_1(pipe1_io_pipe_phv_out_header_1),
    .io_pipe_phv_out_header_2(pipe1_io_pipe_phv_out_header_2),
    .io_pipe_phv_out_header_3(pipe1_io_pipe_phv_out_header_3),
    .io_pipe_phv_out_header_4(pipe1_io_pipe_phv_out_header_4),
    .io_pipe_phv_out_header_5(pipe1_io_pipe_phv_out_header_5),
    .io_pipe_phv_out_header_6(pipe1_io_pipe_phv_out_header_6),
    .io_pipe_phv_out_header_7(pipe1_io_pipe_phv_out_header_7),
    .io_pipe_phv_out_header_8(pipe1_io_pipe_phv_out_header_8),
    .io_pipe_phv_out_header_9(pipe1_io_pipe_phv_out_header_9),
    .io_pipe_phv_out_header_10(pipe1_io_pipe_phv_out_header_10),
    .io_pipe_phv_out_header_11(pipe1_io_pipe_phv_out_header_11),
    .io_pipe_phv_out_header_12(pipe1_io_pipe_phv_out_header_12),
    .io_pipe_phv_out_header_13(pipe1_io_pipe_phv_out_header_13),
    .io_pipe_phv_out_header_14(pipe1_io_pipe_phv_out_header_14),
    .io_pipe_phv_out_header_15(pipe1_io_pipe_phv_out_header_15),
    .io_pipe_phv_out_parse_current_state(pipe1_io_pipe_phv_out_parse_current_state),
    .io_pipe_phv_out_parse_current_offset(pipe1_io_pipe_phv_out_parse_current_offset),
    .io_pipe_phv_out_parse_transition_field(pipe1_io_pipe_phv_out_parse_transition_field),
    .io_pipe_phv_out_next_processor_id(pipe1_io_pipe_phv_out_next_processor_id),
    .io_pipe_phv_out_next_config_id(pipe1_io_pipe_phv_out_next_config_id),
    .io_sram_w_cs(pipe1_io_sram_w_cs),
    .io_sram_w_addr(pipe1_io_sram_w_addr),
    .io_sram_w_data(pipe1_io_sram_w_data),
    .io_valid(pipe1_io_valid),
    .io_rdata(pipe1_io_rdata)
  );
  ParseAction pipe2 ( // @[parse_module.scala 97:23]
    .clock(pipe2_clock),
    .io_pipe_phv_in_data_0(pipe2_io_pipe_phv_in_data_0),
    .io_pipe_phv_in_data_1(pipe2_io_pipe_phv_in_data_1),
    .io_pipe_phv_in_data_2(pipe2_io_pipe_phv_in_data_2),
    .io_pipe_phv_in_data_3(pipe2_io_pipe_phv_in_data_3),
    .io_pipe_phv_in_data_4(pipe2_io_pipe_phv_in_data_4),
    .io_pipe_phv_in_data_5(pipe2_io_pipe_phv_in_data_5),
    .io_pipe_phv_in_data_6(pipe2_io_pipe_phv_in_data_6),
    .io_pipe_phv_in_data_7(pipe2_io_pipe_phv_in_data_7),
    .io_pipe_phv_in_data_8(pipe2_io_pipe_phv_in_data_8),
    .io_pipe_phv_in_data_9(pipe2_io_pipe_phv_in_data_9),
    .io_pipe_phv_in_data_10(pipe2_io_pipe_phv_in_data_10),
    .io_pipe_phv_in_data_11(pipe2_io_pipe_phv_in_data_11),
    .io_pipe_phv_in_data_12(pipe2_io_pipe_phv_in_data_12),
    .io_pipe_phv_in_data_13(pipe2_io_pipe_phv_in_data_13),
    .io_pipe_phv_in_data_14(pipe2_io_pipe_phv_in_data_14),
    .io_pipe_phv_in_data_15(pipe2_io_pipe_phv_in_data_15),
    .io_pipe_phv_in_data_16(pipe2_io_pipe_phv_in_data_16),
    .io_pipe_phv_in_data_17(pipe2_io_pipe_phv_in_data_17),
    .io_pipe_phv_in_data_18(pipe2_io_pipe_phv_in_data_18),
    .io_pipe_phv_in_data_19(pipe2_io_pipe_phv_in_data_19),
    .io_pipe_phv_in_data_20(pipe2_io_pipe_phv_in_data_20),
    .io_pipe_phv_in_data_21(pipe2_io_pipe_phv_in_data_21),
    .io_pipe_phv_in_data_22(pipe2_io_pipe_phv_in_data_22),
    .io_pipe_phv_in_data_23(pipe2_io_pipe_phv_in_data_23),
    .io_pipe_phv_in_data_24(pipe2_io_pipe_phv_in_data_24),
    .io_pipe_phv_in_data_25(pipe2_io_pipe_phv_in_data_25),
    .io_pipe_phv_in_data_26(pipe2_io_pipe_phv_in_data_26),
    .io_pipe_phv_in_data_27(pipe2_io_pipe_phv_in_data_27),
    .io_pipe_phv_in_data_28(pipe2_io_pipe_phv_in_data_28),
    .io_pipe_phv_in_data_29(pipe2_io_pipe_phv_in_data_29),
    .io_pipe_phv_in_data_30(pipe2_io_pipe_phv_in_data_30),
    .io_pipe_phv_in_data_31(pipe2_io_pipe_phv_in_data_31),
    .io_pipe_phv_in_data_32(pipe2_io_pipe_phv_in_data_32),
    .io_pipe_phv_in_data_33(pipe2_io_pipe_phv_in_data_33),
    .io_pipe_phv_in_data_34(pipe2_io_pipe_phv_in_data_34),
    .io_pipe_phv_in_data_35(pipe2_io_pipe_phv_in_data_35),
    .io_pipe_phv_in_data_36(pipe2_io_pipe_phv_in_data_36),
    .io_pipe_phv_in_data_37(pipe2_io_pipe_phv_in_data_37),
    .io_pipe_phv_in_data_38(pipe2_io_pipe_phv_in_data_38),
    .io_pipe_phv_in_data_39(pipe2_io_pipe_phv_in_data_39),
    .io_pipe_phv_in_data_40(pipe2_io_pipe_phv_in_data_40),
    .io_pipe_phv_in_data_41(pipe2_io_pipe_phv_in_data_41),
    .io_pipe_phv_in_data_42(pipe2_io_pipe_phv_in_data_42),
    .io_pipe_phv_in_data_43(pipe2_io_pipe_phv_in_data_43),
    .io_pipe_phv_in_data_44(pipe2_io_pipe_phv_in_data_44),
    .io_pipe_phv_in_data_45(pipe2_io_pipe_phv_in_data_45),
    .io_pipe_phv_in_data_46(pipe2_io_pipe_phv_in_data_46),
    .io_pipe_phv_in_data_47(pipe2_io_pipe_phv_in_data_47),
    .io_pipe_phv_in_data_48(pipe2_io_pipe_phv_in_data_48),
    .io_pipe_phv_in_data_49(pipe2_io_pipe_phv_in_data_49),
    .io_pipe_phv_in_data_50(pipe2_io_pipe_phv_in_data_50),
    .io_pipe_phv_in_data_51(pipe2_io_pipe_phv_in_data_51),
    .io_pipe_phv_in_data_52(pipe2_io_pipe_phv_in_data_52),
    .io_pipe_phv_in_data_53(pipe2_io_pipe_phv_in_data_53),
    .io_pipe_phv_in_data_54(pipe2_io_pipe_phv_in_data_54),
    .io_pipe_phv_in_data_55(pipe2_io_pipe_phv_in_data_55),
    .io_pipe_phv_in_data_56(pipe2_io_pipe_phv_in_data_56),
    .io_pipe_phv_in_data_57(pipe2_io_pipe_phv_in_data_57),
    .io_pipe_phv_in_data_58(pipe2_io_pipe_phv_in_data_58),
    .io_pipe_phv_in_data_59(pipe2_io_pipe_phv_in_data_59),
    .io_pipe_phv_in_data_60(pipe2_io_pipe_phv_in_data_60),
    .io_pipe_phv_in_data_61(pipe2_io_pipe_phv_in_data_61),
    .io_pipe_phv_in_data_62(pipe2_io_pipe_phv_in_data_62),
    .io_pipe_phv_in_data_63(pipe2_io_pipe_phv_in_data_63),
    .io_pipe_phv_in_data_64(pipe2_io_pipe_phv_in_data_64),
    .io_pipe_phv_in_data_65(pipe2_io_pipe_phv_in_data_65),
    .io_pipe_phv_in_data_66(pipe2_io_pipe_phv_in_data_66),
    .io_pipe_phv_in_data_67(pipe2_io_pipe_phv_in_data_67),
    .io_pipe_phv_in_data_68(pipe2_io_pipe_phv_in_data_68),
    .io_pipe_phv_in_data_69(pipe2_io_pipe_phv_in_data_69),
    .io_pipe_phv_in_data_70(pipe2_io_pipe_phv_in_data_70),
    .io_pipe_phv_in_data_71(pipe2_io_pipe_phv_in_data_71),
    .io_pipe_phv_in_data_72(pipe2_io_pipe_phv_in_data_72),
    .io_pipe_phv_in_data_73(pipe2_io_pipe_phv_in_data_73),
    .io_pipe_phv_in_data_74(pipe2_io_pipe_phv_in_data_74),
    .io_pipe_phv_in_data_75(pipe2_io_pipe_phv_in_data_75),
    .io_pipe_phv_in_data_76(pipe2_io_pipe_phv_in_data_76),
    .io_pipe_phv_in_data_77(pipe2_io_pipe_phv_in_data_77),
    .io_pipe_phv_in_data_78(pipe2_io_pipe_phv_in_data_78),
    .io_pipe_phv_in_data_79(pipe2_io_pipe_phv_in_data_79),
    .io_pipe_phv_in_data_80(pipe2_io_pipe_phv_in_data_80),
    .io_pipe_phv_in_data_81(pipe2_io_pipe_phv_in_data_81),
    .io_pipe_phv_in_data_82(pipe2_io_pipe_phv_in_data_82),
    .io_pipe_phv_in_data_83(pipe2_io_pipe_phv_in_data_83),
    .io_pipe_phv_in_data_84(pipe2_io_pipe_phv_in_data_84),
    .io_pipe_phv_in_data_85(pipe2_io_pipe_phv_in_data_85),
    .io_pipe_phv_in_data_86(pipe2_io_pipe_phv_in_data_86),
    .io_pipe_phv_in_data_87(pipe2_io_pipe_phv_in_data_87),
    .io_pipe_phv_in_data_88(pipe2_io_pipe_phv_in_data_88),
    .io_pipe_phv_in_data_89(pipe2_io_pipe_phv_in_data_89),
    .io_pipe_phv_in_data_90(pipe2_io_pipe_phv_in_data_90),
    .io_pipe_phv_in_data_91(pipe2_io_pipe_phv_in_data_91),
    .io_pipe_phv_in_data_92(pipe2_io_pipe_phv_in_data_92),
    .io_pipe_phv_in_data_93(pipe2_io_pipe_phv_in_data_93),
    .io_pipe_phv_in_data_94(pipe2_io_pipe_phv_in_data_94),
    .io_pipe_phv_in_data_95(pipe2_io_pipe_phv_in_data_95),
    .io_pipe_phv_in_header_0(pipe2_io_pipe_phv_in_header_0),
    .io_pipe_phv_in_header_1(pipe2_io_pipe_phv_in_header_1),
    .io_pipe_phv_in_header_2(pipe2_io_pipe_phv_in_header_2),
    .io_pipe_phv_in_header_3(pipe2_io_pipe_phv_in_header_3),
    .io_pipe_phv_in_header_4(pipe2_io_pipe_phv_in_header_4),
    .io_pipe_phv_in_header_5(pipe2_io_pipe_phv_in_header_5),
    .io_pipe_phv_in_header_6(pipe2_io_pipe_phv_in_header_6),
    .io_pipe_phv_in_header_7(pipe2_io_pipe_phv_in_header_7),
    .io_pipe_phv_in_header_8(pipe2_io_pipe_phv_in_header_8),
    .io_pipe_phv_in_header_9(pipe2_io_pipe_phv_in_header_9),
    .io_pipe_phv_in_header_10(pipe2_io_pipe_phv_in_header_10),
    .io_pipe_phv_in_header_11(pipe2_io_pipe_phv_in_header_11),
    .io_pipe_phv_in_header_12(pipe2_io_pipe_phv_in_header_12),
    .io_pipe_phv_in_header_13(pipe2_io_pipe_phv_in_header_13),
    .io_pipe_phv_in_header_14(pipe2_io_pipe_phv_in_header_14),
    .io_pipe_phv_in_header_15(pipe2_io_pipe_phv_in_header_15),
    .io_pipe_phv_in_parse_current_state(pipe2_io_pipe_phv_in_parse_current_state),
    .io_pipe_phv_in_parse_current_offset(pipe2_io_pipe_phv_in_parse_current_offset),
    .io_pipe_phv_in_parse_transition_field(pipe2_io_pipe_phv_in_parse_transition_field),
    .io_pipe_phv_in_next_processor_id(pipe2_io_pipe_phv_in_next_processor_id),
    .io_pipe_phv_in_next_config_id(pipe2_io_pipe_phv_in_next_config_id),
    .io_pipe_phv_out_data_0(pipe2_io_pipe_phv_out_data_0),
    .io_pipe_phv_out_data_1(pipe2_io_pipe_phv_out_data_1),
    .io_pipe_phv_out_data_2(pipe2_io_pipe_phv_out_data_2),
    .io_pipe_phv_out_data_3(pipe2_io_pipe_phv_out_data_3),
    .io_pipe_phv_out_data_4(pipe2_io_pipe_phv_out_data_4),
    .io_pipe_phv_out_data_5(pipe2_io_pipe_phv_out_data_5),
    .io_pipe_phv_out_data_6(pipe2_io_pipe_phv_out_data_6),
    .io_pipe_phv_out_data_7(pipe2_io_pipe_phv_out_data_7),
    .io_pipe_phv_out_data_8(pipe2_io_pipe_phv_out_data_8),
    .io_pipe_phv_out_data_9(pipe2_io_pipe_phv_out_data_9),
    .io_pipe_phv_out_data_10(pipe2_io_pipe_phv_out_data_10),
    .io_pipe_phv_out_data_11(pipe2_io_pipe_phv_out_data_11),
    .io_pipe_phv_out_data_12(pipe2_io_pipe_phv_out_data_12),
    .io_pipe_phv_out_data_13(pipe2_io_pipe_phv_out_data_13),
    .io_pipe_phv_out_data_14(pipe2_io_pipe_phv_out_data_14),
    .io_pipe_phv_out_data_15(pipe2_io_pipe_phv_out_data_15),
    .io_pipe_phv_out_data_16(pipe2_io_pipe_phv_out_data_16),
    .io_pipe_phv_out_data_17(pipe2_io_pipe_phv_out_data_17),
    .io_pipe_phv_out_data_18(pipe2_io_pipe_phv_out_data_18),
    .io_pipe_phv_out_data_19(pipe2_io_pipe_phv_out_data_19),
    .io_pipe_phv_out_data_20(pipe2_io_pipe_phv_out_data_20),
    .io_pipe_phv_out_data_21(pipe2_io_pipe_phv_out_data_21),
    .io_pipe_phv_out_data_22(pipe2_io_pipe_phv_out_data_22),
    .io_pipe_phv_out_data_23(pipe2_io_pipe_phv_out_data_23),
    .io_pipe_phv_out_data_24(pipe2_io_pipe_phv_out_data_24),
    .io_pipe_phv_out_data_25(pipe2_io_pipe_phv_out_data_25),
    .io_pipe_phv_out_data_26(pipe2_io_pipe_phv_out_data_26),
    .io_pipe_phv_out_data_27(pipe2_io_pipe_phv_out_data_27),
    .io_pipe_phv_out_data_28(pipe2_io_pipe_phv_out_data_28),
    .io_pipe_phv_out_data_29(pipe2_io_pipe_phv_out_data_29),
    .io_pipe_phv_out_data_30(pipe2_io_pipe_phv_out_data_30),
    .io_pipe_phv_out_data_31(pipe2_io_pipe_phv_out_data_31),
    .io_pipe_phv_out_data_32(pipe2_io_pipe_phv_out_data_32),
    .io_pipe_phv_out_data_33(pipe2_io_pipe_phv_out_data_33),
    .io_pipe_phv_out_data_34(pipe2_io_pipe_phv_out_data_34),
    .io_pipe_phv_out_data_35(pipe2_io_pipe_phv_out_data_35),
    .io_pipe_phv_out_data_36(pipe2_io_pipe_phv_out_data_36),
    .io_pipe_phv_out_data_37(pipe2_io_pipe_phv_out_data_37),
    .io_pipe_phv_out_data_38(pipe2_io_pipe_phv_out_data_38),
    .io_pipe_phv_out_data_39(pipe2_io_pipe_phv_out_data_39),
    .io_pipe_phv_out_data_40(pipe2_io_pipe_phv_out_data_40),
    .io_pipe_phv_out_data_41(pipe2_io_pipe_phv_out_data_41),
    .io_pipe_phv_out_data_42(pipe2_io_pipe_phv_out_data_42),
    .io_pipe_phv_out_data_43(pipe2_io_pipe_phv_out_data_43),
    .io_pipe_phv_out_data_44(pipe2_io_pipe_phv_out_data_44),
    .io_pipe_phv_out_data_45(pipe2_io_pipe_phv_out_data_45),
    .io_pipe_phv_out_data_46(pipe2_io_pipe_phv_out_data_46),
    .io_pipe_phv_out_data_47(pipe2_io_pipe_phv_out_data_47),
    .io_pipe_phv_out_data_48(pipe2_io_pipe_phv_out_data_48),
    .io_pipe_phv_out_data_49(pipe2_io_pipe_phv_out_data_49),
    .io_pipe_phv_out_data_50(pipe2_io_pipe_phv_out_data_50),
    .io_pipe_phv_out_data_51(pipe2_io_pipe_phv_out_data_51),
    .io_pipe_phv_out_data_52(pipe2_io_pipe_phv_out_data_52),
    .io_pipe_phv_out_data_53(pipe2_io_pipe_phv_out_data_53),
    .io_pipe_phv_out_data_54(pipe2_io_pipe_phv_out_data_54),
    .io_pipe_phv_out_data_55(pipe2_io_pipe_phv_out_data_55),
    .io_pipe_phv_out_data_56(pipe2_io_pipe_phv_out_data_56),
    .io_pipe_phv_out_data_57(pipe2_io_pipe_phv_out_data_57),
    .io_pipe_phv_out_data_58(pipe2_io_pipe_phv_out_data_58),
    .io_pipe_phv_out_data_59(pipe2_io_pipe_phv_out_data_59),
    .io_pipe_phv_out_data_60(pipe2_io_pipe_phv_out_data_60),
    .io_pipe_phv_out_data_61(pipe2_io_pipe_phv_out_data_61),
    .io_pipe_phv_out_data_62(pipe2_io_pipe_phv_out_data_62),
    .io_pipe_phv_out_data_63(pipe2_io_pipe_phv_out_data_63),
    .io_pipe_phv_out_data_64(pipe2_io_pipe_phv_out_data_64),
    .io_pipe_phv_out_data_65(pipe2_io_pipe_phv_out_data_65),
    .io_pipe_phv_out_data_66(pipe2_io_pipe_phv_out_data_66),
    .io_pipe_phv_out_data_67(pipe2_io_pipe_phv_out_data_67),
    .io_pipe_phv_out_data_68(pipe2_io_pipe_phv_out_data_68),
    .io_pipe_phv_out_data_69(pipe2_io_pipe_phv_out_data_69),
    .io_pipe_phv_out_data_70(pipe2_io_pipe_phv_out_data_70),
    .io_pipe_phv_out_data_71(pipe2_io_pipe_phv_out_data_71),
    .io_pipe_phv_out_data_72(pipe2_io_pipe_phv_out_data_72),
    .io_pipe_phv_out_data_73(pipe2_io_pipe_phv_out_data_73),
    .io_pipe_phv_out_data_74(pipe2_io_pipe_phv_out_data_74),
    .io_pipe_phv_out_data_75(pipe2_io_pipe_phv_out_data_75),
    .io_pipe_phv_out_data_76(pipe2_io_pipe_phv_out_data_76),
    .io_pipe_phv_out_data_77(pipe2_io_pipe_phv_out_data_77),
    .io_pipe_phv_out_data_78(pipe2_io_pipe_phv_out_data_78),
    .io_pipe_phv_out_data_79(pipe2_io_pipe_phv_out_data_79),
    .io_pipe_phv_out_data_80(pipe2_io_pipe_phv_out_data_80),
    .io_pipe_phv_out_data_81(pipe2_io_pipe_phv_out_data_81),
    .io_pipe_phv_out_data_82(pipe2_io_pipe_phv_out_data_82),
    .io_pipe_phv_out_data_83(pipe2_io_pipe_phv_out_data_83),
    .io_pipe_phv_out_data_84(pipe2_io_pipe_phv_out_data_84),
    .io_pipe_phv_out_data_85(pipe2_io_pipe_phv_out_data_85),
    .io_pipe_phv_out_data_86(pipe2_io_pipe_phv_out_data_86),
    .io_pipe_phv_out_data_87(pipe2_io_pipe_phv_out_data_87),
    .io_pipe_phv_out_data_88(pipe2_io_pipe_phv_out_data_88),
    .io_pipe_phv_out_data_89(pipe2_io_pipe_phv_out_data_89),
    .io_pipe_phv_out_data_90(pipe2_io_pipe_phv_out_data_90),
    .io_pipe_phv_out_data_91(pipe2_io_pipe_phv_out_data_91),
    .io_pipe_phv_out_data_92(pipe2_io_pipe_phv_out_data_92),
    .io_pipe_phv_out_data_93(pipe2_io_pipe_phv_out_data_93),
    .io_pipe_phv_out_data_94(pipe2_io_pipe_phv_out_data_94),
    .io_pipe_phv_out_data_95(pipe2_io_pipe_phv_out_data_95),
    .io_pipe_phv_out_header_0(pipe2_io_pipe_phv_out_header_0),
    .io_pipe_phv_out_header_1(pipe2_io_pipe_phv_out_header_1),
    .io_pipe_phv_out_header_2(pipe2_io_pipe_phv_out_header_2),
    .io_pipe_phv_out_header_3(pipe2_io_pipe_phv_out_header_3),
    .io_pipe_phv_out_header_4(pipe2_io_pipe_phv_out_header_4),
    .io_pipe_phv_out_header_5(pipe2_io_pipe_phv_out_header_5),
    .io_pipe_phv_out_header_6(pipe2_io_pipe_phv_out_header_6),
    .io_pipe_phv_out_header_7(pipe2_io_pipe_phv_out_header_7),
    .io_pipe_phv_out_header_8(pipe2_io_pipe_phv_out_header_8),
    .io_pipe_phv_out_header_9(pipe2_io_pipe_phv_out_header_9),
    .io_pipe_phv_out_header_10(pipe2_io_pipe_phv_out_header_10),
    .io_pipe_phv_out_header_11(pipe2_io_pipe_phv_out_header_11),
    .io_pipe_phv_out_header_12(pipe2_io_pipe_phv_out_header_12),
    .io_pipe_phv_out_header_13(pipe2_io_pipe_phv_out_header_13),
    .io_pipe_phv_out_header_14(pipe2_io_pipe_phv_out_header_14),
    .io_pipe_phv_out_header_15(pipe2_io_pipe_phv_out_header_15),
    .io_pipe_phv_out_parse_current_state(pipe2_io_pipe_phv_out_parse_current_state),
    .io_pipe_phv_out_parse_current_offset(pipe2_io_pipe_phv_out_parse_current_offset),
    .io_pipe_phv_out_parse_transition_field(pipe2_io_pipe_phv_out_parse_transition_field),
    .io_pipe_phv_out_next_processor_id(pipe2_io_pipe_phv_out_next_processor_id),
    .io_pipe_phv_out_next_config_id(pipe2_io_pipe_phv_out_next_config_id),
    .io_rdata(pipe2_io_rdata),
    .io_valid(pipe2_io_valid)
  );
  assign io_pipe_phv_out_data_0 = pipe2_io_pipe_phv_out_data_0; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_1 = pipe2_io_pipe_phv_out_data_1; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_2 = pipe2_io_pipe_phv_out_data_2; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_3 = pipe2_io_pipe_phv_out_data_3; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_4 = pipe2_io_pipe_phv_out_data_4; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_5 = pipe2_io_pipe_phv_out_data_5; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_6 = pipe2_io_pipe_phv_out_data_6; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_7 = pipe2_io_pipe_phv_out_data_7; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_8 = pipe2_io_pipe_phv_out_data_8; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_9 = pipe2_io_pipe_phv_out_data_9; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_10 = pipe2_io_pipe_phv_out_data_10; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_11 = pipe2_io_pipe_phv_out_data_11; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_12 = pipe2_io_pipe_phv_out_data_12; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_13 = pipe2_io_pipe_phv_out_data_13; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_14 = pipe2_io_pipe_phv_out_data_14; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_15 = pipe2_io_pipe_phv_out_data_15; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_16 = pipe2_io_pipe_phv_out_data_16; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_17 = pipe2_io_pipe_phv_out_data_17; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_18 = pipe2_io_pipe_phv_out_data_18; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_19 = pipe2_io_pipe_phv_out_data_19; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_20 = pipe2_io_pipe_phv_out_data_20; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_21 = pipe2_io_pipe_phv_out_data_21; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_22 = pipe2_io_pipe_phv_out_data_22; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_23 = pipe2_io_pipe_phv_out_data_23; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_24 = pipe2_io_pipe_phv_out_data_24; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_25 = pipe2_io_pipe_phv_out_data_25; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_26 = pipe2_io_pipe_phv_out_data_26; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_27 = pipe2_io_pipe_phv_out_data_27; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_28 = pipe2_io_pipe_phv_out_data_28; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_29 = pipe2_io_pipe_phv_out_data_29; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_30 = pipe2_io_pipe_phv_out_data_30; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_31 = pipe2_io_pipe_phv_out_data_31; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_32 = pipe2_io_pipe_phv_out_data_32; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_33 = pipe2_io_pipe_phv_out_data_33; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_34 = pipe2_io_pipe_phv_out_data_34; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_35 = pipe2_io_pipe_phv_out_data_35; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_36 = pipe2_io_pipe_phv_out_data_36; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_37 = pipe2_io_pipe_phv_out_data_37; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_38 = pipe2_io_pipe_phv_out_data_38; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_39 = pipe2_io_pipe_phv_out_data_39; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_40 = pipe2_io_pipe_phv_out_data_40; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_41 = pipe2_io_pipe_phv_out_data_41; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_42 = pipe2_io_pipe_phv_out_data_42; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_43 = pipe2_io_pipe_phv_out_data_43; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_44 = pipe2_io_pipe_phv_out_data_44; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_45 = pipe2_io_pipe_phv_out_data_45; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_46 = pipe2_io_pipe_phv_out_data_46; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_47 = pipe2_io_pipe_phv_out_data_47; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_48 = pipe2_io_pipe_phv_out_data_48; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_49 = pipe2_io_pipe_phv_out_data_49; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_50 = pipe2_io_pipe_phv_out_data_50; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_51 = pipe2_io_pipe_phv_out_data_51; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_52 = pipe2_io_pipe_phv_out_data_52; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_53 = pipe2_io_pipe_phv_out_data_53; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_54 = pipe2_io_pipe_phv_out_data_54; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_55 = pipe2_io_pipe_phv_out_data_55; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_56 = pipe2_io_pipe_phv_out_data_56; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_57 = pipe2_io_pipe_phv_out_data_57; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_58 = pipe2_io_pipe_phv_out_data_58; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_59 = pipe2_io_pipe_phv_out_data_59; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_60 = pipe2_io_pipe_phv_out_data_60; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_61 = pipe2_io_pipe_phv_out_data_61; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_62 = pipe2_io_pipe_phv_out_data_62; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_63 = pipe2_io_pipe_phv_out_data_63; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_64 = pipe2_io_pipe_phv_out_data_64; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_65 = pipe2_io_pipe_phv_out_data_65; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_66 = pipe2_io_pipe_phv_out_data_66; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_67 = pipe2_io_pipe_phv_out_data_67; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_68 = pipe2_io_pipe_phv_out_data_68; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_69 = pipe2_io_pipe_phv_out_data_69; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_70 = pipe2_io_pipe_phv_out_data_70; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_71 = pipe2_io_pipe_phv_out_data_71; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_72 = pipe2_io_pipe_phv_out_data_72; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_73 = pipe2_io_pipe_phv_out_data_73; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_74 = pipe2_io_pipe_phv_out_data_74; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_75 = pipe2_io_pipe_phv_out_data_75; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_76 = pipe2_io_pipe_phv_out_data_76; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_77 = pipe2_io_pipe_phv_out_data_77; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_78 = pipe2_io_pipe_phv_out_data_78; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_79 = pipe2_io_pipe_phv_out_data_79; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_80 = pipe2_io_pipe_phv_out_data_80; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_81 = pipe2_io_pipe_phv_out_data_81; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_82 = pipe2_io_pipe_phv_out_data_82; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_83 = pipe2_io_pipe_phv_out_data_83; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_84 = pipe2_io_pipe_phv_out_data_84; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_85 = pipe2_io_pipe_phv_out_data_85; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_86 = pipe2_io_pipe_phv_out_data_86; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_87 = pipe2_io_pipe_phv_out_data_87; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_88 = pipe2_io_pipe_phv_out_data_88; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_89 = pipe2_io_pipe_phv_out_data_89; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_90 = pipe2_io_pipe_phv_out_data_90; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_91 = pipe2_io_pipe_phv_out_data_91; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_92 = pipe2_io_pipe_phv_out_data_92; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_93 = pipe2_io_pipe_phv_out_data_93; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_94 = pipe2_io_pipe_phv_out_data_94; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_data_95 = pipe2_io_pipe_phv_out_data_95; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_header_0 = pipe2_io_pipe_phv_out_header_0; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_header_1 = pipe2_io_pipe_phv_out_header_1; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_header_2 = pipe2_io_pipe_phv_out_header_2; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_header_3 = pipe2_io_pipe_phv_out_header_3; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_header_4 = pipe2_io_pipe_phv_out_header_4; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_header_5 = pipe2_io_pipe_phv_out_header_5; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_header_6 = pipe2_io_pipe_phv_out_header_6; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_header_7 = pipe2_io_pipe_phv_out_header_7; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_header_8 = pipe2_io_pipe_phv_out_header_8; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_header_9 = pipe2_io_pipe_phv_out_header_9; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_header_10 = pipe2_io_pipe_phv_out_header_10; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_header_11 = pipe2_io_pipe_phv_out_header_11; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_header_12 = pipe2_io_pipe_phv_out_header_12; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_header_13 = pipe2_io_pipe_phv_out_header_13; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_header_14 = pipe2_io_pipe_phv_out_header_14; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_header_15 = pipe2_io_pipe_phv_out_header_15; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_parse_current_state = pipe2_io_pipe_phv_out_parse_current_state; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_parse_current_offset = pipe2_io_pipe_phv_out_parse_current_offset; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_parse_transition_field = pipe2_io_pipe_phv_out_parse_transition_field; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_next_processor_id = pipe2_io_pipe_phv_out_next_processor_id; // @[parse_module.scala 109:27]
  assign io_pipe_phv_out_next_config_id = pipe2_io_pipe_phv_out_next_config_id; // @[parse_module.scala 109:27]
  assign pipe1_clock = clock;
  assign pipe1_io_pipe_phv_in_data_0 = io_pipe_phv_in_data_0; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_1 = io_pipe_phv_in_data_1; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_2 = io_pipe_phv_in_data_2; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_3 = io_pipe_phv_in_data_3; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_4 = io_pipe_phv_in_data_4; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_5 = io_pipe_phv_in_data_5; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_6 = io_pipe_phv_in_data_6; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_7 = io_pipe_phv_in_data_7; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_8 = io_pipe_phv_in_data_8; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_9 = io_pipe_phv_in_data_9; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_10 = io_pipe_phv_in_data_10; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_11 = io_pipe_phv_in_data_11; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_12 = io_pipe_phv_in_data_12; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_13 = io_pipe_phv_in_data_13; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_14 = io_pipe_phv_in_data_14; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_15 = io_pipe_phv_in_data_15; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_16 = io_pipe_phv_in_data_16; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_17 = io_pipe_phv_in_data_17; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_18 = io_pipe_phv_in_data_18; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_19 = io_pipe_phv_in_data_19; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_20 = io_pipe_phv_in_data_20; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_21 = io_pipe_phv_in_data_21; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_22 = io_pipe_phv_in_data_22; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_23 = io_pipe_phv_in_data_23; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_24 = io_pipe_phv_in_data_24; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_25 = io_pipe_phv_in_data_25; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_26 = io_pipe_phv_in_data_26; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_27 = io_pipe_phv_in_data_27; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_28 = io_pipe_phv_in_data_28; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_29 = io_pipe_phv_in_data_29; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_30 = io_pipe_phv_in_data_30; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_31 = io_pipe_phv_in_data_31; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_32 = io_pipe_phv_in_data_32; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_33 = io_pipe_phv_in_data_33; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_34 = io_pipe_phv_in_data_34; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_35 = io_pipe_phv_in_data_35; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_36 = io_pipe_phv_in_data_36; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_37 = io_pipe_phv_in_data_37; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_38 = io_pipe_phv_in_data_38; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_39 = io_pipe_phv_in_data_39; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_40 = io_pipe_phv_in_data_40; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_41 = io_pipe_phv_in_data_41; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_42 = io_pipe_phv_in_data_42; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_43 = io_pipe_phv_in_data_43; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_44 = io_pipe_phv_in_data_44; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_45 = io_pipe_phv_in_data_45; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_46 = io_pipe_phv_in_data_46; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_47 = io_pipe_phv_in_data_47; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_48 = io_pipe_phv_in_data_48; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_49 = io_pipe_phv_in_data_49; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_50 = io_pipe_phv_in_data_50; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_51 = io_pipe_phv_in_data_51; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_52 = io_pipe_phv_in_data_52; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_53 = io_pipe_phv_in_data_53; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_54 = io_pipe_phv_in_data_54; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_55 = io_pipe_phv_in_data_55; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_56 = io_pipe_phv_in_data_56; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_57 = io_pipe_phv_in_data_57; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_58 = io_pipe_phv_in_data_58; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_59 = io_pipe_phv_in_data_59; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_60 = io_pipe_phv_in_data_60; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_61 = io_pipe_phv_in_data_61; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_62 = io_pipe_phv_in_data_62; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_63 = io_pipe_phv_in_data_63; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_64 = io_pipe_phv_in_data_64; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_65 = io_pipe_phv_in_data_65; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_66 = io_pipe_phv_in_data_66; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_67 = io_pipe_phv_in_data_67; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_68 = io_pipe_phv_in_data_68; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_69 = io_pipe_phv_in_data_69; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_70 = io_pipe_phv_in_data_70; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_71 = io_pipe_phv_in_data_71; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_72 = io_pipe_phv_in_data_72; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_73 = io_pipe_phv_in_data_73; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_74 = io_pipe_phv_in_data_74; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_75 = io_pipe_phv_in_data_75; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_76 = io_pipe_phv_in_data_76; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_77 = io_pipe_phv_in_data_77; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_78 = io_pipe_phv_in_data_78; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_79 = io_pipe_phv_in_data_79; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_80 = io_pipe_phv_in_data_80; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_81 = io_pipe_phv_in_data_81; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_82 = io_pipe_phv_in_data_82; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_83 = io_pipe_phv_in_data_83; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_84 = io_pipe_phv_in_data_84; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_85 = io_pipe_phv_in_data_85; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_86 = io_pipe_phv_in_data_86; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_87 = io_pipe_phv_in_data_87; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_88 = io_pipe_phv_in_data_88; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_89 = io_pipe_phv_in_data_89; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_90 = io_pipe_phv_in_data_90; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_91 = io_pipe_phv_in_data_91; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_92 = io_pipe_phv_in_data_92; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_93 = io_pipe_phv_in_data_93; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_94 = io_pipe_phv_in_data_94; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_data_95 = io_pipe_phv_in_data_95; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_header_0 = io_pipe_phv_in_header_0; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_header_1 = io_pipe_phv_in_header_1; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_header_2 = io_pipe_phv_in_header_2; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_header_3 = io_pipe_phv_in_header_3; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_header_4 = io_pipe_phv_in_header_4; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_header_5 = io_pipe_phv_in_header_5; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_header_6 = io_pipe_phv_in_header_6; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_header_7 = io_pipe_phv_in_header_7; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_header_8 = io_pipe_phv_in_header_8; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_header_9 = io_pipe_phv_in_header_9; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_header_10 = io_pipe_phv_in_header_10; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_header_11 = io_pipe_phv_in_header_11; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_header_12 = io_pipe_phv_in_header_12; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_header_13 = io_pipe_phv_in_header_13; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_header_14 = io_pipe_phv_in_header_14; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_header_15 = io_pipe_phv_in_header_15; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_parse_current_state = io_pipe_phv_in_parse_current_state; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_parse_current_offset = io_pipe_phv_in_parse_current_offset; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_parse_transition_field = io_pipe_phv_in_parse_transition_field; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_next_processor_id = io_pipe_phv_in_next_processor_id; // @[parse_module.scala 102:22]
  assign pipe1_io_pipe_phv_in_next_config_id = io_pipe_phv_in_next_config_id; // @[parse_module.scala 102:22]
  assign pipe1_io_sram_w_cs = io_mod_sram_w_cs; // @[parse_module.scala 104:22]
  assign pipe1_io_sram_w_addr = io_mod_sram_w_addr; // @[parse_module.scala 103:22]
  assign pipe1_io_sram_w_data = io_mod_sram_w_data; // @[parse_module.scala 103:22]
  assign pipe1_io_valid = io_pipe_phv_in_parse_current_state == state_id; // @[parse_module.scala 99:58]
  assign pipe2_clock = clock;
  assign pipe2_io_pipe_phv_in_data_0 = pipe1_io_pipe_phv_out_data_0; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_1 = pipe1_io_pipe_phv_out_data_1; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_2 = pipe1_io_pipe_phv_out_data_2; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_3 = pipe1_io_pipe_phv_out_data_3; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_4 = pipe1_io_pipe_phv_out_data_4; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_5 = pipe1_io_pipe_phv_out_data_5; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_6 = pipe1_io_pipe_phv_out_data_6; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_7 = pipe1_io_pipe_phv_out_data_7; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_8 = pipe1_io_pipe_phv_out_data_8; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_9 = pipe1_io_pipe_phv_out_data_9; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_10 = pipe1_io_pipe_phv_out_data_10; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_11 = pipe1_io_pipe_phv_out_data_11; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_12 = pipe1_io_pipe_phv_out_data_12; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_13 = pipe1_io_pipe_phv_out_data_13; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_14 = pipe1_io_pipe_phv_out_data_14; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_15 = pipe1_io_pipe_phv_out_data_15; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_16 = pipe1_io_pipe_phv_out_data_16; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_17 = pipe1_io_pipe_phv_out_data_17; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_18 = pipe1_io_pipe_phv_out_data_18; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_19 = pipe1_io_pipe_phv_out_data_19; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_20 = pipe1_io_pipe_phv_out_data_20; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_21 = pipe1_io_pipe_phv_out_data_21; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_22 = pipe1_io_pipe_phv_out_data_22; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_23 = pipe1_io_pipe_phv_out_data_23; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_24 = pipe1_io_pipe_phv_out_data_24; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_25 = pipe1_io_pipe_phv_out_data_25; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_26 = pipe1_io_pipe_phv_out_data_26; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_27 = pipe1_io_pipe_phv_out_data_27; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_28 = pipe1_io_pipe_phv_out_data_28; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_29 = pipe1_io_pipe_phv_out_data_29; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_30 = pipe1_io_pipe_phv_out_data_30; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_31 = pipe1_io_pipe_phv_out_data_31; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_32 = pipe1_io_pipe_phv_out_data_32; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_33 = pipe1_io_pipe_phv_out_data_33; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_34 = pipe1_io_pipe_phv_out_data_34; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_35 = pipe1_io_pipe_phv_out_data_35; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_36 = pipe1_io_pipe_phv_out_data_36; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_37 = pipe1_io_pipe_phv_out_data_37; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_38 = pipe1_io_pipe_phv_out_data_38; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_39 = pipe1_io_pipe_phv_out_data_39; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_40 = pipe1_io_pipe_phv_out_data_40; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_41 = pipe1_io_pipe_phv_out_data_41; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_42 = pipe1_io_pipe_phv_out_data_42; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_43 = pipe1_io_pipe_phv_out_data_43; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_44 = pipe1_io_pipe_phv_out_data_44; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_45 = pipe1_io_pipe_phv_out_data_45; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_46 = pipe1_io_pipe_phv_out_data_46; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_47 = pipe1_io_pipe_phv_out_data_47; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_48 = pipe1_io_pipe_phv_out_data_48; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_49 = pipe1_io_pipe_phv_out_data_49; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_50 = pipe1_io_pipe_phv_out_data_50; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_51 = pipe1_io_pipe_phv_out_data_51; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_52 = pipe1_io_pipe_phv_out_data_52; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_53 = pipe1_io_pipe_phv_out_data_53; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_54 = pipe1_io_pipe_phv_out_data_54; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_55 = pipe1_io_pipe_phv_out_data_55; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_56 = pipe1_io_pipe_phv_out_data_56; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_57 = pipe1_io_pipe_phv_out_data_57; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_58 = pipe1_io_pipe_phv_out_data_58; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_59 = pipe1_io_pipe_phv_out_data_59; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_60 = pipe1_io_pipe_phv_out_data_60; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_61 = pipe1_io_pipe_phv_out_data_61; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_62 = pipe1_io_pipe_phv_out_data_62; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_63 = pipe1_io_pipe_phv_out_data_63; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_64 = pipe1_io_pipe_phv_out_data_64; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_65 = pipe1_io_pipe_phv_out_data_65; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_66 = pipe1_io_pipe_phv_out_data_66; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_67 = pipe1_io_pipe_phv_out_data_67; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_68 = pipe1_io_pipe_phv_out_data_68; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_69 = pipe1_io_pipe_phv_out_data_69; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_70 = pipe1_io_pipe_phv_out_data_70; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_71 = pipe1_io_pipe_phv_out_data_71; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_72 = pipe1_io_pipe_phv_out_data_72; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_73 = pipe1_io_pipe_phv_out_data_73; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_74 = pipe1_io_pipe_phv_out_data_74; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_75 = pipe1_io_pipe_phv_out_data_75; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_76 = pipe1_io_pipe_phv_out_data_76; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_77 = pipe1_io_pipe_phv_out_data_77; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_78 = pipe1_io_pipe_phv_out_data_78; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_79 = pipe1_io_pipe_phv_out_data_79; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_80 = pipe1_io_pipe_phv_out_data_80; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_81 = pipe1_io_pipe_phv_out_data_81; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_82 = pipe1_io_pipe_phv_out_data_82; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_83 = pipe1_io_pipe_phv_out_data_83; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_84 = pipe1_io_pipe_phv_out_data_84; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_85 = pipe1_io_pipe_phv_out_data_85; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_86 = pipe1_io_pipe_phv_out_data_86; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_87 = pipe1_io_pipe_phv_out_data_87; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_88 = pipe1_io_pipe_phv_out_data_88; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_89 = pipe1_io_pipe_phv_out_data_89; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_90 = pipe1_io_pipe_phv_out_data_90; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_91 = pipe1_io_pipe_phv_out_data_91; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_92 = pipe1_io_pipe_phv_out_data_92; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_93 = pipe1_io_pipe_phv_out_data_93; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_94 = pipe1_io_pipe_phv_out_data_94; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_data_95 = pipe1_io_pipe_phv_out_data_95; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_header_0 = pipe1_io_pipe_phv_out_header_0; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_header_1 = pipe1_io_pipe_phv_out_header_1; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_header_2 = pipe1_io_pipe_phv_out_header_2; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_header_3 = pipe1_io_pipe_phv_out_header_3; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_header_4 = pipe1_io_pipe_phv_out_header_4; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_header_5 = pipe1_io_pipe_phv_out_header_5; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_header_6 = pipe1_io_pipe_phv_out_header_6; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_header_7 = pipe1_io_pipe_phv_out_header_7; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_header_8 = pipe1_io_pipe_phv_out_header_8; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_header_9 = pipe1_io_pipe_phv_out_header_9; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_header_10 = pipe1_io_pipe_phv_out_header_10; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_header_11 = pipe1_io_pipe_phv_out_header_11; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_header_12 = pipe1_io_pipe_phv_out_header_12; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_header_13 = pipe1_io_pipe_phv_out_header_13; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_header_14 = pipe1_io_pipe_phv_out_header_14; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_header_15 = pipe1_io_pipe_phv_out_header_15; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_parse_current_state = pipe1_io_pipe_phv_out_parse_current_state; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_parse_current_offset = pipe1_io_pipe_phv_out_parse_current_offset; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_parse_transition_field = pipe1_io_pipe_phv_out_parse_transition_field; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_next_processor_id = pipe1_io_pipe_phv_out_next_processor_id; // @[parse_module.scala 106:27]
  assign pipe2_io_pipe_phv_in_next_config_id = pipe1_io_pipe_phv_out_next_config_id; // @[parse_module.scala 106:27]
  assign pipe2_io_rdata = pipe1_io_rdata; // @[parse_module.scala 107:27]
  assign pipe2_io_valid = pipe1_io_pipe_phv_out_parse_current_state == state_id; // @[parse_module.scala 100:65]
  always @(posedge clock) begin
    if (io_mod_state_id_mod) begin // @[parse_module.scala 92:32]
      state_id <= io_mod_state_id; // @[parse_module.scala 93:18]
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
  state_id = _RAND_0[7:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
