module Parser(
  input         clock,
  input         reset,
  input         io_start,
  input  [7:0]  io_packet_header_0,
  input  [7:0]  io_packet_header_1,
  input  [7:0]  io_packet_header_2,
  input  [7:0]  io_packet_header_3,
  input  [7:0]  io_packet_header_4,
  input  [7:0]  io_packet_header_5,
  input  [7:0]  io_packet_header_6,
  input  [7:0]  io_packet_header_7,
  input  [7:0]  io_packet_header_8,
  input  [7:0]  io_packet_header_9,
  input  [7:0]  io_packet_header_10,
  input  [7:0]  io_packet_header_11,
  input  [7:0]  io_packet_header_12,
  input  [7:0]  io_packet_header_13,
  input  [7:0]  io_packet_header_14,
  input  [7:0]  io_packet_header_15,
  input  [7:0]  io_packet_header_16,
  input  [7:0]  io_packet_header_17,
  input  [7:0]  io_packet_header_18,
  input  [7:0]  io_packet_header_19,
  input  [7:0]  io_packet_header_20,
  input  [7:0]  io_packet_header_21,
  input  [7:0]  io_packet_header_22,
  input  [7:0]  io_packet_header_23,
  input  [7:0]  io_packet_header_24,
  input  [7:0]  io_packet_header_25,
  input  [7:0]  io_packet_header_26,
  input  [7:0]  io_packet_header_27,
  input  [7:0]  io_packet_header_28,
  input  [7:0]  io_packet_header_29,
  input  [7:0]  io_packet_header_30,
  input  [7:0]  io_packet_header_31,
  input  [7:0]  io_packet_header_32,
  input  [7:0]  io_packet_header_33,
  input  [7:0]  io_packet_header_34,
  input  [7:0]  io_packet_header_35,
  input  [7:0]  io_packet_header_36,
  input  [7:0]  io_packet_header_37,
  input  [7:0]  io_packet_header_38,
  input  [7:0]  io_packet_header_39,
  input  [7:0]  io_packet_header_40,
  input  [7:0]  io_packet_header_41,
  input  [7:0]  io_packet_header_42,
  input  [7:0]  io_packet_header_43,
  input  [7:0]  io_packet_header_44,
  input  [7:0]  io_packet_header_45,
  input  [7:0]  io_packet_header_46,
  input  [7:0]  io_packet_header_47,
  input  [7:0]  io_packet_header_48,
  input  [7:0]  io_packet_header_49,
  input  [7:0]  io_packet_header_50,
  input  [7:0]  io_packet_header_51,
  input  [7:0]  io_packet_header_52,
  input  [7:0]  io_packet_header_53,
  input  [7:0]  io_packet_header_54,
  input  [7:0]  io_packet_header_55,
  input  [7:0]  io_packet_header_56,
  input  [7:0]  io_packet_header_57,
  input  [7:0]  io_packet_header_58,
  input  [7:0]  io_packet_header_59,
  input  [7:0]  io_packet_header_60,
  input  [7:0]  io_packet_header_61,
  input  [7:0]  io_packet_header_62,
  input  [7:0]  io_packet_header_63,
  output        io_ready,
  output [31:0] io_parsed_header_0,
  output [31:0] io_parsed_header_1,
  input         io_mod_start,
  input         io_mod_header_id,
  input  [31:0] io_mod_header_length,
  input  [31:0] io_mod_next_tag_start,
  input  [31:0] io_mod_next_table_0,
  input  [31:0] io_mod_next_table_1
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
`endif // RANDOMIZE_REG_INIT
  reg [31:0] header_lengths_0; // @[parser.scala 17:30]
  reg [31:0] header_lengths_1; // @[parser.scala 17:30]
  reg [31:0] next_tag_starts_0; // @[parser.scala 18:30]
  reg [31:0] next_table_0; // @[parser.scala 20:25]
  reg [31:0] next_table_1; // @[parser.scala 20:25]
  reg [31:0] next_table_2; // @[parser.scala 20:25]
  reg [31:0] next_table_3; // @[parser.scala 20:25]
  reg  header_id; // @[parser.scala 22:30]
  reg [31:0] header_addr; // @[parser.scala 23:30]
  reg [15:0] next_tag; // @[parser.scala 24:29]
  reg [1:0] state; // @[parser.scala 25:29]
  reg  ready; // @[parser.scala 27:32]
  reg [31:0] parsed_header_0; // @[parser.scala 28:28]
  reg [31:0] parsed_header_1; // @[parser.scala 28:28]
  wire [1:0] _T_1 = {1'h0,io_mod_header_id}; // @[Cat.scala 30:58]
  wire [1:0] _T_2 = {1'h1,io_mod_header_id}; // @[Cat.scala 30:58]
  wire [31:0] _next_tag_T_2 = next_tag_starts_0 + 32'h1; // @[parser.scala 51:57]
  wire [7:0] _GEN_15 = 6'h1 == next_tag_starts_0[5:0] ? io_packet_header_1 : io_packet_header_0; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_16 = 6'h2 == next_tag_starts_0[5:0] ? io_packet_header_2 : _GEN_15; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_17 = 6'h3 == next_tag_starts_0[5:0] ? io_packet_header_3 : _GEN_16; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_18 = 6'h4 == next_tag_starts_0[5:0] ? io_packet_header_4 : _GEN_17; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_19 = 6'h5 == next_tag_starts_0[5:0] ? io_packet_header_5 : _GEN_18; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_20 = 6'h6 == next_tag_starts_0[5:0] ? io_packet_header_6 : _GEN_19; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_21 = 6'h7 == next_tag_starts_0[5:0] ? io_packet_header_7 : _GEN_20; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_22 = 6'h8 == next_tag_starts_0[5:0] ? io_packet_header_8 : _GEN_21; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_23 = 6'h9 == next_tag_starts_0[5:0] ? io_packet_header_9 : _GEN_22; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_24 = 6'ha == next_tag_starts_0[5:0] ? io_packet_header_10 : _GEN_23; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_25 = 6'hb == next_tag_starts_0[5:0] ? io_packet_header_11 : _GEN_24; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_26 = 6'hc == next_tag_starts_0[5:0] ? io_packet_header_12 : _GEN_25; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_27 = 6'hd == next_tag_starts_0[5:0] ? io_packet_header_13 : _GEN_26; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_28 = 6'he == next_tag_starts_0[5:0] ? io_packet_header_14 : _GEN_27; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_29 = 6'hf == next_tag_starts_0[5:0] ? io_packet_header_15 : _GEN_28; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_30 = 6'h10 == next_tag_starts_0[5:0] ? io_packet_header_16 : _GEN_29; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_31 = 6'h11 == next_tag_starts_0[5:0] ? io_packet_header_17 : _GEN_30; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_32 = 6'h12 == next_tag_starts_0[5:0] ? io_packet_header_18 : _GEN_31; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_33 = 6'h13 == next_tag_starts_0[5:0] ? io_packet_header_19 : _GEN_32; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_34 = 6'h14 == next_tag_starts_0[5:0] ? io_packet_header_20 : _GEN_33; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_35 = 6'h15 == next_tag_starts_0[5:0] ? io_packet_header_21 : _GEN_34; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_36 = 6'h16 == next_tag_starts_0[5:0] ? io_packet_header_22 : _GEN_35; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_37 = 6'h17 == next_tag_starts_0[5:0] ? io_packet_header_23 : _GEN_36; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_38 = 6'h18 == next_tag_starts_0[5:0] ? io_packet_header_24 : _GEN_37; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_39 = 6'h19 == next_tag_starts_0[5:0] ? io_packet_header_25 : _GEN_38; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_40 = 6'h1a == next_tag_starts_0[5:0] ? io_packet_header_26 : _GEN_39; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_41 = 6'h1b == next_tag_starts_0[5:0] ? io_packet_header_27 : _GEN_40; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_42 = 6'h1c == next_tag_starts_0[5:0] ? io_packet_header_28 : _GEN_41; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_43 = 6'h1d == next_tag_starts_0[5:0] ? io_packet_header_29 : _GEN_42; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_44 = 6'h1e == next_tag_starts_0[5:0] ? io_packet_header_30 : _GEN_43; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_45 = 6'h1f == next_tag_starts_0[5:0] ? io_packet_header_31 : _GEN_44; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_46 = 6'h20 == next_tag_starts_0[5:0] ? io_packet_header_32 : _GEN_45; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_47 = 6'h21 == next_tag_starts_0[5:0] ? io_packet_header_33 : _GEN_46; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_48 = 6'h22 == next_tag_starts_0[5:0] ? io_packet_header_34 : _GEN_47; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_49 = 6'h23 == next_tag_starts_0[5:0] ? io_packet_header_35 : _GEN_48; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_50 = 6'h24 == next_tag_starts_0[5:0] ? io_packet_header_36 : _GEN_49; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_51 = 6'h25 == next_tag_starts_0[5:0] ? io_packet_header_37 : _GEN_50; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_52 = 6'h26 == next_tag_starts_0[5:0] ? io_packet_header_38 : _GEN_51; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_53 = 6'h27 == next_tag_starts_0[5:0] ? io_packet_header_39 : _GEN_52; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_54 = 6'h28 == next_tag_starts_0[5:0] ? io_packet_header_40 : _GEN_53; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_55 = 6'h29 == next_tag_starts_0[5:0] ? io_packet_header_41 : _GEN_54; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_56 = 6'h2a == next_tag_starts_0[5:0] ? io_packet_header_42 : _GEN_55; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_57 = 6'h2b == next_tag_starts_0[5:0] ? io_packet_header_43 : _GEN_56; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_58 = 6'h2c == next_tag_starts_0[5:0] ? io_packet_header_44 : _GEN_57; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_59 = 6'h2d == next_tag_starts_0[5:0] ? io_packet_header_45 : _GEN_58; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_60 = 6'h2e == next_tag_starts_0[5:0] ? io_packet_header_46 : _GEN_59; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_61 = 6'h2f == next_tag_starts_0[5:0] ? io_packet_header_47 : _GEN_60; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_62 = 6'h30 == next_tag_starts_0[5:0] ? io_packet_header_48 : _GEN_61; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_63 = 6'h31 == next_tag_starts_0[5:0] ? io_packet_header_49 : _GEN_62; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_64 = 6'h32 == next_tag_starts_0[5:0] ? io_packet_header_50 : _GEN_63; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_65 = 6'h33 == next_tag_starts_0[5:0] ? io_packet_header_51 : _GEN_64; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_66 = 6'h34 == next_tag_starts_0[5:0] ? io_packet_header_52 : _GEN_65; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_67 = 6'h35 == next_tag_starts_0[5:0] ? io_packet_header_53 : _GEN_66; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_68 = 6'h36 == next_tag_starts_0[5:0] ? io_packet_header_54 : _GEN_67; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_69 = 6'h37 == next_tag_starts_0[5:0] ? io_packet_header_55 : _GEN_68; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_70 = 6'h38 == next_tag_starts_0[5:0] ? io_packet_header_56 : _GEN_69; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_71 = 6'h39 == next_tag_starts_0[5:0] ? io_packet_header_57 : _GEN_70; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_72 = 6'h3a == next_tag_starts_0[5:0] ? io_packet_header_58 : _GEN_71; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_73 = 6'h3b == next_tag_starts_0[5:0] ? io_packet_header_59 : _GEN_72; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_74 = 6'h3c == next_tag_starts_0[5:0] ? io_packet_header_60 : _GEN_73; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_75 = 6'h3d == next_tag_starts_0[5:0] ? io_packet_header_61 : _GEN_74; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_76 = 6'h3e == next_tag_starts_0[5:0] ? io_packet_header_62 : _GEN_75; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_77 = 6'h3f == next_tag_starts_0[5:0] ? io_packet_header_63 : _GEN_76; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_79 = 6'h1 == _next_tag_T_2[5:0] ? io_packet_header_1 : io_packet_header_0; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_80 = 6'h2 == _next_tag_T_2[5:0] ? io_packet_header_2 : _GEN_79; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_81 = 6'h3 == _next_tag_T_2[5:0] ? io_packet_header_3 : _GEN_80; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_82 = 6'h4 == _next_tag_T_2[5:0] ? io_packet_header_4 : _GEN_81; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_83 = 6'h5 == _next_tag_T_2[5:0] ? io_packet_header_5 : _GEN_82; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_84 = 6'h6 == _next_tag_T_2[5:0] ? io_packet_header_6 : _GEN_83; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_85 = 6'h7 == _next_tag_T_2[5:0] ? io_packet_header_7 : _GEN_84; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_86 = 6'h8 == _next_tag_T_2[5:0] ? io_packet_header_8 : _GEN_85; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_87 = 6'h9 == _next_tag_T_2[5:0] ? io_packet_header_9 : _GEN_86; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_88 = 6'ha == _next_tag_T_2[5:0] ? io_packet_header_10 : _GEN_87; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_89 = 6'hb == _next_tag_T_2[5:0] ? io_packet_header_11 : _GEN_88; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_90 = 6'hc == _next_tag_T_2[5:0] ? io_packet_header_12 : _GEN_89; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_91 = 6'hd == _next_tag_T_2[5:0] ? io_packet_header_13 : _GEN_90; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_92 = 6'he == _next_tag_T_2[5:0] ? io_packet_header_14 : _GEN_91; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_93 = 6'hf == _next_tag_T_2[5:0] ? io_packet_header_15 : _GEN_92; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_94 = 6'h10 == _next_tag_T_2[5:0] ? io_packet_header_16 : _GEN_93; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_95 = 6'h11 == _next_tag_T_2[5:0] ? io_packet_header_17 : _GEN_94; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_96 = 6'h12 == _next_tag_T_2[5:0] ? io_packet_header_18 : _GEN_95; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_97 = 6'h13 == _next_tag_T_2[5:0] ? io_packet_header_19 : _GEN_96; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_98 = 6'h14 == _next_tag_T_2[5:0] ? io_packet_header_20 : _GEN_97; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_99 = 6'h15 == _next_tag_T_2[5:0] ? io_packet_header_21 : _GEN_98; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_100 = 6'h16 == _next_tag_T_2[5:0] ? io_packet_header_22 : _GEN_99; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_101 = 6'h17 == _next_tag_T_2[5:0] ? io_packet_header_23 : _GEN_100; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_102 = 6'h18 == _next_tag_T_2[5:0] ? io_packet_header_24 : _GEN_101; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_103 = 6'h19 == _next_tag_T_2[5:0] ? io_packet_header_25 : _GEN_102; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_104 = 6'h1a == _next_tag_T_2[5:0] ? io_packet_header_26 : _GEN_103; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_105 = 6'h1b == _next_tag_T_2[5:0] ? io_packet_header_27 : _GEN_104; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_106 = 6'h1c == _next_tag_T_2[5:0] ? io_packet_header_28 : _GEN_105; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_107 = 6'h1d == _next_tag_T_2[5:0] ? io_packet_header_29 : _GEN_106; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_108 = 6'h1e == _next_tag_T_2[5:0] ? io_packet_header_30 : _GEN_107; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_109 = 6'h1f == _next_tag_T_2[5:0] ? io_packet_header_31 : _GEN_108; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_110 = 6'h20 == _next_tag_T_2[5:0] ? io_packet_header_32 : _GEN_109; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_111 = 6'h21 == _next_tag_T_2[5:0] ? io_packet_header_33 : _GEN_110; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_112 = 6'h22 == _next_tag_T_2[5:0] ? io_packet_header_34 : _GEN_111; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_113 = 6'h23 == _next_tag_T_2[5:0] ? io_packet_header_35 : _GEN_112; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_114 = 6'h24 == _next_tag_T_2[5:0] ? io_packet_header_36 : _GEN_113; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_115 = 6'h25 == _next_tag_T_2[5:0] ? io_packet_header_37 : _GEN_114; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_116 = 6'h26 == _next_tag_T_2[5:0] ? io_packet_header_38 : _GEN_115; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_117 = 6'h27 == _next_tag_T_2[5:0] ? io_packet_header_39 : _GEN_116; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_118 = 6'h28 == _next_tag_T_2[5:0] ? io_packet_header_40 : _GEN_117; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_119 = 6'h29 == _next_tag_T_2[5:0] ? io_packet_header_41 : _GEN_118; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_120 = 6'h2a == _next_tag_T_2[5:0] ? io_packet_header_42 : _GEN_119; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_121 = 6'h2b == _next_tag_T_2[5:0] ? io_packet_header_43 : _GEN_120; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_122 = 6'h2c == _next_tag_T_2[5:0] ? io_packet_header_44 : _GEN_121; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_123 = 6'h2d == _next_tag_T_2[5:0] ? io_packet_header_45 : _GEN_122; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_124 = 6'h2e == _next_tag_T_2[5:0] ? io_packet_header_46 : _GEN_123; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_125 = 6'h2f == _next_tag_T_2[5:0] ? io_packet_header_47 : _GEN_124; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_126 = 6'h30 == _next_tag_T_2[5:0] ? io_packet_header_48 : _GEN_125; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_127 = 6'h31 == _next_tag_T_2[5:0] ? io_packet_header_49 : _GEN_126; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_128 = 6'h32 == _next_tag_T_2[5:0] ? io_packet_header_50 : _GEN_127; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_129 = 6'h33 == _next_tag_T_2[5:0] ? io_packet_header_51 : _GEN_128; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_130 = 6'h34 == _next_tag_T_2[5:0] ? io_packet_header_52 : _GEN_129; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_131 = 6'h35 == _next_tag_T_2[5:0] ? io_packet_header_53 : _GEN_130; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_132 = 6'h36 == _next_tag_T_2[5:0] ? io_packet_header_54 : _GEN_131; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_133 = 6'h37 == _next_tag_T_2[5:0] ? io_packet_header_55 : _GEN_132; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_134 = 6'h38 == _next_tag_T_2[5:0] ? io_packet_header_56 : _GEN_133; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_135 = 6'h39 == _next_tag_T_2[5:0] ? io_packet_header_57 : _GEN_134; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_136 = 6'h3a == _next_tag_T_2[5:0] ? io_packet_header_58 : _GEN_135; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_137 = 6'h3b == _next_tag_T_2[5:0] ? io_packet_header_59 : _GEN_136; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_138 = 6'h3c == _next_tag_T_2[5:0] ? io_packet_header_60 : _GEN_137; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_139 = 6'h3d == _next_tag_T_2[5:0] ? io_packet_header_61 : _GEN_138; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_140 = 6'h3e == _next_tag_T_2[5:0] ? io_packet_header_62 : _GEN_139; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_141 = 6'h3f == _next_tag_T_2[5:0] ? io_packet_header_63 : _GEN_140; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [15:0] _next_tag_T_4 = {_GEN_77,_GEN_141}; // @[Cat.scala 30:58]
  wire [1:0] _GEN_142 = io_start ? 2'h1 : state; // @[parser.scala 41:29 parser.scala 42:23 parser.scala 25:29]
  wire  _GEN_143 = io_start ? 1'h0 : ready; // @[parser.scala 41:29 parser.scala 43:23 parser.scala 27:32]
  wire [31:0] _GEN_144 = io_start ? 32'h0 : parsed_header_0; // @[parser.scala 41:29 parser.scala 45:38 parser.scala 28:28]
  wire [31:0] _GEN_145 = io_start ? 32'h0 : parsed_header_1; // @[parser.scala 41:29 parser.scala 45:38 parser.scala 28:28]
  wire  _GEN_146 = io_start ? 1'h0 : header_id; // @[parser.scala 41:29 parser.scala 47:27 parser.scala 22:30]
  wire [31:0] _GEN_147 = io_start ? 32'h0 : header_addr; // @[parser.scala 41:29 parser.scala 48:29 parser.scala 23:30]
  wire [15:0] _GEN_148 = io_start ? _next_tag_T_4 : next_tag; // @[parser.scala 41:29 parser.scala 49:26 parser.scala 24:29]
  wire [1:0] _GEN_159 = io_mod_start ? state : _GEN_142; // @[parser.scala 33:29 parser.scala 25:29]
  wire  _GEN_160 = io_mod_start ? ready : _GEN_143; // @[parser.scala 33:29 parser.scala 27:32]
  wire [31:0] _GEN_161 = io_mod_start ? parsed_header_0 : _GEN_144; // @[parser.scala 33:29 parser.scala 28:28]
  wire [31:0] _GEN_162 = io_mod_start ? parsed_header_1 : _GEN_145; // @[parser.scala 33:29 parser.scala 28:28]
  wire  _GEN_163 = io_mod_start ? header_id : _GEN_146; // @[parser.scala 33:29 parser.scala 22:30]
  wire [31:0] _GEN_164 = io_mod_start ? header_addr : _GEN_147; // @[parser.scala 33:29 parser.scala 23:30]
  wire [15:0] _GEN_165 = io_mod_start ? next_tag : _GEN_148; // @[parser.scala 33:29 parser.scala 24:29]
  wire [1:0] _GEN_176 = state == 2'h0 ? _GEN_159 : state; // @[parser.scala 32:31 parser.scala 25:29]
  wire  _GEN_177 = state == 2'h0 ? _GEN_160 : ready; // @[parser.scala 32:31 parser.scala 27:32]
  wire [31:0] _GEN_178 = state == 2'h0 ? _GEN_161 : parsed_header_0; // @[parser.scala 32:31 parser.scala 28:28]
  wire [31:0] _GEN_179 = state == 2'h0 ? _GEN_162 : parsed_header_1; // @[parser.scala 32:31 parser.scala 28:28]
  wire  _GEN_180 = state == 2'h0 ? _GEN_163 : header_id; // @[parser.scala 32:31 parser.scala 22:30]
  wire [31:0] _GEN_181 = state == 2'h0 ? _GEN_164 : header_addr; // @[parser.scala 32:31 parser.scala 23:30]
  wire [15:0] _GEN_182 = state == 2'h0 ? _GEN_165 : next_tag; // @[parser.scala 32:31 parser.scala 24:29]
  wire [31:0] _header_addr_T_1 = header_addr + header_lengths_0; // @[parser.scala 61:44]
  wire [15:0] next_header_id = next_table_0[15:0]; // @[const.scala 45:47]
  wire [31:0] _GEN_483 = {{16'd0}, next_header_id}; // @[parser.scala 70:87]
  wire [31:0] _next_tag_T_8 = _header_addr_T_1 + _GEN_483; // @[parser.scala 70:87]
  wire [7:0] _GEN_188 = 6'h1 == _next_tag_T_8[5:0] ? io_packet_header_1 : io_packet_header_0; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_189 = 6'h2 == _next_tag_T_8[5:0] ? io_packet_header_2 : _GEN_188; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_190 = 6'h3 == _next_tag_T_8[5:0] ? io_packet_header_3 : _GEN_189; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_191 = 6'h4 == _next_tag_T_8[5:0] ? io_packet_header_4 : _GEN_190; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_192 = 6'h5 == _next_tag_T_8[5:0] ? io_packet_header_5 : _GEN_191; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_193 = 6'h6 == _next_tag_T_8[5:0] ? io_packet_header_6 : _GEN_192; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_194 = 6'h7 == _next_tag_T_8[5:0] ? io_packet_header_7 : _GEN_193; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_195 = 6'h8 == _next_tag_T_8[5:0] ? io_packet_header_8 : _GEN_194; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_196 = 6'h9 == _next_tag_T_8[5:0] ? io_packet_header_9 : _GEN_195; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_197 = 6'ha == _next_tag_T_8[5:0] ? io_packet_header_10 : _GEN_196; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_198 = 6'hb == _next_tag_T_8[5:0] ? io_packet_header_11 : _GEN_197; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_199 = 6'hc == _next_tag_T_8[5:0] ? io_packet_header_12 : _GEN_198; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_200 = 6'hd == _next_tag_T_8[5:0] ? io_packet_header_13 : _GEN_199; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_201 = 6'he == _next_tag_T_8[5:0] ? io_packet_header_14 : _GEN_200; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_202 = 6'hf == _next_tag_T_8[5:0] ? io_packet_header_15 : _GEN_201; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_203 = 6'h10 == _next_tag_T_8[5:0] ? io_packet_header_16 : _GEN_202; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_204 = 6'h11 == _next_tag_T_8[5:0] ? io_packet_header_17 : _GEN_203; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_205 = 6'h12 == _next_tag_T_8[5:0] ? io_packet_header_18 : _GEN_204; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_206 = 6'h13 == _next_tag_T_8[5:0] ? io_packet_header_19 : _GEN_205; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_207 = 6'h14 == _next_tag_T_8[5:0] ? io_packet_header_20 : _GEN_206; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_208 = 6'h15 == _next_tag_T_8[5:0] ? io_packet_header_21 : _GEN_207; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_209 = 6'h16 == _next_tag_T_8[5:0] ? io_packet_header_22 : _GEN_208; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_210 = 6'h17 == _next_tag_T_8[5:0] ? io_packet_header_23 : _GEN_209; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_211 = 6'h18 == _next_tag_T_8[5:0] ? io_packet_header_24 : _GEN_210; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_212 = 6'h19 == _next_tag_T_8[5:0] ? io_packet_header_25 : _GEN_211; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_213 = 6'h1a == _next_tag_T_8[5:0] ? io_packet_header_26 : _GEN_212; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_214 = 6'h1b == _next_tag_T_8[5:0] ? io_packet_header_27 : _GEN_213; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_215 = 6'h1c == _next_tag_T_8[5:0] ? io_packet_header_28 : _GEN_214; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_216 = 6'h1d == _next_tag_T_8[5:0] ? io_packet_header_29 : _GEN_215; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_217 = 6'h1e == _next_tag_T_8[5:0] ? io_packet_header_30 : _GEN_216; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_218 = 6'h1f == _next_tag_T_8[5:0] ? io_packet_header_31 : _GEN_217; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_219 = 6'h20 == _next_tag_T_8[5:0] ? io_packet_header_32 : _GEN_218; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_220 = 6'h21 == _next_tag_T_8[5:0] ? io_packet_header_33 : _GEN_219; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_221 = 6'h22 == _next_tag_T_8[5:0] ? io_packet_header_34 : _GEN_220; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_222 = 6'h23 == _next_tag_T_8[5:0] ? io_packet_header_35 : _GEN_221; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_223 = 6'h24 == _next_tag_T_8[5:0] ? io_packet_header_36 : _GEN_222; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_224 = 6'h25 == _next_tag_T_8[5:0] ? io_packet_header_37 : _GEN_223; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_225 = 6'h26 == _next_tag_T_8[5:0] ? io_packet_header_38 : _GEN_224; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_226 = 6'h27 == _next_tag_T_8[5:0] ? io_packet_header_39 : _GEN_225; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_227 = 6'h28 == _next_tag_T_8[5:0] ? io_packet_header_40 : _GEN_226; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_228 = 6'h29 == _next_tag_T_8[5:0] ? io_packet_header_41 : _GEN_227; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_229 = 6'h2a == _next_tag_T_8[5:0] ? io_packet_header_42 : _GEN_228; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_230 = 6'h2b == _next_tag_T_8[5:0] ? io_packet_header_43 : _GEN_229; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_231 = 6'h2c == _next_tag_T_8[5:0] ? io_packet_header_44 : _GEN_230; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_232 = 6'h2d == _next_tag_T_8[5:0] ? io_packet_header_45 : _GEN_231; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_233 = 6'h2e == _next_tag_T_8[5:0] ? io_packet_header_46 : _GEN_232; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_234 = 6'h2f == _next_tag_T_8[5:0] ? io_packet_header_47 : _GEN_233; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_235 = 6'h30 == _next_tag_T_8[5:0] ? io_packet_header_48 : _GEN_234; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_236 = 6'h31 == _next_tag_T_8[5:0] ? io_packet_header_49 : _GEN_235; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_237 = 6'h32 == _next_tag_T_8[5:0] ? io_packet_header_50 : _GEN_236; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_238 = 6'h33 == _next_tag_T_8[5:0] ? io_packet_header_51 : _GEN_237; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_239 = 6'h34 == _next_tag_T_8[5:0] ? io_packet_header_52 : _GEN_238; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_240 = 6'h35 == _next_tag_T_8[5:0] ? io_packet_header_53 : _GEN_239; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_241 = 6'h36 == _next_tag_T_8[5:0] ? io_packet_header_54 : _GEN_240; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_242 = 6'h37 == _next_tag_T_8[5:0] ? io_packet_header_55 : _GEN_241; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_243 = 6'h38 == _next_tag_T_8[5:0] ? io_packet_header_56 : _GEN_242; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_244 = 6'h39 == _next_tag_T_8[5:0] ? io_packet_header_57 : _GEN_243; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_245 = 6'h3a == _next_tag_T_8[5:0] ? io_packet_header_58 : _GEN_244; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_246 = 6'h3b == _next_tag_T_8[5:0] ? io_packet_header_59 : _GEN_245; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_247 = 6'h3c == _next_tag_T_8[5:0] ? io_packet_header_60 : _GEN_246; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_248 = 6'h3d == _next_tag_T_8[5:0] ? io_packet_header_61 : _GEN_247; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_249 = 6'h3e == _next_tag_T_8[5:0] ? io_packet_header_62 : _GEN_248; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_250 = 6'h3f == _next_tag_T_8[5:0] ? io_packet_header_63 : _GEN_249; // @[parser.scala 70:35 parser.scala 70:35]
  wire [15:0] _GEN_251 = next_tag == next_table_0[31:16] ? next_header_id : {{15'd0}, _GEN_180}; // @[parser.scala 68:66 parser.scala 69:35]
  wire [15:0] _GEN_252 = next_tag == next_table_0[31:16] ? {{8'd0}, _GEN_250} : _GEN_182; // @[parser.scala 68:66 parser.scala 70:35]
  wire [15:0] next_header_id_1 = next_table_2[15:0]; // @[const.scala 45:47]
  wire [31:0] _GEN_484 = {{16'd0}, next_header_id_1}; // @[parser.scala 70:87]
  wire [31:0] _next_tag_T_13 = _header_addr_T_1 + _GEN_484; // @[parser.scala 70:87]
  wire [7:0] _GEN_258 = 6'h1 == _next_tag_T_13[5:0] ? io_packet_header_1 : io_packet_header_0; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_259 = 6'h2 == _next_tag_T_13[5:0] ? io_packet_header_2 : _GEN_258; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_260 = 6'h3 == _next_tag_T_13[5:0] ? io_packet_header_3 : _GEN_259; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_261 = 6'h4 == _next_tag_T_13[5:0] ? io_packet_header_4 : _GEN_260; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_262 = 6'h5 == _next_tag_T_13[5:0] ? io_packet_header_5 : _GEN_261; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_263 = 6'h6 == _next_tag_T_13[5:0] ? io_packet_header_6 : _GEN_262; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_264 = 6'h7 == _next_tag_T_13[5:0] ? io_packet_header_7 : _GEN_263; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_265 = 6'h8 == _next_tag_T_13[5:0] ? io_packet_header_8 : _GEN_264; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_266 = 6'h9 == _next_tag_T_13[5:0] ? io_packet_header_9 : _GEN_265; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_267 = 6'ha == _next_tag_T_13[5:0] ? io_packet_header_10 : _GEN_266; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_268 = 6'hb == _next_tag_T_13[5:0] ? io_packet_header_11 : _GEN_267; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_269 = 6'hc == _next_tag_T_13[5:0] ? io_packet_header_12 : _GEN_268; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_270 = 6'hd == _next_tag_T_13[5:0] ? io_packet_header_13 : _GEN_269; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_271 = 6'he == _next_tag_T_13[5:0] ? io_packet_header_14 : _GEN_270; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_272 = 6'hf == _next_tag_T_13[5:0] ? io_packet_header_15 : _GEN_271; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_273 = 6'h10 == _next_tag_T_13[5:0] ? io_packet_header_16 : _GEN_272; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_274 = 6'h11 == _next_tag_T_13[5:0] ? io_packet_header_17 : _GEN_273; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_275 = 6'h12 == _next_tag_T_13[5:0] ? io_packet_header_18 : _GEN_274; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_276 = 6'h13 == _next_tag_T_13[5:0] ? io_packet_header_19 : _GEN_275; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_277 = 6'h14 == _next_tag_T_13[5:0] ? io_packet_header_20 : _GEN_276; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_278 = 6'h15 == _next_tag_T_13[5:0] ? io_packet_header_21 : _GEN_277; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_279 = 6'h16 == _next_tag_T_13[5:0] ? io_packet_header_22 : _GEN_278; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_280 = 6'h17 == _next_tag_T_13[5:0] ? io_packet_header_23 : _GEN_279; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_281 = 6'h18 == _next_tag_T_13[5:0] ? io_packet_header_24 : _GEN_280; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_282 = 6'h19 == _next_tag_T_13[5:0] ? io_packet_header_25 : _GEN_281; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_283 = 6'h1a == _next_tag_T_13[5:0] ? io_packet_header_26 : _GEN_282; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_284 = 6'h1b == _next_tag_T_13[5:0] ? io_packet_header_27 : _GEN_283; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_285 = 6'h1c == _next_tag_T_13[5:0] ? io_packet_header_28 : _GEN_284; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_286 = 6'h1d == _next_tag_T_13[5:0] ? io_packet_header_29 : _GEN_285; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_287 = 6'h1e == _next_tag_T_13[5:0] ? io_packet_header_30 : _GEN_286; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_288 = 6'h1f == _next_tag_T_13[5:0] ? io_packet_header_31 : _GEN_287; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_289 = 6'h20 == _next_tag_T_13[5:0] ? io_packet_header_32 : _GEN_288; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_290 = 6'h21 == _next_tag_T_13[5:0] ? io_packet_header_33 : _GEN_289; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_291 = 6'h22 == _next_tag_T_13[5:0] ? io_packet_header_34 : _GEN_290; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_292 = 6'h23 == _next_tag_T_13[5:0] ? io_packet_header_35 : _GEN_291; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_293 = 6'h24 == _next_tag_T_13[5:0] ? io_packet_header_36 : _GEN_292; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_294 = 6'h25 == _next_tag_T_13[5:0] ? io_packet_header_37 : _GEN_293; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_295 = 6'h26 == _next_tag_T_13[5:0] ? io_packet_header_38 : _GEN_294; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_296 = 6'h27 == _next_tag_T_13[5:0] ? io_packet_header_39 : _GEN_295; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_297 = 6'h28 == _next_tag_T_13[5:0] ? io_packet_header_40 : _GEN_296; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_298 = 6'h29 == _next_tag_T_13[5:0] ? io_packet_header_41 : _GEN_297; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_299 = 6'h2a == _next_tag_T_13[5:0] ? io_packet_header_42 : _GEN_298; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_300 = 6'h2b == _next_tag_T_13[5:0] ? io_packet_header_43 : _GEN_299; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_301 = 6'h2c == _next_tag_T_13[5:0] ? io_packet_header_44 : _GEN_300; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_302 = 6'h2d == _next_tag_T_13[5:0] ? io_packet_header_45 : _GEN_301; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_303 = 6'h2e == _next_tag_T_13[5:0] ? io_packet_header_46 : _GEN_302; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_304 = 6'h2f == _next_tag_T_13[5:0] ? io_packet_header_47 : _GEN_303; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_305 = 6'h30 == _next_tag_T_13[5:0] ? io_packet_header_48 : _GEN_304; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_306 = 6'h31 == _next_tag_T_13[5:0] ? io_packet_header_49 : _GEN_305; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_307 = 6'h32 == _next_tag_T_13[5:0] ? io_packet_header_50 : _GEN_306; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_308 = 6'h33 == _next_tag_T_13[5:0] ? io_packet_header_51 : _GEN_307; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_309 = 6'h34 == _next_tag_T_13[5:0] ? io_packet_header_52 : _GEN_308; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_310 = 6'h35 == _next_tag_T_13[5:0] ? io_packet_header_53 : _GEN_309; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_311 = 6'h36 == _next_tag_T_13[5:0] ? io_packet_header_54 : _GEN_310; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_312 = 6'h37 == _next_tag_T_13[5:0] ? io_packet_header_55 : _GEN_311; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_313 = 6'h38 == _next_tag_T_13[5:0] ? io_packet_header_56 : _GEN_312; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_314 = 6'h39 == _next_tag_T_13[5:0] ? io_packet_header_57 : _GEN_313; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_315 = 6'h3a == _next_tag_T_13[5:0] ? io_packet_header_58 : _GEN_314; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_316 = 6'h3b == _next_tag_T_13[5:0] ? io_packet_header_59 : _GEN_315; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_317 = 6'h3c == _next_tag_T_13[5:0] ? io_packet_header_60 : _GEN_316; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_318 = 6'h3d == _next_tag_T_13[5:0] ? io_packet_header_61 : _GEN_317; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_319 = 6'h3e == _next_tag_T_13[5:0] ? io_packet_header_62 : _GEN_318; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_320 = 6'h3f == _next_tag_T_13[5:0] ? io_packet_header_63 : _GEN_319; // @[parser.scala 70:35 parser.scala 70:35]
  wire [15:0] _GEN_321 = next_tag == next_table_2[31:16] ? next_header_id_1 : _GEN_251; // @[parser.scala 68:66 parser.scala 69:35]
  wire [15:0] _GEN_322 = next_tag == next_table_2[31:16] ? {{8'd0}, _GEN_320} : _GEN_252; // @[parser.scala 68:66 parser.scala 70:35]
  wire [1:0] _GEN_325 = ~header_id ? 2'h2 : _GEN_176; // @[parser.scala 59:63 parser.scala 62:23]
  wire [15:0] _GEN_327 = ~header_id ? _GEN_321 : {{15'd0}, _GEN_180}; // @[parser.scala 59:63]
  wire [15:0] _GEN_328 = ~header_id ? _GEN_322 : _GEN_182; // @[parser.scala 59:63]
  wire [31:0] _header_addr_T_3 = header_addr + header_lengths_1; // @[parser.scala 61:44]
  wire [15:0] next_header_id_2 = next_table_1[15:0]; // @[const.scala 45:47]
  wire [31:0] _GEN_485 = {{16'd0}, next_header_id_2}; // @[parser.scala 70:87]
  wire [31:0] _next_tag_T_18 = _header_addr_T_3 + _GEN_485; // @[parser.scala 70:87]
  wire [7:0] _GEN_334 = 6'h1 == _next_tag_T_18[5:0] ? io_packet_header_1 : io_packet_header_0; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_335 = 6'h2 == _next_tag_T_18[5:0] ? io_packet_header_2 : _GEN_334; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_336 = 6'h3 == _next_tag_T_18[5:0] ? io_packet_header_3 : _GEN_335; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_337 = 6'h4 == _next_tag_T_18[5:0] ? io_packet_header_4 : _GEN_336; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_338 = 6'h5 == _next_tag_T_18[5:0] ? io_packet_header_5 : _GEN_337; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_339 = 6'h6 == _next_tag_T_18[5:0] ? io_packet_header_6 : _GEN_338; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_340 = 6'h7 == _next_tag_T_18[5:0] ? io_packet_header_7 : _GEN_339; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_341 = 6'h8 == _next_tag_T_18[5:0] ? io_packet_header_8 : _GEN_340; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_342 = 6'h9 == _next_tag_T_18[5:0] ? io_packet_header_9 : _GEN_341; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_343 = 6'ha == _next_tag_T_18[5:0] ? io_packet_header_10 : _GEN_342; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_344 = 6'hb == _next_tag_T_18[5:0] ? io_packet_header_11 : _GEN_343; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_345 = 6'hc == _next_tag_T_18[5:0] ? io_packet_header_12 : _GEN_344; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_346 = 6'hd == _next_tag_T_18[5:0] ? io_packet_header_13 : _GEN_345; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_347 = 6'he == _next_tag_T_18[5:0] ? io_packet_header_14 : _GEN_346; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_348 = 6'hf == _next_tag_T_18[5:0] ? io_packet_header_15 : _GEN_347; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_349 = 6'h10 == _next_tag_T_18[5:0] ? io_packet_header_16 : _GEN_348; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_350 = 6'h11 == _next_tag_T_18[5:0] ? io_packet_header_17 : _GEN_349; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_351 = 6'h12 == _next_tag_T_18[5:0] ? io_packet_header_18 : _GEN_350; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_352 = 6'h13 == _next_tag_T_18[5:0] ? io_packet_header_19 : _GEN_351; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_353 = 6'h14 == _next_tag_T_18[5:0] ? io_packet_header_20 : _GEN_352; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_354 = 6'h15 == _next_tag_T_18[5:0] ? io_packet_header_21 : _GEN_353; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_355 = 6'h16 == _next_tag_T_18[5:0] ? io_packet_header_22 : _GEN_354; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_356 = 6'h17 == _next_tag_T_18[5:0] ? io_packet_header_23 : _GEN_355; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_357 = 6'h18 == _next_tag_T_18[5:0] ? io_packet_header_24 : _GEN_356; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_358 = 6'h19 == _next_tag_T_18[5:0] ? io_packet_header_25 : _GEN_357; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_359 = 6'h1a == _next_tag_T_18[5:0] ? io_packet_header_26 : _GEN_358; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_360 = 6'h1b == _next_tag_T_18[5:0] ? io_packet_header_27 : _GEN_359; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_361 = 6'h1c == _next_tag_T_18[5:0] ? io_packet_header_28 : _GEN_360; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_362 = 6'h1d == _next_tag_T_18[5:0] ? io_packet_header_29 : _GEN_361; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_363 = 6'h1e == _next_tag_T_18[5:0] ? io_packet_header_30 : _GEN_362; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_364 = 6'h1f == _next_tag_T_18[5:0] ? io_packet_header_31 : _GEN_363; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_365 = 6'h20 == _next_tag_T_18[5:0] ? io_packet_header_32 : _GEN_364; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_366 = 6'h21 == _next_tag_T_18[5:0] ? io_packet_header_33 : _GEN_365; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_367 = 6'h22 == _next_tag_T_18[5:0] ? io_packet_header_34 : _GEN_366; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_368 = 6'h23 == _next_tag_T_18[5:0] ? io_packet_header_35 : _GEN_367; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_369 = 6'h24 == _next_tag_T_18[5:0] ? io_packet_header_36 : _GEN_368; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_370 = 6'h25 == _next_tag_T_18[5:0] ? io_packet_header_37 : _GEN_369; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_371 = 6'h26 == _next_tag_T_18[5:0] ? io_packet_header_38 : _GEN_370; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_372 = 6'h27 == _next_tag_T_18[5:0] ? io_packet_header_39 : _GEN_371; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_373 = 6'h28 == _next_tag_T_18[5:0] ? io_packet_header_40 : _GEN_372; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_374 = 6'h29 == _next_tag_T_18[5:0] ? io_packet_header_41 : _GEN_373; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_375 = 6'h2a == _next_tag_T_18[5:0] ? io_packet_header_42 : _GEN_374; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_376 = 6'h2b == _next_tag_T_18[5:0] ? io_packet_header_43 : _GEN_375; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_377 = 6'h2c == _next_tag_T_18[5:0] ? io_packet_header_44 : _GEN_376; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_378 = 6'h2d == _next_tag_T_18[5:0] ? io_packet_header_45 : _GEN_377; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_379 = 6'h2e == _next_tag_T_18[5:0] ? io_packet_header_46 : _GEN_378; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_380 = 6'h2f == _next_tag_T_18[5:0] ? io_packet_header_47 : _GEN_379; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_381 = 6'h30 == _next_tag_T_18[5:0] ? io_packet_header_48 : _GEN_380; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_382 = 6'h31 == _next_tag_T_18[5:0] ? io_packet_header_49 : _GEN_381; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_383 = 6'h32 == _next_tag_T_18[5:0] ? io_packet_header_50 : _GEN_382; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_384 = 6'h33 == _next_tag_T_18[5:0] ? io_packet_header_51 : _GEN_383; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_385 = 6'h34 == _next_tag_T_18[5:0] ? io_packet_header_52 : _GEN_384; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_386 = 6'h35 == _next_tag_T_18[5:0] ? io_packet_header_53 : _GEN_385; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_387 = 6'h36 == _next_tag_T_18[5:0] ? io_packet_header_54 : _GEN_386; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_388 = 6'h37 == _next_tag_T_18[5:0] ? io_packet_header_55 : _GEN_387; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_389 = 6'h38 == _next_tag_T_18[5:0] ? io_packet_header_56 : _GEN_388; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_390 = 6'h39 == _next_tag_T_18[5:0] ? io_packet_header_57 : _GEN_389; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_391 = 6'h3a == _next_tag_T_18[5:0] ? io_packet_header_58 : _GEN_390; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_392 = 6'h3b == _next_tag_T_18[5:0] ? io_packet_header_59 : _GEN_391; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_393 = 6'h3c == _next_tag_T_18[5:0] ? io_packet_header_60 : _GEN_392; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_394 = 6'h3d == _next_tag_T_18[5:0] ? io_packet_header_61 : _GEN_393; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_395 = 6'h3e == _next_tag_T_18[5:0] ? io_packet_header_62 : _GEN_394; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_396 = 6'h3f == _next_tag_T_18[5:0] ? io_packet_header_63 : _GEN_395; // @[parser.scala 70:35 parser.scala 70:35]
  wire [15:0] _GEN_397 = next_tag == next_table_1[31:16] ? next_header_id_2 : _GEN_327; // @[parser.scala 68:66 parser.scala 69:35]
  wire [15:0] _GEN_398 = next_tag == next_table_1[31:16] ? {{8'd0}, _GEN_396} : _GEN_328; // @[parser.scala 68:66 parser.scala 70:35]
  wire [15:0] next_header_id_3 = next_table_3[15:0]; // @[const.scala 45:47]
  wire [31:0] _GEN_486 = {{16'd0}, next_header_id_3}; // @[parser.scala 70:87]
  wire [31:0] _next_tag_T_23 = _header_addr_T_3 + _GEN_486; // @[parser.scala 70:87]
  wire [7:0] _GEN_404 = 6'h1 == _next_tag_T_23[5:0] ? io_packet_header_1 : io_packet_header_0; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_405 = 6'h2 == _next_tag_T_23[5:0] ? io_packet_header_2 : _GEN_404; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_406 = 6'h3 == _next_tag_T_23[5:0] ? io_packet_header_3 : _GEN_405; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_407 = 6'h4 == _next_tag_T_23[5:0] ? io_packet_header_4 : _GEN_406; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_408 = 6'h5 == _next_tag_T_23[5:0] ? io_packet_header_5 : _GEN_407; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_409 = 6'h6 == _next_tag_T_23[5:0] ? io_packet_header_6 : _GEN_408; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_410 = 6'h7 == _next_tag_T_23[5:0] ? io_packet_header_7 : _GEN_409; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_411 = 6'h8 == _next_tag_T_23[5:0] ? io_packet_header_8 : _GEN_410; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_412 = 6'h9 == _next_tag_T_23[5:0] ? io_packet_header_9 : _GEN_411; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_413 = 6'ha == _next_tag_T_23[5:0] ? io_packet_header_10 : _GEN_412; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_414 = 6'hb == _next_tag_T_23[5:0] ? io_packet_header_11 : _GEN_413; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_415 = 6'hc == _next_tag_T_23[5:0] ? io_packet_header_12 : _GEN_414; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_416 = 6'hd == _next_tag_T_23[5:0] ? io_packet_header_13 : _GEN_415; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_417 = 6'he == _next_tag_T_23[5:0] ? io_packet_header_14 : _GEN_416; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_418 = 6'hf == _next_tag_T_23[5:0] ? io_packet_header_15 : _GEN_417; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_419 = 6'h10 == _next_tag_T_23[5:0] ? io_packet_header_16 : _GEN_418; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_420 = 6'h11 == _next_tag_T_23[5:0] ? io_packet_header_17 : _GEN_419; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_421 = 6'h12 == _next_tag_T_23[5:0] ? io_packet_header_18 : _GEN_420; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_422 = 6'h13 == _next_tag_T_23[5:0] ? io_packet_header_19 : _GEN_421; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_423 = 6'h14 == _next_tag_T_23[5:0] ? io_packet_header_20 : _GEN_422; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_424 = 6'h15 == _next_tag_T_23[5:0] ? io_packet_header_21 : _GEN_423; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_425 = 6'h16 == _next_tag_T_23[5:0] ? io_packet_header_22 : _GEN_424; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_426 = 6'h17 == _next_tag_T_23[5:0] ? io_packet_header_23 : _GEN_425; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_427 = 6'h18 == _next_tag_T_23[5:0] ? io_packet_header_24 : _GEN_426; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_428 = 6'h19 == _next_tag_T_23[5:0] ? io_packet_header_25 : _GEN_427; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_429 = 6'h1a == _next_tag_T_23[5:0] ? io_packet_header_26 : _GEN_428; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_430 = 6'h1b == _next_tag_T_23[5:0] ? io_packet_header_27 : _GEN_429; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_431 = 6'h1c == _next_tag_T_23[5:0] ? io_packet_header_28 : _GEN_430; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_432 = 6'h1d == _next_tag_T_23[5:0] ? io_packet_header_29 : _GEN_431; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_433 = 6'h1e == _next_tag_T_23[5:0] ? io_packet_header_30 : _GEN_432; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_434 = 6'h1f == _next_tag_T_23[5:0] ? io_packet_header_31 : _GEN_433; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_435 = 6'h20 == _next_tag_T_23[5:0] ? io_packet_header_32 : _GEN_434; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_436 = 6'h21 == _next_tag_T_23[5:0] ? io_packet_header_33 : _GEN_435; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_437 = 6'h22 == _next_tag_T_23[5:0] ? io_packet_header_34 : _GEN_436; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_438 = 6'h23 == _next_tag_T_23[5:0] ? io_packet_header_35 : _GEN_437; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_439 = 6'h24 == _next_tag_T_23[5:0] ? io_packet_header_36 : _GEN_438; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_440 = 6'h25 == _next_tag_T_23[5:0] ? io_packet_header_37 : _GEN_439; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_441 = 6'h26 == _next_tag_T_23[5:0] ? io_packet_header_38 : _GEN_440; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_442 = 6'h27 == _next_tag_T_23[5:0] ? io_packet_header_39 : _GEN_441; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_443 = 6'h28 == _next_tag_T_23[5:0] ? io_packet_header_40 : _GEN_442; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_444 = 6'h29 == _next_tag_T_23[5:0] ? io_packet_header_41 : _GEN_443; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_445 = 6'h2a == _next_tag_T_23[5:0] ? io_packet_header_42 : _GEN_444; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_446 = 6'h2b == _next_tag_T_23[5:0] ? io_packet_header_43 : _GEN_445; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_447 = 6'h2c == _next_tag_T_23[5:0] ? io_packet_header_44 : _GEN_446; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_448 = 6'h2d == _next_tag_T_23[5:0] ? io_packet_header_45 : _GEN_447; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_449 = 6'h2e == _next_tag_T_23[5:0] ? io_packet_header_46 : _GEN_448; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_450 = 6'h2f == _next_tag_T_23[5:0] ? io_packet_header_47 : _GEN_449; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_451 = 6'h30 == _next_tag_T_23[5:0] ? io_packet_header_48 : _GEN_450; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_452 = 6'h31 == _next_tag_T_23[5:0] ? io_packet_header_49 : _GEN_451; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_453 = 6'h32 == _next_tag_T_23[5:0] ? io_packet_header_50 : _GEN_452; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_454 = 6'h33 == _next_tag_T_23[5:0] ? io_packet_header_51 : _GEN_453; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_455 = 6'h34 == _next_tag_T_23[5:0] ? io_packet_header_52 : _GEN_454; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_456 = 6'h35 == _next_tag_T_23[5:0] ? io_packet_header_53 : _GEN_455; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_457 = 6'h36 == _next_tag_T_23[5:0] ? io_packet_header_54 : _GEN_456; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_458 = 6'h37 == _next_tag_T_23[5:0] ? io_packet_header_55 : _GEN_457; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_459 = 6'h38 == _next_tag_T_23[5:0] ? io_packet_header_56 : _GEN_458; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_460 = 6'h39 == _next_tag_T_23[5:0] ? io_packet_header_57 : _GEN_459; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_461 = 6'h3a == _next_tag_T_23[5:0] ? io_packet_header_58 : _GEN_460; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_462 = 6'h3b == _next_tag_T_23[5:0] ? io_packet_header_59 : _GEN_461; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_463 = 6'h3c == _next_tag_T_23[5:0] ? io_packet_header_60 : _GEN_462; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_464 = 6'h3d == _next_tag_T_23[5:0] ? io_packet_header_61 : _GEN_463; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_465 = 6'h3e == _next_tag_T_23[5:0] ? io_packet_header_62 : _GEN_464; // @[parser.scala 70:35 parser.scala 70:35]
  wire [7:0] _GEN_466 = 6'h3f == _next_tag_T_23[5:0] ? io_packet_header_63 : _GEN_465; // @[parser.scala 70:35 parser.scala 70:35]
  wire [15:0] _GEN_467 = next_tag == next_table_3[31:16] ? next_header_id_3 : _GEN_397; // @[parser.scala 68:66 parser.scala 69:35]
  wire  _GEN_472 = header_id | (~header_id | _GEN_177); // @[parser.scala 59:63 parser.scala 63:23]
  wire [15:0] _GEN_473 = header_id ? _GEN_467 : _GEN_327; // @[parser.scala 59:63]
  wire [15:0] _GEN_479 = state == 2'h1 ? _GEN_473 : {{15'd0}, _GEN_180}; // @[parser.scala 57:31]
  assign io_ready = ready; // @[parser.scala 29:22]
  assign io_parsed_header_0 = parsed_header_0; // @[parser.scala 30:22]
  assign io_parsed_header_1 = parsed_header_1; // @[parser.scala 30:22]
  always @(posedge clock) begin
    if (state == 2'h0) begin // @[parser.scala 32:31]
      if (io_mod_start) begin // @[parser.scala 33:29]
        if (~io_mod_header_id) begin // @[parser.scala 34:48]
          header_lengths_0 <= io_mod_header_length; // @[parser.scala 34:48]
        end
      end
    end
    if (state == 2'h0) begin // @[parser.scala 32:31]
      if (io_mod_start) begin // @[parser.scala 33:29]
        if (io_mod_header_id) begin // @[parser.scala 34:48]
          header_lengths_1 <= io_mod_header_length; // @[parser.scala 34:48]
        end
      end
    end
    if (state == 2'h0) begin // @[parser.scala 32:31]
      if (io_mod_start) begin // @[parser.scala 33:29]
        if (~io_mod_header_id) begin // @[parser.scala 35:48]
          next_tag_starts_0 <= io_mod_next_tag_start; // @[parser.scala 35:48]
        end
      end
    end
    if (state == 2'h0) begin // @[parser.scala 32:31]
      if (io_mod_start) begin // @[parser.scala 33:29]
        if (2'h0 == _T_2) begin // @[parser.scala 38:85]
          next_table_0 <= io_mod_next_table_1; // @[parser.scala 38:85]
        end else if (2'h0 == _T_1) begin // @[parser.scala 38:85]
          next_table_0 <= io_mod_next_table_0; // @[parser.scala 38:85]
        end
      end
    end
    if (state == 2'h0) begin // @[parser.scala 32:31]
      if (io_mod_start) begin // @[parser.scala 33:29]
        if (2'h1 == _T_2) begin // @[parser.scala 38:85]
          next_table_1 <= io_mod_next_table_1; // @[parser.scala 38:85]
        end else if (2'h1 == _T_1) begin // @[parser.scala 38:85]
          next_table_1 <= io_mod_next_table_0; // @[parser.scala 38:85]
        end
      end
    end
    if (state == 2'h0) begin // @[parser.scala 32:31]
      if (io_mod_start) begin // @[parser.scala 33:29]
        if (2'h2 == _T_2) begin // @[parser.scala 38:85]
          next_table_2 <= io_mod_next_table_1; // @[parser.scala 38:85]
        end else if (2'h2 == _T_1) begin // @[parser.scala 38:85]
          next_table_2 <= io_mod_next_table_0; // @[parser.scala 38:85]
        end
      end
    end
    if (state == 2'h0) begin // @[parser.scala 32:31]
      if (io_mod_start) begin // @[parser.scala 33:29]
        if (2'h3 == _T_2) begin // @[parser.scala 38:85]
          next_table_3 <= io_mod_next_table_1; // @[parser.scala 38:85]
        end else if (2'h3 == _T_1) begin // @[parser.scala 38:85]
          next_table_3 <= io_mod_next_table_0; // @[parser.scala 38:85]
        end
      end
    end
    if (reset) begin // @[parser.scala 22:30]
      header_id <= 1'h0; // @[parser.scala 22:30]
    end else begin
      header_id <= _GEN_479[0];
    end
    if (reset) begin // @[parser.scala 23:30]
      header_addr <= 32'h0; // @[parser.scala 23:30]
    end else if (state == 2'h1) begin // @[parser.scala 57:31]
      if (header_id) begin // @[parser.scala 59:63]
        header_addr <= _header_addr_T_3; // @[parser.scala 61:29]
      end else if (~header_id) begin // @[parser.scala 59:63]
        header_addr <= _header_addr_T_1; // @[parser.scala 61:29]
      end else begin
        header_addr <= _GEN_181;
      end
    end else begin
      header_addr <= _GEN_181;
    end
    if (reset) begin // @[parser.scala 24:29]
      next_tag <= 16'h0; // @[parser.scala 24:29]
    end else if (state == 2'h1) begin // @[parser.scala 57:31]
      if (header_id) begin // @[parser.scala 59:63]
        if (next_tag == next_table_3[31:16]) begin // @[parser.scala 68:66]
          next_tag <= {{8'd0}, _GEN_466}; // @[parser.scala 70:35]
        end else begin
          next_tag <= _GEN_398;
        end
      end else if (~header_id) begin // @[parser.scala 59:63]
        next_tag <= _GEN_322;
      end else begin
        next_tag <= _GEN_182;
      end
    end else begin
      next_tag <= _GEN_182;
    end
    if (reset) begin // @[parser.scala 25:29]
      state <= 2'h0; // @[parser.scala 25:29]
    end else if (state == 2'h2 & ~io_start) begin // @[parser.scala 77:44]
      state <= 2'h0; // @[parser.scala 78:15]
    end else if (state == 2'h1) begin // @[parser.scala 57:31]
      if (header_id) begin // @[parser.scala 59:63]
        state <= 2'h2; // @[parser.scala 62:23]
      end else begin
        state <= _GEN_325;
      end
    end else if (state == 2'h0) begin // @[parser.scala 32:31]
      state <= _GEN_159;
    end
    if (reset) begin // @[parser.scala 27:32]
      ready <= 1'h0; // @[parser.scala 27:32]
    end else if (state == 2'h1) begin // @[parser.scala 57:31]
      ready <= _GEN_472;
    end else if (state == 2'h0) begin // @[parser.scala 32:31]
      if (!(io_mod_start)) begin // @[parser.scala 33:29]
        ready <= _GEN_143;
      end
    end
    if (state == 2'h1) begin // @[parser.scala 57:31]
      if (~header_id) begin // @[parser.scala 59:63]
        parsed_header_0 <= header_addr; // @[parser.scala 60:34]
      end else begin
        parsed_header_0 <= _GEN_178;
      end
    end else begin
      parsed_header_0 <= _GEN_178;
    end
    if (state == 2'h1) begin // @[parser.scala 57:31]
      if (header_id) begin // @[parser.scala 59:63]
        parsed_header_1 <= header_addr; // @[parser.scala 60:34]
      end else begin
        parsed_header_1 <= _GEN_179;
      end
    end else begin
      parsed_header_1 <= _GEN_179;
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
  header_lengths_0 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  header_lengths_1 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  next_tag_starts_0 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  next_table_0 = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  next_table_1 = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  next_table_2 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  next_table_3 = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  header_id = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  header_addr = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  next_tag = _RAND_9[15:0];
  _RAND_10 = {1{`RANDOM}};
  state = _RAND_10[1:0];
  _RAND_11 = {1{`RANDOM}};
  ready = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  parsed_header_0 = _RAND_12[31:0];
  _RAND_13 = {1{`RANDOM}};
  parsed_header_1 = _RAND_13[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Hash(
  input         clock,
  input         reset,
  input         io_start,
  input  [63:0] io_key,
  output        io_hash_ready,
  output [31:0] io_hash_val
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [1:0] state; // @[hash.scala 15:24]
  reg  hash_ready; // @[hash.scala 16:29]
  reg [31:0] hash_val; // @[hash.scala 17:27]
  wire [7:0] _hash_val_T_3 = io_key[7:0] + io_key[15:8]; // @[hash.scala 25:37]
  wire [7:0] _hash_val_T_6 = _hash_val_T_3 + io_key[23:16]; // @[hash.scala 25:52]
  wire [7:0] _hash_val_T_9 = _hash_val_T_6 + io_key[31:24]; // @[hash.scala 25:68]
  wire [7:0] _hash_val_T_12 = _hash_val_T_9 + io_key[39:32]; // @[hash.scala 25:84]
  wire [7:0] _hash_val_T_15 = _hash_val_T_12 + io_key[47:40]; // @[hash.scala 25:100]
  wire [7:0] _hash_val_T_18 = _hash_val_T_15 + io_key[55:48]; // @[hash.scala 25:116]
  wire [7:0] _hash_val_T_21 = _hash_val_T_18 + io_key[63:56]; // @[hash.scala 25:132]
  wire [1:0] _GEN_0 = io_start ? 2'h1 : state; // @[hash.scala 22:25 hash.scala 23:19 hash.scala 15:24]
  wire  _GEN_1 = io_start ? 1'h0 : hash_ready; // @[hash.scala 22:25 hash.scala 24:24 hash.scala 16:29]
  wire [31:0] _GEN_2 = io_start ? {{24'd0}, _hash_val_T_21} : hash_val; // @[hash.scala 22:25 hash.scala 25:22 hash.scala 17:27]
  wire [1:0] _GEN_3 = state == 2'h0 ? _GEN_0 : state; // @[hash.scala 21:31 hash.scala 15:24]
  wire  _GEN_4 = state == 2'h0 ? _GEN_1 : hash_ready; // @[hash.scala 21:31 hash.scala 16:29]
  wire [7:0] _hash_val_T_25 = hash_val[15:8] + hash_val[7:0]; // @[hash.scala 30:36]
  wire [1:0] _GEN_7 = state == 2'h1 ? 2'h2 : _GEN_3; // @[hash.scala 29:31 hash.scala 31:15]
  wire  _GEN_8 = state == 2'h2 | _GEN_4; // @[hash.scala 34:31 hash.scala 35:20]
  wire [1:0] _GEN_10 = state == 2'h2 ? 2'h3 : _GEN_7; // @[hash.scala 34:31 hash.scala 37:20]
  assign io_hash_ready = hash_ready; // @[hash.scala 18:19]
  assign io_hash_val = hash_val; // @[hash.scala 19:17]
  always @(posedge clock) begin
    if (reset) begin // @[hash.scala 15:24]
      state <= 2'h0; // @[hash.scala 15:24]
    end else if (state == 2'h3) begin // @[hash.scala 40:31]
      if (~io_start) begin // @[hash.scala 41:26]
        state <= 2'h0; // @[hash.scala 42:19]
      end else begin
        state <= _GEN_10;
      end
    end else begin
      state <= _GEN_10;
    end
    if (reset) begin // @[hash.scala 16:29]
      hash_ready <= 1'h0; // @[hash.scala 16:29]
    end else begin
      hash_ready <= _GEN_8;
    end
    if (reset) begin // @[hash.scala 17:27]
      hash_val <= 32'h0; // @[hash.scala 17:27]
    end else if (state == 2'h2) begin // @[hash.scala 34:31]
      hash_val <= {{24'd0}, _hash_val_T_25}; // @[hash.scala 36:20]
    end else if (state == 2'h1) begin // @[hash.scala 29:31]
      hash_val <= {{24'd0}, _hash_val_T_25}; // @[hash.scala 30:18]
    end else if (state == 2'h0) begin // @[hash.scala 21:31]
      hash_val <= _GEN_2;
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
  state = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  hash_ready = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  hash_val = _RAND_2[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Matcher(
  input         clock,
  input         reset,
  input         io_start,
  input  [7:0]  io_packet_header_0,
  input  [7:0]  io_packet_header_1,
  input  [7:0]  io_packet_header_2,
  input  [7:0]  io_packet_header_3,
  input  [7:0]  io_packet_header_4,
  input  [7:0]  io_packet_header_5,
  input  [7:0]  io_packet_header_6,
  input  [7:0]  io_packet_header_7,
  input  [7:0]  io_packet_header_8,
  input  [7:0]  io_packet_header_9,
  input  [7:0]  io_packet_header_10,
  input  [7:0]  io_packet_header_11,
  input  [7:0]  io_packet_header_12,
  input  [7:0]  io_packet_header_13,
  input  [7:0]  io_packet_header_14,
  input  [7:0]  io_packet_header_15,
  input  [7:0]  io_packet_header_16,
  input  [7:0]  io_packet_header_17,
  input  [7:0]  io_packet_header_18,
  input  [7:0]  io_packet_header_19,
  input  [7:0]  io_packet_header_20,
  input  [7:0]  io_packet_header_21,
  input  [7:0]  io_packet_header_22,
  input  [7:0]  io_packet_header_23,
  input  [7:0]  io_packet_header_24,
  input  [7:0]  io_packet_header_25,
  input  [7:0]  io_packet_header_26,
  input  [7:0]  io_packet_header_27,
  input  [7:0]  io_packet_header_28,
  input  [7:0]  io_packet_header_29,
  input  [7:0]  io_packet_header_30,
  input  [7:0]  io_packet_header_31,
  input  [7:0]  io_packet_header_32,
  input  [7:0]  io_packet_header_33,
  input  [7:0]  io_packet_header_34,
  input  [7:0]  io_packet_header_35,
  input  [7:0]  io_packet_header_36,
  input  [7:0]  io_packet_header_37,
  input  [7:0]  io_packet_header_38,
  input  [7:0]  io_packet_header_39,
  input  [7:0]  io_packet_header_40,
  input  [7:0]  io_packet_header_41,
  input  [7:0]  io_packet_header_42,
  input  [7:0]  io_packet_header_43,
  input  [7:0]  io_packet_header_44,
  input  [7:0]  io_packet_header_45,
  input  [7:0]  io_packet_header_46,
  input  [7:0]  io_packet_header_47,
  input  [7:0]  io_packet_header_48,
  input  [7:0]  io_packet_header_49,
  input  [7:0]  io_packet_header_50,
  input  [7:0]  io_packet_header_51,
  input  [7:0]  io_packet_header_52,
  input  [7:0]  io_packet_header_53,
  input  [7:0]  io_packet_header_54,
  input  [7:0]  io_packet_header_55,
  input  [7:0]  io_packet_header_56,
  input  [7:0]  io_packet_header_57,
  input  [7:0]  io_packet_header_58,
  input  [7:0]  io_packet_header_59,
  input  [7:0]  io_packet_header_60,
  input  [7:0]  io_packet_header_61,
  input  [7:0]  io_packet_header_62,
  input  [7:0]  io_packet_header_63,
  input  [31:0] io_parsed_header_0,
  input  [31:0] io_parsed_header_1,
  output        io_mem_ce,
  output [31:0] io_mem_addr,
  input  [31:0] io_mem_rdata,
  output        io_ready,
  output        io_is_match,
  input         io_mod_start,
  input  [3:0]  io_mod_header_id,
  input  [5:0]  io_mod_key_off,
  input  [5:0]  io_mod_key_len,
  input  [5:0]  io_mod_val_len
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
`endif // RANDOMIZE_REG_INIT
  wire  hash_clock; // @[matcher.scala 44:22]
  wire  hash_reset; // @[matcher.scala 44:22]
  wire  hash_io_start; // @[matcher.scala 44:22]
  wire [63:0] hash_io_key; // @[matcher.scala 44:22]
  wire  hash_io_hash_ready; // @[matcher.scala 44:22]
  wire [31:0] hash_io_hash_val; // @[matcher.scala 44:22]
  reg  ready; // @[matcher.scala 20:27]
  reg  is_match; // @[matcher.scala 21:27]
  reg [3:0] match_header_id; // @[matcher.scala 29:34]
  reg [5:0] match_key_off; // @[matcher.scala 30:34]
  reg [5:0] match_key_len; // @[matcher.scala 31:34]
  reg [5:0] match_val_len; // @[matcher.scala 32:34]
  reg [5:0] mem_cnt; // @[matcher.scala 33:34]
  reg [31:0] mem_addr; // @[matcher.scala 35:27]
  reg [7:0] key_data_0; // @[matcher.scala 37:23]
  reg [7:0] key_data_1; // @[matcher.scala 37:23]
  reg [7:0] key_data_2; // @[matcher.scala 37:23]
  reg [7:0] key_data_3; // @[matcher.scala 37:23]
  reg [7:0] key_data_4; // @[matcher.scala 37:23]
  reg [7:0] key_data_5; // @[matcher.scala 37:23]
  reg [7:0] key_data_6; // @[matcher.scala 37:23]
  reg [7:0] key_data_7; // @[matcher.scala 37:23]
  reg  hash_start; // @[matcher.scala 39:29]
  wire [31:0] hash_key_lo = {key_data_4,key_data_5,key_data_6,key_data_7}; // @[Cat.scala 30:58]
  wire [31:0] hash_key_hi = {key_data_0,key_data_1,key_data_2,key_data_3}; // @[Cat.scala 30:58]
  reg [2:0] state; // @[matcher.scala 48:24]
  reg  ce; // @[matcher.scala 50:21]
  wire  _key_data_0_T = 6'h0 < match_key_len; // @[matcher.scala 73:34]
  wire [31:0] _GEN_1 = match_header_id[0] ? io_parsed_header_1 : io_parsed_header_0; // @[matcher.scala 74:76 matcher.scala 74:76]
  wire [31:0] _GEN_670 = {{26'd0}, match_key_off}; // @[matcher.scala 74:76]
  wire [31:0] _key_data_0_T_3 = _GEN_1 + _GEN_670; // @[matcher.scala 74:76]
  wire [32:0] _key_data_0_T_4 = {{1'd0}, _key_data_0_T_3}; // @[matcher.scala 74:92]
  wire [7:0] _GEN_3 = 6'h1 == _key_data_0_T_4[5:0] ? io_packet_header_1 : io_packet_header_0; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_4 = 6'h2 == _key_data_0_T_4[5:0] ? io_packet_header_2 : _GEN_3; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_5 = 6'h3 == _key_data_0_T_4[5:0] ? io_packet_header_3 : _GEN_4; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_6 = 6'h4 == _key_data_0_T_4[5:0] ? io_packet_header_4 : _GEN_5; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_7 = 6'h5 == _key_data_0_T_4[5:0] ? io_packet_header_5 : _GEN_6; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_8 = 6'h6 == _key_data_0_T_4[5:0] ? io_packet_header_6 : _GEN_7; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_9 = 6'h7 == _key_data_0_T_4[5:0] ? io_packet_header_7 : _GEN_8; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_10 = 6'h8 == _key_data_0_T_4[5:0] ? io_packet_header_8 : _GEN_9; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_11 = 6'h9 == _key_data_0_T_4[5:0] ? io_packet_header_9 : _GEN_10; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_12 = 6'ha == _key_data_0_T_4[5:0] ? io_packet_header_10 : _GEN_11; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_13 = 6'hb == _key_data_0_T_4[5:0] ? io_packet_header_11 : _GEN_12; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_14 = 6'hc == _key_data_0_T_4[5:0] ? io_packet_header_12 : _GEN_13; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_15 = 6'hd == _key_data_0_T_4[5:0] ? io_packet_header_13 : _GEN_14; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_16 = 6'he == _key_data_0_T_4[5:0] ? io_packet_header_14 : _GEN_15; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_17 = 6'hf == _key_data_0_T_4[5:0] ? io_packet_header_15 : _GEN_16; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_18 = 6'h10 == _key_data_0_T_4[5:0] ? io_packet_header_16 : _GEN_17; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_19 = 6'h11 == _key_data_0_T_4[5:0] ? io_packet_header_17 : _GEN_18; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_20 = 6'h12 == _key_data_0_T_4[5:0] ? io_packet_header_18 : _GEN_19; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_21 = 6'h13 == _key_data_0_T_4[5:0] ? io_packet_header_19 : _GEN_20; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_22 = 6'h14 == _key_data_0_T_4[5:0] ? io_packet_header_20 : _GEN_21; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_23 = 6'h15 == _key_data_0_T_4[5:0] ? io_packet_header_21 : _GEN_22; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_24 = 6'h16 == _key_data_0_T_4[5:0] ? io_packet_header_22 : _GEN_23; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_25 = 6'h17 == _key_data_0_T_4[5:0] ? io_packet_header_23 : _GEN_24; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_26 = 6'h18 == _key_data_0_T_4[5:0] ? io_packet_header_24 : _GEN_25; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_27 = 6'h19 == _key_data_0_T_4[5:0] ? io_packet_header_25 : _GEN_26; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_28 = 6'h1a == _key_data_0_T_4[5:0] ? io_packet_header_26 : _GEN_27; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_29 = 6'h1b == _key_data_0_T_4[5:0] ? io_packet_header_27 : _GEN_28; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_30 = 6'h1c == _key_data_0_T_4[5:0] ? io_packet_header_28 : _GEN_29; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_31 = 6'h1d == _key_data_0_T_4[5:0] ? io_packet_header_29 : _GEN_30; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_32 = 6'h1e == _key_data_0_T_4[5:0] ? io_packet_header_30 : _GEN_31; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_33 = 6'h1f == _key_data_0_T_4[5:0] ? io_packet_header_31 : _GEN_32; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_34 = 6'h20 == _key_data_0_T_4[5:0] ? io_packet_header_32 : _GEN_33; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_35 = 6'h21 == _key_data_0_T_4[5:0] ? io_packet_header_33 : _GEN_34; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_36 = 6'h22 == _key_data_0_T_4[5:0] ? io_packet_header_34 : _GEN_35; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_37 = 6'h23 == _key_data_0_T_4[5:0] ? io_packet_header_35 : _GEN_36; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_38 = 6'h24 == _key_data_0_T_4[5:0] ? io_packet_header_36 : _GEN_37; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_39 = 6'h25 == _key_data_0_T_4[5:0] ? io_packet_header_37 : _GEN_38; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_40 = 6'h26 == _key_data_0_T_4[5:0] ? io_packet_header_38 : _GEN_39; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_41 = 6'h27 == _key_data_0_T_4[5:0] ? io_packet_header_39 : _GEN_40; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_42 = 6'h28 == _key_data_0_T_4[5:0] ? io_packet_header_40 : _GEN_41; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_43 = 6'h29 == _key_data_0_T_4[5:0] ? io_packet_header_41 : _GEN_42; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_44 = 6'h2a == _key_data_0_T_4[5:0] ? io_packet_header_42 : _GEN_43; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_45 = 6'h2b == _key_data_0_T_4[5:0] ? io_packet_header_43 : _GEN_44; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_46 = 6'h2c == _key_data_0_T_4[5:0] ? io_packet_header_44 : _GEN_45; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_47 = 6'h2d == _key_data_0_T_4[5:0] ? io_packet_header_45 : _GEN_46; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_48 = 6'h2e == _key_data_0_T_4[5:0] ? io_packet_header_46 : _GEN_47; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_49 = 6'h2f == _key_data_0_T_4[5:0] ? io_packet_header_47 : _GEN_48; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_50 = 6'h30 == _key_data_0_T_4[5:0] ? io_packet_header_48 : _GEN_49; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_51 = 6'h31 == _key_data_0_T_4[5:0] ? io_packet_header_49 : _GEN_50; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_52 = 6'h32 == _key_data_0_T_4[5:0] ? io_packet_header_50 : _GEN_51; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_53 = 6'h33 == _key_data_0_T_4[5:0] ? io_packet_header_51 : _GEN_52; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_54 = 6'h34 == _key_data_0_T_4[5:0] ? io_packet_header_52 : _GEN_53; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_55 = 6'h35 == _key_data_0_T_4[5:0] ? io_packet_header_53 : _GEN_54; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_56 = 6'h36 == _key_data_0_T_4[5:0] ? io_packet_header_54 : _GEN_55; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_57 = 6'h37 == _key_data_0_T_4[5:0] ? io_packet_header_55 : _GEN_56; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_58 = 6'h38 == _key_data_0_T_4[5:0] ? io_packet_header_56 : _GEN_57; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_59 = 6'h39 == _key_data_0_T_4[5:0] ? io_packet_header_57 : _GEN_58; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_60 = 6'h3a == _key_data_0_T_4[5:0] ? io_packet_header_58 : _GEN_59; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_61 = 6'h3b == _key_data_0_T_4[5:0] ? io_packet_header_59 : _GEN_60; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_62 = 6'h3c == _key_data_0_T_4[5:0] ? io_packet_header_60 : _GEN_61; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_63 = 6'h3d == _key_data_0_T_4[5:0] ? io_packet_header_61 : _GEN_62; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_64 = 6'h3e == _key_data_0_T_4[5:0] ? io_packet_header_62 : _GEN_63; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_65 = 6'h3f == _key_data_0_T_4[5:0] ? io_packet_header_63 : _GEN_64; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire  _key_data_1_T = 6'h1 < match_key_len; // @[matcher.scala 73:34]
  wire [31:0] _key_data_1_T_5 = _key_data_0_T_3 + 32'h1; // @[matcher.scala 74:92]
  wire [7:0] _GEN_69 = 6'h1 == _key_data_1_T_5[5:0] ? io_packet_header_1 : io_packet_header_0; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_70 = 6'h2 == _key_data_1_T_5[5:0] ? io_packet_header_2 : _GEN_69; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_71 = 6'h3 == _key_data_1_T_5[5:0] ? io_packet_header_3 : _GEN_70; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_72 = 6'h4 == _key_data_1_T_5[5:0] ? io_packet_header_4 : _GEN_71; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_73 = 6'h5 == _key_data_1_T_5[5:0] ? io_packet_header_5 : _GEN_72; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_74 = 6'h6 == _key_data_1_T_5[5:0] ? io_packet_header_6 : _GEN_73; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_75 = 6'h7 == _key_data_1_T_5[5:0] ? io_packet_header_7 : _GEN_74; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_76 = 6'h8 == _key_data_1_T_5[5:0] ? io_packet_header_8 : _GEN_75; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_77 = 6'h9 == _key_data_1_T_5[5:0] ? io_packet_header_9 : _GEN_76; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_78 = 6'ha == _key_data_1_T_5[5:0] ? io_packet_header_10 : _GEN_77; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_79 = 6'hb == _key_data_1_T_5[5:0] ? io_packet_header_11 : _GEN_78; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_80 = 6'hc == _key_data_1_T_5[5:0] ? io_packet_header_12 : _GEN_79; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_81 = 6'hd == _key_data_1_T_5[5:0] ? io_packet_header_13 : _GEN_80; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_82 = 6'he == _key_data_1_T_5[5:0] ? io_packet_header_14 : _GEN_81; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_83 = 6'hf == _key_data_1_T_5[5:0] ? io_packet_header_15 : _GEN_82; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_84 = 6'h10 == _key_data_1_T_5[5:0] ? io_packet_header_16 : _GEN_83; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_85 = 6'h11 == _key_data_1_T_5[5:0] ? io_packet_header_17 : _GEN_84; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_86 = 6'h12 == _key_data_1_T_5[5:0] ? io_packet_header_18 : _GEN_85; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_87 = 6'h13 == _key_data_1_T_5[5:0] ? io_packet_header_19 : _GEN_86; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_88 = 6'h14 == _key_data_1_T_5[5:0] ? io_packet_header_20 : _GEN_87; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_89 = 6'h15 == _key_data_1_T_5[5:0] ? io_packet_header_21 : _GEN_88; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_90 = 6'h16 == _key_data_1_T_5[5:0] ? io_packet_header_22 : _GEN_89; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_91 = 6'h17 == _key_data_1_T_5[5:0] ? io_packet_header_23 : _GEN_90; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_92 = 6'h18 == _key_data_1_T_5[5:0] ? io_packet_header_24 : _GEN_91; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_93 = 6'h19 == _key_data_1_T_5[5:0] ? io_packet_header_25 : _GEN_92; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_94 = 6'h1a == _key_data_1_T_5[5:0] ? io_packet_header_26 : _GEN_93; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_95 = 6'h1b == _key_data_1_T_5[5:0] ? io_packet_header_27 : _GEN_94; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_96 = 6'h1c == _key_data_1_T_5[5:0] ? io_packet_header_28 : _GEN_95; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_97 = 6'h1d == _key_data_1_T_5[5:0] ? io_packet_header_29 : _GEN_96; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_98 = 6'h1e == _key_data_1_T_5[5:0] ? io_packet_header_30 : _GEN_97; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_99 = 6'h1f == _key_data_1_T_5[5:0] ? io_packet_header_31 : _GEN_98; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_100 = 6'h20 == _key_data_1_T_5[5:0] ? io_packet_header_32 : _GEN_99; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_101 = 6'h21 == _key_data_1_T_5[5:0] ? io_packet_header_33 : _GEN_100; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_102 = 6'h22 == _key_data_1_T_5[5:0] ? io_packet_header_34 : _GEN_101; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_103 = 6'h23 == _key_data_1_T_5[5:0] ? io_packet_header_35 : _GEN_102; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_104 = 6'h24 == _key_data_1_T_5[5:0] ? io_packet_header_36 : _GEN_103; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_105 = 6'h25 == _key_data_1_T_5[5:0] ? io_packet_header_37 : _GEN_104; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_106 = 6'h26 == _key_data_1_T_5[5:0] ? io_packet_header_38 : _GEN_105; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_107 = 6'h27 == _key_data_1_T_5[5:0] ? io_packet_header_39 : _GEN_106; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_108 = 6'h28 == _key_data_1_T_5[5:0] ? io_packet_header_40 : _GEN_107; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_109 = 6'h29 == _key_data_1_T_5[5:0] ? io_packet_header_41 : _GEN_108; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_110 = 6'h2a == _key_data_1_T_5[5:0] ? io_packet_header_42 : _GEN_109; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_111 = 6'h2b == _key_data_1_T_5[5:0] ? io_packet_header_43 : _GEN_110; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_112 = 6'h2c == _key_data_1_T_5[5:0] ? io_packet_header_44 : _GEN_111; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_113 = 6'h2d == _key_data_1_T_5[5:0] ? io_packet_header_45 : _GEN_112; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_114 = 6'h2e == _key_data_1_T_5[5:0] ? io_packet_header_46 : _GEN_113; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_115 = 6'h2f == _key_data_1_T_5[5:0] ? io_packet_header_47 : _GEN_114; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_116 = 6'h30 == _key_data_1_T_5[5:0] ? io_packet_header_48 : _GEN_115; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_117 = 6'h31 == _key_data_1_T_5[5:0] ? io_packet_header_49 : _GEN_116; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_118 = 6'h32 == _key_data_1_T_5[5:0] ? io_packet_header_50 : _GEN_117; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_119 = 6'h33 == _key_data_1_T_5[5:0] ? io_packet_header_51 : _GEN_118; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_120 = 6'h34 == _key_data_1_T_5[5:0] ? io_packet_header_52 : _GEN_119; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_121 = 6'h35 == _key_data_1_T_5[5:0] ? io_packet_header_53 : _GEN_120; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_122 = 6'h36 == _key_data_1_T_5[5:0] ? io_packet_header_54 : _GEN_121; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_123 = 6'h37 == _key_data_1_T_5[5:0] ? io_packet_header_55 : _GEN_122; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_124 = 6'h38 == _key_data_1_T_5[5:0] ? io_packet_header_56 : _GEN_123; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_125 = 6'h39 == _key_data_1_T_5[5:0] ? io_packet_header_57 : _GEN_124; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_126 = 6'h3a == _key_data_1_T_5[5:0] ? io_packet_header_58 : _GEN_125; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_127 = 6'h3b == _key_data_1_T_5[5:0] ? io_packet_header_59 : _GEN_126; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_128 = 6'h3c == _key_data_1_T_5[5:0] ? io_packet_header_60 : _GEN_127; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_129 = 6'h3d == _key_data_1_T_5[5:0] ? io_packet_header_61 : _GEN_128; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_130 = 6'h3e == _key_data_1_T_5[5:0] ? io_packet_header_62 : _GEN_129; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_131 = 6'h3f == _key_data_1_T_5[5:0] ? io_packet_header_63 : _GEN_130; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire  _key_data_2_T = 6'h2 < match_key_len; // @[matcher.scala 73:34]
  wire [31:0] _key_data_2_T_5 = _key_data_0_T_3 + 32'h2; // @[matcher.scala 74:92]
  wire [7:0] _GEN_135 = 6'h1 == _key_data_2_T_5[5:0] ? io_packet_header_1 : io_packet_header_0; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_136 = 6'h2 == _key_data_2_T_5[5:0] ? io_packet_header_2 : _GEN_135; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_137 = 6'h3 == _key_data_2_T_5[5:0] ? io_packet_header_3 : _GEN_136; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_138 = 6'h4 == _key_data_2_T_5[5:0] ? io_packet_header_4 : _GEN_137; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_139 = 6'h5 == _key_data_2_T_5[5:0] ? io_packet_header_5 : _GEN_138; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_140 = 6'h6 == _key_data_2_T_5[5:0] ? io_packet_header_6 : _GEN_139; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_141 = 6'h7 == _key_data_2_T_5[5:0] ? io_packet_header_7 : _GEN_140; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_142 = 6'h8 == _key_data_2_T_5[5:0] ? io_packet_header_8 : _GEN_141; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_143 = 6'h9 == _key_data_2_T_5[5:0] ? io_packet_header_9 : _GEN_142; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_144 = 6'ha == _key_data_2_T_5[5:0] ? io_packet_header_10 : _GEN_143; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_145 = 6'hb == _key_data_2_T_5[5:0] ? io_packet_header_11 : _GEN_144; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_146 = 6'hc == _key_data_2_T_5[5:0] ? io_packet_header_12 : _GEN_145; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_147 = 6'hd == _key_data_2_T_5[5:0] ? io_packet_header_13 : _GEN_146; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_148 = 6'he == _key_data_2_T_5[5:0] ? io_packet_header_14 : _GEN_147; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_149 = 6'hf == _key_data_2_T_5[5:0] ? io_packet_header_15 : _GEN_148; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_150 = 6'h10 == _key_data_2_T_5[5:0] ? io_packet_header_16 : _GEN_149; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_151 = 6'h11 == _key_data_2_T_5[5:0] ? io_packet_header_17 : _GEN_150; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_152 = 6'h12 == _key_data_2_T_5[5:0] ? io_packet_header_18 : _GEN_151; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_153 = 6'h13 == _key_data_2_T_5[5:0] ? io_packet_header_19 : _GEN_152; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_154 = 6'h14 == _key_data_2_T_5[5:0] ? io_packet_header_20 : _GEN_153; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_155 = 6'h15 == _key_data_2_T_5[5:0] ? io_packet_header_21 : _GEN_154; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_156 = 6'h16 == _key_data_2_T_5[5:0] ? io_packet_header_22 : _GEN_155; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_157 = 6'h17 == _key_data_2_T_5[5:0] ? io_packet_header_23 : _GEN_156; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_158 = 6'h18 == _key_data_2_T_5[5:0] ? io_packet_header_24 : _GEN_157; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_159 = 6'h19 == _key_data_2_T_5[5:0] ? io_packet_header_25 : _GEN_158; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_160 = 6'h1a == _key_data_2_T_5[5:0] ? io_packet_header_26 : _GEN_159; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_161 = 6'h1b == _key_data_2_T_5[5:0] ? io_packet_header_27 : _GEN_160; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_162 = 6'h1c == _key_data_2_T_5[5:0] ? io_packet_header_28 : _GEN_161; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_163 = 6'h1d == _key_data_2_T_5[5:0] ? io_packet_header_29 : _GEN_162; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_164 = 6'h1e == _key_data_2_T_5[5:0] ? io_packet_header_30 : _GEN_163; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_165 = 6'h1f == _key_data_2_T_5[5:0] ? io_packet_header_31 : _GEN_164; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_166 = 6'h20 == _key_data_2_T_5[5:0] ? io_packet_header_32 : _GEN_165; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_167 = 6'h21 == _key_data_2_T_5[5:0] ? io_packet_header_33 : _GEN_166; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_168 = 6'h22 == _key_data_2_T_5[5:0] ? io_packet_header_34 : _GEN_167; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_169 = 6'h23 == _key_data_2_T_5[5:0] ? io_packet_header_35 : _GEN_168; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_170 = 6'h24 == _key_data_2_T_5[5:0] ? io_packet_header_36 : _GEN_169; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_171 = 6'h25 == _key_data_2_T_5[5:0] ? io_packet_header_37 : _GEN_170; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_172 = 6'h26 == _key_data_2_T_5[5:0] ? io_packet_header_38 : _GEN_171; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_173 = 6'h27 == _key_data_2_T_5[5:0] ? io_packet_header_39 : _GEN_172; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_174 = 6'h28 == _key_data_2_T_5[5:0] ? io_packet_header_40 : _GEN_173; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_175 = 6'h29 == _key_data_2_T_5[5:0] ? io_packet_header_41 : _GEN_174; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_176 = 6'h2a == _key_data_2_T_5[5:0] ? io_packet_header_42 : _GEN_175; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_177 = 6'h2b == _key_data_2_T_5[5:0] ? io_packet_header_43 : _GEN_176; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_178 = 6'h2c == _key_data_2_T_5[5:0] ? io_packet_header_44 : _GEN_177; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_179 = 6'h2d == _key_data_2_T_5[5:0] ? io_packet_header_45 : _GEN_178; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_180 = 6'h2e == _key_data_2_T_5[5:0] ? io_packet_header_46 : _GEN_179; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_181 = 6'h2f == _key_data_2_T_5[5:0] ? io_packet_header_47 : _GEN_180; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_182 = 6'h30 == _key_data_2_T_5[5:0] ? io_packet_header_48 : _GEN_181; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_183 = 6'h31 == _key_data_2_T_5[5:0] ? io_packet_header_49 : _GEN_182; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_184 = 6'h32 == _key_data_2_T_5[5:0] ? io_packet_header_50 : _GEN_183; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_185 = 6'h33 == _key_data_2_T_5[5:0] ? io_packet_header_51 : _GEN_184; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_186 = 6'h34 == _key_data_2_T_5[5:0] ? io_packet_header_52 : _GEN_185; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_187 = 6'h35 == _key_data_2_T_5[5:0] ? io_packet_header_53 : _GEN_186; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_188 = 6'h36 == _key_data_2_T_5[5:0] ? io_packet_header_54 : _GEN_187; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_189 = 6'h37 == _key_data_2_T_5[5:0] ? io_packet_header_55 : _GEN_188; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_190 = 6'h38 == _key_data_2_T_5[5:0] ? io_packet_header_56 : _GEN_189; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_191 = 6'h39 == _key_data_2_T_5[5:0] ? io_packet_header_57 : _GEN_190; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_192 = 6'h3a == _key_data_2_T_5[5:0] ? io_packet_header_58 : _GEN_191; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_193 = 6'h3b == _key_data_2_T_5[5:0] ? io_packet_header_59 : _GEN_192; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_194 = 6'h3c == _key_data_2_T_5[5:0] ? io_packet_header_60 : _GEN_193; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_195 = 6'h3d == _key_data_2_T_5[5:0] ? io_packet_header_61 : _GEN_194; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_196 = 6'h3e == _key_data_2_T_5[5:0] ? io_packet_header_62 : _GEN_195; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_197 = 6'h3f == _key_data_2_T_5[5:0] ? io_packet_header_63 : _GEN_196; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire  _key_data_3_T = 6'h3 < match_key_len; // @[matcher.scala 73:34]
  wire [31:0] _key_data_3_T_5 = _key_data_0_T_3 + 32'h3; // @[matcher.scala 74:92]
  wire [7:0] _GEN_201 = 6'h1 == _key_data_3_T_5[5:0] ? io_packet_header_1 : io_packet_header_0; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_202 = 6'h2 == _key_data_3_T_5[5:0] ? io_packet_header_2 : _GEN_201; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_203 = 6'h3 == _key_data_3_T_5[5:0] ? io_packet_header_3 : _GEN_202; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_204 = 6'h4 == _key_data_3_T_5[5:0] ? io_packet_header_4 : _GEN_203; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_205 = 6'h5 == _key_data_3_T_5[5:0] ? io_packet_header_5 : _GEN_204; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_206 = 6'h6 == _key_data_3_T_5[5:0] ? io_packet_header_6 : _GEN_205; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_207 = 6'h7 == _key_data_3_T_5[5:0] ? io_packet_header_7 : _GEN_206; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_208 = 6'h8 == _key_data_3_T_5[5:0] ? io_packet_header_8 : _GEN_207; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_209 = 6'h9 == _key_data_3_T_5[5:0] ? io_packet_header_9 : _GEN_208; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_210 = 6'ha == _key_data_3_T_5[5:0] ? io_packet_header_10 : _GEN_209; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_211 = 6'hb == _key_data_3_T_5[5:0] ? io_packet_header_11 : _GEN_210; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_212 = 6'hc == _key_data_3_T_5[5:0] ? io_packet_header_12 : _GEN_211; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_213 = 6'hd == _key_data_3_T_5[5:0] ? io_packet_header_13 : _GEN_212; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_214 = 6'he == _key_data_3_T_5[5:0] ? io_packet_header_14 : _GEN_213; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_215 = 6'hf == _key_data_3_T_5[5:0] ? io_packet_header_15 : _GEN_214; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_216 = 6'h10 == _key_data_3_T_5[5:0] ? io_packet_header_16 : _GEN_215; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_217 = 6'h11 == _key_data_3_T_5[5:0] ? io_packet_header_17 : _GEN_216; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_218 = 6'h12 == _key_data_3_T_5[5:0] ? io_packet_header_18 : _GEN_217; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_219 = 6'h13 == _key_data_3_T_5[5:0] ? io_packet_header_19 : _GEN_218; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_220 = 6'h14 == _key_data_3_T_5[5:0] ? io_packet_header_20 : _GEN_219; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_221 = 6'h15 == _key_data_3_T_5[5:0] ? io_packet_header_21 : _GEN_220; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_222 = 6'h16 == _key_data_3_T_5[5:0] ? io_packet_header_22 : _GEN_221; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_223 = 6'h17 == _key_data_3_T_5[5:0] ? io_packet_header_23 : _GEN_222; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_224 = 6'h18 == _key_data_3_T_5[5:0] ? io_packet_header_24 : _GEN_223; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_225 = 6'h19 == _key_data_3_T_5[5:0] ? io_packet_header_25 : _GEN_224; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_226 = 6'h1a == _key_data_3_T_5[5:0] ? io_packet_header_26 : _GEN_225; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_227 = 6'h1b == _key_data_3_T_5[5:0] ? io_packet_header_27 : _GEN_226; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_228 = 6'h1c == _key_data_3_T_5[5:0] ? io_packet_header_28 : _GEN_227; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_229 = 6'h1d == _key_data_3_T_5[5:0] ? io_packet_header_29 : _GEN_228; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_230 = 6'h1e == _key_data_3_T_5[5:0] ? io_packet_header_30 : _GEN_229; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_231 = 6'h1f == _key_data_3_T_5[5:0] ? io_packet_header_31 : _GEN_230; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_232 = 6'h20 == _key_data_3_T_5[5:0] ? io_packet_header_32 : _GEN_231; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_233 = 6'h21 == _key_data_3_T_5[5:0] ? io_packet_header_33 : _GEN_232; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_234 = 6'h22 == _key_data_3_T_5[5:0] ? io_packet_header_34 : _GEN_233; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_235 = 6'h23 == _key_data_3_T_5[5:0] ? io_packet_header_35 : _GEN_234; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_236 = 6'h24 == _key_data_3_T_5[5:0] ? io_packet_header_36 : _GEN_235; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_237 = 6'h25 == _key_data_3_T_5[5:0] ? io_packet_header_37 : _GEN_236; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_238 = 6'h26 == _key_data_3_T_5[5:0] ? io_packet_header_38 : _GEN_237; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_239 = 6'h27 == _key_data_3_T_5[5:0] ? io_packet_header_39 : _GEN_238; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_240 = 6'h28 == _key_data_3_T_5[5:0] ? io_packet_header_40 : _GEN_239; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_241 = 6'h29 == _key_data_3_T_5[5:0] ? io_packet_header_41 : _GEN_240; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_242 = 6'h2a == _key_data_3_T_5[5:0] ? io_packet_header_42 : _GEN_241; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_243 = 6'h2b == _key_data_3_T_5[5:0] ? io_packet_header_43 : _GEN_242; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_244 = 6'h2c == _key_data_3_T_5[5:0] ? io_packet_header_44 : _GEN_243; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_245 = 6'h2d == _key_data_3_T_5[5:0] ? io_packet_header_45 : _GEN_244; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_246 = 6'h2e == _key_data_3_T_5[5:0] ? io_packet_header_46 : _GEN_245; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_247 = 6'h2f == _key_data_3_T_5[5:0] ? io_packet_header_47 : _GEN_246; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_248 = 6'h30 == _key_data_3_T_5[5:0] ? io_packet_header_48 : _GEN_247; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_249 = 6'h31 == _key_data_3_T_5[5:0] ? io_packet_header_49 : _GEN_248; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_250 = 6'h32 == _key_data_3_T_5[5:0] ? io_packet_header_50 : _GEN_249; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_251 = 6'h33 == _key_data_3_T_5[5:0] ? io_packet_header_51 : _GEN_250; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_252 = 6'h34 == _key_data_3_T_5[5:0] ? io_packet_header_52 : _GEN_251; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_253 = 6'h35 == _key_data_3_T_5[5:0] ? io_packet_header_53 : _GEN_252; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_254 = 6'h36 == _key_data_3_T_5[5:0] ? io_packet_header_54 : _GEN_253; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_255 = 6'h37 == _key_data_3_T_5[5:0] ? io_packet_header_55 : _GEN_254; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_256 = 6'h38 == _key_data_3_T_5[5:0] ? io_packet_header_56 : _GEN_255; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_257 = 6'h39 == _key_data_3_T_5[5:0] ? io_packet_header_57 : _GEN_256; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_258 = 6'h3a == _key_data_3_T_5[5:0] ? io_packet_header_58 : _GEN_257; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_259 = 6'h3b == _key_data_3_T_5[5:0] ? io_packet_header_59 : _GEN_258; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_260 = 6'h3c == _key_data_3_T_5[5:0] ? io_packet_header_60 : _GEN_259; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_261 = 6'h3d == _key_data_3_T_5[5:0] ? io_packet_header_61 : _GEN_260; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_262 = 6'h3e == _key_data_3_T_5[5:0] ? io_packet_header_62 : _GEN_261; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_263 = 6'h3f == _key_data_3_T_5[5:0] ? io_packet_header_63 : _GEN_262; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire  _key_data_4_T = 6'h4 < match_key_len; // @[matcher.scala 73:34]
  wire [31:0] _key_data_4_T_5 = _key_data_0_T_3 + 32'h4; // @[matcher.scala 74:92]
  wire [7:0] _GEN_267 = 6'h1 == _key_data_4_T_5[5:0] ? io_packet_header_1 : io_packet_header_0; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_268 = 6'h2 == _key_data_4_T_5[5:0] ? io_packet_header_2 : _GEN_267; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_269 = 6'h3 == _key_data_4_T_5[5:0] ? io_packet_header_3 : _GEN_268; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_270 = 6'h4 == _key_data_4_T_5[5:0] ? io_packet_header_4 : _GEN_269; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_271 = 6'h5 == _key_data_4_T_5[5:0] ? io_packet_header_5 : _GEN_270; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_272 = 6'h6 == _key_data_4_T_5[5:0] ? io_packet_header_6 : _GEN_271; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_273 = 6'h7 == _key_data_4_T_5[5:0] ? io_packet_header_7 : _GEN_272; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_274 = 6'h8 == _key_data_4_T_5[5:0] ? io_packet_header_8 : _GEN_273; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_275 = 6'h9 == _key_data_4_T_5[5:0] ? io_packet_header_9 : _GEN_274; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_276 = 6'ha == _key_data_4_T_5[5:0] ? io_packet_header_10 : _GEN_275; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_277 = 6'hb == _key_data_4_T_5[5:0] ? io_packet_header_11 : _GEN_276; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_278 = 6'hc == _key_data_4_T_5[5:0] ? io_packet_header_12 : _GEN_277; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_279 = 6'hd == _key_data_4_T_5[5:0] ? io_packet_header_13 : _GEN_278; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_280 = 6'he == _key_data_4_T_5[5:0] ? io_packet_header_14 : _GEN_279; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_281 = 6'hf == _key_data_4_T_5[5:0] ? io_packet_header_15 : _GEN_280; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_282 = 6'h10 == _key_data_4_T_5[5:0] ? io_packet_header_16 : _GEN_281; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_283 = 6'h11 == _key_data_4_T_5[5:0] ? io_packet_header_17 : _GEN_282; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_284 = 6'h12 == _key_data_4_T_5[5:0] ? io_packet_header_18 : _GEN_283; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_285 = 6'h13 == _key_data_4_T_5[5:0] ? io_packet_header_19 : _GEN_284; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_286 = 6'h14 == _key_data_4_T_5[5:0] ? io_packet_header_20 : _GEN_285; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_287 = 6'h15 == _key_data_4_T_5[5:0] ? io_packet_header_21 : _GEN_286; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_288 = 6'h16 == _key_data_4_T_5[5:0] ? io_packet_header_22 : _GEN_287; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_289 = 6'h17 == _key_data_4_T_5[5:0] ? io_packet_header_23 : _GEN_288; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_290 = 6'h18 == _key_data_4_T_5[5:0] ? io_packet_header_24 : _GEN_289; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_291 = 6'h19 == _key_data_4_T_5[5:0] ? io_packet_header_25 : _GEN_290; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_292 = 6'h1a == _key_data_4_T_5[5:0] ? io_packet_header_26 : _GEN_291; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_293 = 6'h1b == _key_data_4_T_5[5:0] ? io_packet_header_27 : _GEN_292; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_294 = 6'h1c == _key_data_4_T_5[5:0] ? io_packet_header_28 : _GEN_293; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_295 = 6'h1d == _key_data_4_T_5[5:0] ? io_packet_header_29 : _GEN_294; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_296 = 6'h1e == _key_data_4_T_5[5:0] ? io_packet_header_30 : _GEN_295; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_297 = 6'h1f == _key_data_4_T_5[5:0] ? io_packet_header_31 : _GEN_296; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_298 = 6'h20 == _key_data_4_T_5[5:0] ? io_packet_header_32 : _GEN_297; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_299 = 6'h21 == _key_data_4_T_5[5:0] ? io_packet_header_33 : _GEN_298; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_300 = 6'h22 == _key_data_4_T_5[5:0] ? io_packet_header_34 : _GEN_299; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_301 = 6'h23 == _key_data_4_T_5[5:0] ? io_packet_header_35 : _GEN_300; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_302 = 6'h24 == _key_data_4_T_5[5:0] ? io_packet_header_36 : _GEN_301; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_303 = 6'h25 == _key_data_4_T_5[5:0] ? io_packet_header_37 : _GEN_302; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_304 = 6'h26 == _key_data_4_T_5[5:0] ? io_packet_header_38 : _GEN_303; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_305 = 6'h27 == _key_data_4_T_5[5:0] ? io_packet_header_39 : _GEN_304; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_306 = 6'h28 == _key_data_4_T_5[5:0] ? io_packet_header_40 : _GEN_305; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_307 = 6'h29 == _key_data_4_T_5[5:0] ? io_packet_header_41 : _GEN_306; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_308 = 6'h2a == _key_data_4_T_5[5:0] ? io_packet_header_42 : _GEN_307; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_309 = 6'h2b == _key_data_4_T_5[5:0] ? io_packet_header_43 : _GEN_308; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_310 = 6'h2c == _key_data_4_T_5[5:0] ? io_packet_header_44 : _GEN_309; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_311 = 6'h2d == _key_data_4_T_5[5:0] ? io_packet_header_45 : _GEN_310; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_312 = 6'h2e == _key_data_4_T_5[5:0] ? io_packet_header_46 : _GEN_311; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_313 = 6'h2f == _key_data_4_T_5[5:0] ? io_packet_header_47 : _GEN_312; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_314 = 6'h30 == _key_data_4_T_5[5:0] ? io_packet_header_48 : _GEN_313; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_315 = 6'h31 == _key_data_4_T_5[5:0] ? io_packet_header_49 : _GEN_314; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_316 = 6'h32 == _key_data_4_T_5[5:0] ? io_packet_header_50 : _GEN_315; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_317 = 6'h33 == _key_data_4_T_5[5:0] ? io_packet_header_51 : _GEN_316; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_318 = 6'h34 == _key_data_4_T_5[5:0] ? io_packet_header_52 : _GEN_317; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_319 = 6'h35 == _key_data_4_T_5[5:0] ? io_packet_header_53 : _GEN_318; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_320 = 6'h36 == _key_data_4_T_5[5:0] ? io_packet_header_54 : _GEN_319; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_321 = 6'h37 == _key_data_4_T_5[5:0] ? io_packet_header_55 : _GEN_320; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_322 = 6'h38 == _key_data_4_T_5[5:0] ? io_packet_header_56 : _GEN_321; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_323 = 6'h39 == _key_data_4_T_5[5:0] ? io_packet_header_57 : _GEN_322; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_324 = 6'h3a == _key_data_4_T_5[5:0] ? io_packet_header_58 : _GEN_323; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_325 = 6'h3b == _key_data_4_T_5[5:0] ? io_packet_header_59 : _GEN_324; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_326 = 6'h3c == _key_data_4_T_5[5:0] ? io_packet_header_60 : _GEN_325; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_327 = 6'h3d == _key_data_4_T_5[5:0] ? io_packet_header_61 : _GEN_326; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_328 = 6'h3e == _key_data_4_T_5[5:0] ? io_packet_header_62 : _GEN_327; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_329 = 6'h3f == _key_data_4_T_5[5:0] ? io_packet_header_63 : _GEN_328; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire  _key_data_5_T = 6'h5 < match_key_len; // @[matcher.scala 73:34]
  wire [31:0] _key_data_5_T_5 = _key_data_0_T_3 + 32'h5; // @[matcher.scala 74:92]
  wire [7:0] _GEN_333 = 6'h1 == _key_data_5_T_5[5:0] ? io_packet_header_1 : io_packet_header_0; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_334 = 6'h2 == _key_data_5_T_5[5:0] ? io_packet_header_2 : _GEN_333; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_335 = 6'h3 == _key_data_5_T_5[5:0] ? io_packet_header_3 : _GEN_334; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_336 = 6'h4 == _key_data_5_T_5[5:0] ? io_packet_header_4 : _GEN_335; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_337 = 6'h5 == _key_data_5_T_5[5:0] ? io_packet_header_5 : _GEN_336; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_338 = 6'h6 == _key_data_5_T_5[5:0] ? io_packet_header_6 : _GEN_337; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_339 = 6'h7 == _key_data_5_T_5[5:0] ? io_packet_header_7 : _GEN_338; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_340 = 6'h8 == _key_data_5_T_5[5:0] ? io_packet_header_8 : _GEN_339; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_341 = 6'h9 == _key_data_5_T_5[5:0] ? io_packet_header_9 : _GEN_340; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_342 = 6'ha == _key_data_5_T_5[5:0] ? io_packet_header_10 : _GEN_341; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_343 = 6'hb == _key_data_5_T_5[5:0] ? io_packet_header_11 : _GEN_342; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_344 = 6'hc == _key_data_5_T_5[5:0] ? io_packet_header_12 : _GEN_343; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_345 = 6'hd == _key_data_5_T_5[5:0] ? io_packet_header_13 : _GEN_344; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_346 = 6'he == _key_data_5_T_5[5:0] ? io_packet_header_14 : _GEN_345; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_347 = 6'hf == _key_data_5_T_5[5:0] ? io_packet_header_15 : _GEN_346; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_348 = 6'h10 == _key_data_5_T_5[5:0] ? io_packet_header_16 : _GEN_347; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_349 = 6'h11 == _key_data_5_T_5[5:0] ? io_packet_header_17 : _GEN_348; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_350 = 6'h12 == _key_data_5_T_5[5:0] ? io_packet_header_18 : _GEN_349; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_351 = 6'h13 == _key_data_5_T_5[5:0] ? io_packet_header_19 : _GEN_350; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_352 = 6'h14 == _key_data_5_T_5[5:0] ? io_packet_header_20 : _GEN_351; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_353 = 6'h15 == _key_data_5_T_5[5:0] ? io_packet_header_21 : _GEN_352; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_354 = 6'h16 == _key_data_5_T_5[5:0] ? io_packet_header_22 : _GEN_353; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_355 = 6'h17 == _key_data_5_T_5[5:0] ? io_packet_header_23 : _GEN_354; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_356 = 6'h18 == _key_data_5_T_5[5:0] ? io_packet_header_24 : _GEN_355; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_357 = 6'h19 == _key_data_5_T_5[5:0] ? io_packet_header_25 : _GEN_356; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_358 = 6'h1a == _key_data_5_T_5[5:0] ? io_packet_header_26 : _GEN_357; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_359 = 6'h1b == _key_data_5_T_5[5:0] ? io_packet_header_27 : _GEN_358; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_360 = 6'h1c == _key_data_5_T_5[5:0] ? io_packet_header_28 : _GEN_359; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_361 = 6'h1d == _key_data_5_T_5[5:0] ? io_packet_header_29 : _GEN_360; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_362 = 6'h1e == _key_data_5_T_5[5:0] ? io_packet_header_30 : _GEN_361; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_363 = 6'h1f == _key_data_5_T_5[5:0] ? io_packet_header_31 : _GEN_362; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_364 = 6'h20 == _key_data_5_T_5[5:0] ? io_packet_header_32 : _GEN_363; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_365 = 6'h21 == _key_data_5_T_5[5:0] ? io_packet_header_33 : _GEN_364; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_366 = 6'h22 == _key_data_5_T_5[5:0] ? io_packet_header_34 : _GEN_365; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_367 = 6'h23 == _key_data_5_T_5[5:0] ? io_packet_header_35 : _GEN_366; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_368 = 6'h24 == _key_data_5_T_5[5:0] ? io_packet_header_36 : _GEN_367; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_369 = 6'h25 == _key_data_5_T_5[5:0] ? io_packet_header_37 : _GEN_368; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_370 = 6'h26 == _key_data_5_T_5[5:0] ? io_packet_header_38 : _GEN_369; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_371 = 6'h27 == _key_data_5_T_5[5:0] ? io_packet_header_39 : _GEN_370; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_372 = 6'h28 == _key_data_5_T_5[5:0] ? io_packet_header_40 : _GEN_371; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_373 = 6'h29 == _key_data_5_T_5[5:0] ? io_packet_header_41 : _GEN_372; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_374 = 6'h2a == _key_data_5_T_5[5:0] ? io_packet_header_42 : _GEN_373; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_375 = 6'h2b == _key_data_5_T_5[5:0] ? io_packet_header_43 : _GEN_374; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_376 = 6'h2c == _key_data_5_T_5[5:0] ? io_packet_header_44 : _GEN_375; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_377 = 6'h2d == _key_data_5_T_5[5:0] ? io_packet_header_45 : _GEN_376; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_378 = 6'h2e == _key_data_5_T_5[5:0] ? io_packet_header_46 : _GEN_377; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_379 = 6'h2f == _key_data_5_T_5[5:0] ? io_packet_header_47 : _GEN_378; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_380 = 6'h30 == _key_data_5_T_5[5:0] ? io_packet_header_48 : _GEN_379; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_381 = 6'h31 == _key_data_5_T_5[5:0] ? io_packet_header_49 : _GEN_380; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_382 = 6'h32 == _key_data_5_T_5[5:0] ? io_packet_header_50 : _GEN_381; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_383 = 6'h33 == _key_data_5_T_5[5:0] ? io_packet_header_51 : _GEN_382; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_384 = 6'h34 == _key_data_5_T_5[5:0] ? io_packet_header_52 : _GEN_383; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_385 = 6'h35 == _key_data_5_T_5[5:0] ? io_packet_header_53 : _GEN_384; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_386 = 6'h36 == _key_data_5_T_5[5:0] ? io_packet_header_54 : _GEN_385; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_387 = 6'h37 == _key_data_5_T_5[5:0] ? io_packet_header_55 : _GEN_386; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_388 = 6'h38 == _key_data_5_T_5[5:0] ? io_packet_header_56 : _GEN_387; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_389 = 6'h39 == _key_data_5_T_5[5:0] ? io_packet_header_57 : _GEN_388; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_390 = 6'h3a == _key_data_5_T_5[5:0] ? io_packet_header_58 : _GEN_389; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_391 = 6'h3b == _key_data_5_T_5[5:0] ? io_packet_header_59 : _GEN_390; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_392 = 6'h3c == _key_data_5_T_5[5:0] ? io_packet_header_60 : _GEN_391; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_393 = 6'h3d == _key_data_5_T_5[5:0] ? io_packet_header_61 : _GEN_392; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_394 = 6'h3e == _key_data_5_T_5[5:0] ? io_packet_header_62 : _GEN_393; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_395 = 6'h3f == _key_data_5_T_5[5:0] ? io_packet_header_63 : _GEN_394; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire  _key_data_6_T = 6'h6 < match_key_len; // @[matcher.scala 73:34]
  wire [31:0] _key_data_6_T_5 = _key_data_0_T_3 + 32'h6; // @[matcher.scala 74:92]
  wire [7:0] _GEN_399 = 6'h1 == _key_data_6_T_5[5:0] ? io_packet_header_1 : io_packet_header_0; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_400 = 6'h2 == _key_data_6_T_5[5:0] ? io_packet_header_2 : _GEN_399; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_401 = 6'h3 == _key_data_6_T_5[5:0] ? io_packet_header_3 : _GEN_400; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_402 = 6'h4 == _key_data_6_T_5[5:0] ? io_packet_header_4 : _GEN_401; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_403 = 6'h5 == _key_data_6_T_5[5:0] ? io_packet_header_5 : _GEN_402; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_404 = 6'h6 == _key_data_6_T_5[5:0] ? io_packet_header_6 : _GEN_403; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_405 = 6'h7 == _key_data_6_T_5[5:0] ? io_packet_header_7 : _GEN_404; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_406 = 6'h8 == _key_data_6_T_5[5:0] ? io_packet_header_8 : _GEN_405; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_407 = 6'h9 == _key_data_6_T_5[5:0] ? io_packet_header_9 : _GEN_406; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_408 = 6'ha == _key_data_6_T_5[5:0] ? io_packet_header_10 : _GEN_407; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_409 = 6'hb == _key_data_6_T_5[5:0] ? io_packet_header_11 : _GEN_408; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_410 = 6'hc == _key_data_6_T_5[5:0] ? io_packet_header_12 : _GEN_409; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_411 = 6'hd == _key_data_6_T_5[5:0] ? io_packet_header_13 : _GEN_410; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_412 = 6'he == _key_data_6_T_5[5:0] ? io_packet_header_14 : _GEN_411; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_413 = 6'hf == _key_data_6_T_5[5:0] ? io_packet_header_15 : _GEN_412; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_414 = 6'h10 == _key_data_6_T_5[5:0] ? io_packet_header_16 : _GEN_413; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_415 = 6'h11 == _key_data_6_T_5[5:0] ? io_packet_header_17 : _GEN_414; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_416 = 6'h12 == _key_data_6_T_5[5:0] ? io_packet_header_18 : _GEN_415; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_417 = 6'h13 == _key_data_6_T_5[5:0] ? io_packet_header_19 : _GEN_416; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_418 = 6'h14 == _key_data_6_T_5[5:0] ? io_packet_header_20 : _GEN_417; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_419 = 6'h15 == _key_data_6_T_5[5:0] ? io_packet_header_21 : _GEN_418; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_420 = 6'h16 == _key_data_6_T_5[5:0] ? io_packet_header_22 : _GEN_419; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_421 = 6'h17 == _key_data_6_T_5[5:0] ? io_packet_header_23 : _GEN_420; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_422 = 6'h18 == _key_data_6_T_5[5:0] ? io_packet_header_24 : _GEN_421; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_423 = 6'h19 == _key_data_6_T_5[5:0] ? io_packet_header_25 : _GEN_422; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_424 = 6'h1a == _key_data_6_T_5[5:0] ? io_packet_header_26 : _GEN_423; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_425 = 6'h1b == _key_data_6_T_5[5:0] ? io_packet_header_27 : _GEN_424; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_426 = 6'h1c == _key_data_6_T_5[5:0] ? io_packet_header_28 : _GEN_425; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_427 = 6'h1d == _key_data_6_T_5[5:0] ? io_packet_header_29 : _GEN_426; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_428 = 6'h1e == _key_data_6_T_5[5:0] ? io_packet_header_30 : _GEN_427; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_429 = 6'h1f == _key_data_6_T_5[5:0] ? io_packet_header_31 : _GEN_428; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_430 = 6'h20 == _key_data_6_T_5[5:0] ? io_packet_header_32 : _GEN_429; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_431 = 6'h21 == _key_data_6_T_5[5:0] ? io_packet_header_33 : _GEN_430; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_432 = 6'h22 == _key_data_6_T_5[5:0] ? io_packet_header_34 : _GEN_431; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_433 = 6'h23 == _key_data_6_T_5[5:0] ? io_packet_header_35 : _GEN_432; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_434 = 6'h24 == _key_data_6_T_5[5:0] ? io_packet_header_36 : _GEN_433; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_435 = 6'h25 == _key_data_6_T_5[5:0] ? io_packet_header_37 : _GEN_434; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_436 = 6'h26 == _key_data_6_T_5[5:0] ? io_packet_header_38 : _GEN_435; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_437 = 6'h27 == _key_data_6_T_5[5:0] ? io_packet_header_39 : _GEN_436; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_438 = 6'h28 == _key_data_6_T_5[5:0] ? io_packet_header_40 : _GEN_437; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_439 = 6'h29 == _key_data_6_T_5[5:0] ? io_packet_header_41 : _GEN_438; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_440 = 6'h2a == _key_data_6_T_5[5:0] ? io_packet_header_42 : _GEN_439; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_441 = 6'h2b == _key_data_6_T_5[5:0] ? io_packet_header_43 : _GEN_440; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_442 = 6'h2c == _key_data_6_T_5[5:0] ? io_packet_header_44 : _GEN_441; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_443 = 6'h2d == _key_data_6_T_5[5:0] ? io_packet_header_45 : _GEN_442; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_444 = 6'h2e == _key_data_6_T_5[5:0] ? io_packet_header_46 : _GEN_443; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_445 = 6'h2f == _key_data_6_T_5[5:0] ? io_packet_header_47 : _GEN_444; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_446 = 6'h30 == _key_data_6_T_5[5:0] ? io_packet_header_48 : _GEN_445; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_447 = 6'h31 == _key_data_6_T_5[5:0] ? io_packet_header_49 : _GEN_446; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_448 = 6'h32 == _key_data_6_T_5[5:0] ? io_packet_header_50 : _GEN_447; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_449 = 6'h33 == _key_data_6_T_5[5:0] ? io_packet_header_51 : _GEN_448; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_450 = 6'h34 == _key_data_6_T_5[5:0] ? io_packet_header_52 : _GEN_449; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_451 = 6'h35 == _key_data_6_T_5[5:0] ? io_packet_header_53 : _GEN_450; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_452 = 6'h36 == _key_data_6_T_5[5:0] ? io_packet_header_54 : _GEN_451; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_453 = 6'h37 == _key_data_6_T_5[5:0] ? io_packet_header_55 : _GEN_452; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_454 = 6'h38 == _key_data_6_T_5[5:0] ? io_packet_header_56 : _GEN_453; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_455 = 6'h39 == _key_data_6_T_5[5:0] ? io_packet_header_57 : _GEN_454; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_456 = 6'h3a == _key_data_6_T_5[5:0] ? io_packet_header_58 : _GEN_455; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_457 = 6'h3b == _key_data_6_T_5[5:0] ? io_packet_header_59 : _GEN_456; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_458 = 6'h3c == _key_data_6_T_5[5:0] ? io_packet_header_60 : _GEN_457; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_459 = 6'h3d == _key_data_6_T_5[5:0] ? io_packet_header_61 : _GEN_458; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_460 = 6'h3e == _key_data_6_T_5[5:0] ? io_packet_header_62 : _GEN_459; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_461 = 6'h3f == _key_data_6_T_5[5:0] ? io_packet_header_63 : _GEN_460; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire  _key_data_7_T = 6'h7 < match_key_len; // @[matcher.scala 73:34]
  wire [31:0] _key_data_7_T_5 = _key_data_0_T_3 + 32'h7; // @[matcher.scala 74:92]
  wire [7:0] _GEN_465 = 6'h1 == _key_data_7_T_5[5:0] ? io_packet_header_1 : io_packet_header_0; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_466 = 6'h2 == _key_data_7_T_5[5:0] ? io_packet_header_2 : _GEN_465; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_467 = 6'h3 == _key_data_7_T_5[5:0] ? io_packet_header_3 : _GEN_466; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_468 = 6'h4 == _key_data_7_T_5[5:0] ? io_packet_header_4 : _GEN_467; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_469 = 6'h5 == _key_data_7_T_5[5:0] ? io_packet_header_5 : _GEN_468; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_470 = 6'h6 == _key_data_7_T_5[5:0] ? io_packet_header_6 : _GEN_469; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_471 = 6'h7 == _key_data_7_T_5[5:0] ? io_packet_header_7 : _GEN_470; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_472 = 6'h8 == _key_data_7_T_5[5:0] ? io_packet_header_8 : _GEN_471; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_473 = 6'h9 == _key_data_7_T_5[5:0] ? io_packet_header_9 : _GEN_472; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_474 = 6'ha == _key_data_7_T_5[5:0] ? io_packet_header_10 : _GEN_473; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_475 = 6'hb == _key_data_7_T_5[5:0] ? io_packet_header_11 : _GEN_474; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_476 = 6'hc == _key_data_7_T_5[5:0] ? io_packet_header_12 : _GEN_475; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_477 = 6'hd == _key_data_7_T_5[5:0] ? io_packet_header_13 : _GEN_476; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_478 = 6'he == _key_data_7_T_5[5:0] ? io_packet_header_14 : _GEN_477; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_479 = 6'hf == _key_data_7_T_5[5:0] ? io_packet_header_15 : _GEN_478; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_480 = 6'h10 == _key_data_7_T_5[5:0] ? io_packet_header_16 : _GEN_479; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_481 = 6'h11 == _key_data_7_T_5[5:0] ? io_packet_header_17 : _GEN_480; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_482 = 6'h12 == _key_data_7_T_5[5:0] ? io_packet_header_18 : _GEN_481; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_483 = 6'h13 == _key_data_7_T_5[5:0] ? io_packet_header_19 : _GEN_482; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_484 = 6'h14 == _key_data_7_T_5[5:0] ? io_packet_header_20 : _GEN_483; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_485 = 6'h15 == _key_data_7_T_5[5:0] ? io_packet_header_21 : _GEN_484; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_486 = 6'h16 == _key_data_7_T_5[5:0] ? io_packet_header_22 : _GEN_485; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_487 = 6'h17 == _key_data_7_T_5[5:0] ? io_packet_header_23 : _GEN_486; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_488 = 6'h18 == _key_data_7_T_5[5:0] ? io_packet_header_24 : _GEN_487; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_489 = 6'h19 == _key_data_7_T_5[5:0] ? io_packet_header_25 : _GEN_488; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_490 = 6'h1a == _key_data_7_T_5[5:0] ? io_packet_header_26 : _GEN_489; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_491 = 6'h1b == _key_data_7_T_5[5:0] ? io_packet_header_27 : _GEN_490; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_492 = 6'h1c == _key_data_7_T_5[5:0] ? io_packet_header_28 : _GEN_491; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_493 = 6'h1d == _key_data_7_T_5[5:0] ? io_packet_header_29 : _GEN_492; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_494 = 6'h1e == _key_data_7_T_5[5:0] ? io_packet_header_30 : _GEN_493; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_495 = 6'h1f == _key_data_7_T_5[5:0] ? io_packet_header_31 : _GEN_494; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_496 = 6'h20 == _key_data_7_T_5[5:0] ? io_packet_header_32 : _GEN_495; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_497 = 6'h21 == _key_data_7_T_5[5:0] ? io_packet_header_33 : _GEN_496; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_498 = 6'h22 == _key_data_7_T_5[5:0] ? io_packet_header_34 : _GEN_497; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_499 = 6'h23 == _key_data_7_T_5[5:0] ? io_packet_header_35 : _GEN_498; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_500 = 6'h24 == _key_data_7_T_5[5:0] ? io_packet_header_36 : _GEN_499; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_501 = 6'h25 == _key_data_7_T_5[5:0] ? io_packet_header_37 : _GEN_500; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_502 = 6'h26 == _key_data_7_T_5[5:0] ? io_packet_header_38 : _GEN_501; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_503 = 6'h27 == _key_data_7_T_5[5:0] ? io_packet_header_39 : _GEN_502; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_504 = 6'h28 == _key_data_7_T_5[5:0] ? io_packet_header_40 : _GEN_503; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_505 = 6'h29 == _key_data_7_T_5[5:0] ? io_packet_header_41 : _GEN_504; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_506 = 6'h2a == _key_data_7_T_5[5:0] ? io_packet_header_42 : _GEN_505; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_507 = 6'h2b == _key_data_7_T_5[5:0] ? io_packet_header_43 : _GEN_506; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_508 = 6'h2c == _key_data_7_T_5[5:0] ? io_packet_header_44 : _GEN_507; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_509 = 6'h2d == _key_data_7_T_5[5:0] ? io_packet_header_45 : _GEN_508; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_510 = 6'h2e == _key_data_7_T_5[5:0] ? io_packet_header_46 : _GEN_509; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_511 = 6'h2f == _key_data_7_T_5[5:0] ? io_packet_header_47 : _GEN_510; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_512 = 6'h30 == _key_data_7_T_5[5:0] ? io_packet_header_48 : _GEN_511; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_513 = 6'h31 == _key_data_7_T_5[5:0] ? io_packet_header_49 : _GEN_512; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_514 = 6'h32 == _key_data_7_T_5[5:0] ? io_packet_header_50 : _GEN_513; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_515 = 6'h33 == _key_data_7_T_5[5:0] ? io_packet_header_51 : _GEN_514; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_516 = 6'h34 == _key_data_7_T_5[5:0] ? io_packet_header_52 : _GEN_515; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_517 = 6'h35 == _key_data_7_T_5[5:0] ? io_packet_header_53 : _GEN_516; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_518 = 6'h36 == _key_data_7_T_5[5:0] ? io_packet_header_54 : _GEN_517; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_519 = 6'h37 == _key_data_7_T_5[5:0] ? io_packet_header_55 : _GEN_518; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_520 = 6'h38 == _key_data_7_T_5[5:0] ? io_packet_header_56 : _GEN_519; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_521 = 6'h39 == _key_data_7_T_5[5:0] ? io_packet_header_57 : _GEN_520; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_522 = 6'h3a == _key_data_7_T_5[5:0] ? io_packet_header_58 : _GEN_521; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_523 = 6'h3b == _key_data_7_T_5[5:0] ? io_packet_header_59 : _GEN_522; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_524 = 6'h3c == _key_data_7_T_5[5:0] ? io_packet_header_60 : _GEN_523; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_525 = 6'h3d == _key_data_7_T_5[5:0] ? io_packet_header_61 : _GEN_524; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_526 = 6'h3e == _key_data_7_T_5[5:0] ? io_packet_header_62 : _GEN_525; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire [7:0] _GEN_527 = 6'h3f == _key_data_7_T_5[5:0] ? io_packet_header_63 : _GEN_526; // @[matcher.scala 72:39 matcher.scala 72:39]
  wire  _GEN_528 = io_start ? 1'h0 : ready; // @[matcher.scala 65:29 matcher.scala 66:26 matcher.scala 20:27]
  wire  _GEN_529 = io_start ? 1'h0 : is_match; // @[matcher.scala 65:29 matcher.scala 67:26 matcher.scala 21:27]
  wire [2:0] _GEN_530 = io_start ? 3'h1 : state; // @[matcher.scala 65:29 matcher.scala 68:26 matcher.scala 48:24]
  wire  _GEN_531 = io_start | hash_start; // @[matcher.scala 65:29 matcher.scala 70:28 matcher.scala 39:29]
  wire  _GEN_544 = io_mod_start ? ready : _GEN_528; // @[matcher.scala 59:29 matcher.scala 20:27]
  wire  _GEN_545 = io_mod_start ? is_match : _GEN_529; // @[matcher.scala 59:29 matcher.scala 21:27]
  wire [2:0] _GEN_546 = io_mod_start ? state : _GEN_530; // @[matcher.scala 59:29 matcher.scala 48:24]
  wire  _GEN_547 = io_mod_start ? hash_start : _GEN_531; // @[matcher.scala 59:29 matcher.scala 39:29]
  wire  _GEN_560 = state == 3'h0 ? _GEN_544 : ready; // @[matcher.scala 58:31 matcher.scala 20:27]
  wire  _GEN_561 = state == 3'h0 ? _GEN_545 : is_match; // @[matcher.scala 58:31 matcher.scala 21:27]
  wire [2:0] _GEN_562 = state == 3'h0 ? _GEN_546 : state; // @[matcher.scala 58:31 matcher.scala 48:24]
  wire  _GEN_563 = state == 3'h0 ? _GEN_547 : hash_start; // @[matcher.scala 58:31 matcher.scala 39:29]
  wire [35:0] _mem_addr_T = {hash_io_hash_val,4'h0}; // @[Cat.scala 30:58]
  wire [35:0] _mem_addr_T_2 = 36'h80 + _mem_addr_T; // @[matcher.scala 86:66]
  wire  _GEN_573 = hash_io_hash_ready | ce; // @[matcher.scala 83:35 matcher.scala 85:24 matcher.scala 50:21]
  wire [35:0] _GEN_574 = hash_io_hash_ready ? _mem_addr_T_2 : {{4'd0}, mem_addr}; // @[matcher.scala 83:35 matcher.scala 86:24 matcher.scala 35:27]
  wire [5:0] _GEN_575 = hash_io_hash_ready ? 6'h0 : mem_cnt; // @[matcher.scala 83:35 matcher.scala 87:24 matcher.scala 33:34]
  wire [2:0] _GEN_576 = hash_io_hash_ready ? 3'h2 : _GEN_562; // @[matcher.scala 83:35 matcher.scala 88:24]
  wire  _GEN_578 = state == 3'h1 ? _GEN_573 : ce; // @[matcher.scala 82:31 matcher.scala 50:21]
  wire [35:0] _GEN_579 = state == 3'h1 ? _GEN_574 : {{4'd0}, mem_addr}; // @[matcher.scala 82:31 matcher.scala 35:27]
  wire [5:0] _GEN_580 = state == 3'h1 ? _GEN_575 : mem_cnt; // @[matcher.scala 82:31 matcher.scala 33:34]
  wire [2:0] _GEN_581 = state == 3'h1 ? _GEN_576 : _GEN_562; // @[matcher.scala 82:31]
  wire [7:0] _GEN_583 = 3'h1 == mem_cnt[2:0] ? key_data_1 : key_data_0; // @[matcher.scala 97:37 matcher.scala 97:37]
  wire [7:0] _GEN_584 = 3'h2 == mem_cnt[2:0] ? key_data_2 : _GEN_583; // @[matcher.scala 97:37 matcher.scala 97:37]
  wire [7:0] _GEN_585 = 3'h3 == mem_cnt[2:0] ? key_data_3 : _GEN_584; // @[matcher.scala 97:37 matcher.scala 97:37]
  wire [7:0] _GEN_586 = 3'h4 == mem_cnt[2:0] ? key_data_4 : _GEN_585; // @[matcher.scala 97:37 matcher.scala 97:37]
  wire [7:0] _GEN_587 = 3'h5 == mem_cnt[2:0] ? key_data_5 : _GEN_586; // @[matcher.scala 97:37 matcher.scala 97:37]
  wire [7:0] _GEN_588 = 3'h6 == mem_cnt[2:0] ? key_data_6 : _GEN_587; // @[matcher.scala 97:37 matcher.scala 97:37]
  wire [7:0] _GEN_589 = 3'h7 == mem_cnt[2:0] ? key_data_7 : _GEN_588; // @[matcher.scala 97:37 matcher.scala 97:37]
  wire [31:0] _mem_addr_T_4 = mem_addr + 32'h1; // @[matcher.scala 98:41]
  wire [5:0] _mem_cnt_T_1 = mem_cnt + 6'h1; // @[matcher.scala 99:41]
  wire [35:0] _GEN_590 = io_mem_rdata[7:0] == _GEN_589 ? {{4'd0}, _mem_addr_T_4} : _GEN_579; // @[matcher.scala 97:60 matcher.scala 98:29]
  wire [5:0] _GEN_591 = io_mem_rdata[7:0] == _GEN_589 ? _mem_cnt_T_1 : _GEN_580; // @[matcher.scala 97:60 matcher.scala 99:29]
  wire  _GEN_592 = io_mem_rdata[7:0] == _GEN_589 & _GEN_578; // @[matcher.scala 97:60 matcher.scala 101:25]
  wire  _GEN_593 = io_mem_rdata[7:0] == _GEN_589 ? _GEN_560 : 1'h1; // @[matcher.scala 97:60 matcher.scala 102:25]
  wire  _GEN_594 = io_mem_rdata[7:0] == _GEN_589 & _GEN_561; // @[matcher.scala 97:60 matcher.scala 103:26]
  wire [2:0] _GEN_595 = io_mem_rdata[7:0] == _GEN_589 ? _GEN_581 : 3'h4; // @[matcher.scala 97:60 matcher.scala 104:25]
  wire [5:0] _GEN_596 = mem_cnt == match_key_len ? 6'h0 : _GEN_591; // @[matcher.scala 93:42 matcher.scala 94:21]
  wire [2:0] _GEN_597 = mem_cnt == match_key_len ? 3'h3 : _GEN_595; // @[matcher.scala 93:42 matcher.scala 95:21]
  wire [35:0] _GEN_598 = mem_cnt == match_key_len ? _GEN_579 : _GEN_590; // @[matcher.scala 93:42]
  wire  _GEN_599 = mem_cnt == match_key_len ? _GEN_578 : _GEN_592; // @[matcher.scala 93:42]
  wire  _GEN_600 = mem_cnt == match_key_len ? _GEN_560 : _GEN_593; // @[matcher.scala 93:42]
  wire  _GEN_601 = mem_cnt == match_key_len ? _GEN_561 : _GEN_594; // @[matcher.scala 93:42]
  wire [5:0] _GEN_602 = state == 3'h2 ? _GEN_596 : _GEN_580; // @[matcher.scala 92:31]
  wire [2:0] _GEN_603 = state == 3'h2 ? _GEN_597 : _GEN_581; // @[matcher.scala 92:31]
  wire [35:0] _GEN_604 = state == 3'h2 ? _GEN_598 : _GEN_579; // @[matcher.scala 92:31]
  wire  _GEN_605 = state == 3'h2 ? _GEN_599 : _GEN_578; // @[matcher.scala 92:31]
  wire  _GEN_606 = state == 3'h2 ? _GEN_600 : _GEN_560; // @[matcher.scala 92:31]
  wire  _GEN_607 = state == 3'h2 ? _GEN_601 : _GEN_561; // @[matcher.scala 92:31]
  wire  _GEN_625 = mem_cnt == match_val_len | _GEN_606; // @[matcher.scala 110:42 matcher.scala 112:19]
  wire  _GEN_626 = mem_cnt == match_val_len | _GEN_607; // @[matcher.scala 110:42 matcher.scala 113:22]
  wire [2:0] _GEN_627 = mem_cnt == match_val_len ? 3'h4 : _GEN_603; // @[matcher.scala 110:42 matcher.scala 114:19]
  wire [35:0] _GEN_644 = mem_cnt == match_val_len ? _GEN_604 : {{4'd0}, _mem_addr_T_4}; // @[matcher.scala 110:42 matcher.scala 117:25]
  wire [2:0] _GEN_649 = state == 3'h3 ? _GEN_627 : _GEN_603; // @[matcher.scala 109:31]
  wire [35:0] _GEN_666 = state == 3'h3 ? _GEN_644 : _GEN_604; // @[matcher.scala 109:31]
  Hash hash ( // @[matcher.scala 44:22]
    .clock(hash_clock),
    .reset(hash_reset),
    .io_start(hash_io_start),
    .io_key(hash_io_key),
    .io_hash_ready(hash_io_hash_ready),
    .io_hash_val(hash_io_hash_val)
  );
  assign io_mem_ce = ce; // @[matcher.scala 52:18]
  assign io_mem_addr = mem_addr; // @[matcher.scala 54:18]
  assign io_ready = ready; // @[matcher.scala 22:18]
  assign io_is_match = is_match; // @[matcher.scala 23:18]
  assign hash_clock = clock;
  assign hash_reset = reset;
  assign hash_io_start = hash_start; // @[matcher.scala 45:22]
  assign hash_io_key = {hash_key_hi,hash_key_lo}; // @[Cat.scala 30:58]
  always @(posedge clock) begin
    if (reset) begin // @[matcher.scala 20:27]
      ready <= 1'h0; // @[matcher.scala 20:27]
    end else if (state == 3'h3) begin // @[matcher.scala 109:31]
      ready <= _GEN_625;
    end else if (state == 3'h2) begin // @[matcher.scala 92:31]
      if (mem_cnt == match_key_len) begin // @[matcher.scala 93:42]
        ready <= _GEN_560;
      end else begin
        ready <= _GEN_593;
      end
    end else begin
      ready <= _GEN_560;
    end
    if (reset) begin // @[matcher.scala 21:27]
      is_match <= 1'h0; // @[matcher.scala 21:27]
    end else if (state == 3'h3) begin // @[matcher.scala 109:31]
      is_match <= _GEN_626;
    end else if (state == 3'h2) begin // @[matcher.scala 92:31]
      if (mem_cnt == match_key_len) begin // @[matcher.scala 93:42]
        is_match <= _GEN_561;
      end else begin
        is_match <= _GEN_594;
      end
    end else begin
      is_match <= _GEN_561;
    end
    if (reset) begin // @[matcher.scala 29:34]
      match_header_id <= 4'h0; // @[matcher.scala 29:34]
    end else if (state == 3'h0) begin // @[matcher.scala 58:31]
      if (io_mod_start) begin // @[matcher.scala 59:29]
        match_header_id <= io_mod_header_id; // @[matcher.scala 60:29]
      end
    end
    if (reset) begin // @[matcher.scala 30:34]
      match_key_off <= 6'h0; // @[matcher.scala 30:34]
    end else if (state == 3'h0) begin // @[matcher.scala 58:31]
      if (io_mod_start) begin // @[matcher.scala 59:29]
        match_key_off <= io_mod_key_off; // @[matcher.scala 61:29]
      end
    end
    if (reset) begin // @[matcher.scala 31:34]
      match_key_len <= 6'h0; // @[matcher.scala 31:34]
    end else if (state == 3'h0) begin // @[matcher.scala 58:31]
      if (io_mod_start) begin // @[matcher.scala 59:29]
        match_key_len <= io_mod_key_len; // @[matcher.scala 62:29]
      end
    end
    if (reset) begin // @[matcher.scala 32:34]
      match_val_len <= 6'h0; // @[matcher.scala 32:34]
    end else if (state == 3'h0) begin // @[matcher.scala 58:31]
      if (io_mod_start) begin // @[matcher.scala 59:29]
        match_val_len <= io_mod_val_len; // @[matcher.scala 63:29]
      end
    end
    if (reset) begin // @[matcher.scala 33:34]
      mem_cnt <= 6'h0; // @[matcher.scala 33:34]
    end else if (state == 3'h3) begin // @[matcher.scala 109:31]
      if (mem_cnt == match_val_len) begin // @[matcher.scala 110:42]
        mem_cnt <= _GEN_602;
      end else begin
        mem_cnt <= _mem_cnt_T_1; // @[matcher.scala 118:25]
      end
    end else begin
      mem_cnt <= _GEN_602;
    end
    if (reset) begin // @[matcher.scala 35:27]
      mem_addr <= 32'h0; // @[matcher.scala 35:27]
    end else begin
      mem_addr <= _GEN_666[31:0];
    end
    if (state == 3'h0) begin // @[matcher.scala 58:31]
      if (!(io_mod_start)) begin // @[matcher.scala 59:29]
        if (io_start) begin // @[matcher.scala 65:29]
          if (_key_data_0_T) begin // @[matcher.scala 72:39]
            key_data_0 <= _GEN_65;
          end else begin
            key_data_0 <= 8'h0;
          end
        end
      end
    end
    if (state == 3'h0) begin // @[matcher.scala 58:31]
      if (!(io_mod_start)) begin // @[matcher.scala 59:29]
        if (io_start) begin // @[matcher.scala 65:29]
          if (_key_data_1_T) begin // @[matcher.scala 72:39]
            key_data_1 <= _GEN_131;
          end else begin
            key_data_1 <= 8'h0;
          end
        end
      end
    end
    if (state == 3'h0) begin // @[matcher.scala 58:31]
      if (!(io_mod_start)) begin // @[matcher.scala 59:29]
        if (io_start) begin // @[matcher.scala 65:29]
          if (_key_data_2_T) begin // @[matcher.scala 72:39]
            key_data_2 <= _GEN_197;
          end else begin
            key_data_2 <= 8'h0;
          end
        end
      end
    end
    if (state == 3'h0) begin // @[matcher.scala 58:31]
      if (!(io_mod_start)) begin // @[matcher.scala 59:29]
        if (io_start) begin // @[matcher.scala 65:29]
          if (_key_data_3_T) begin // @[matcher.scala 72:39]
            key_data_3 <= _GEN_263;
          end else begin
            key_data_3 <= 8'h0;
          end
        end
      end
    end
    if (state == 3'h0) begin // @[matcher.scala 58:31]
      if (!(io_mod_start)) begin // @[matcher.scala 59:29]
        if (io_start) begin // @[matcher.scala 65:29]
          if (_key_data_4_T) begin // @[matcher.scala 72:39]
            key_data_4 <= _GEN_329;
          end else begin
            key_data_4 <= 8'h0;
          end
        end
      end
    end
    if (state == 3'h0) begin // @[matcher.scala 58:31]
      if (!(io_mod_start)) begin // @[matcher.scala 59:29]
        if (io_start) begin // @[matcher.scala 65:29]
          if (_key_data_5_T) begin // @[matcher.scala 72:39]
            key_data_5 <= _GEN_395;
          end else begin
            key_data_5 <= 8'h0;
          end
        end
      end
    end
    if (state == 3'h0) begin // @[matcher.scala 58:31]
      if (!(io_mod_start)) begin // @[matcher.scala 59:29]
        if (io_start) begin // @[matcher.scala 65:29]
          if (_key_data_6_T) begin // @[matcher.scala 72:39]
            key_data_6 <= _GEN_461;
          end else begin
            key_data_6 <= 8'h0;
          end
        end
      end
    end
    if (state == 3'h0) begin // @[matcher.scala 58:31]
      if (!(io_mod_start)) begin // @[matcher.scala 59:29]
        if (io_start) begin // @[matcher.scala 65:29]
          if (_key_data_7_T) begin // @[matcher.scala 72:39]
            key_data_7 <= _GEN_527;
          end else begin
            key_data_7 <= 8'h0;
          end
        end
      end
    end
    if (reset) begin // @[matcher.scala 39:29]
      hash_start <= 1'h0; // @[matcher.scala 39:29]
    end else if (state == 3'h1) begin // @[matcher.scala 82:31]
      if (hash_io_hash_ready) begin // @[matcher.scala 83:35]
        hash_start <= 1'h0; // @[matcher.scala 84:24]
      end else begin
        hash_start <= _GEN_563;
      end
    end else begin
      hash_start <= _GEN_563;
    end
    if (reset) begin // @[matcher.scala 48:24]
      state <= 3'h0; // @[matcher.scala 48:24]
    end else if (state == 3'h4) begin // @[matcher.scala 122:31]
      if (~io_start) begin // @[matcher.scala 123:26]
        state <= 3'h0; // @[matcher.scala 124:19]
      end else begin
        state <= _GEN_649;
      end
    end else begin
      state <= _GEN_649;
    end
    if (reset) begin // @[matcher.scala 50:21]
      ce <= 1'h0; // @[matcher.scala 50:21]
    end else if (state == 3'h3) begin // @[matcher.scala 109:31]
      if (mem_cnt == match_val_len) begin // @[matcher.scala 110:42]
        ce <= 1'h0; // @[matcher.scala 111:16]
      end else begin
        ce <= _GEN_605;
      end
    end else begin
      ce <= _GEN_605;
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
  ready = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  is_match = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  match_header_id = _RAND_2[3:0];
  _RAND_3 = {1{`RANDOM}};
  match_key_off = _RAND_3[5:0];
  _RAND_4 = {1{`RANDOM}};
  match_key_len = _RAND_4[5:0];
  _RAND_5 = {1{`RANDOM}};
  match_val_len = _RAND_5[5:0];
  _RAND_6 = {1{`RANDOM}};
  mem_cnt = _RAND_6[5:0];
  _RAND_7 = {1{`RANDOM}};
  mem_addr = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  key_data_0 = _RAND_8[7:0];
  _RAND_9 = {1{`RANDOM}};
  key_data_1 = _RAND_9[7:0];
  _RAND_10 = {1{`RANDOM}};
  key_data_2 = _RAND_10[7:0];
  _RAND_11 = {1{`RANDOM}};
  key_data_3 = _RAND_11[7:0];
  _RAND_12 = {1{`RANDOM}};
  key_data_4 = _RAND_12[7:0];
  _RAND_13 = {1{`RANDOM}};
  key_data_5 = _RAND_13[7:0];
  _RAND_14 = {1{`RANDOM}};
  key_data_6 = _RAND_14[7:0];
  _RAND_15 = {1{`RANDOM}};
  key_data_7 = _RAND_15[7:0];
  _RAND_16 = {1{`RANDOM}};
  hash_start = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  state = _RAND_17[2:0];
  _RAND_18 = {1{`RANDOM}};
  ce = _RAND_18[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module CheckSum(
  input         clock,
  input         reset,
  input         io_start,
  input  [31:0] io_field_start,
  input  [31:0] io_field_len,
  output        io_ready
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] field_addr; // @[checksum.scala 17:29]
  reg [31:0] field_end_addr; // @[checksum.scala 18:33]
  reg  ready; // @[checksum.scala 20:24]
  reg [2:0] state; // @[checksum.scala 24:24]
  wire [31:0] _field_end_addr_T_1 = io_field_start + io_field_len; // @[checksum.scala 28:46]
  wire [31:0] _GEN_0 = io_start ? io_field_start : field_addr; // @[checksum.scala 26:25 checksum.scala 27:24 checksum.scala 17:29]
  wire [31:0] _GEN_1 = io_start ? _field_end_addr_T_1 : field_end_addr; // @[checksum.scala 26:25 checksum.scala 28:28 checksum.scala 18:33]
  wire [2:0] _GEN_2 = io_start ? 3'h1 : state; // @[checksum.scala 26:25 checksum.scala 29:19 checksum.scala 24:24]
  wire [31:0] _GEN_3 = state == 3'h0 ? _GEN_0 : field_addr; // @[checksum.scala 25:31 checksum.scala 17:29]
  wire [31:0] _GEN_4 = state == 3'h0 ? _GEN_1 : field_end_addr; // @[checksum.scala 25:31 checksum.scala 18:33]
  wire [2:0] _GEN_5 = state == 3'h0 ? _GEN_2 : state; // @[checksum.scala 25:31 checksum.scala 24:24]
  wire [31:0] _field_addr_T_1 = field_addr + 32'h2; // @[checksum.scala 38:38]
  wire [2:0] _GEN_136 = field_addr < field_end_addr ? _GEN_5 : 3'h2; // @[checksum.scala 33:44 checksum.scala 40:19]
  wire [2:0] _GEN_139 = state == 3'h1 ? _GEN_136 : _GEN_5; // @[checksum.scala 32:31]
  wire [2:0] _GEN_141 = state == 3'h2 ? 3'h3 : _GEN_139; // @[checksum.scala 43:31 checksum.scala 45:15]
  wire  _GEN_143 = state == 3'h3 | ready; // @[checksum.scala 47:31 checksum.scala 49:15 checksum.scala 20:24]
  wire [2:0] _GEN_144 = state == 3'h3 ? 3'h4 : _GEN_141; // @[checksum.scala 47:31 checksum.scala 50:15]
  assign io_ready = ready; // @[checksum.scala 22:14]
  always @(posedge clock) begin
    if (reset) begin // @[checksum.scala 17:29]
      field_addr <= 32'h0; // @[checksum.scala 17:29]
    end else if (state == 3'h1) begin // @[checksum.scala 32:31]
      if (field_addr < field_end_addr) begin // @[checksum.scala 33:44]
        field_addr <= _field_addr_T_1; // @[checksum.scala 38:24]
      end else begin
        field_addr <= _GEN_3;
      end
    end else begin
      field_addr <= _GEN_3;
    end
    if (reset) begin // @[checksum.scala 18:33]
      field_end_addr <= 32'h0; // @[checksum.scala 18:33]
    end else if (state == 3'h4) begin // @[checksum.scala 52:31]
      if (~io_start) begin // @[checksum.scala 53:26]
        field_end_addr <= 32'h0; // @[checksum.scala 56:28]
      end else begin
        field_end_addr <= _GEN_4;
      end
    end else begin
      field_end_addr <= _GEN_4;
    end
    if (reset) begin // @[checksum.scala 20:24]
      ready <= 1'h0; // @[checksum.scala 20:24]
    end else if (state == 3'h4) begin // @[checksum.scala 52:31]
      if (~io_start) begin // @[checksum.scala 53:26]
        ready <= 1'h0; // @[checksum.scala 54:19]
      end else begin
        ready <= _GEN_143;
      end
    end else begin
      ready <= _GEN_143;
    end
    if (reset) begin // @[checksum.scala 24:24]
      state <= 3'h0; // @[checksum.scala 24:24]
    end else if (state == 3'h4) begin // @[checksum.scala 52:31]
      if (~io_start) begin // @[checksum.scala 53:26]
        state <= 3'h0; // @[checksum.scala 57:19]
      end else begin
        state <= _GEN_144;
      end
    end else begin
      state <= _GEN_144;
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
  field_addr = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  field_end_addr = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  ready = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  state = _RAND_3[2:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Executer(
  input         clock,
  input         reset,
  input         io_start,
  input  [31:0] io_parsed_header_0,
  input  [31:0] io_parsed_header_1,
  input  [31:0] io_op_start_cnt,
  output        io_ready,
  input         io_mod_start,
  input  [63:0] io_mod_ops_0,
  input  [63:0] io_mod_ops_1,
  input  [63:0] io_mod_ops_2,
  input  [63:0] io_mod_ops_3,
  input  [63:0] io_mod_ops_4,
  input  [63:0] io_mod_ops_5,
  input  [63:0] io_mod_ops_6,
  input  [63:0] io_mod_ops_7,
  input  [63:0] io_mod_ops_8,
  input  [63:0] io_mod_ops_9,
  input  [63:0] io_mod_ops_10,
  input  [63:0] io_mod_ops_11,
  input  [63:0] io_mod_ops_12,
  input  [63:0] io_mod_ops_13,
  input  [63:0] io_mod_ops_14,
  input  [63:0] io_mod_ops_15
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [63:0] _RAND_7;
  reg [63:0] _RAND_8;
  reg [63:0] _RAND_9;
  reg [63:0] _RAND_10;
  reg [63:0] _RAND_11;
  reg [63:0] _RAND_12;
  reg [63:0] _RAND_13;
  reg [63:0] _RAND_14;
  reg [63:0] _RAND_15;
  reg [63:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [63:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
`endif // RANDOMIZE_REG_INIT
  wire  cksum_clock; // @[executer.scala 47:23]
  wire  cksum_reset; // @[executer.scala 47:23]
  wire  cksum_io_start; // @[executer.scala 47:23]
  wire [31:0] cksum_io_field_start; // @[executer.scala 47:23]
  wire [31:0] cksum_io_field_len; // @[executer.scala 47:23]
  wire  cksum_io_ready; // @[executer.scala 47:23]
  reg  ready; // @[executer.scala 18:27]
  reg [63:0] ops_0; // @[executer.scala 21:18]
  reg [63:0] ops_1; // @[executer.scala 21:18]
  reg [63:0] ops_2; // @[executer.scala 21:18]
  reg [63:0] ops_3; // @[executer.scala 21:18]
  reg [63:0] ops_4; // @[executer.scala 21:18]
  reg [63:0] ops_5; // @[executer.scala 21:18]
  reg [63:0] ops_6; // @[executer.scala 21:18]
  reg [63:0] ops_7; // @[executer.scala 21:18]
  reg [63:0] ops_8; // @[executer.scala 21:18]
  reg [63:0] ops_9; // @[executer.scala 21:18]
  reg [63:0] ops_10; // @[executer.scala 21:18]
  reg [63:0] ops_11; // @[executer.scala 21:18]
  reg [63:0] ops_12; // @[executer.scala 21:18]
  reg [63:0] ops_13; // @[executer.scala 21:18]
  reg [63:0] ops_14; // @[executer.scala 21:18]
  reg [63:0] ops_15; // @[executer.scala 21:18]
  reg [3:0] inst_cnt; // @[executer.scala 23:27]
  reg [63:0] inst; // @[executer.scala 24:23]
  reg [2:0] state; // @[executer.scala 27:24]
  wire [5:0] opcode = inst[63:58]; // @[executer.scala 29:22]
  wire [3:0] f1_hdr = inst[31:28]; // @[executer.scala 30:22]
  wire [5:0] f1_off = inst[27:22]; // @[executer.scala 31:22]
  wire [5:0] f1_len = inst[21:16]; // @[executer.scala 32:22]
  wire [31:0] _GEN_1 = f1_hdr[0] ? io_parsed_header_1 : io_parsed_header_0; // @[executer.scala 37:45 executer.scala 37:45]
  wire [31:0] _GEN_10214 = {{26'd0}, f1_off}; // @[executer.scala 37:45]
  wire [31:0] f1_start = _GEN_1 + _GEN_10214; // @[executer.scala 37:45]
  reg  cksum_start; // @[executer.scala 44:30]
  reg [31:0] cksum_field_start; // @[executer.scala 45:32]
  reg [31:0] cksum_field_len; // @[executer.scala 46:32]
  wire [63:0] _GEN_5 = 4'h1 == io_op_start_cnt[3:0] ? ops_1 : ops_0; // @[executer.scala 58:22 executer.scala 58:22]
  wire [63:0] _GEN_6 = 4'h2 == io_op_start_cnt[3:0] ? ops_2 : _GEN_5; // @[executer.scala 58:22 executer.scala 58:22]
  wire [63:0] _GEN_7 = 4'h3 == io_op_start_cnt[3:0] ? ops_3 : _GEN_6; // @[executer.scala 58:22 executer.scala 58:22]
  wire [63:0] _GEN_8 = 4'h4 == io_op_start_cnt[3:0] ? ops_4 : _GEN_7; // @[executer.scala 58:22 executer.scala 58:22]
  wire [63:0] _GEN_9 = 4'h5 == io_op_start_cnt[3:0] ? ops_5 : _GEN_8; // @[executer.scala 58:22 executer.scala 58:22]
  wire [63:0] _GEN_10 = 4'h6 == io_op_start_cnt[3:0] ? ops_6 : _GEN_9; // @[executer.scala 58:22 executer.scala 58:22]
  wire [63:0] _GEN_11 = 4'h7 == io_op_start_cnt[3:0] ? ops_7 : _GEN_10; // @[executer.scala 58:22 executer.scala 58:22]
  wire [63:0] _GEN_12 = 4'h8 == io_op_start_cnt[3:0] ? ops_8 : _GEN_11; // @[executer.scala 58:22 executer.scala 58:22]
  wire [63:0] _GEN_13 = 4'h9 == io_op_start_cnt[3:0] ? ops_9 : _GEN_12; // @[executer.scala 58:22 executer.scala 58:22]
  wire [63:0] _GEN_14 = 4'ha == io_op_start_cnt[3:0] ? ops_10 : _GEN_13; // @[executer.scala 58:22 executer.scala 58:22]
  wire [63:0] _GEN_15 = 4'hb == io_op_start_cnt[3:0] ? ops_11 : _GEN_14; // @[executer.scala 58:22 executer.scala 58:22]
  wire [63:0] _GEN_16 = 4'hc == io_op_start_cnt[3:0] ? ops_12 : _GEN_15; // @[executer.scala 58:22 executer.scala 58:22]
  wire [63:0] _GEN_17 = 4'hd == io_op_start_cnt[3:0] ? ops_13 : _GEN_16; // @[executer.scala 58:22 executer.scala 58:22]
  wire [63:0] _GEN_18 = 4'he == io_op_start_cnt[3:0] ? ops_14 : _GEN_17; // @[executer.scala 58:22 executer.scala 58:22]
  wire [63:0] _GEN_19 = 4'hf == io_op_start_cnt[3:0] ? ops_15 : _GEN_18; // @[executer.scala 58:22 executer.scala 58:22]
  wire [63:0] _GEN_10216 = {{32'd0}, io_op_start_cnt}; // @[executer.scala 59:45]
  wire [63:0] _inst_cnt_T_1 = _GEN_10216 + 64'h1; // @[executer.scala 59:45]
  wire [63:0] _GEN_20 = io_start ? _GEN_19 : inst; // @[executer.scala 57:29 executer.scala 58:22 executer.scala 24:23]
  wire [63:0] _GEN_21 = io_start ? _inst_cnt_T_1 : {{60'd0}, inst_cnt}; // @[executer.scala 57:29 executer.scala 59:26 executer.scala 23:27]
  wire [2:0] _GEN_86 = io_start ? 3'h1 : state; // @[executer.scala 57:29 executer.scala 61:23 executer.scala 27:24]
  wire [63:0] _GEN_103 = io_mod_start ? inst : _GEN_20; // @[executer.scala 54:29 executer.scala 24:23]
  wire [63:0] _GEN_104 = io_mod_start ? {{60'd0}, inst_cnt} : _GEN_21; // @[executer.scala 54:29 executer.scala 23:27]
  wire [2:0] _GEN_169 = io_mod_start ? state : _GEN_86; // @[executer.scala 54:29 executer.scala 27:24]
  wire [63:0] _GEN_186 = state == 3'h0 ? _GEN_103 : inst; // @[executer.scala 53:31 executer.scala 24:23]
  wire [63:0] _GEN_187 = state == 3'h0 ? _GEN_104 : {{60'd0}, inst_cnt}; // @[executer.scala 53:31 executer.scala 23:27]
  wire [2:0] _GEN_252 = state == 3'h0 ? _GEN_169 : state; // @[executer.scala 53:31 executer.scala 27:24]
  wire  _GEN_253 = opcode == 6'h0 | ready; // @[executer.scala 67:44 executer.scala 68:19 executer.scala 18:27]
  wire [2:0] _GEN_254 = opcode == 6'h0 ? 3'h2 : _GEN_252; // @[executer.scala 67:44 executer.scala 69:19]
  wire [63:0] _GEN_384 = 4'h1 == inst_cnt ? ops_1 : ops_0; // @[executer.scala 76:22 executer.scala 76:22]
  wire [63:0] _GEN_385 = 4'h2 == inst_cnt ? ops_2 : _GEN_384; // @[executer.scala 76:22 executer.scala 76:22]
  wire [63:0] _GEN_386 = 4'h3 == inst_cnt ? ops_3 : _GEN_385; // @[executer.scala 76:22 executer.scala 76:22]
  wire [63:0] _GEN_387 = 4'h4 == inst_cnt ? ops_4 : _GEN_386; // @[executer.scala 76:22 executer.scala 76:22]
  wire [63:0] _GEN_388 = 4'h5 == inst_cnt ? ops_5 : _GEN_387; // @[executer.scala 76:22 executer.scala 76:22]
  wire [63:0] _GEN_389 = 4'h6 == inst_cnt ? ops_6 : _GEN_388; // @[executer.scala 76:22 executer.scala 76:22]
  wire [63:0] _GEN_390 = 4'h7 == inst_cnt ? ops_7 : _GEN_389; // @[executer.scala 76:22 executer.scala 76:22]
  wire [63:0] _GEN_391 = 4'h8 == inst_cnt ? ops_8 : _GEN_390; // @[executer.scala 76:22 executer.scala 76:22]
  wire [63:0] _GEN_392 = 4'h9 == inst_cnt ? ops_9 : _GEN_391; // @[executer.scala 76:22 executer.scala 76:22]
  wire [63:0] _GEN_393 = 4'ha == inst_cnt ? ops_10 : _GEN_392; // @[executer.scala 76:22 executer.scala 76:22]
  wire [63:0] _GEN_394 = 4'hb == inst_cnt ? ops_11 : _GEN_393; // @[executer.scala 76:22 executer.scala 76:22]
  wire [63:0] _GEN_395 = 4'hc == inst_cnt ? ops_12 : _GEN_394; // @[executer.scala 76:22 executer.scala 76:22]
  wire [63:0] _GEN_396 = 4'hd == inst_cnt ? ops_13 : _GEN_395; // @[executer.scala 76:22 executer.scala 76:22]
  wire [63:0] _GEN_397 = 4'he == inst_cnt ? ops_14 : _GEN_396; // @[executer.scala 76:22 executer.scala 76:22]
  wire [63:0] _GEN_398 = 4'hf == inst_cnt ? ops_15 : _GEN_397; // @[executer.scala 76:22 executer.scala 76:22]
  wire [3:0] _inst_cnt_T_3 = inst_cnt + 4'h1; // @[executer.scala 77:38]
  wire [63:0] _GEN_592 = cksum_io_ready ? _GEN_398 : _GEN_186; // @[executer.scala 72:35 executer.scala 76:22]
  wire [63:0] _GEN_593 = cksum_io_ready ? {{60'd0}, _inst_cnt_T_3} : _GEN_187; // @[executer.scala 72:35 executer.scala 77:26]
  wire [63:0] _GEN_661 = opcode == 6'h1 ? _GEN_592 : _GEN_186; // @[executer.scala 71:46]
  wire [63:0] _GEN_662 = opcode == 6'h1 ? _GEN_593 : _GEN_187; // @[executer.scala 71:46]
  wire [63:0] _GEN_858 = opcode == 6'h2 ? {{60'd0}, _inst_cnt_T_3} : _GEN_662; // @[executer.scala 86:44 executer.scala 89:22]
  wire [63:0] _GEN_10140 = opcode == 6'h3 ? {{60'd0}, _inst_cnt_T_3} : _GEN_858; // @[executer.scala 91:51 executer.scala 101:22]
  wire [2:0] _GEN_10142 = state == 3'h1 ? _GEN_254 : _GEN_252; // @[executer.scala 66:31]
  wire [63:0] _GEN_10209 = state == 3'h1 ? _GEN_10140 : _GEN_187; // @[executer.scala 66:31]
  CheckSum cksum ( // @[executer.scala 47:23]
    .clock(cksum_clock),
    .reset(cksum_reset),
    .io_start(cksum_io_start),
    .io_field_start(cksum_io_field_start),
    .io_field_len(cksum_io_field_len),
    .io_ready(cksum_io_ready)
  );
  assign io_ready = ready; // @[executer.scala 19:18]
  assign cksum_clock = clock;
  assign cksum_reset = reset;
  assign cksum_io_start = cksum_start; // @[executer.scala 48:20]
  assign cksum_io_field_start = cksum_field_start; // @[executer.scala 50:26]
  assign cksum_io_field_len = cksum_field_len; // @[executer.scala 51:24]
  always @(posedge clock) begin
    if (reset) begin // @[executer.scala 18:27]
      ready <= 1'h0; // @[executer.scala 18:27]
    end else if (state == 3'h1) begin // @[executer.scala 66:31]
      ready <= _GEN_253;
    end
    if (state == 3'h0) begin // @[executer.scala 53:31]
      if (io_mod_start) begin // @[executer.scala 54:29]
        ops_0 <= io_mod_ops_0; // @[executer.scala 55:17]
      end
    end
    if (state == 3'h0) begin // @[executer.scala 53:31]
      if (io_mod_start) begin // @[executer.scala 54:29]
        ops_1 <= io_mod_ops_1; // @[executer.scala 55:17]
      end
    end
    if (state == 3'h0) begin // @[executer.scala 53:31]
      if (io_mod_start) begin // @[executer.scala 54:29]
        ops_2 <= io_mod_ops_2; // @[executer.scala 55:17]
      end
    end
    if (state == 3'h0) begin // @[executer.scala 53:31]
      if (io_mod_start) begin // @[executer.scala 54:29]
        ops_3 <= io_mod_ops_3; // @[executer.scala 55:17]
      end
    end
    if (state == 3'h0) begin // @[executer.scala 53:31]
      if (io_mod_start) begin // @[executer.scala 54:29]
        ops_4 <= io_mod_ops_4; // @[executer.scala 55:17]
      end
    end
    if (state == 3'h0) begin // @[executer.scala 53:31]
      if (io_mod_start) begin // @[executer.scala 54:29]
        ops_5 <= io_mod_ops_5; // @[executer.scala 55:17]
      end
    end
    if (state == 3'h0) begin // @[executer.scala 53:31]
      if (io_mod_start) begin // @[executer.scala 54:29]
        ops_6 <= io_mod_ops_6; // @[executer.scala 55:17]
      end
    end
    if (state == 3'h0) begin // @[executer.scala 53:31]
      if (io_mod_start) begin // @[executer.scala 54:29]
        ops_7 <= io_mod_ops_7; // @[executer.scala 55:17]
      end
    end
    if (state == 3'h0) begin // @[executer.scala 53:31]
      if (io_mod_start) begin // @[executer.scala 54:29]
        ops_8 <= io_mod_ops_8; // @[executer.scala 55:17]
      end
    end
    if (state == 3'h0) begin // @[executer.scala 53:31]
      if (io_mod_start) begin // @[executer.scala 54:29]
        ops_9 <= io_mod_ops_9; // @[executer.scala 55:17]
      end
    end
    if (state == 3'h0) begin // @[executer.scala 53:31]
      if (io_mod_start) begin // @[executer.scala 54:29]
        ops_10 <= io_mod_ops_10; // @[executer.scala 55:17]
      end
    end
    if (state == 3'h0) begin // @[executer.scala 53:31]
      if (io_mod_start) begin // @[executer.scala 54:29]
        ops_11 <= io_mod_ops_11; // @[executer.scala 55:17]
      end
    end
    if (state == 3'h0) begin // @[executer.scala 53:31]
      if (io_mod_start) begin // @[executer.scala 54:29]
        ops_12 <= io_mod_ops_12; // @[executer.scala 55:17]
      end
    end
    if (state == 3'h0) begin // @[executer.scala 53:31]
      if (io_mod_start) begin // @[executer.scala 54:29]
        ops_13 <= io_mod_ops_13; // @[executer.scala 55:17]
      end
    end
    if (state == 3'h0) begin // @[executer.scala 53:31]
      if (io_mod_start) begin // @[executer.scala 54:29]
        ops_14 <= io_mod_ops_14; // @[executer.scala 55:17]
      end
    end
    if (state == 3'h0) begin // @[executer.scala 53:31]
      if (io_mod_start) begin // @[executer.scala 54:29]
        ops_15 <= io_mod_ops_15; // @[executer.scala 55:17]
      end
    end
    if (reset) begin // @[executer.scala 23:27]
      inst_cnt <= 4'h0; // @[executer.scala 23:27]
    end else begin
      inst_cnt <= _GEN_10209[3:0];
    end
    if (reset) begin // @[executer.scala 24:23]
      inst <= 64'h0; // @[executer.scala 24:23]
    end else if (state == 3'h1) begin // @[executer.scala 66:31]
      if (opcode == 6'h3) begin // @[executer.scala 91:51]
        inst <= _GEN_398; // @[executer.scala 100:18]
      end else if (opcode == 6'h2) begin // @[executer.scala 86:44]
        inst <= _GEN_398; // @[executer.scala 88:18]
      end else begin
        inst <= _GEN_661;
      end
    end else if (state == 3'h0) begin // @[executer.scala 53:31]
      if (!(io_mod_start)) begin // @[executer.scala 54:29]
        inst <= _GEN_20;
      end
    end
    if (reset) begin // @[executer.scala 27:24]
      state <= 3'h0; // @[executer.scala 27:24]
    end else if (state == 3'h2) begin // @[executer.scala 105:31]
      if (~io_start) begin // @[executer.scala 106:26]
        state <= 3'h0; // @[executer.scala 107:19]
      end else begin
        state <= _GEN_10142;
      end
    end else begin
      state <= _GEN_10142;
    end
    if (reset) begin // @[executer.scala 44:30]
      cksum_start <= 1'h0; // @[executer.scala 44:30]
    end else if (state == 3'h1) begin // @[executer.scala 66:31]
      if (opcode == 6'h1) begin // @[executer.scala 71:46]
        if (cksum_io_ready) begin // @[executer.scala 72:35]
          cksum_start <= 1'h0; // @[executer.scala 73:29]
        end else begin
          cksum_start <= 1'h1; // @[executer.scala 79:29]
        end
      end
    end
    if (state == 3'h1) begin // @[executer.scala 66:31]
      if (opcode == 6'h1) begin // @[executer.scala 71:46]
        if (!(cksum_io_ready)) begin // @[executer.scala 72:35]
          cksum_field_start <= f1_start; // @[executer.scala 80:35]
        end
      end
    end
    if (state == 3'h1) begin // @[executer.scala 66:31]
      if (opcode == 6'h1) begin // @[executer.scala 71:46]
        if (!(cksum_io_ready)) begin // @[executer.scala 72:35]
          cksum_field_len <= {{26'd0}, f1_len}; // @[executer.scala 81:35]
        end
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
  ready = _RAND_0[0:0];
  _RAND_1 = {2{`RANDOM}};
  ops_0 = _RAND_1[63:0];
  _RAND_2 = {2{`RANDOM}};
  ops_1 = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  ops_2 = _RAND_3[63:0];
  _RAND_4 = {2{`RANDOM}};
  ops_3 = _RAND_4[63:0];
  _RAND_5 = {2{`RANDOM}};
  ops_4 = _RAND_5[63:0];
  _RAND_6 = {2{`RANDOM}};
  ops_5 = _RAND_6[63:0];
  _RAND_7 = {2{`RANDOM}};
  ops_6 = _RAND_7[63:0];
  _RAND_8 = {2{`RANDOM}};
  ops_7 = _RAND_8[63:0];
  _RAND_9 = {2{`RANDOM}};
  ops_8 = _RAND_9[63:0];
  _RAND_10 = {2{`RANDOM}};
  ops_9 = _RAND_10[63:0];
  _RAND_11 = {2{`RANDOM}};
  ops_10 = _RAND_11[63:0];
  _RAND_12 = {2{`RANDOM}};
  ops_11 = _RAND_12[63:0];
  _RAND_13 = {2{`RANDOM}};
  ops_12 = _RAND_13[63:0];
  _RAND_14 = {2{`RANDOM}};
  ops_13 = _RAND_14[63:0];
  _RAND_15 = {2{`RANDOM}};
  ops_14 = _RAND_15[63:0];
  _RAND_16 = {2{`RANDOM}};
  ops_15 = _RAND_16[63:0];
  _RAND_17 = {1{`RANDOM}};
  inst_cnt = _RAND_17[3:0];
  _RAND_18 = {2{`RANDOM}};
  inst = _RAND_18[63:0];
  _RAND_19 = {1{`RANDOM}};
  state = _RAND_19[2:0];
  _RAND_20 = {1{`RANDOM}};
  cksum_start = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  cksum_field_start = _RAND_21[31:0];
  _RAND_22 = {1{`RANDOM}};
  cksum_field_len = _RAND_22[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Processor(
  input         clock,
  input         reset,
  input         io_start,
  input  [7:0]  io_packet_header_0,
  input  [7:0]  io_packet_header_1,
  input  [7:0]  io_packet_header_2,
  input  [7:0]  io_packet_header_3,
  input  [7:0]  io_packet_header_4,
  input  [7:0]  io_packet_header_5,
  input  [7:0]  io_packet_header_6,
  input  [7:0]  io_packet_header_7,
  input  [7:0]  io_packet_header_8,
  input  [7:0]  io_packet_header_9,
  input  [7:0]  io_packet_header_10,
  input  [7:0]  io_packet_header_11,
  input  [7:0]  io_packet_header_12,
  input  [7:0]  io_packet_header_13,
  input  [7:0]  io_packet_header_14,
  input  [7:0]  io_packet_header_15,
  input  [7:0]  io_packet_header_16,
  input  [7:0]  io_packet_header_17,
  input  [7:0]  io_packet_header_18,
  input  [7:0]  io_packet_header_19,
  input  [7:0]  io_packet_header_20,
  input  [7:0]  io_packet_header_21,
  input  [7:0]  io_packet_header_22,
  input  [7:0]  io_packet_header_23,
  input  [7:0]  io_packet_header_24,
  input  [7:0]  io_packet_header_25,
  input  [7:0]  io_packet_header_26,
  input  [7:0]  io_packet_header_27,
  input  [7:0]  io_packet_header_28,
  input  [7:0]  io_packet_header_29,
  input  [7:0]  io_packet_header_30,
  input  [7:0]  io_packet_header_31,
  input  [7:0]  io_packet_header_32,
  input  [7:0]  io_packet_header_33,
  input  [7:0]  io_packet_header_34,
  input  [7:0]  io_packet_header_35,
  input  [7:0]  io_packet_header_36,
  input  [7:0]  io_packet_header_37,
  input  [7:0]  io_packet_header_38,
  input  [7:0]  io_packet_header_39,
  input  [7:0]  io_packet_header_40,
  input  [7:0]  io_packet_header_41,
  input  [7:0]  io_packet_header_42,
  input  [7:0]  io_packet_header_43,
  input  [7:0]  io_packet_header_44,
  input  [7:0]  io_packet_header_45,
  input  [7:0]  io_packet_header_46,
  input  [7:0]  io_packet_header_47,
  input  [7:0]  io_packet_header_48,
  input  [7:0]  io_packet_header_49,
  input  [7:0]  io_packet_header_50,
  input  [7:0]  io_packet_header_51,
  input  [7:0]  io_packet_header_52,
  input  [7:0]  io_packet_header_53,
  input  [7:0]  io_packet_header_54,
  input  [7:0]  io_packet_header_55,
  input  [7:0]  io_packet_header_56,
  input  [7:0]  io_packet_header_57,
  input  [7:0]  io_packet_header_58,
  input  [7:0]  io_packet_header_59,
  input  [7:0]  io_packet_header_60,
  input  [7:0]  io_packet_header_61,
  input  [7:0]  io_packet_header_62,
  input  [7:0]  io_packet_header_63,
  output        io_mem_ce,
  output        io_mem_we,
  output [31:0] io_mem_addr,
  output [3:0]  io_mem_sel,
  output [31:0] io_mem_wdata,
  input  [31:0] io_mem_rdata,
  output        io_ready,
  input         io_mod_start,
  input  [31:0] io_mod_hit_action_addr,
  input  [31:0] io_mod_miss_action_addr,
  input         io_mod_ps_mod_start,
  input         io_mod_ps_mod_header_id,
  input  [31:0] io_mod_ps_mod_header_length,
  input  [31:0] io_mod_ps_mod_next_tag_start,
  input  [31:0] io_mod_ps_mod_next_tag_length,
  input  [31:0] io_mod_ps_mod_next_table_0,
  input  [31:0] io_mod_ps_mod_next_table_1,
  input         io_mod_mt_mod_start,
  input  [3:0]  io_mod_mt_mod_header_id,
  input  [5:0]  io_mod_mt_mod_key_off,
  input  [5:0]  io_mod_mt_mod_key_len,
  input  [5:0]  io_mod_mt_mod_val_len,
  input         io_mod_ex_mod_start,
  input  [63:0] io_mod_ex_mod_ops_0,
  input  [63:0] io_mod_ex_mod_ops_1,
  input  [63:0] io_mod_ex_mod_ops_2,
  input  [63:0] io_mod_ex_mod_ops_3,
  input  [63:0] io_mod_ex_mod_ops_4,
  input  [63:0] io_mod_ex_mod_ops_5,
  input  [63:0] io_mod_ex_mod_ops_6,
  input  [63:0] io_mod_ex_mod_ops_7,
  input  [63:0] io_mod_ex_mod_ops_8,
  input  [63:0] io_mod_ex_mod_ops_9,
  input  [63:0] io_mod_ex_mod_ops_10,
  input  [63:0] io_mod_ex_mod_ops_11,
  input  [63:0] io_mod_ex_mod_ops_12,
  input  [63:0] io_mod_ex_mod_ops_13,
  input  [63:0] io_mod_ex_mod_ops_14,
  input  [63:0] io_mod_ex_mod_ops_15
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  wire  parser_clock; // @[processor.scala 24:24]
  wire  parser_reset; // @[processor.scala 24:24]
  wire  parser_io_start; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_0; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_1; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_2; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_3; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_4; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_5; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_6; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_7; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_8; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_9; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_10; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_11; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_12; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_13; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_14; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_15; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_16; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_17; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_18; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_19; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_20; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_21; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_22; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_23; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_24; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_25; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_26; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_27; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_28; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_29; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_30; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_31; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_32; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_33; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_34; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_35; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_36; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_37; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_38; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_39; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_40; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_41; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_42; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_43; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_44; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_45; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_46; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_47; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_48; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_49; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_50; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_51; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_52; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_53; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_54; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_55; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_56; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_57; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_58; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_59; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_60; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_61; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_62; // @[processor.scala 24:24]
  wire [7:0] parser_io_packet_header_63; // @[processor.scala 24:24]
  wire  parser_io_ready; // @[processor.scala 24:24]
  wire [31:0] parser_io_parsed_header_0; // @[processor.scala 24:24]
  wire [31:0] parser_io_parsed_header_1; // @[processor.scala 24:24]
  wire  parser_io_mod_start; // @[processor.scala 24:24]
  wire  parser_io_mod_header_id; // @[processor.scala 24:24]
  wire [31:0] parser_io_mod_header_length; // @[processor.scala 24:24]
  wire [31:0] parser_io_mod_next_tag_start; // @[processor.scala 24:24]
  wire [31:0] parser_io_mod_next_table_0; // @[processor.scala 24:24]
  wire [31:0] parser_io_mod_next_table_1; // @[processor.scala 24:24]
  wire  matcher_clock; // @[processor.scala 25:25]
  wire  matcher_reset; // @[processor.scala 25:25]
  wire  matcher_io_start; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_0; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_1; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_2; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_3; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_4; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_5; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_6; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_7; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_8; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_9; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_10; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_11; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_12; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_13; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_14; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_15; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_16; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_17; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_18; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_19; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_20; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_21; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_22; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_23; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_24; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_25; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_26; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_27; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_28; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_29; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_30; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_31; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_32; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_33; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_34; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_35; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_36; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_37; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_38; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_39; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_40; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_41; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_42; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_43; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_44; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_45; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_46; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_47; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_48; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_49; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_50; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_51; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_52; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_53; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_54; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_55; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_56; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_57; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_58; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_59; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_60; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_61; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_62; // @[processor.scala 25:25]
  wire [7:0] matcher_io_packet_header_63; // @[processor.scala 25:25]
  wire [31:0] matcher_io_parsed_header_0; // @[processor.scala 25:25]
  wire [31:0] matcher_io_parsed_header_1; // @[processor.scala 25:25]
  wire  matcher_io_mem_ce; // @[processor.scala 25:25]
  wire [31:0] matcher_io_mem_addr; // @[processor.scala 25:25]
  wire [31:0] matcher_io_mem_rdata; // @[processor.scala 25:25]
  wire  matcher_io_ready; // @[processor.scala 25:25]
  wire  matcher_io_is_match; // @[processor.scala 25:25]
  wire  matcher_io_mod_start; // @[processor.scala 25:25]
  wire [3:0] matcher_io_mod_header_id; // @[processor.scala 25:25]
  wire [5:0] matcher_io_mod_key_off; // @[processor.scala 25:25]
  wire [5:0] matcher_io_mod_key_len; // @[processor.scala 25:25]
  wire [5:0] matcher_io_mod_val_len; // @[processor.scala 25:25]
  wire  executer_clock; // @[processor.scala 26:26]
  wire  executer_reset; // @[processor.scala 26:26]
  wire  executer_io_start; // @[processor.scala 26:26]
  wire [31:0] executer_io_parsed_header_0; // @[processor.scala 26:26]
  wire [31:0] executer_io_parsed_header_1; // @[processor.scala 26:26]
  wire [31:0] executer_io_op_start_cnt; // @[processor.scala 26:26]
  wire  executer_io_ready; // @[processor.scala 26:26]
  wire  executer_io_mod_start; // @[processor.scala 26:26]
  wire [63:0] executer_io_mod_ops_0; // @[processor.scala 26:26]
  wire [63:0] executer_io_mod_ops_1; // @[processor.scala 26:26]
  wire [63:0] executer_io_mod_ops_2; // @[processor.scala 26:26]
  wire [63:0] executer_io_mod_ops_3; // @[processor.scala 26:26]
  wire [63:0] executer_io_mod_ops_4; // @[processor.scala 26:26]
  wire [63:0] executer_io_mod_ops_5; // @[processor.scala 26:26]
  wire [63:0] executer_io_mod_ops_6; // @[processor.scala 26:26]
  wire [63:0] executer_io_mod_ops_7; // @[processor.scala 26:26]
  wire [63:0] executer_io_mod_ops_8; // @[processor.scala 26:26]
  wire [63:0] executer_io_mod_ops_9; // @[processor.scala 26:26]
  wire [63:0] executer_io_mod_ops_10; // @[processor.scala 26:26]
  wire [63:0] executer_io_mod_ops_11; // @[processor.scala 26:26]
  wire [63:0] executer_io_mod_ops_12; // @[processor.scala 26:26]
  wire [63:0] executer_io_mod_ops_13; // @[processor.scala 26:26]
  wire [63:0] executer_io_mod_ops_14; // @[processor.scala 26:26]
  wire [63:0] executer_io_mod_ops_15; // @[processor.scala 26:26]
  reg [31:0] hit_action_addr; // @[processor.scala 17:34]
  reg [31:0] miss_action_addr; // @[processor.scala 18:35]
  reg [2:0] state; // @[processor.scala 20:24]
  reg  ready; // @[processor.scala 21:26]
  wire  _GEN_0 = io_start ? 1'h0 : ready; // @[processor.scala 51:29 processor.scala 52:23 processor.scala 21:26]
  wire [2:0] _GEN_1 = io_start ? 3'h1 : state; // @[processor.scala 51:29 processor.scala 53:23 processor.scala 20:24]
  wire  _GEN_5 = io_mod_start ? ready : _GEN_0; // @[processor.scala 47:29 processor.scala 21:26]
  wire [2:0] _GEN_6 = io_mod_start ? state : _GEN_1; // @[processor.scala 47:29 processor.scala 20:24]
  wire  _GEN_7 = io_mod_start ? 1'h0 : io_start; // @[processor.scala 47:29 processor.scala 28:21]
  wire  _GEN_10 = state == 3'h0 ? _GEN_5 : ready; // @[processor.scala 46:31 processor.scala 21:26]
  wire [2:0] _GEN_11 = state == 3'h0 ? _GEN_6 : state; // @[processor.scala 46:31 processor.scala 20:24]
  wire  _GEN_13 = parser_io_ready; // @[processor.scala 60:32 processor.scala 61:30 processor.scala 29:22]
  wire [2:0] _GEN_14 = parser_io_ready ? 3'h2 : _GEN_11; // @[processor.scala 60:32 processor.scala 62:19]
  wire [2:0] _GEN_16 = state == 3'h1 ? _GEN_14 : _GEN_11; // @[processor.scala 59:31]
  wire  _GEN_17 = matcher_io_ready; // @[processor.scala 67:33 processor.scala 68:31 processor.scala 30:23]
  wire [2:0] _GEN_18 = matcher_io_ready ? 3'h3 : _GEN_16; // @[processor.scala 67:33 processor.scala 69:19]
  wire [2:0] _GEN_20 = state == 3'h2 ? _GEN_18 : _GEN_16; // @[processor.scala 66:31]
  wire  _GEN_21 = executer_io_ready | _GEN_10; // @[processor.scala 74:34 processor.scala 75:19]
  wire [2:0] _GEN_22 = executer_io_ready ? 3'h4 : _GEN_20; // @[processor.scala 74:34 processor.scala 76:19]
  wire [2:0] _GEN_24 = state == 3'h3 ? _GEN_22 : _GEN_20; // @[processor.scala 73:31]
  Parser parser ( // @[processor.scala 24:24]
    .clock(parser_clock),
    .reset(parser_reset),
    .io_start(parser_io_start),
    .io_packet_header_0(parser_io_packet_header_0),
    .io_packet_header_1(parser_io_packet_header_1),
    .io_packet_header_2(parser_io_packet_header_2),
    .io_packet_header_3(parser_io_packet_header_3),
    .io_packet_header_4(parser_io_packet_header_4),
    .io_packet_header_5(parser_io_packet_header_5),
    .io_packet_header_6(parser_io_packet_header_6),
    .io_packet_header_7(parser_io_packet_header_7),
    .io_packet_header_8(parser_io_packet_header_8),
    .io_packet_header_9(parser_io_packet_header_9),
    .io_packet_header_10(parser_io_packet_header_10),
    .io_packet_header_11(parser_io_packet_header_11),
    .io_packet_header_12(parser_io_packet_header_12),
    .io_packet_header_13(parser_io_packet_header_13),
    .io_packet_header_14(parser_io_packet_header_14),
    .io_packet_header_15(parser_io_packet_header_15),
    .io_packet_header_16(parser_io_packet_header_16),
    .io_packet_header_17(parser_io_packet_header_17),
    .io_packet_header_18(parser_io_packet_header_18),
    .io_packet_header_19(parser_io_packet_header_19),
    .io_packet_header_20(parser_io_packet_header_20),
    .io_packet_header_21(parser_io_packet_header_21),
    .io_packet_header_22(parser_io_packet_header_22),
    .io_packet_header_23(parser_io_packet_header_23),
    .io_packet_header_24(parser_io_packet_header_24),
    .io_packet_header_25(parser_io_packet_header_25),
    .io_packet_header_26(parser_io_packet_header_26),
    .io_packet_header_27(parser_io_packet_header_27),
    .io_packet_header_28(parser_io_packet_header_28),
    .io_packet_header_29(parser_io_packet_header_29),
    .io_packet_header_30(parser_io_packet_header_30),
    .io_packet_header_31(parser_io_packet_header_31),
    .io_packet_header_32(parser_io_packet_header_32),
    .io_packet_header_33(parser_io_packet_header_33),
    .io_packet_header_34(parser_io_packet_header_34),
    .io_packet_header_35(parser_io_packet_header_35),
    .io_packet_header_36(parser_io_packet_header_36),
    .io_packet_header_37(parser_io_packet_header_37),
    .io_packet_header_38(parser_io_packet_header_38),
    .io_packet_header_39(parser_io_packet_header_39),
    .io_packet_header_40(parser_io_packet_header_40),
    .io_packet_header_41(parser_io_packet_header_41),
    .io_packet_header_42(parser_io_packet_header_42),
    .io_packet_header_43(parser_io_packet_header_43),
    .io_packet_header_44(parser_io_packet_header_44),
    .io_packet_header_45(parser_io_packet_header_45),
    .io_packet_header_46(parser_io_packet_header_46),
    .io_packet_header_47(parser_io_packet_header_47),
    .io_packet_header_48(parser_io_packet_header_48),
    .io_packet_header_49(parser_io_packet_header_49),
    .io_packet_header_50(parser_io_packet_header_50),
    .io_packet_header_51(parser_io_packet_header_51),
    .io_packet_header_52(parser_io_packet_header_52),
    .io_packet_header_53(parser_io_packet_header_53),
    .io_packet_header_54(parser_io_packet_header_54),
    .io_packet_header_55(parser_io_packet_header_55),
    .io_packet_header_56(parser_io_packet_header_56),
    .io_packet_header_57(parser_io_packet_header_57),
    .io_packet_header_58(parser_io_packet_header_58),
    .io_packet_header_59(parser_io_packet_header_59),
    .io_packet_header_60(parser_io_packet_header_60),
    .io_packet_header_61(parser_io_packet_header_61),
    .io_packet_header_62(parser_io_packet_header_62),
    .io_packet_header_63(parser_io_packet_header_63),
    .io_ready(parser_io_ready),
    .io_parsed_header_0(parser_io_parsed_header_0),
    .io_parsed_header_1(parser_io_parsed_header_1),
    .io_mod_start(parser_io_mod_start),
    .io_mod_header_id(parser_io_mod_header_id),
    .io_mod_header_length(parser_io_mod_header_length),
    .io_mod_next_tag_start(parser_io_mod_next_tag_start),
    .io_mod_next_table_0(parser_io_mod_next_table_0),
    .io_mod_next_table_1(parser_io_mod_next_table_1)
  );
  Matcher matcher ( // @[processor.scala 25:25]
    .clock(matcher_clock),
    .reset(matcher_reset),
    .io_start(matcher_io_start),
    .io_packet_header_0(matcher_io_packet_header_0),
    .io_packet_header_1(matcher_io_packet_header_1),
    .io_packet_header_2(matcher_io_packet_header_2),
    .io_packet_header_3(matcher_io_packet_header_3),
    .io_packet_header_4(matcher_io_packet_header_4),
    .io_packet_header_5(matcher_io_packet_header_5),
    .io_packet_header_6(matcher_io_packet_header_6),
    .io_packet_header_7(matcher_io_packet_header_7),
    .io_packet_header_8(matcher_io_packet_header_8),
    .io_packet_header_9(matcher_io_packet_header_9),
    .io_packet_header_10(matcher_io_packet_header_10),
    .io_packet_header_11(matcher_io_packet_header_11),
    .io_packet_header_12(matcher_io_packet_header_12),
    .io_packet_header_13(matcher_io_packet_header_13),
    .io_packet_header_14(matcher_io_packet_header_14),
    .io_packet_header_15(matcher_io_packet_header_15),
    .io_packet_header_16(matcher_io_packet_header_16),
    .io_packet_header_17(matcher_io_packet_header_17),
    .io_packet_header_18(matcher_io_packet_header_18),
    .io_packet_header_19(matcher_io_packet_header_19),
    .io_packet_header_20(matcher_io_packet_header_20),
    .io_packet_header_21(matcher_io_packet_header_21),
    .io_packet_header_22(matcher_io_packet_header_22),
    .io_packet_header_23(matcher_io_packet_header_23),
    .io_packet_header_24(matcher_io_packet_header_24),
    .io_packet_header_25(matcher_io_packet_header_25),
    .io_packet_header_26(matcher_io_packet_header_26),
    .io_packet_header_27(matcher_io_packet_header_27),
    .io_packet_header_28(matcher_io_packet_header_28),
    .io_packet_header_29(matcher_io_packet_header_29),
    .io_packet_header_30(matcher_io_packet_header_30),
    .io_packet_header_31(matcher_io_packet_header_31),
    .io_packet_header_32(matcher_io_packet_header_32),
    .io_packet_header_33(matcher_io_packet_header_33),
    .io_packet_header_34(matcher_io_packet_header_34),
    .io_packet_header_35(matcher_io_packet_header_35),
    .io_packet_header_36(matcher_io_packet_header_36),
    .io_packet_header_37(matcher_io_packet_header_37),
    .io_packet_header_38(matcher_io_packet_header_38),
    .io_packet_header_39(matcher_io_packet_header_39),
    .io_packet_header_40(matcher_io_packet_header_40),
    .io_packet_header_41(matcher_io_packet_header_41),
    .io_packet_header_42(matcher_io_packet_header_42),
    .io_packet_header_43(matcher_io_packet_header_43),
    .io_packet_header_44(matcher_io_packet_header_44),
    .io_packet_header_45(matcher_io_packet_header_45),
    .io_packet_header_46(matcher_io_packet_header_46),
    .io_packet_header_47(matcher_io_packet_header_47),
    .io_packet_header_48(matcher_io_packet_header_48),
    .io_packet_header_49(matcher_io_packet_header_49),
    .io_packet_header_50(matcher_io_packet_header_50),
    .io_packet_header_51(matcher_io_packet_header_51),
    .io_packet_header_52(matcher_io_packet_header_52),
    .io_packet_header_53(matcher_io_packet_header_53),
    .io_packet_header_54(matcher_io_packet_header_54),
    .io_packet_header_55(matcher_io_packet_header_55),
    .io_packet_header_56(matcher_io_packet_header_56),
    .io_packet_header_57(matcher_io_packet_header_57),
    .io_packet_header_58(matcher_io_packet_header_58),
    .io_packet_header_59(matcher_io_packet_header_59),
    .io_packet_header_60(matcher_io_packet_header_60),
    .io_packet_header_61(matcher_io_packet_header_61),
    .io_packet_header_62(matcher_io_packet_header_62),
    .io_packet_header_63(matcher_io_packet_header_63),
    .io_parsed_header_0(matcher_io_parsed_header_0),
    .io_parsed_header_1(matcher_io_parsed_header_1),
    .io_mem_ce(matcher_io_mem_ce),
    .io_mem_addr(matcher_io_mem_addr),
    .io_mem_rdata(matcher_io_mem_rdata),
    .io_ready(matcher_io_ready),
    .io_is_match(matcher_io_is_match),
    .io_mod_start(matcher_io_mod_start),
    .io_mod_header_id(matcher_io_mod_header_id),
    .io_mod_key_off(matcher_io_mod_key_off),
    .io_mod_key_len(matcher_io_mod_key_len),
    .io_mod_val_len(matcher_io_mod_val_len)
  );
  Executer executer ( // @[processor.scala 26:26]
    .clock(executer_clock),
    .reset(executer_reset),
    .io_start(executer_io_start),
    .io_parsed_header_0(executer_io_parsed_header_0),
    .io_parsed_header_1(executer_io_parsed_header_1),
    .io_op_start_cnt(executer_io_op_start_cnt),
    .io_ready(executer_io_ready),
    .io_mod_start(executer_io_mod_start),
    .io_mod_ops_0(executer_io_mod_ops_0),
    .io_mod_ops_1(executer_io_mod_ops_1),
    .io_mod_ops_2(executer_io_mod_ops_2),
    .io_mod_ops_3(executer_io_mod_ops_3),
    .io_mod_ops_4(executer_io_mod_ops_4),
    .io_mod_ops_5(executer_io_mod_ops_5),
    .io_mod_ops_6(executer_io_mod_ops_6),
    .io_mod_ops_7(executer_io_mod_ops_7),
    .io_mod_ops_8(executer_io_mod_ops_8),
    .io_mod_ops_9(executer_io_mod_ops_9),
    .io_mod_ops_10(executer_io_mod_ops_10),
    .io_mod_ops_11(executer_io_mod_ops_11),
    .io_mod_ops_12(executer_io_mod_ops_12),
    .io_mod_ops_13(executer_io_mod_ops_13),
    .io_mod_ops_14(executer_io_mod_ops_14),
    .io_mod_ops_15(executer_io_mod_ops_15)
  );
  assign io_mem_ce = matcher_io_mem_ce; // @[processor.scala 40:20]
  assign io_mem_we = 1'h0; // @[processor.scala 40:20]
  assign io_mem_addr = matcher_io_mem_addr; // @[processor.scala 40:20]
  assign io_mem_sel = 4'h1; // @[processor.scala 40:20]
  assign io_mem_wdata = 32'h0; // @[processor.scala 40:20]
  assign io_ready = ready; // @[processor.scala 22:14]
  assign parser_clock = clock;
  assign parser_reset = reset;
  assign parser_io_start = state == 3'h0 & _GEN_7; // @[processor.scala 46:31 processor.scala 28:21]
  assign parser_io_packet_header_0 = io_packet_header_0; // @[processor.scala 32:29]
  assign parser_io_packet_header_1 = io_packet_header_1; // @[processor.scala 32:29]
  assign parser_io_packet_header_2 = io_packet_header_2; // @[processor.scala 32:29]
  assign parser_io_packet_header_3 = io_packet_header_3; // @[processor.scala 32:29]
  assign parser_io_packet_header_4 = io_packet_header_4; // @[processor.scala 32:29]
  assign parser_io_packet_header_5 = io_packet_header_5; // @[processor.scala 32:29]
  assign parser_io_packet_header_6 = io_packet_header_6; // @[processor.scala 32:29]
  assign parser_io_packet_header_7 = io_packet_header_7; // @[processor.scala 32:29]
  assign parser_io_packet_header_8 = io_packet_header_8; // @[processor.scala 32:29]
  assign parser_io_packet_header_9 = io_packet_header_9; // @[processor.scala 32:29]
  assign parser_io_packet_header_10 = io_packet_header_10; // @[processor.scala 32:29]
  assign parser_io_packet_header_11 = io_packet_header_11; // @[processor.scala 32:29]
  assign parser_io_packet_header_12 = io_packet_header_12; // @[processor.scala 32:29]
  assign parser_io_packet_header_13 = io_packet_header_13; // @[processor.scala 32:29]
  assign parser_io_packet_header_14 = io_packet_header_14; // @[processor.scala 32:29]
  assign parser_io_packet_header_15 = io_packet_header_15; // @[processor.scala 32:29]
  assign parser_io_packet_header_16 = io_packet_header_16; // @[processor.scala 32:29]
  assign parser_io_packet_header_17 = io_packet_header_17; // @[processor.scala 32:29]
  assign parser_io_packet_header_18 = io_packet_header_18; // @[processor.scala 32:29]
  assign parser_io_packet_header_19 = io_packet_header_19; // @[processor.scala 32:29]
  assign parser_io_packet_header_20 = io_packet_header_20; // @[processor.scala 32:29]
  assign parser_io_packet_header_21 = io_packet_header_21; // @[processor.scala 32:29]
  assign parser_io_packet_header_22 = io_packet_header_22; // @[processor.scala 32:29]
  assign parser_io_packet_header_23 = io_packet_header_23; // @[processor.scala 32:29]
  assign parser_io_packet_header_24 = io_packet_header_24; // @[processor.scala 32:29]
  assign parser_io_packet_header_25 = io_packet_header_25; // @[processor.scala 32:29]
  assign parser_io_packet_header_26 = io_packet_header_26; // @[processor.scala 32:29]
  assign parser_io_packet_header_27 = io_packet_header_27; // @[processor.scala 32:29]
  assign parser_io_packet_header_28 = io_packet_header_28; // @[processor.scala 32:29]
  assign parser_io_packet_header_29 = io_packet_header_29; // @[processor.scala 32:29]
  assign parser_io_packet_header_30 = io_packet_header_30; // @[processor.scala 32:29]
  assign parser_io_packet_header_31 = io_packet_header_31; // @[processor.scala 32:29]
  assign parser_io_packet_header_32 = io_packet_header_32; // @[processor.scala 32:29]
  assign parser_io_packet_header_33 = io_packet_header_33; // @[processor.scala 32:29]
  assign parser_io_packet_header_34 = io_packet_header_34; // @[processor.scala 32:29]
  assign parser_io_packet_header_35 = io_packet_header_35; // @[processor.scala 32:29]
  assign parser_io_packet_header_36 = io_packet_header_36; // @[processor.scala 32:29]
  assign parser_io_packet_header_37 = io_packet_header_37; // @[processor.scala 32:29]
  assign parser_io_packet_header_38 = io_packet_header_38; // @[processor.scala 32:29]
  assign parser_io_packet_header_39 = io_packet_header_39; // @[processor.scala 32:29]
  assign parser_io_packet_header_40 = io_packet_header_40; // @[processor.scala 32:29]
  assign parser_io_packet_header_41 = io_packet_header_41; // @[processor.scala 32:29]
  assign parser_io_packet_header_42 = io_packet_header_42; // @[processor.scala 32:29]
  assign parser_io_packet_header_43 = io_packet_header_43; // @[processor.scala 32:29]
  assign parser_io_packet_header_44 = io_packet_header_44; // @[processor.scala 32:29]
  assign parser_io_packet_header_45 = io_packet_header_45; // @[processor.scala 32:29]
  assign parser_io_packet_header_46 = io_packet_header_46; // @[processor.scala 32:29]
  assign parser_io_packet_header_47 = io_packet_header_47; // @[processor.scala 32:29]
  assign parser_io_packet_header_48 = io_packet_header_48; // @[processor.scala 32:29]
  assign parser_io_packet_header_49 = io_packet_header_49; // @[processor.scala 32:29]
  assign parser_io_packet_header_50 = io_packet_header_50; // @[processor.scala 32:29]
  assign parser_io_packet_header_51 = io_packet_header_51; // @[processor.scala 32:29]
  assign parser_io_packet_header_52 = io_packet_header_52; // @[processor.scala 32:29]
  assign parser_io_packet_header_53 = io_packet_header_53; // @[processor.scala 32:29]
  assign parser_io_packet_header_54 = io_packet_header_54; // @[processor.scala 32:29]
  assign parser_io_packet_header_55 = io_packet_header_55; // @[processor.scala 32:29]
  assign parser_io_packet_header_56 = io_packet_header_56; // @[processor.scala 32:29]
  assign parser_io_packet_header_57 = io_packet_header_57; // @[processor.scala 32:29]
  assign parser_io_packet_header_58 = io_packet_header_58; // @[processor.scala 32:29]
  assign parser_io_packet_header_59 = io_packet_header_59; // @[processor.scala 32:29]
  assign parser_io_packet_header_60 = io_packet_header_60; // @[processor.scala 32:29]
  assign parser_io_packet_header_61 = io_packet_header_61; // @[processor.scala 32:29]
  assign parser_io_packet_header_62 = io_packet_header_62; // @[processor.scala 32:29]
  assign parser_io_packet_header_63 = io_packet_header_63; // @[processor.scala 32:29]
  assign parser_io_mod_start = io_mod_ps_mod_start; // @[processor.scala 38:19]
  assign parser_io_mod_header_id = io_mod_ps_mod_header_id; // @[processor.scala 38:19]
  assign parser_io_mod_header_length = io_mod_ps_mod_header_length; // @[processor.scala 38:19]
  assign parser_io_mod_next_tag_start = io_mod_ps_mod_next_tag_start; // @[processor.scala 38:19]
  assign parser_io_mod_next_table_0 = io_mod_ps_mod_next_table_0; // @[processor.scala 38:19]
  assign parser_io_mod_next_table_1 = io_mod_ps_mod_next_table_1; // @[processor.scala 38:19]
  assign matcher_clock = clock;
  assign matcher_reset = reset;
  assign matcher_io_start = state == 3'h1 & _GEN_13; // @[processor.scala 59:31 processor.scala 29:22]
  assign matcher_io_packet_header_0 = io_packet_header_0; // @[processor.scala 33:30]
  assign matcher_io_packet_header_1 = io_packet_header_1; // @[processor.scala 33:30]
  assign matcher_io_packet_header_2 = io_packet_header_2; // @[processor.scala 33:30]
  assign matcher_io_packet_header_3 = io_packet_header_3; // @[processor.scala 33:30]
  assign matcher_io_packet_header_4 = io_packet_header_4; // @[processor.scala 33:30]
  assign matcher_io_packet_header_5 = io_packet_header_5; // @[processor.scala 33:30]
  assign matcher_io_packet_header_6 = io_packet_header_6; // @[processor.scala 33:30]
  assign matcher_io_packet_header_7 = io_packet_header_7; // @[processor.scala 33:30]
  assign matcher_io_packet_header_8 = io_packet_header_8; // @[processor.scala 33:30]
  assign matcher_io_packet_header_9 = io_packet_header_9; // @[processor.scala 33:30]
  assign matcher_io_packet_header_10 = io_packet_header_10; // @[processor.scala 33:30]
  assign matcher_io_packet_header_11 = io_packet_header_11; // @[processor.scala 33:30]
  assign matcher_io_packet_header_12 = io_packet_header_12; // @[processor.scala 33:30]
  assign matcher_io_packet_header_13 = io_packet_header_13; // @[processor.scala 33:30]
  assign matcher_io_packet_header_14 = io_packet_header_14; // @[processor.scala 33:30]
  assign matcher_io_packet_header_15 = io_packet_header_15; // @[processor.scala 33:30]
  assign matcher_io_packet_header_16 = io_packet_header_16; // @[processor.scala 33:30]
  assign matcher_io_packet_header_17 = io_packet_header_17; // @[processor.scala 33:30]
  assign matcher_io_packet_header_18 = io_packet_header_18; // @[processor.scala 33:30]
  assign matcher_io_packet_header_19 = io_packet_header_19; // @[processor.scala 33:30]
  assign matcher_io_packet_header_20 = io_packet_header_20; // @[processor.scala 33:30]
  assign matcher_io_packet_header_21 = io_packet_header_21; // @[processor.scala 33:30]
  assign matcher_io_packet_header_22 = io_packet_header_22; // @[processor.scala 33:30]
  assign matcher_io_packet_header_23 = io_packet_header_23; // @[processor.scala 33:30]
  assign matcher_io_packet_header_24 = io_packet_header_24; // @[processor.scala 33:30]
  assign matcher_io_packet_header_25 = io_packet_header_25; // @[processor.scala 33:30]
  assign matcher_io_packet_header_26 = io_packet_header_26; // @[processor.scala 33:30]
  assign matcher_io_packet_header_27 = io_packet_header_27; // @[processor.scala 33:30]
  assign matcher_io_packet_header_28 = io_packet_header_28; // @[processor.scala 33:30]
  assign matcher_io_packet_header_29 = io_packet_header_29; // @[processor.scala 33:30]
  assign matcher_io_packet_header_30 = io_packet_header_30; // @[processor.scala 33:30]
  assign matcher_io_packet_header_31 = io_packet_header_31; // @[processor.scala 33:30]
  assign matcher_io_packet_header_32 = io_packet_header_32; // @[processor.scala 33:30]
  assign matcher_io_packet_header_33 = io_packet_header_33; // @[processor.scala 33:30]
  assign matcher_io_packet_header_34 = io_packet_header_34; // @[processor.scala 33:30]
  assign matcher_io_packet_header_35 = io_packet_header_35; // @[processor.scala 33:30]
  assign matcher_io_packet_header_36 = io_packet_header_36; // @[processor.scala 33:30]
  assign matcher_io_packet_header_37 = io_packet_header_37; // @[processor.scala 33:30]
  assign matcher_io_packet_header_38 = io_packet_header_38; // @[processor.scala 33:30]
  assign matcher_io_packet_header_39 = io_packet_header_39; // @[processor.scala 33:30]
  assign matcher_io_packet_header_40 = io_packet_header_40; // @[processor.scala 33:30]
  assign matcher_io_packet_header_41 = io_packet_header_41; // @[processor.scala 33:30]
  assign matcher_io_packet_header_42 = io_packet_header_42; // @[processor.scala 33:30]
  assign matcher_io_packet_header_43 = io_packet_header_43; // @[processor.scala 33:30]
  assign matcher_io_packet_header_44 = io_packet_header_44; // @[processor.scala 33:30]
  assign matcher_io_packet_header_45 = io_packet_header_45; // @[processor.scala 33:30]
  assign matcher_io_packet_header_46 = io_packet_header_46; // @[processor.scala 33:30]
  assign matcher_io_packet_header_47 = io_packet_header_47; // @[processor.scala 33:30]
  assign matcher_io_packet_header_48 = io_packet_header_48; // @[processor.scala 33:30]
  assign matcher_io_packet_header_49 = io_packet_header_49; // @[processor.scala 33:30]
  assign matcher_io_packet_header_50 = io_packet_header_50; // @[processor.scala 33:30]
  assign matcher_io_packet_header_51 = io_packet_header_51; // @[processor.scala 33:30]
  assign matcher_io_packet_header_52 = io_packet_header_52; // @[processor.scala 33:30]
  assign matcher_io_packet_header_53 = io_packet_header_53; // @[processor.scala 33:30]
  assign matcher_io_packet_header_54 = io_packet_header_54; // @[processor.scala 33:30]
  assign matcher_io_packet_header_55 = io_packet_header_55; // @[processor.scala 33:30]
  assign matcher_io_packet_header_56 = io_packet_header_56; // @[processor.scala 33:30]
  assign matcher_io_packet_header_57 = io_packet_header_57; // @[processor.scala 33:30]
  assign matcher_io_packet_header_58 = io_packet_header_58; // @[processor.scala 33:30]
  assign matcher_io_packet_header_59 = io_packet_header_59; // @[processor.scala 33:30]
  assign matcher_io_packet_header_60 = io_packet_header_60; // @[processor.scala 33:30]
  assign matcher_io_packet_header_61 = io_packet_header_61; // @[processor.scala 33:30]
  assign matcher_io_packet_header_62 = io_packet_header_62; // @[processor.scala 33:30]
  assign matcher_io_packet_header_63 = io_packet_header_63; // @[processor.scala 33:30]
  assign matcher_io_parsed_header_0 = parser_io_parsed_header_0; // @[processor.scala 36:30]
  assign matcher_io_parsed_header_1 = parser_io_parsed_header_1; // @[processor.scala 36:30]
  assign matcher_io_mem_rdata = io_mem_rdata; // @[processor.scala 40:20]
  assign matcher_io_mod_start = io_mod_mt_mod_start; // @[processor.scala 39:20]
  assign matcher_io_mod_header_id = io_mod_mt_mod_header_id; // @[processor.scala 39:20]
  assign matcher_io_mod_key_off = io_mod_mt_mod_key_off; // @[processor.scala 39:20]
  assign matcher_io_mod_key_len = io_mod_mt_mod_key_len; // @[processor.scala 39:20]
  assign matcher_io_mod_val_len = io_mod_mt_mod_val_len; // @[processor.scala 39:20]
  assign executer_clock = clock;
  assign executer_reset = reset;
  assign executer_io_start = state == 3'h2 & _GEN_17; // @[processor.scala 66:31 processor.scala 30:23]
  assign executer_io_parsed_header_0 = parser_io_parsed_header_0; // @[processor.scala 37:31]
  assign executer_io_parsed_header_1 = parser_io_parsed_header_1; // @[processor.scala 37:31]
  assign executer_io_op_start_cnt = matcher_io_is_match ? hit_action_addr : miss_action_addr; // @[processor.scala 44:36]
  assign executer_io_mod_start = io_mod_ex_mod_start; // @[processor.scala 42:21]
  assign executer_io_mod_ops_0 = io_mod_ex_mod_ops_0; // @[processor.scala 42:21]
  assign executer_io_mod_ops_1 = io_mod_ex_mod_ops_1; // @[processor.scala 42:21]
  assign executer_io_mod_ops_2 = io_mod_ex_mod_ops_2; // @[processor.scala 42:21]
  assign executer_io_mod_ops_3 = io_mod_ex_mod_ops_3; // @[processor.scala 42:21]
  assign executer_io_mod_ops_4 = io_mod_ex_mod_ops_4; // @[processor.scala 42:21]
  assign executer_io_mod_ops_5 = io_mod_ex_mod_ops_5; // @[processor.scala 42:21]
  assign executer_io_mod_ops_6 = io_mod_ex_mod_ops_6; // @[processor.scala 42:21]
  assign executer_io_mod_ops_7 = io_mod_ex_mod_ops_7; // @[processor.scala 42:21]
  assign executer_io_mod_ops_8 = io_mod_ex_mod_ops_8; // @[processor.scala 42:21]
  assign executer_io_mod_ops_9 = io_mod_ex_mod_ops_9; // @[processor.scala 42:21]
  assign executer_io_mod_ops_10 = io_mod_ex_mod_ops_10; // @[processor.scala 42:21]
  assign executer_io_mod_ops_11 = io_mod_ex_mod_ops_11; // @[processor.scala 42:21]
  assign executer_io_mod_ops_12 = io_mod_ex_mod_ops_12; // @[processor.scala 42:21]
  assign executer_io_mod_ops_13 = io_mod_ex_mod_ops_13; // @[processor.scala 42:21]
  assign executer_io_mod_ops_14 = io_mod_ex_mod_ops_14; // @[processor.scala 42:21]
  assign executer_io_mod_ops_15 = io_mod_ex_mod_ops_15; // @[processor.scala 42:21]
  always @(posedge clock) begin
    if (reset) begin // @[processor.scala 17:34]
      hit_action_addr <= 32'h0; // @[processor.scala 17:34]
    end else if (state == 3'h0) begin // @[processor.scala 46:31]
      if (io_mod_start) begin // @[processor.scala 47:29]
        hit_action_addr <= io_mod_hit_action_addr; // @[processor.scala 48:29]
      end
    end
    if (reset) begin // @[processor.scala 18:35]
      miss_action_addr <= 32'h0; // @[processor.scala 18:35]
    end else if (state == 3'h0) begin // @[processor.scala 46:31]
      if (io_mod_start) begin // @[processor.scala 47:29]
        miss_action_addr <= io_mod_miss_action_addr; // @[processor.scala 49:30]
      end
    end
    if (reset) begin // @[processor.scala 20:24]
      state <= 3'h0; // @[processor.scala 20:24]
    end else if (state == 3'h4) begin // @[processor.scala 80:31]
      if (~io_start) begin // @[processor.scala 81:26]
        state <= 3'h0; // @[processor.scala 82:19]
      end else begin
        state <= _GEN_24;
      end
    end else begin
      state <= _GEN_24;
    end
    if (reset) begin // @[processor.scala 21:26]
      ready <= 1'h0; // @[processor.scala 21:26]
    end else if (state == 3'h3) begin // @[processor.scala 73:31]
      ready <= _GEN_21;
    end else if (state == 3'h0) begin // @[processor.scala 46:31]
      if (!(io_mod_start)) begin // @[processor.scala 47:29]
        ready <= _GEN_0;
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
  hit_action_addr = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  miss_action_addr = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  state = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  ready = _RAND_3[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
