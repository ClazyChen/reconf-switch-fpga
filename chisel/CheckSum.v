module CheckSum(
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
  input  [31:0] io_field_start,
  input  [31:0] io_field_len,
  output [15:0] io_value,
  output        io_ready
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] field_addr; // @[checksum.scala 17:29]
  reg [31:0] field_end_addr; // @[checksum.scala 18:33]
  reg [31:0] value; // @[checksum.scala 19:24]
  reg  ready; // @[checksum.scala 20:24]
  reg [2:0] state; // @[checksum.scala 24:24]
  wire [31:0] _field_end_addr_T_1 = io_field_start + io_field_len; // @[checksum.scala 28:46]
  wire [31:0] _GEN_0 = io_start ? io_field_start : field_addr; // @[checksum.scala 26:25 checksum.scala 27:24 checksum.scala 17:29]
  wire [31:0] _GEN_1 = io_start ? _field_end_addr_T_1 : field_end_addr; // @[checksum.scala 26:25 checksum.scala 28:28 checksum.scala 18:33]
  wire [2:0] _GEN_2 = io_start ? 3'h1 : state; // @[checksum.scala 26:25 checksum.scala 29:19 checksum.scala 24:24]
  wire [31:0] _GEN_3 = state == 3'h0 ? _GEN_0 : field_addr; // @[checksum.scala 25:31 checksum.scala 17:29]
  wire [31:0] _GEN_4 = state == 3'h0 ? _GEN_1 : field_end_addr; // @[checksum.scala 25:31 checksum.scala 18:33]
  wire [2:0] _GEN_5 = state == 3'h0 ? _GEN_2 : state; // @[checksum.scala 25:31 checksum.scala 24:24]
  wire [31:0] _value_T_1 = field_addr + 32'h1; // @[checksum.scala 35:45]
  wire [7:0] _GEN_7 = 6'h1 == _value_T_1[5:0] ? io_packet_header_1 : io_packet_header_0; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_8 = 6'h2 == _value_T_1[5:0] ? io_packet_header_2 : _GEN_7; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_9 = 6'h3 == _value_T_1[5:0] ? io_packet_header_3 : _GEN_8; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_10 = 6'h4 == _value_T_1[5:0] ? io_packet_header_4 : _GEN_9; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_11 = 6'h5 == _value_T_1[5:0] ? io_packet_header_5 : _GEN_10; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_12 = 6'h6 == _value_T_1[5:0] ? io_packet_header_6 : _GEN_11; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_13 = 6'h7 == _value_T_1[5:0] ? io_packet_header_7 : _GEN_12; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_14 = 6'h8 == _value_T_1[5:0] ? io_packet_header_8 : _GEN_13; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_15 = 6'h9 == _value_T_1[5:0] ? io_packet_header_9 : _GEN_14; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_16 = 6'ha == _value_T_1[5:0] ? io_packet_header_10 : _GEN_15; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_17 = 6'hb == _value_T_1[5:0] ? io_packet_header_11 : _GEN_16; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_18 = 6'hc == _value_T_1[5:0] ? io_packet_header_12 : _GEN_17; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_19 = 6'hd == _value_T_1[5:0] ? io_packet_header_13 : _GEN_18; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_20 = 6'he == _value_T_1[5:0] ? io_packet_header_14 : _GEN_19; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_21 = 6'hf == _value_T_1[5:0] ? io_packet_header_15 : _GEN_20; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_22 = 6'h10 == _value_T_1[5:0] ? io_packet_header_16 : _GEN_21; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_23 = 6'h11 == _value_T_1[5:0] ? io_packet_header_17 : _GEN_22; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_24 = 6'h12 == _value_T_1[5:0] ? io_packet_header_18 : _GEN_23; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_25 = 6'h13 == _value_T_1[5:0] ? io_packet_header_19 : _GEN_24; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_26 = 6'h14 == _value_T_1[5:0] ? io_packet_header_20 : _GEN_25; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_27 = 6'h15 == _value_T_1[5:0] ? io_packet_header_21 : _GEN_26; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_28 = 6'h16 == _value_T_1[5:0] ? io_packet_header_22 : _GEN_27; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_29 = 6'h17 == _value_T_1[5:0] ? io_packet_header_23 : _GEN_28; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_30 = 6'h18 == _value_T_1[5:0] ? io_packet_header_24 : _GEN_29; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_31 = 6'h19 == _value_T_1[5:0] ? io_packet_header_25 : _GEN_30; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_32 = 6'h1a == _value_T_1[5:0] ? io_packet_header_26 : _GEN_31; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_33 = 6'h1b == _value_T_1[5:0] ? io_packet_header_27 : _GEN_32; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_34 = 6'h1c == _value_T_1[5:0] ? io_packet_header_28 : _GEN_33; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_35 = 6'h1d == _value_T_1[5:0] ? io_packet_header_29 : _GEN_34; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_36 = 6'h1e == _value_T_1[5:0] ? io_packet_header_30 : _GEN_35; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_37 = 6'h1f == _value_T_1[5:0] ? io_packet_header_31 : _GEN_36; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_38 = 6'h20 == _value_T_1[5:0] ? io_packet_header_32 : _GEN_37; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_39 = 6'h21 == _value_T_1[5:0] ? io_packet_header_33 : _GEN_38; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_40 = 6'h22 == _value_T_1[5:0] ? io_packet_header_34 : _GEN_39; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_41 = 6'h23 == _value_T_1[5:0] ? io_packet_header_35 : _GEN_40; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_42 = 6'h24 == _value_T_1[5:0] ? io_packet_header_36 : _GEN_41; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_43 = 6'h25 == _value_T_1[5:0] ? io_packet_header_37 : _GEN_42; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_44 = 6'h26 == _value_T_1[5:0] ? io_packet_header_38 : _GEN_43; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_45 = 6'h27 == _value_T_1[5:0] ? io_packet_header_39 : _GEN_44; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_46 = 6'h28 == _value_T_1[5:0] ? io_packet_header_40 : _GEN_45; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_47 = 6'h29 == _value_T_1[5:0] ? io_packet_header_41 : _GEN_46; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_48 = 6'h2a == _value_T_1[5:0] ? io_packet_header_42 : _GEN_47; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_49 = 6'h2b == _value_T_1[5:0] ? io_packet_header_43 : _GEN_48; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_50 = 6'h2c == _value_T_1[5:0] ? io_packet_header_44 : _GEN_49; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_51 = 6'h2d == _value_T_1[5:0] ? io_packet_header_45 : _GEN_50; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_52 = 6'h2e == _value_T_1[5:0] ? io_packet_header_46 : _GEN_51; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_53 = 6'h2f == _value_T_1[5:0] ? io_packet_header_47 : _GEN_52; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_54 = 6'h30 == _value_T_1[5:0] ? io_packet_header_48 : _GEN_53; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_55 = 6'h31 == _value_T_1[5:0] ? io_packet_header_49 : _GEN_54; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_56 = 6'h32 == _value_T_1[5:0] ? io_packet_header_50 : _GEN_55; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_57 = 6'h33 == _value_T_1[5:0] ? io_packet_header_51 : _GEN_56; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_58 = 6'h34 == _value_T_1[5:0] ? io_packet_header_52 : _GEN_57; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_59 = 6'h35 == _value_T_1[5:0] ? io_packet_header_53 : _GEN_58; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_60 = 6'h36 == _value_T_1[5:0] ? io_packet_header_54 : _GEN_59; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_61 = 6'h37 == _value_T_1[5:0] ? io_packet_header_55 : _GEN_60; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_62 = 6'h38 == _value_T_1[5:0] ? io_packet_header_56 : _GEN_61; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_63 = 6'h39 == _value_T_1[5:0] ? io_packet_header_57 : _GEN_62; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_64 = 6'h3a == _value_T_1[5:0] ? io_packet_header_58 : _GEN_63; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_65 = 6'h3b == _value_T_1[5:0] ? io_packet_header_59 : _GEN_64; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_66 = 6'h3c == _value_T_1[5:0] ? io_packet_header_60 : _GEN_65; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_67 = 6'h3d == _value_T_1[5:0] ? io_packet_header_61 : _GEN_66; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_68 = 6'h3e == _value_T_1[5:0] ? io_packet_header_62 : _GEN_67; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_69 = 6'h3f == _value_T_1[5:0] ? io_packet_header_63 : _GEN_68; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_71 = 6'h1 == field_addr[5:0] ? io_packet_header_1 : io_packet_header_0; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_72 = 6'h2 == field_addr[5:0] ? io_packet_header_2 : _GEN_71; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_73 = 6'h3 == field_addr[5:0] ? io_packet_header_3 : _GEN_72; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_74 = 6'h4 == field_addr[5:0] ? io_packet_header_4 : _GEN_73; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_75 = 6'h5 == field_addr[5:0] ? io_packet_header_5 : _GEN_74; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_76 = 6'h6 == field_addr[5:0] ? io_packet_header_6 : _GEN_75; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_77 = 6'h7 == field_addr[5:0] ? io_packet_header_7 : _GEN_76; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_78 = 6'h8 == field_addr[5:0] ? io_packet_header_8 : _GEN_77; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_79 = 6'h9 == field_addr[5:0] ? io_packet_header_9 : _GEN_78; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_80 = 6'ha == field_addr[5:0] ? io_packet_header_10 : _GEN_79; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_81 = 6'hb == field_addr[5:0] ? io_packet_header_11 : _GEN_80; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_82 = 6'hc == field_addr[5:0] ? io_packet_header_12 : _GEN_81; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_83 = 6'hd == field_addr[5:0] ? io_packet_header_13 : _GEN_82; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_84 = 6'he == field_addr[5:0] ? io_packet_header_14 : _GEN_83; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_85 = 6'hf == field_addr[5:0] ? io_packet_header_15 : _GEN_84; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_86 = 6'h10 == field_addr[5:0] ? io_packet_header_16 : _GEN_85; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_87 = 6'h11 == field_addr[5:0] ? io_packet_header_17 : _GEN_86; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_88 = 6'h12 == field_addr[5:0] ? io_packet_header_18 : _GEN_87; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_89 = 6'h13 == field_addr[5:0] ? io_packet_header_19 : _GEN_88; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_90 = 6'h14 == field_addr[5:0] ? io_packet_header_20 : _GEN_89; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_91 = 6'h15 == field_addr[5:0] ? io_packet_header_21 : _GEN_90; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_92 = 6'h16 == field_addr[5:0] ? io_packet_header_22 : _GEN_91; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_93 = 6'h17 == field_addr[5:0] ? io_packet_header_23 : _GEN_92; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_94 = 6'h18 == field_addr[5:0] ? io_packet_header_24 : _GEN_93; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_95 = 6'h19 == field_addr[5:0] ? io_packet_header_25 : _GEN_94; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_96 = 6'h1a == field_addr[5:0] ? io_packet_header_26 : _GEN_95; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_97 = 6'h1b == field_addr[5:0] ? io_packet_header_27 : _GEN_96; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_98 = 6'h1c == field_addr[5:0] ? io_packet_header_28 : _GEN_97; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_99 = 6'h1d == field_addr[5:0] ? io_packet_header_29 : _GEN_98; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_100 = 6'h1e == field_addr[5:0] ? io_packet_header_30 : _GEN_99; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_101 = 6'h1f == field_addr[5:0] ? io_packet_header_31 : _GEN_100; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_102 = 6'h20 == field_addr[5:0] ? io_packet_header_32 : _GEN_101; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_103 = 6'h21 == field_addr[5:0] ? io_packet_header_33 : _GEN_102; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_104 = 6'h22 == field_addr[5:0] ? io_packet_header_34 : _GEN_103; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_105 = 6'h23 == field_addr[5:0] ? io_packet_header_35 : _GEN_104; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_106 = 6'h24 == field_addr[5:0] ? io_packet_header_36 : _GEN_105; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_107 = 6'h25 == field_addr[5:0] ? io_packet_header_37 : _GEN_106; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_108 = 6'h26 == field_addr[5:0] ? io_packet_header_38 : _GEN_107; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_109 = 6'h27 == field_addr[5:0] ? io_packet_header_39 : _GEN_108; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_110 = 6'h28 == field_addr[5:0] ? io_packet_header_40 : _GEN_109; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_111 = 6'h29 == field_addr[5:0] ? io_packet_header_41 : _GEN_110; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_112 = 6'h2a == field_addr[5:0] ? io_packet_header_42 : _GEN_111; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_113 = 6'h2b == field_addr[5:0] ? io_packet_header_43 : _GEN_112; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_114 = 6'h2c == field_addr[5:0] ? io_packet_header_44 : _GEN_113; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_115 = 6'h2d == field_addr[5:0] ? io_packet_header_45 : _GEN_114; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_116 = 6'h2e == field_addr[5:0] ? io_packet_header_46 : _GEN_115; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_117 = 6'h2f == field_addr[5:0] ? io_packet_header_47 : _GEN_116; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_118 = 6'h30 == field_addr[5:0] ? io_packet_header_48 : _GEN_117; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_119 = 6'h31 == field_addr[5:0] ? io_packet_header_49 : _GEN_118; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_120 = 6'h32 == field_addr[5:0] ? io_packet_header_50 : _GEN_119; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_121 = 6'h33 == field_addr[5:0] ? io_packet_header_51 : _GEN_120; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_122 = 6'h34 == field_addr[5:0] ? io_packet_header_52 : _GEN_121; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_123 = 6'h35 == field_addr[5:0] ? io_packet_header_53 : _GEN_122; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_124 = 6'h36 == field_addr[5:0] ? io_packet_header_54 : _GEN_123; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_125 = 6'h37 == field_addr[5:0] ? io_packet_header_55 : _GEN_124; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_126 = 6'h38 == field_addr[5:0] ? io_packet_header_56 : _GEN_125; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_127 = 6'h39 == field_addr[5:0] ? io_packet_header_57 : _GEN_126; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_128 = 6'h3a == field_addr[5:0] ? io_packet_header_58 : _GEN_127; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_129 = 6'h3b == field_addr[5:0] ? io_packet_header_59 : _GEN_128; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_130 = 6'h3c == field_addr[5:0] ? io_packet_header_60 : _GEN_129; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_131 = 6'h3d == field_addr[5:0] ? io_packet_header_61 : _GEN_130; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_132 = 6'h3e == field_addr[5:0] ? io_packet_header_62 : _GEN_131; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [7:0] _GEN_133 = 6'h3f == field_addr[5:0] ? io_packet_header_63 : _GEN_132; // @[Cat.scala 30:58 Cat.scala 30:58]
  wire [15:0] _value_T_4 = {_GEN_69,_GEN_133}; // @[Cat.scala 30:58]
  wire [31:0] _GEN_153 = {{16'd0}, _value_T_4}; // @[checksum.scala 34:28]
  wire [31:0] _value_T_6 = value + _GEN_153; // @[checksum.scala 34:28]
  wire [31:0] _field_addr_T_1 = field_addr + 32'h2; // @[checksum.scala 38:38]
  wire [31:0] _GEN_134 = field_addr < field_end_addr ? _value_T_6 : value; // @[checksum.scala 33:44 checksum.scala 34:19 checksum.scala 19:24]
  wire [2:0] _GEN_136 = field_addr < field_end_addr ? _GEN_5 : 3'h2; // @[checksum.scala 33:44 checksum.scala 40:19]
  wire [31:0] _GEN_137 = state == 3'h1 ? _GEN_134 : value; // @[checksum.scala 32:31 checksum.scala 19:24]
  wire [2:0] _GEN_139 = state == 3'h1 ? _GEN_136 : _GEN_5; // @[checksum.scala 32:31]
  wire [15:0] _value_T_10 = value[31:16] + value[15:0]; // @[checksum.scala 44:31]
  wire [31:0] _GEN_140 = state == 3'h2 ? {{16'd0}, _value_T_10} : _GEN_137; // @[checksum.scala 43:31 checksum.scala 44:15]
  wire [2:0] _GEN_141 = state == 3'h2 ? 3'h3 : _GEN_139; // @[checksum.scala 43:31 checksum.scala 45:15]
  wire [15:0] _value_T_15 = ~_value_T_10; // @[checksum.scala 48:18]
  wire [31:0] _GEN_142 = state == 3'h3 ? {{16'd0}, _value_T_15} : _GEN_140; // @[checksum.scala 47:31 checksum.scala 48:15]
  wire  _GEN_143 = state == 3'h3 | ready; // @[checksum.scala 47:31 checksum.scala 49:15 checksum.scala 20:24]
  wire [2:0] _GEN_144 = state == 3'h3 ? 3'h4 : _GEN_141; // @[checksum.scala 47:31 checksum.scala 50:15]
  assign io_value = value[15:0]; // @[checksum.scala 21:22]
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
    if (reset) begin // @[checksum.scala 19:24]
      value <= 32'h0; // @[checksum.scala 19:24]
    end else if (state == 3'h4) begin // @[checksum.scala 52:31]
      if (~io_start) begin // @[checksum.scala 53:26]
        value <= 32'h0; // @[checksum.scala 55:19]
      end else begin
        value <= _GEN_142;
      end
    end else begin
      value <= _GEN_142;
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
  value = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  ready = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  state = _RAND_4[2:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
