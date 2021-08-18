module ParseAction(
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
  input  [63:0] io_rdata,
  input         io_valid
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
`endif // RANDOMIZE_REG_INIT
  reg [7:0] phv_data_0; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_1; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_2; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_3; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_4; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_5; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_6; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_7; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_8; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_9; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_10; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_11; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_12; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_13; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_14; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_15; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_16; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_17; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_18; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_19; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_20; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_21; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_22; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_23; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_24; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_25; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_26; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_27; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_28; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_29; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_30; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_31; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_32; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_33; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_34; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_35; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_36; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_37; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_38; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_39; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_40; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_41; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_42; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_43; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_44; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_45; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_46; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_47; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_48; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_49; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_50; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_51; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_52; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_53; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_54; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_55; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_56; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_57; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_58; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_59; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_60; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_61; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_62; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_63; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_64; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_65; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_66; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_67; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_68; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_69; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_70; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_71; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_72; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_73; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_74; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_75; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_76; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_77; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_78; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_79; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_80; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_81; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_82; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_83; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_84; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_85; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_86; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_87; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_88; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_89; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_90; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_91; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_92; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_93; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_94; // @[parse_module.scala 50:20]
  reg [7:0] phv_data_95; // @[parse_module.scala 50:20]
  reg [15:0] phv_header_0; // @[parse_module.scala 50:20]
  reg [15:0] phv_header_1; // @[parse_module.scala 50:20]
  reg [15:0] phv_header_2; // @[parse_module.scala 50:20]
  reg [15:0] phv_header_3; // @[parse_module.scala 50:20]
  reg [15:0] phv_header_4; // @[parse_module.scala 50:20]
  reg [15:0] phv_header_5; // @[parse_module.scala 50:20]
  reg [15:0] phv_header_6; // @[parse_module.scala 50:20]
  reg [15:0] phv_header_7; // @[parse_module.scala 50:20]
  reg [15:0] phv_header_8; // @[parse_module.scala 50:20]
  reg [15:0] phv_header_9; // @[parse_module.scala 50:20]
  reg [15:0] phv_header_10; // @[parse_module.scala 50:20]
  reg [15:0] phv_header_11; // @[parse_module.scala 50:20]
  reg [15:0] phv_header_12; // @[parse_module.scala 50:20]
  reg [15:0] phv_header_13; // @[parse_module.scala 50:20]
  reg [15:0] phv_header_14; // @[parse_module.scala 50:20]
  reg [15:0] phv_header_15; // @[parse_module.scala 50:20]
  reg [7:0] phv_parse_current_state; // @[parse_module.scala 50:20]
  reg [7:0] phv_parse_current_offset; // @[parse_module.scala 50:20]
  reg [15:0] phv_parse_transition_field; // @[parse_module.scala 50:20]
  reg [1:0] phv_next_processor_id; // @[parse_module.scala 50:20]
  reg  phv_next_config_id; // @[parse_module.scala 50:20]
  reg  phv_is_valid_processor; // @[parse_module.scala 50:20]
  wire  is_valid = io_valid & io_pipe_phv_in_is_valid_processor; // @[parse_module.scala 54:29]
  wire [7:0] match_val_transition_field_header_id = io_rdata[55:48]; // @[parse_module.scala 59:61]
  wire [15:0] match_val_transition_field_mask = io_rdata[47:32]; // @[parse_module.scala 60:61]
  wire [7:0] match_val_transition_field_internal_offset = io_rdata[31:24]; // @[parse_module.scala 62:67]
  wire [7:0] phv_header_lo = io_rdata[23:16]; // @[parse_module.scala 63:50]
  wire [7:0] match_val_header_id = io_rdata[15:8]; // @[parse_module.scala 64:50]
  wire [7:0] match_val_next_state = io_rdata[7:0]; // @[parse_module.scala 65:50]
  wire [7:0] _phv_parse_current_offset_T_1 = io_pipe_phv_in_parse_current_offset + phv_header_lo; // @[parse_module.scala 68:73]
  wire [15:0] _GEN_1 = 4'h1 == match_val_transition_field_header_id[3:0] ? io_pipe_phv_in_header_1 :
    io_pipe_phv_in_header_0; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_2 = 4'h2 == match_val_transition_field_header_id[3:0] ? io_pipe_phv_in_header_2 : _GEN_1; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_3 = 4'h3 == match_val_transition_field_header_id[3:0] ? io_pipe_phv_in_header_3 : _GEN_2; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_4 = 4'h4 == match_val_transition_field_header_id[3:0] ? io_pipe_phv_in_header_4 : _GEN_3; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_5 = 4'h5 == match_val_transition_field_header_id[3:0] ? io_pipe_phv_in_header_5 : _GEN_4; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_6 = 4'h6 == match_val_transition_field_header_id[3:0] ? io_pipe_phv_in_header_6 : _GEN_5; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_7 = 4'h7 == match_val_transition_field_header_id[3:0] ? io_pipe_phv_in_header_7 : _GEN_6; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_8 = 4'h8 == match_val_transition_field_header_id[3:0] ? io_pipe_phv_in_header_8 : _GEN_7; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_9 = 4'h9 == match_val_transition_field_header_id[3:0] ? io_pipe_phv_in_header_9 : _GEN_8; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_10 = 4'ha == match_val_transition_field_header_id[3:0] ? io_pipe_phv_in_header_10 : _GEN_9; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_11 = 4'hb == match_val_transition_field_header_id[3:0] ? io_pipe_phv_in_header_11 : _GEN_10; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_12 = 4'hc == match_val_transition_field_header_id[3:0] ? io_pipe_phv_in_header_12 : _GEN_11; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_13 = 4'hd == match_val_transition_field_header_id[3:0] ? io_pipe_phv_in_header_13 : _GEN_12; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_14 = 4'he == match_val_transition_field_header_id[3:0] ? io_pipe_phv_in_header_14 : _GEN_13; // @[const.scala 34:43 const.scala 34:43]
  wire [15:0] _GEN_15 = 4'hf == match_val_transition_field_header_id[3:0] ? io_pipe_phv_in_header_15 : _GEN_14; // @[const.scala 34:43 const.scala 34:43]
  wire [7:0] transition_field_header_offset = _GEN_15[15:8]; // @[const.scala 34:43]
  wire [7:0] transition_field_offset = transition_field_header_offset + match_val_transition_field_internal_offset; // @[parse_module.scala 71:70]
  wire [7:0] _transition_field_raw_data_T_1 = transition_field_offset + 8'h1; // @[parse_module.scala 73:57]
  wire [7:0] _GEN_17 = 7'h1 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_1 : io_pipe_phv_in_data_0; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_18 = 7'h2 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_2 : _GEN_17; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_19 = 7'h3 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_3 : _GEN_18; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_20 = 7'h4 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_4 : _GEN_19; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_21 = 7'h5 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_5 : _GEN_20; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_22 = 7'h6 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_6 : _GEN_21; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_23 = 7'h7 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_7 : _GEN_22; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_24 = 7'h8 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_8 : _GEN_23; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_25 = 7'h9 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_9 : _GEN_24; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_26 = 7'ha == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_10 : _GEN_25; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_27 = 7'hb == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_11 : _GEN_26; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_28 = 7'hc == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_12 : _GEN_27; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_29 = 7'hd == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_13 : _GEN_28; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_30 = 7'he == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_14 : _GEN_29; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_31 = 7'hf == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_15 : _GEN_30; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_32 = 7'h10 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_16 : _GEN_31; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_33 = 7'h11 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_17 : _GEN_32; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_34 = 7'h12 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_18 : _GEN_33; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_35 = 7'h13 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_19 : _GEN_34; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_36 = 7'h14 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_20 : _GEN_35; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_37 = 7'h15 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_21 : _GEN_36; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_38 = 7'h16 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_22 : _GEN_37; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_39 = 7'h17 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_23 : _GEN_38; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_40 = 7'h18 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_24 : _GEN_39; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_41 = 7'h19 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_25 : _GEN_40; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_42 = 7'h1a == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_26 : _GEN_41; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_43 = 7'h1b == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_27 : _GEN_42; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_44 = 7'h1c == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_28 : _GEN_43; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_45 = 7'h1d == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_29 : _GEN_44; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_46 = 7'h1e == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_30 : _GEN_45; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_47 = 7'h1f == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_31 : _GEN_46; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_48 = 7'h20 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_32 : _GEN_47; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_49 = 7'h21 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_33 : _GEN_48; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_50 = 7'h22 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_34 : _GEN_49; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_51 = 7'h23 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_35 : _GEN_50; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_52 = 7'h24 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_36 : _GEN_51; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_53 = 7'h25 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_37 : _GEN_52; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_54 = 7'h26 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_38 : _GEN_53; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_55 = 7'h27 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_39 : _GEN_54; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_56 = 7'h28 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_40 : _GEN_55; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_57 = 7'h29 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_41 : _GEN_56; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_58 = 7'h2a == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_42 : _GEN_57; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_59 = 7'h2b == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_43 : _GEN_58; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_60 = 7'h2c == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_44 : _GEN_59; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_61 = 7'h2d == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_45 : _GEN_60; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_62 = 7'h2e == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_46 : _GEN_61; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_63 = 7'h2f == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_47 : _GEN_62; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_64 = 7'h30 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_48 : _GEN_63; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_65 = 7'h31 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_49 : _GEN_64; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_66 = 7'h32 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_50 : _GEN_65; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_67 = 7'h33 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_51 : _GEN_66; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_68 = 7'h34 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_52 : _GEN_67; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_69 = 7'h35 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_53 : _GEN_68; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_70 = 7'h36 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_54 : _GEN_69; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_71 = 7'h37 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_55 : _GEN_70; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_72 = 7'h38 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_56 : _GEN_71; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_73 = 7'h39 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_57 : _GEN_72; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_74 = 7'h3a == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_58 : _GEN_73; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_75 = 7'h3b == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_59 : _GEN_74; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_76 = 7'h3c == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_60 : _GEN_75; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_77 = 7'h3d == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_61 : _GEN_76; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_78 = 7'h3e == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_62 : _GEN_77; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_79 = 7'h3f == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_63 : _GEN_78; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_80 = 7'h40 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_64 : _GEN_79; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_81 = 7'h41 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_65 : _GEN_80; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_82 = 7'h42 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_66 : _GEN_81; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_83 = 7'h43 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_67 : _GEN_82; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_84 = 7'h44 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_68 : _GEN_83; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_85 = 7'h45 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_69 : _GEN_84; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_86 = 7'h46 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_70 : _GEN_85; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_87 = 7'h47 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_71 : _GEN_86; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_88 = 7'h48 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_72 : _GEN_87; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_89 = 7'h49 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_73 : _GEN_88; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_90 = 7'h4a == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_74 : _GEN_89; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_91 = 7'h4b == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_75 : _GEN_90; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_92 = 7'h4c == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_76 : _GEN_91; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_93 = 7'h4d == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_77 : _GEN_92; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_94 = 7'h4e == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_78 : _GEN_93; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_95 = 7'h4f == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_79 : _GEN_94; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_96 = 7'h50 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_80 : _GEN_95; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_97 = 7'h51 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_81 : _GEN_96; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_98 = 7'h52 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_82 : _GEN_97; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_99 = 7'h53 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_83 : _GEN_98; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_100 = 7'h54 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_84 : _GEN_99; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_101 = 7'h55 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_85 : _GEN_100; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_102 = 7'h56 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_86 : _GEN_101; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_103 = 7'h57 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_87 : _GEN_102; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_104 = 7'h58 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_88 : _GEN_103; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_105 = 7'h59 == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_89 : _GEN_104; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_106 = 7'h5a == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_90 : _GEN_105; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_107 = 7'h5b == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_91 : _GEN_106; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_108 = 7'h5c == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_92 : _GEN_107; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_109 = 7'h5d == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_93 : _GEN_108; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_110 = 7'h5e == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_94 : _GEN_109; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_111 = 7'h5f == _transition_field_raw_data_T_1[6:0] ? io_pipe_phv_in_data_95 : _GEN_110; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_113 = 7'h1 == transition_field_offset[6:0] ? io_pipe_phv_in_data_1 : io_pipe_phv_in_data_0; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_114 = 7'h2 == transition_field_offset[6:0] ? io_pipe_phv_in_data_2 : _GEN_113; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_115 = 7'h3 == transition_field_offset[6:0] ? io_pipe_phv_in_data_3 : _GEN_114; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_116 = 7'h4 == transition_field_offset[6:0] ? io_pipe_phv_in_data_4 : _GEN_115; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_117 = 7'h5 == transition_field_offset[6:0] ? io_pipe_phv_in_data_5 : _GEN_116; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_118 = 7'h6 == transition_field_offset[6:0] ? io_pipe_phv_in_data_6 : _GEN_117; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_119 = 7'h7 == transition_field_offset[6:0] ? io_pipe_phv_in_data_7 : _GEN_118; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_120 = 7'h8 == transition_field_offset[6:0] ? io_pipe_phv_in_data_8 : _GEN_119; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_121 = 7'h9 == transition_field_offset[6:0] ? io_pipe_phv_in_data_9 : _GEN_120; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_122 = 7'ha == transition_field_offset[6:0] ? io_pipe_phv_in_data_10 : _GEN_121; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_123 = 7'hb == transition_field_offset[6:0] ? io_pipe_phv_in_data_11 : _GEN_122; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_124 = 7'hc == transition_field_offset[6:0] ? io_pipe_phv_in_data_12 : _GEN_123; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_125 = 7'hd == transition_field_offset[6:0] ? io_pipe_phv_in_data_13 : _GEN_124; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_126 = 7'he == transition_field_offset[6:0] ? io_pipe_phv_in_data_14 : _GEN_125; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_127 = 7'hf == transition_field_offset[6:0] ? io_pipe_phv_in_data_15 : _GEN_126; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_128 = 7'h10 == transition_field_offset[6:0] ? io_pipe_phv_in_data_16 : _GEN_127; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_129 = 7'h11 == transition_field_offset[6:0] ? io_pipe_phv_in_data_17 : _GEN_128; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_130 = 7'h12 == transition_field_offset[6:0] ? io_pipe_phv_in_data_18 : _GEN_129; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_131 = 7'h13 == transition_field_offset[6:0] ? io_pipe_phv_in_data_19 : _GEN_130; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_132 = 7'h14 == transition_field_offset[6:0] ? io_pipe_phv_in_data_20 : _GEN_131; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_133 = 7'h15 == transition_field_offset[6:0] ? io_pipe_phv_in_data_21 : _GEN_132; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_134 = 7'h16 == transition_field_offset[6:0] ? io_pipe_phv_in_data_22 : _GEN_133; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_135 = 7'h17 == transition_field_offset[6:0] ? io_pipe_phv_in_data_23 : _GEN_134; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_136 = 7'h18 == transition_field_offset[6:0] ? io_pipe_phv_in_data_24 : _GEN_135; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_137 = 7'h19 == transition_field_offset[6:0] ? io_pipe_phv_in_data_25 : _GEN_136; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_138 = 7'h1a == transition_field_offset[6:0] ? io_pipe_phv_in_data_26 : _GEN_137; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_139 = 7'h1b == transition_field_offset[6:0] ? io_pipe_phv_in_data_27 : _GEN_138; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_140 = 7'h1c == transition_field_offset[6:0] ? io_pipe_phv_in_data_28 : _GEN_139; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_141 = 7'h1d == transition_field_offset[6:0] ? io_pipe_phv_in_data_29 : _GEN_140; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_142 = 7'h1e == transition_field_offset[6:0] ? io_pipe_phv_in_data_30 : _GEN_141; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_143 = 7'h1f == transition_field_offset[6:0] ? io_pipe_phv_in_data_31 : _GEN_142; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_144 = 7'h20 == transition_field_offset[6:0] ? io_pipe_phv_in_data_32 : _GEN_143; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_145 = 7'h21 == transition_field_offset[6:0] ? io_pipe_phv_in_data_33 : _GEN_144; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_146 = 7'h22 == transition_field_offset[6:0] ? io_pipe_phv_in_data_34 : _GEN_145; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_147 = 7'h23 == transition_field_offset[6:0] ? io_pipe_phv_in_data_35 : _GEN_146; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_148 = 7'h24 == transition_field_offset[6:0] ? io_pipe_phv_in_data_36 : _GEN_147; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_149 = 7'h25 == transition_field_offset[6:0] ? io_pipe_phv_in_data_37 : _GEN_148; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_150 = 7'h26 == transition_field_offset[6:0] ? io_pipe_phv_in_data_38 : _GEN_149; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_151 = 7'h27 == transition_field_offset[6:0] ? io_pipe_phv_in_data_39 : _GEN_150; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_152 = 7'h28 == transition_field_offset[6:0] ? io_pipe_phv_in_data_40 : _GEN_151; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_153 = 7'h29 == transition_field_offset[6:0] ? io_pipe_phv_in_data_41 : _GEN_152; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_154 = 7'h2a == transition_field_offset[6:0] ? io_pipe_phv_in_data_42 : _GEN_153; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_155 = 7'h2b == transition_field_offset[6:0] ? io_pipe_phv_in_data_43 : _GEN_154; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_156 = 7'h2c == transition_field_offset[6:0] ? io_pipe_phv_in_data_44 : _GEN_155; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_157 = 7'h2d == transition_field_offset[6:0] ? io_pipe_phv_in_data_45 : _GEN_156; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_158 = 7'h2e == transition_field_offset[6:0] ? io_pipe_phv_in_data_46 : _GEN_157; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_159 = 7'h2f == transition_field_offset[6:0] ? io_pipe_phv_in_data_47 : _GEN_158; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_160 = 7'h30 == transition_field_offset[6:0] ? io_pipe_phv_in_data_48 : _GEN_159; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_161 = 7'h31 == transition_field_offset[6:0] ? io_pipe_phv_in_data_49 : _GEN_160; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_162 = 7'h32 == transition_field_offset[6:0] ? io_pipe_phv_in_data_50 : _GEN_161; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_163 = 7'h33 == transition_field_offset[6:0] ? io_pipe_phv_in_data_51 : _GEN_162; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_164 = 7'h34 == transition_field_offset[6:0] ? io_pipe_phv_in_data_52 : _GEN_163; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_165 = 7'h35 == transition_field_offset[6:0] ? io_pipe_phv_in_data_53 : _GEN_164; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_166 = 7'h36 == transition_field_offset[6:0] ? io_pipe_phv_in_data_54 : _GEN_165; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_167 = 7'h37 == transition_field_offset[6:0] ? io_pipe_phv_in_data_55 : _GEN_166; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_168 = 7'h38 == transition_field_offset[6:0] ? io_pipe_phv_in_data_56 : _GEN_167; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_169 = 7'h39 == transition_field_offset[6:0] ? io_pipe_phv_in_data_57 : _GEN_168; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_170 = 7'h3a == transition_field_offset[6:0] ? io_pipe_phv_in_data_58 : _GEN_169; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_171 = 7'h3b == transition_field_offset[6:0] ? io_pipe_phv_in_data_59 : _GEN_170; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_172 = 7'h3c == transition_field_offset[6:0] ? io_pipe_phv_in_data_60 : _GEN_171; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_173 = 7'h3d == transition_field_offset[6:0] ? io_pipe_phv_in_data_61 : _GEN_172; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_174 = 7'h3e == transition_field_offset[6:0] ? io_pipe_phv_in_data_62 : _GEN_173; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_175 = 7'h3f == transition_field_offset[6:0] ? io_pipe_phv_in_data_63 : _GEN_174; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_176 = 7'h40 == transition_field_offset[6:0] ? io_pipe_phv_in_data_64 : _GEN_175; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_177 = 7'h41 == transition_field_offset[6:0] ? io_pipe_phv_in_data_65 : _GEN_176; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_178 = 7'h42 == transition_field_offset[6:0] ? io_pipe_phv_in_data_66 : _GEN_177; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_179 = 7'h43 == transition_field_offset[6:0] ? io_pipe_phv_in_data_67 : _GEN_178; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_180 = 7'h44 == transition_field_offset[6:0] ? io_pipe_phv_in_data_68 : _GEN_179; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_181 = 7'h45 == transition_field_offset[6:0] ? io_pipe_phv_in_data_69 : _GEN_180; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_182 = 7'h46 == transition_field_offset[6:0] ? io_pipe_phv_in_data_70 : _GEN_181; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_183 = 7'h47 == transition_field_offset[6:0] ? io_pipe_phv_in_data_71 : _GEN_182; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_184 = 7'h48 == transition_field_offset[6:0] ? io_pipe_phv_in_data_72 : _GEN_183; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_185 = 7'h49 == transition_field_offset[6:0] ? io_pipe_phv_in_data_73 : _GEN_184; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_186 = 7'h4a == transition_field_offset[6:0] ? io_pipe_phv_in_data_74 : _GEN_185; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_187 = 7'h4b == transition_field_offset[6:0] ? io_pipe_phv_in_data_75 : _GEN_186; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_188 = 7'h4c == transition_field_offset[6:0] ? io_pipe_phv_in_data_76 : _GEN_187; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_189 = 7'h4d == transition_field_offset[6:0] ? io_pipe_phv_in_data_77 : _GEN_188; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_190 = 7'h4e == transition_field_offset[6:0] ? io_pipe_phv_in_data_78 : _GEN_189; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_191 = 7'h4f == transition_field_offset[6:0] ? io_pipe_phv_in_data_79 : _GEN_190; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_192 = 7'h50 == transition_field_offset[6:0] ? io_pipe_phv_in_data_80 : _GEN_191; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_193 = 7'h51 == transition_field_offset[6:0] ? io_pipe_phv_in_data_81 : _GEN_192; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_194 = 7'h52 == transition_field_offset[6:0] ? io_pipe_phv_in_data_82 : _GEN_193; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_195 = 7'h53 == transition_field_offset[6:0] ? io_pipe_phv_in_data_83 : _GEN_194; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_196 = 7'h54 == transition_field_offset[6:0] ? io_pipe_phv_in_data_84 : _GEN_195; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_197 = 7'h55 == transition_field_offset[6:0] ? io_pipe_phv_in_data_85 : _GEN_196; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_198 = 7'h56 == transition_field_offset[6:0] ? io_pipe_phv_in_data_86 : _GEN_197; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_199 = 7'h57 == transition_field_offset[6:0] ? io_pipe_phv_in_data_87 : _GEN_198; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_200 = 7'h58 == transition_field_offset[6:0] ? io_pipe_phv_in_data_88 : _GEN_199; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_201 = 7'h59 == transition_field_offset[6:0] ? io_pipe_phv_in_data_89 : _GEN_200; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_202 = 7'h5a == transition_field_offset[6:0] ? io_pipe_phv_in_data_90 : _GEN_201; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_203 = 7'h5b == transition_field_offset[6:0] ? io_pipe_phv_in_data_91 : _GEN_202; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_204 = 7'h5c == transition_field_offset[6:0] ? io_pipe_phv_in_data_92 : _GEN_203; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_205 = 7'h5d == transition_field_offset[6:0] ? io_pipe_phv_in_data_93 : _GEN_204; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_206 = 7'h5e == transition_field_offset[6:0] ? io_pipe_phv_in_data_94 : _GEN_205; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_207 = 7'h5f == transition_field_offset[6:0] ? io_pipe_phv_in_data_95 : _GEN_206; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [15:0] transition_field_raw_data = {_GEN_111,_GEN_207}; // @[Cat.scala 30:58]
  wire [15:0] transition_field = transition_field_raw_data ^ match_val_transition_field_mask; // @[parse_module.scala 76:58]
  wire [15:0] _phv_header_T = {io_pipe_phv_in_parse_current_offset,phv_header_lo}; // @[Cat.scala 30:58]
  assign io_pipe_phv_out_data_0 = phv_data_0; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_1 = phv_data_1; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_2 = phv_data_2; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_3 = phv_data_3; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_4 = phv_data_4; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_5 = phv_data_5; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_6 = phv_data_6; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_7 = phv_data_7; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_8 = phv_data_8; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_9 = phv_data_9; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_10 = phv_data_10; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_11 = phv_data_11; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_12 = phv_data_12; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_13 = phv_data_13; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_14 = phv_data_14; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_15 = phv_data_15; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_16 = phv_data_16; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_17 = phv_data_17; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_18 = phv_data_18; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_19 = phv_data_19; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_20 = phv_data_20; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_21 = phv_data_21; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_22 = phv_data_22; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_23 = phv_data_23; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_24 = phv_data_24; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_25 = phv_data_25; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_26 = phv_data_26; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_27 = phv_data_27; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_28 = phv_data_28; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_29 = phv_data_29; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_30 = phv_data_30; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_31 = phv_data_31; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_32 = phv_data_32; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_33 = phv_data_33; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_34 = phv_data_34; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_35 = phv_data_35; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_36 = phv_data_36; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_37 = phv_data_37; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_38 = phv_data_38; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_39 = phv_data_39; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_40 = phv_data_40; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_41 = phv_data_41; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_42 = phv_data_42; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_43 = phv_data_43; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_44 = phv_data_44; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_45 = phv_data_45; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_46 = phv_data_46; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_47 = phv_data_47; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_48 = phv_data_48; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_49 = phv_data_49; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_50 = phv_data_50; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_51 = phv_data_51; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_52 = phv_data_52; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_53 = phv_data_53; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_54 = phv_data_54; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_55 = phv_data_55; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_56 = phv_data_56; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_57 = phv_data_57; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_58 = phv_data_58; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_59 = phv_data_59; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_60 = phv_data_60; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_61 = phv_data_61; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_62 = phv_data_62; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_63 = phv_data_63; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_64 = phv_data_64; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_65 = phv_data_65; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_66 = phv_data_66; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_67 = phv_data_67; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_68 = phv_data_68; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_69 = phv_data_69; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_70 = phv_data_70; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_71 = phv_data_71; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_72 = phv_data_72; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_73 = phv_data_73; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_74 = phv_data_74; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_75 = phv_data_75; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_76 = phv_data_76; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_77 = phv_data_77; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_78 = phv_data_78; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_79 = phv_data_79; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_80 = phv_data_80; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_81 = phv_data_81; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_82 = phv_data_82; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_83 = phv_data_83; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_84 = phv_data_84; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_85 = phv_data_85; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_86 = phv_data_86; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_87 = phv_data_87; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_88 = phv_data_88; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_89 = phv_data_89; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_90 = phv_data_90; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_91 = phv_data_91; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_92 = phv_data_92; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_93 = phv_data_93; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_94 = phv_data_94; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_data_95 = phv_data_95; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_header_0 = phv_header_0; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_header_1 = phv_header_1; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_header_2 = phv_header_2; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_header_3 = phv_header_3; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_header_4 = phv_header_4; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_header_5 = phv_header_5; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_header_6 = phv_header_6; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_header_7 = phv_header_7; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_header_8 = phv_header_8; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_header_9 = phv_header_9; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_header_10 = phv_header_10; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_header_11 = phv_header_11; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_header_12 = phv_header_12; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_header_13 = phv_header_13; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_header_14 = phv_header_14; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_header_15 = phv_header_15; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_parse_current_state = phv_parse_current_state; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_parse_current_offset = phv_parse_current_offset; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_parse_transition_field = phv_parse_transition_field; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_next_processor_id = phv_next_processor_id; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_next_config_id = phv_next_config_id; // @[parse_module.scala 52:21]
  assign io_pipe_phv_out_is_valid_processor = phv_is_valid_processor; // @[parse_module.scala 52:21]
  always @(posedge clock) begin
    phv_data_0 <= io_pipe_phv_in_data_0; // @[parse_module.scala 51:9]
    phv_data_1 <= io_pipe_phv_in_data_1; // @[parse_module.scala 51:9]
    phv_data_2 <= io_pipe_phv_in_data_2; // @[parse_module.scala 51:9]
    phv_data_3 <= io_pipe_phv_in_data_3; // @[parse_module.scala 51:9]
    phv_data_4 <= io_pipe_phv_in_data_4; // @[parse_module.scala 51:9]
    phv_data_5 <= io_pipe_phv_in_data_5; // @[parse_module.scala 51:9]
    phv_data_6 <= io_pipe_phv_in_data_6; // @[parse_module.scala 51:9]
    phv_data_7 <= io_pipe_phv_in_data_7; // @[parse_module.scala 51:9]
    phv_data_8 <= io_pipe_phv_in_data_8; // @[parse_module.scala 51:9]
    phv_data_9 <= io_pipe_phv_in_data_9; // @[parse_module.scala 51:9]
    phv_data_10 <= io_pipe_phv_in_data_10; // @[parse_module.scala 51:9]
    phv_data_11 <= io_pipe_phv_in_data_11; // @[parse_module.scala 51:9]
    phv_data_12 <= io_pipe_phv_in_data_12; // @[parse_module.scala 51:9]
    phv_data_13 <= io_pipe_phv_in_data_13; // @[parse_module.scala 51:9]
    phv_data_14 <= io_pipe_phv_in_data_14; // @[parse_module.scala 51:9]
    phv_data_15 <= io_pipe_phv_in_data_15; // @[parse_module.scala 51:9]
    phv_data_16 <= io_pipe_phv_in_data_16; // @[parse_module.scala 51:9]
    phv_data_17 <= io_pipe_phv_in_data_17; // @[parse_module.scala 51:9]
    phv_data_18 <= io_pipe_phv_in_data_18; // @[parse_module.scala 51:9]
    phv_data_19 <= io_pipe_phv_in_data_19; // @[parse_module.scala 51:9]
    phv_data_20 <= io_pipe_phv_in_data_20; // @[parse_module.scala 51:9]
    phv_data_21 <= io_pipe_phv_in_data_21; // @[parse_module.scala 51:9]
    phv_data_22 <= io_pipe_phv_in_data_22; // @[parse_module.scala 51:9]
    phv_data_23 <= io_pipe_phv_in_data_23; // @[parse_module.scala 51:9]
    phv_data_24 <= io_pipe_phv_in_data_24; // @[parse_module.scala 51:9]
    phv_data_25 <= io_pipe_phv_in_data_25; // @[parse_module.scala 51:9]
    phv_data_26 <= io_pipe_phv_in_data_26; // @[parse_module.scala 51:9]
    phv_data_27 <= io_pipe_phv_in_data_27; // @[parse_module.scala 51:9]
    phv_data_28 <= io_pipe_phv_in_data_28; // @[parse_module.scala 51:9]
    phv_data_29 <= io_pipe_phv_in_data_29; // @[parse_module.scala 51:9]
    phv_data_30 <= io_pipe_phv_in_data_30; // @[parse_module.scala 51:9]
    phv_data_31 <= io_pipe_phv_in_data_31; // @[parse_module.scala 51:9]
    phv_data_32 <= io_pipe_phv_in_data_32; // @[parse_module.scala 51:9]
    phv_data_33 <= io_pipe_phv_in_data_33; // @[parse_module.scala 51:9]
    phv_data_34 <= io_pipe_phv_in_data_34; // @[parse_module.scala 51:9]
    phv_data_35 <= io_pipe_phv_in_data_35; // @[parse_module.scala 51:9]
    phv_data_36 <= io_pipe_phv_in_data_36; // @[parse_module.scala 51:9]
    phv_data_37 <= io_pipe_phv_in_data_37; // @[parse_module.scala 51:9]
    phv_data_38 <= io_pipe_phv_in_data_38; // @[parse_module.scala 51:9]
    phv_data_39 <= io_pipe_phv_in_data_39; // @[parse_module.scala 51:9]
    phv_data_40 <= io_pipe_phv_in_data_40; // @[parse_module.scala 51:9]
    phv_data_41 <= io_pipe_phv_in_data_41; // @[parse_module.scala 51:9]
    phv_data_42 <= io_pipe_phv_in_data_42; // @[parse_module.scala 51:9]
    phv_data_43 <= io_pipe_phv_in_data_43; // @[parse_module.scala 51:9]
    phv_data_44 <= io_pipe_phv_in_data_44; // @[parse_module.scala 51:9]
    phv_data_45 <= io_pipe_phv_in_data_45; // @[parse_module.scala 51:9]
    phv_data_46 <= io_pipe_phv_in_data_46; // @[parse_module.scala 51:9]
    phv_data_47 <= io_pipe_phv_in_data_47; // @[parse_module.scala 51:9]
    phv_data_48 <= io_pipe_phv_in_data_48; // @[parse_module.scala 51:9]
    phv_data_49 <= io_pipe_phv_in_data_49; // @[parse_module.scala 51:9]
    phv_data_50 <= io_pipe_phv_in_data_50; // @[parse_module.scala 51:9]
    phv_data_51 <= io_pipe_phv_in_data_51; // @[parse_module.scala 51:9]
    phv_data_52 <= io_pipe_phv_in_data_52; // @[parse_module.scala 51:9]
    phv_data_53 <= io_pipe_phv_in_data_53; // @[parse_module.scala 51:9]
    phv_data_54 <= io_pipe_phv_in_data_54; // @[parse_module.scala 51:9]
    phv_data_55 <= io_pipe_phv_in_data_55; // @[parse_module.scala 51:9]
    phv_data_56 <= io_pipe_phv_in_data_56; // @[parse_module.scala 51:9]
    phv_data_57 <= io_pipe_phv_in_data_57; // @[parse_module.scala 51:9]
    phv_data_58 <= io_pipe_phv_in_data_58; // @[parse_module.scala 51:9]
    phv_data_59 <= io_pipe_phv_in_data_59; // @[parse_module.scala 51:9]
    phv_data_60 <= io_pipe_phv_in_data_60; // @[parse_module.scala 51:9]
    phv_data_61 <= io_pipe_phv_in_data_61; // @[parse_module.scala 51:9]
    phv_data_62 <= io_pipe_phv_in_data_62; // @[parse_module.scala 51:9]
    phv_data_63 <= io_pipe_phv_in_data_63; // @[parse_module.scala 51:9]
    phv_data_64 <= io_pipe_phv_in_data_64; // @[parse_module.scala 51:9]
    phv_data_65 <= io_pipe_phv_in_data_65; // @[parse_module.scala 51:9]
    phv_data_66 <= io_pipe_phv_in_data_66; // @[parse_module.scala 51:9]
    phv_data_67 <= io_pipe_phv_in_data_67; // @[parse_module.scala 51:9]
    phv_data_68 <= io_pipe_phv_in_data_68; // @[parse_module.scala 51:9]
    phv_data_69 <= io_pipe_phv_in_data_69; // @[parse_module.scala 51:9]
    phv_data_70 <= io_pipe_phv_in_data_70; // @[parse_module.scala 51:9]
    phv_data_71 <= io_pipe_phv_in_data_71; // @[parse_module.scala 51:9]
    phv_data_72 <= io_pipe_phv_in_data_72; // @[parse_module.scala 51:9]
    phv_data_73 <= io_pipe_phv_in_data_73; // @[parse_module.scala 51:9]
    phv_data_74 <= io_pipe_phv_in_data_74; // @[parse_module.scala 51:9]
    phv_data_75 <= io_pipe_phv_in_data_75; // @[parse_module.scala 51:9]
    phv_data_76 <= io_pipe_phv_in_data_76; // @[parse_module.scala 51:9]
    phv_data_77 <= io_pipe_phv_in_data_77; // @[parse_module.scala 51:9]
    phv_data_78 <= io_pipe_phv_in_data_78; // @[parse_module.scala 51:9]
    phv_data_79 <= io_pipe_phv_in_data_79; // @[parse_module.scala 51:9]
    phv_data_80 <= io_pipe_phv_in_data_80; // @[parse_module.scala 51:9]
    phv_data_81 <= io_pipe_phv_in_data_81; // @[parse_module.scala 51:9]
    phv_data_82 <= io_pipe_phv_in_data_82; // @[parse_module.scala 51:9]
    phv_data_83 <= io_pipe_phv_in_data_83; // @[parse_module.scala 51:9]
    phv_data_84 <= io_pipe_phv_in_data_84; // @[parse_module.scala 51:9]
    phv_data_85 <= io_pipe_phv_in_data_85; // @[parse_module.scala 51:9]
    phv_data_86 <= io_pipe_phv_in_data_86; // @[parse_module.scala 51:9]
    phv_data_87 <= io_pipe_phv_in_data_87; // @[parse_module.scala 51:9]
    phv_data_88 <= io_pipe_phv_in_data_88; // @[parse_module.scala 51:9]
    phv_data_89 <= io_pipe_phv_in_data_89; // @[parse_module.scala 51:9]
    phv_data_90 <= io_pipe_phv_in_data_90; // @[parse_module.scala 51:9]
    phv_data_91 <= io_pipe_phv_in_data_91; // @[parse_module.scala 51:9]
    phv_data_92 <= io_pipe_phv_in_data_92; // @[parse_module.scala 51:9]
    phv_data_93 <= io_pipe_phv_in_data_93; // @[parse_module.scala 51:9]
    phv_data_94 <= io_pipe_phv_in_data_94; // @[parse_module.scala 51:9]
    phv_data_95 <= io_pipe_phv_in_data_95; // @[parse_module.scala 51:9]
    if (is_valid) begin // @[parse_module.scala 56:21]
      if (4'h0 == match_val_header_id[3:0]) begin // @[parse_module.scala 79:41]
        phv_header_0 <= _phv_header_T; // @[parse_module.scala 79:41]
      end else begin
        phv_header_0 <= io_pipe_phv_in_header_0; // @[parse_module.scala 51:9]
      end
    end else begin
      phv_header_0 <= io_pipe_phv_in_header_0; // @[parse_module.scala 51:9]
    end
    if (is_valid) begin // @[parse_module.scala 56:21]
      if (4'h1 == match_val_header_id[3:0]) begin // @[parse_module.scala 79:41]
        phv_header_1 <= _phv_header_T; // @[parse_module.scala 79:41]
      end else begin
        phv_header_1 <= io_pipe_phv_in_header_1; // @[parse_module.scala 51:9]
      end
    end else begin
      phv_header_1 <= io_pipe_phv_in_header_1; // @[parse_module.scala 51:9]
    end
    if (is_valid) begin // @[parse_module.scala 56:21]
      if (4'h2 == match_val_header_id[3:0]) begin // @[parse_module.scala 79:41]
        phv_header_2 <= _phv_header_T; // @[parse_module.scala 79:41]
      end else begin
        phv_header_2 <= io_pipe_phv_in_header_2; // @[parse_module.scala 51:9]
      end
    end else begin
      phv_header_2 <= io_pipe_phv_in_header_2; // @[parse_module.scala 51:9]
    end
    if (is_valid) begin // @[parse_module.scala 56:21]
      if (4'h3 == match_val_header_id[3:0]) begin // @[parse_module.scala 79:41]
        phv_header_3 <= _phv_header_T; // @[parse_module.scala 79:41]
      end else begin
        phv_header_3 <= io_pipe_phv_in_header_3; // @[parse_module.scala 51:9]
      end
    end else begin
      phv_header_3 <= io_pipe_phv_in_header_3; // @[parse_module.scala 51:9]
    end
    if (is_valid) begin // @[parse_module.scala 56:21]
      if (4'h4 == match_val_header_id[3:0]) begin // @[parse_module.scala 79:41]
        phv_header_4 <= _phv_header_T; // @[parse_module.scala 79:41]
      end else begin
        phv_header_4 <= io_pipe_phv_in_header_4; // @[parse_module.scala 51:9]
      end
    end else begin
      phv_header_4 <= io_pipe_phv_in_header_4; // @[parse_module.scala 51:9]
    end
    if (is_valid) begin // @[parse_module.scala 56:21]
      if (4'h5 == match_val_header_id[3:0]) begin // @[parse_module.scala 79:41]
        phv_header_5 <= _phv_header_T; // @[parse_module.scala 79:41]
      end else begin
        phv_header_5 <= io_pipe_phv_in_header_5; // @[parse_module.scala 51:9]
      end
    end else begin
      phv_header_5 <= io_pipe_phv_in_header_5; // @[parse_module.scala 51:9]
    end
    if (is_valid) begin // @[parse_module.scala 56:21]
      if (4'h6 == match_val_header_id[3:0]) begin // @[parse_module.scala 79:41]
        phv_header_6 <= _phv_header_T; // @[parse_module.scala 79:41]
      end else begin
        phv_header_6 <= io_pipe_phv_in_header_6; // @[parse_module.scala 51:9]
      end
    end else begin
      phv_header_6 <= io_pipe_phv_in_header_6; // @[parse_module.scala 51:9]
    end
    if (is_valid) begin // @[parse_module.scala 56:21]
      if (4'h7 == match_val_header_id[3:0]) begin // @[parse_module.scala 79:41]
        phv_header_7 <= _phv_header_T; // @[parse_module.scala 79:41]
      end else begin
        phv_header_7 <= io_pipe_phv_in_header_7; // @[parse_module.scala 51:9]
      end
    end else begin
      phv_header_7 <= io_pipe_phv_in_header_7; // @[parse_module.scala 51:9]
    end
    if (is_valid) begin // @[parse_module.scala 56:21]
      if (4'h8 == match_val_header_id[3:0]) begin // @[parse_module.scala 79:41]
        phv_header_8 <= _phv_header_T; // @[parse_module.scala 79:41]
      end else begin
        phv_header_8 <= io_pipe_phv_in_header_8; // @[parse_module.scala 51:9]
      end
    end else begin
      phv_header_8 <= io_pipe_phv_in_header_8; // @[parse_module.scala 51:9]
    end
    if (is_valid) begin // @[parse_module.scala 56:21]
      if (4'h9 == match_val_header_id[3:0]) begin // @[parse_module.scala 79:41]
        phv_header_9 <= _phv_header_T; // @[parse_module.scala 79:41]
      end else begin
        phv_header_9 <= io_pipe_phv_in_header_9; // @[parse_module.scala 51:9]
      end
    end else begin
      phv_header_9 <= io_pipe_phv_in_header_9; // @[parse_module.scala 51:9]
    end
    if (is_valid) begin // @[parse_module.scala 56:21]
      if (4'ha == match_val_header_id[3:0]) begin // @[parse_module.scala 79:41]
        phv_header_10 <= _phv_header_T; // @[parse_module.scala 79:41]
      end else begin
        phv_header_10 <= io_pipe_phv_in_header_10; // @[parse_module.scala 51:9]
      end
    end else begin
      phv_header_10 <= io_pipe_phv_in_header_10; // @[parse_module.scala 51:9]
    end
    if (is_valid) begin // @[parse_module.scala 56:21]
      if (4'hb == match_val_header_id[3:0]) begin // @[parse_module.scala 79:41]
        phv_header_11 <= _phv_header_T; // @[parse_module.scala 79:41]
      end else begin
        phv_header_11 <= io_pipe_phv_in_header_11; // @[parse_module.scala 51:9]
      end
    end else begin
      phv_header_11 <= io_pipe_phv_in_header_11; // @[parse_module.scala 51:9]
    end
    if (is_valid) begin // @[parse_module.scala 56:21]
      if (4'hc == match_val_header_id[3:0]) begin // @[parse_module.scala 79:41]
        phv_header_12 <= _phv_header_T; // @[parse_module.scala 79:41]
      end else begin
        phv_header_12 <= io_pipe_phv_in_header_12; // @[parse_module.scala 51:9]
      end
    end else begin
      phv_header_12 <= io_pipe_phv_in_header_12; // @[parse_module.scala 51:9]
    end
    if (is_valid) begin // @[parse_module.scala 56:21]
      if (4'hd == match_val_header_id[3:0]) begin // @[parse_module.scala 79:41]
        phv_header_13 <= _phv_header_T; // @[parse_module.scala 79:41]
      end else begin
        phv_header_13 <= io_pipe_phv_in_header_13; // @[parse_module.scala 51:9]
      end
    end else begin
      phv_header_13 <= io_pipe_phv_in_header_13; // @[parse_module.scala 51:9]
    end
    if (is_valid) begin // @[parse_module.scala 56:21]
      if (4'he == match_val_header_id[3:0]) begin // @[parse_module.scala 79:41]
        phv_header_14 <= _phv_header_T; // @[parse_module.scala 79:41]
      end else begin
        phv_header_14 <= io_pipe_phv_in_header_14; // @[parse_module.scala 51:9]
      end
    end else begin
      phv_header_14 <= io_pipe_phv_in_header_14; // @[parse_module.scala 51:9]
    end
    if (is_valid) begin // @[parse_module.scala 56:21]
      if (4'hf == match_val_header_id[3:0]) begin // @[parse_module.scala 79:41]
        phv_header_15 <= _phv_header_T; // @[parse_module.scala 79:41]
      end else begin
        phv_header_15 <= io_pipe_phv_in_header_15; // @[parse_module.scala 51:9]
      end
    end else begin
      phv_header_15 <= io_pipe_phv_in_header_15; // @[parse_module.scala 51:9]
    end
    if (is_valid) begin // @[parse_module.scala 56:21]
      phv_parse_current_state <= match_val_next_state; // @[parse_module.scala 67:34]
    end else begin
      phv_parse_current_state <= io_pipe_phv_in_parse_current_state; // @[parse_module.scala 51:9]
    end
    if (is_valid) begin // @[parse_module.scala 56:21]
      phv_parse_current_offset <= _phv_parse_current_offset_T_1; // @[parse_module.scala 68:34]
    end else begin
      phv_parse_current_offset <= io_pipe_phv_in_parse_current_offset; // @[parse_module.scala 51:9]
    end
    if (is_valid) begin // @[parse_module.scala 56:21]
      phv_parse_transition_field <= transition_field; // @[parse_module.scala 77:36]
    end else begin
      phv_parse_transition_field <= io_pipe_phv_in_parse_transition_field; // @[parse_module.scala 51:9]
    end
    phv_next_processor_id <= io_pipe_phv_in_next_processor_id; // @[parse_module.scala 51:9]
    phv_next_config_id <= io_pipe_phv_in_next_config_id; // @[parse_module.scala 51:9]
    phv_is_valid_processor <= io_pipe_phv_in_is_valid_processor; // @[parse_module.scala 51:9]
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
  phv_header_0 = _RAND_96[15:0];
  _RAND_97 = {1{`RANDOM}};
  phv_header_1 = _RAND_97[15:0];
  _RAND_98 = {1{`RANDOM}};
  phv_header_2 = _RAND_98[15:0];
  _RAND_99 = {1{`RANDOM}};
  phv_header_3 = _RAND_99[15:0];
  _RAND_100 = {1{`RANDOM}};
  phv_header_4 = _RAND_100[15:0];
  _RAND_101 = {1{`RANDOM}};
  phv_header_5 = _RAND_101[15:0];
  _RAND_102 = {1{`RANDOM}};
  phv_header_6 = _RAND_102[15:0];
  _RAND_103 = {1{`RANDOM}};
  phv_header_7 = _RAND_103[15:0];
  _RAND_104 = {1{`RANDOM}};
  phv_header_8 = _RAND_104[15:0];
  _RAND_105 = {1{`RANDOM}};
  phv_header_9 = _RAND_105[15:0];
  _RAND_106 = {1{`RANDOM}};
  phv_header_10 = _RAND_106[15:0];
  _RAND_107 = {1{`RANDOM}};
  phv_header_11 = _RAND_107[15:0];
  _RAND_108 = {1{`RANDOM}};
  phv_header_12 = _RAND_108[15:0];
  _RAND_109 = {1{`RANDOM}};
  phv_header_13 = _RAND_109[15:0];
  _RAND_110 = {1{`RANDOM}};
  phv_header_14 = _RAND_110[15:0];
  _RAND_111 = {1{`RANDOM}};
  phv_header_15 = _RAND_111[15:0];
  _RAND_112 = {1{`RANDOM}};
  phv_parse_current_state = _RAND_112[7:0];
  _RAND_113 = {1{`RANDOM}};
  phv_parse_current_offset = _RAND_113[7:0];
  _RAND_114 = {1{`RANDOM}};
  phv_parse_transition_field = _RAND_114[15:0];
  _RAND_115 = {1{`RANDOM}};
  phv_next_processor_id = _RAND_115[1:0];
  _RAND_116 = {1{`RANDOM}};
  phv_next_config_id = _RAND_116[0:0];
  _RAND_117 = {1{`RANDOM}};
  phv_is_valid_processor = _RAND_117[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
