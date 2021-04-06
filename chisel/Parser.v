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
  input  [31:0] io_mod_next_tag_length,
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
  wire [15:0] next_header_id = next_table_0[15:0]; // @[const.scala 43:47]
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
  wire [15:0] next_header_id_1 = next_table_2[15:0]; // @[const.scala 43:47]
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
  wire [15:0] next_header_id_2 = next_table_1[15:0]; // @[const.scala 43:47]
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
  wire [15:0] next_header_id_3 = next_table_3[15:0]; // @[const.scala 43:47]
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
