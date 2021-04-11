module ProcessorController(
  input         clock,
  input         reset,
  input         io_update,
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
  input         io_end,
  output [31:0] io_mem_addr,
  input  [31:0] io_mem_rdata,
  output        io_ready,
  input         io_mod_start,
  input  [31:0] io_mod_hit_action_addr,
  input  [31:0] io_mod_miss_action_addr,
  input         io_mod_ps_mod_start,
  input         io_mod_ps_mod_header_id,
  input  [31:0] io_mod_ps_mod_header_length,
  input  [31:0] io_mod_ps_mod_next_tag_start,
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
  input  [63:0] io_mod_ex_mod_ops_15,
  output        io_next_en,
  output [7:0]  io_next_header_0,
  output [7:0]  io_next_header_1,
  output [7:0]  io_next_header_2,
  output [7:0]  io_next_header_3,
  output [7:0]  io_next_header_4,
  output [7:0]  io_next_header_5,
  output [7:0]  io_next_header_6,
  output [7:0]  io_next_header_7,
  output [7:0]  io_next_header_8,
  output [7:0]  io_next_header_9,
  output [7:0]  io_next_header_10,
  output [7:0]  io_next_header_11,
  output [7:0]  io_next_header_12,
  output [7:0]  io_next_header_13,
  output [7:0]  io_next_header_14,
  output [7:0]  io_next_header_15,
  output [7:0]  io_next_header_16,
  output [7:0]  io_next_header_17,
  output [7:0]  io_next_header_18,
  output [7:0]  io_next_header_19,
  output [7:0]  io_next_header_20,
  output [7:0]  io_next_header_21,
  output [7:0]  io_next_header_22,
  output [7:0]  io_next_header_23,
  output [7:0]  io_next_header_24,
  output [7:0]  io_next_header_25,
  output [7:0]  io_next_header_26,
  output [7:0]  io_next_header_27,
  output [7:0]  io_next_header_28,
  output [7:0]  io_next_header_29,
  output [7:0]  io_next_header_30,
  output [7:0]  io_next_header_31,
  output [7:0]  io_next_header_32,
  output [7:0]  io_next_header_33,
  output [7:0]  io_next_header_34,
  output [7:0]  io_next_header_35,
  output [7:0]  io_next_header_36,
  output [7:0]  io_next_header_37,
  output [7:0]  io_next_header_38,
  output [7:0]  io_next_header_39,
  output [7:0]  io_next_header_40,
  output [7:0]  io_next_header_41,
  output [7:0]  io_next_header_42,
  output [7:0]  io_next_header_43,
  output [7:0]  io_next_header_44,
  output [7:0]  io_next_header_45,
  output [7:0]  io_next_header_46,
  output [7:0]  io_next_header_47,
  output [7:0]  io_next_header_48,
  output [7:0]  io_next_header_49,
  output [7:0]  io_next_header_50,
  output [7:0]  io_next_header_51,
  output [7:0]  io_next_header_52,
  output [7:0]  io_next_header_53,
  output [7:0]  io_next_header_54,
  output [7:0]  io_next_header_55,
  output [7:0]  io_next_header_56,
  output [7:0]  io_next_header_57,
  output [7:0]  io_next_header_58,
  output [7:0]  io_next_header_59,
  output [7:0]  io_next_header_60,
  output [7:0]  io_next_header_61,
  output [7:0]  io_next_header_62,
  output [7:0]  io_next_header_63,
  output [2:0]  io_next_proc
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
`endif // RANDOMIZE_REG_INIT
  wire  proc_clock; // @[processor_controller.scala 42:22]
  wire  proc_reset; // @[processor_controller.scala 42:22]
  wire  proc_io_start; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_0; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_1; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_2; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_3; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_4; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_5; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_6; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_7; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_8; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_9; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_10; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_11; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_12; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_13; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_14; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_15; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_16; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_17; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_18; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_19; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_20; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_21; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_22; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_23; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_24; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_25; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_26; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_27; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_28; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_29; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_30; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_31; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_32; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_33; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_34; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_35; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_36; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_37; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_38; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_39; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_40; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_41; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_42; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_43; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_44; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_45; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_46; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_47; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_48; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_49; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_50; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_51; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_52; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_53; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_54; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_55; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_56; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_57; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_58; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_59; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_60; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_61; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_62; // @[processor_controller.scala 42:22]
  wire [7:0] proc_io_packet_header_63; // @[processor_controller.scala 42:22]
  wire [31:0] proc_io_mem_addr; // @[processor_controller.scala 42:22]
  wire [31:0] proc_io_mem_rdata; // @[processor_controller.scala 42:22]
  wire  proc_io_ready; // @[processor_controller.scala 42:22]
  wire  proc_io_mod_start; // @[processor_controller.scala 42:22]
  wire [31:0] proc_io_mod_hit_action_addr; // @[processor_controller.scala 42:22]
  wire [31:0] proc_io_mod_miss_action_addr; // @[processor_controller.scala 42:22]
  wire  proc_io_mod_ps_mod_start; // @[processor_controller.scala 42:22]
  wire  proc_io_mod_ps_mod_header_id; // @[processor_controller.scala 42:22]
  wire [31:0] proc_io_mod_ps_mod_header_length; // @[processor_controller.scala 42:22]
  wire [31:0] proc_io_mod_ps_mod_next_tag_start; // @[processor_controller.scala 42:22]
  wire [31:0] proc_io_mod_ps_mod_next_table_0; // @[processor_controller.scala 42:22]
  wire [31:0] proc_io_mod_ps_mod_next_table_1; // @[processor_controller.scala 42:22]
  wire  proc_io_mod_mt_mod_start; // @[processor_controller.scala 42:22]
  wire [3:0] proc_io_mod_mt_mod_header_id; // @[processor_controller.scala 42:22]
  wire [5:0] proc_io_mod_mt_mod_key_off; // @[processor_controller.scala 42:22]
  wire [5:0] proc_io_mod_mt_mod_key_len; // @[processor_controller.scala 42:22]
  wire [5:0] proc_io_mod_mt_mod_val_len; // @[processor_controller.scala 42:22]
  wire  proc_io_mod_ex_mod_start; // @[processor_controller.scala 42:22]
  wire [63:0] proc_io_mod_ex_mod_ops_0; // @[processor_controller.scala 42:22]
  wire [63:0] proc_io_mod_ex_mod_ops_1; // @[processor_controller.scala 42:22]
  wire [63:0] proc_io_mod_ex_mod_ops_2; // @[processor_controller.scala 42:22]
  wire [63:0] proc_io_mod_ex_mod_ops_3; // @[processor_controller.scala 42:22]
  wire [63:0] proc_io_mod_ex_mod_ops_4; // @[processor_controller.scala 42:22]
  wire [63:0] proc_io_mod_ex_mod_ops_5; // @[processor_controller.scala 42:22]
  wire [63:0] proc_io_mod_ex_mod_ops_6; // @[processor_controller.scala 42:22]
  wire [63:0] proc_io_mod_ex_mod_ops_7; // @[processor_controller.scala 42:22]
  wire [63:0] proc_io_mod_ex_mod_ops_8; // @[processor_controller.scala 42:22]
  wire [63:0] proc_io_mod_ex_mod_ops_9; // @[processor_controller.scala 42:22]
  wire [63:0] proc_io_mod_ex_mod_ops_10; // @[processor_controller.scala 42:22]
  wire [63:0] proc_io_mod_ex_mod_ops_11; // @[processor_controller.scala 42:22]
  wire [63:0] proc_io_mod_ex_mod_ops_12; // @[processor_controller.scala 42:22]
  wire [63:0] proc_io_mod_ex_mod_ops_13; // @[processor_controller.scala 42:22]
  wire [63:0] proc_io_mod_ex_mod_ops_14; // @[processor_controller.scala 42:22]
  wire [63:0] proc_io_mod_ex_mod_ops_15; // @[processor_controller.scala 42:22]
  reg [7:0] packet_header_0; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_1; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_2; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_3; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_4; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_5; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_6; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_7; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_8; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_9; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_10; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_11; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_12; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_13; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_14; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_15; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_16; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_17; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_18; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_19; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_20; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_21; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_22; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_23; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_24; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_25; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_26; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_27; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_28; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_29; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_30; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_31; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_32; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_33; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_34; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_35; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_36; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_37; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_38; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_39; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_40; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_41; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_42; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_43; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_44; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_45; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_46; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_47; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_48; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_49; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_50; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_51; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_52; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_53; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_54; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_55; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_56; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_57; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_58; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_59; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_60; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_61; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_62; // @[processor_controller.scala 22:28]
  reg [7:0] packet_header_63; // @[processor_controller.scala 22:28]
  reg  updated; // @[processor_controller.scala 23:26]
  reg  processing; // @[processor_controller.scala 24:29]
  wire  start = updated & ~processing; // @[processor_controller.scala 26:25]
  wire  _GEN_0 = io_update | updated; // @[processor_controller.scala 30:22 processor_controller.scala 31:17 processor_controller.scala 23:26]
  wire  _GEN_65 = start | processing; // @[processor_controller.scala 37:18 processor_controller.scala 38:20 processor_controller.scala 24:29]
  Processor proc ( // @[processor_controller.scala 42:22]
    .clock(proc_clock),
    .reset(proc_reset),
    .io_start(proc_io_start),
    .io_packet_header_0(proc_io_packet_header_0),
    .io_packet_header_1(proc_io_packet_header_1),
    .io_packet_header_2(proc_io_packet_header_2),
    .io_packet_header_3(proc_io_packet_header_3),
    .io_packet_header_4(proc_io_packet_header_4),
    .io_packet_header_5(proc_io_packet_header_5),
    .io_packet_header_6(proc_io_packet_header_6),
    .io_packet_header_7(proc_io_packet_header_7),
    .io_packet_header_8(proc_io_packet_header_8),
    .io_packet_header_9(proc_io_packet_header_9),
    .io_packet_header_10(proc_io_packet_header_10),
    .io_packet_header_11(proc_io_packet_header_11),
    .io_packet_header_12(proc_io_packet_header_12),
    .io_packet_header_13(proc_io_packet_header_13),
    .io_packet_header_14(proc_io_packet_header_14),
    .io_packet_header_15(proc_io_packet_header_15),
    .io_packet_header_16(proc_io_packet_header_16),
    .io_packet_header_17(proc_io_packet_header_17),
    .io_packet_header_18(proc_io_packet_header_18),
    .io_packet_header_19(proc_io_packet_header_19),
    .io_packet_header_20(proc_io_packet_header_20),
    .io_packet_header_21(proc_io_packet_header_21),
    .io_packet_header_22(proc_io_packet_header_22),
    .io_packet_header_23(proc_io_packet_header_23),
    .io_packet_header_24(proc_io_packet_header_24),
    .io_packet_header_25(proc_io_packet_header_25),
    .io_packet_header_26(proc_io_packet_header_26),
    .io_packet_header_27(proc_io_packet_header_27),
    .io_packet_header_28(proc_io_packet_header_28),
    .io_packet_header_29(proc_io_packet_header_29),
    .io_packet_header_30(proc_io_packet_header_30),
    .io_packet_header_31(proc_io_packet_header_31),
    .io_packet_header_32(proc_io_packet_header_32),
    .io_packet_header_33(proc_io_packet_header_33),
    .io_packet_header_34(proc_io_packet_header_34),
    .io_packet_header_35(proc_io_packet_header_35),
    .io_packet_header_36(proc_io_packet_header_36),
    .io_packet_header_37(proc_io_packet_header_37),
    .io_packet_header_38(proc_io_packet_header_38),
    .io_packet_header_39(proc_io_packet_header_39),
    .io_packet_header_40(proc_io_packet_header_40),
    .io_packet_header_41(proc_io_packet_header_41),
    .io_packet_header_42(proc_io_packet_header_42),
    .io_packet_header_43(proc_io_packet_header_43),
    .io_packet_header_44(proc_io_packet_header_44),
    .io_packet_header_45(proc_io_packet_header_45),
    .io_packet_header_46(proc_io_packet_header_46),
    .io_packet_header_47(proc_io_packet_header_47),
    .io_packet_header_48(proc_io_packet_header_48),
    .io_packet_header_49(proc_io_packet_header_49),
    .io_packet_header_50(proc_io_packet_header_50),
    .io_packet_header_51(proc_io_packet_header_51),
    .io_packet_header_52(proc_io_packet_header_52),
    .io_packet_header_53(proc_io_packet_header_53),
    .io_packet_header_54(proc_io_packet_header_54),
    .io_packet_header_55(proc_io_packet_header_55),
    .io_packet_header_56(proc_io_packet_header_56),
    .io_packet_header_57(proc_io_packet_header_57),
    .io_packet_header_58(proc_io_packet_header_58),
    .io_packet_header_59(proc_io_packet_header_59),
    .io_packet_header_60(proc_io_packet_header_60),
    .io_packet_header_61(proc_io_packet_header_61),
    .io_packet_header_62(proc_io_packet_header_62),
    .io_packet_header_63(proc_io_packet_header_63),
    .io_mem_addr(proc_io_mem_addr),
    .io_mem_rdata(proc_io_mem_rdata),
    .io_ready(proc_io_ready),
    .io_mod_start(proc_io_mod_start),
    .io_mod_hit_action_addr(proc_io_mod_hit_action_addr),
    .io_mod_miss_action_addr(proc_io_mod_miss_action_addr),
    .io_mod_ps_mod_start(proc_io_mod_ps_mod_start),
    .io_mod_ps_mod_header_id(proc_io_mod_ps_mod_header_id),
    .io_mod_ps_mod_header_length(proc_io_mod_ps_mod_header_length),
    .io_mod_ps_mod_next_tag_start(proc_io_mod_ps_mod_next_tag_start),
    .io_mod_ps_mod_next_table_0(proc_io_mod_ps_mod_next_table_0),
    .io_mod_ps_mod_next_table_1(proc_io_mod_ps_mod_next_table_1),
    .io_mod_mt_mod_start(proc_io_mod_mt_mod_start),
    .io_mod_mt_mod_header_id(proc_io_mod_mt_mod_header_id),
    .io_mod_mt_mod_key_off(proc_io_mod_mt_mod_key_off),
    .io_mod_mt_mod_key_len(proc_io_mod_mt_mod_key_len),
    .io_mod_mt_mod_val_len(proc_io_mod_mt_mod_val_len),
    .io_mod_ex_mod_start(proc_io_mod_ex_mod_start),
    .io_mod_ex_mod_ops_0(proc_io_mod_ex_mod_ops_0),
    .io_mod_ex_mod_ops_1(proc_io_mod_ex_mod_ops_1),
    .io_mod_ex_mod_ops_2(proc_io_mod_ex_mod_ops_2),
    .io_mod_ex_mod_ops_3(proc_io_mod_ex_mod_ops_3),
    .io_mod_ex_mod_ops_4(proc_io_mod_ex_mod_ops_4),
    .io_mod_ex_mod_ops_5(proc_io_mod_ex_mod_ops_5),
    .io_mod_ex_mod_ops_6(proc_io_mod_ex_mod_ops_6),
    .io_mod_ex_mod_ops_7(proc_io_mod_ex_mod_ops_7),
    .io_mod_ex_mod_ops_8(proc_io_mod_ex_mod_ops_8),
    .io_mod_ex_mod_ops_9(proc_io_mod_ex_mod_ops_9),
    .io_mod_ex_mod_ops_10(proc_io_mod_ex_mod_ops_10),
    .io_mod_ex_mod_ops_11(proc_io_mod_ex_mod_ops_11),
    .io_mod_ex_mod_ops_12(proc_io_mod_ex_mod_ops_12),
    .io_mod_ex_mod_ops_13(proc_io_mod_ex_mod_ops_13),
    .io_mod_ex_mod_ops_14(proc_io_mod_ex_mod_ops_14),
    .io_mod_ex_mod_ops_15(proc_io_mod_ex_mod_ops_15)
  );
  assign io_mem_addr = proc_io_mem_addr; // @[processor_controller.scala 45:27]
  assign io_ready = ~processing; // @[processor_controller.scala 28:17]
  assign io_next_en = packet_header_1[0]; // @[processor_controller.scala 53:39]
  assign io_next_header_0 = packet_header_0; // @[processor_controller.scala 55:20]
  assign io_next_header_1 = packet_header_1; // @[processor_controller.scala 55:20]
  assign io_next_header_2 = packet_header_2; // @[processor_controller.scala 55:20]
  assign io_next_header_3 = packet_header_3; // @[processor_controller.scala 55:20]
  assign io_next_header_4 = packet_header_4; // @[processor_controller.scala 55:20]
  assign io_next_header_5 = packet_header_5; // @[processor_controller.scala 55:20]
  assign io_next_header_6 = packet_header_6; // @[processor_controller.scala 55:20]
  assign io_next_header_7 = packet_header_7; // @[processor_controller.scala 55:20]
  assign io_next_header_8 = packet_header_8; // @[processor_controller.scala 55:20]
  assign io_next_header_9 = packet_header_9; // @[processor_controller.scala 55:20]
  assign io_next_header_10 = packet_header_10; // @[processor_controller.scala 55:20]
  assign io_next_header_11 = packet_header_11; // @[processor_controller.scala 55:20]
  assign io_next_header_12 = packet_header_12; // @[processor_controller.scala 55:20]
  assign io_next_header_13 = packet_header_13; // @[processor_controller.scala 55:20]
  assign io_next_header_14 = packet_header_14; // @[processor_controller.scala 55:20]
  assign io_next_header_15 = packet_header_15; // @[processor_controller.scala 55:20]
  assign io_next_header_16 = packet_header_16; // @[processor_controller.scala 55:20]
  assign io_next_header_17 = packet_header_17; // @[processor_controller.scala 55:20]
  assign io_next_header_18 = packet_header_18; // @[processor_controller.scala 55:20]
  assign io_next_header_19 = packet_header_19; // @[processor_controller.scala 55:20]
  assign io_next_header_20 = packet_header_20; // @[processor_controller.scala 55:20]
  assign io_next_header_21 = packet_header_21; // @[processor_controller.scala 55:20]
  assign io_next_header_22 = packet_header_22; // @[processor_controller.scala 55:20]
  assign io_next_header_23 = packet_header_23; // @[processor_controller.scala 55:20]
  assign io_next_header_24 = packet_header_24; // @[processor_controller.scala 55:20]
  assign io_next_header_25 = packet_header_25; // @[processor_controller.scala 55:20]
  assign io_next_header_26 = packet_header_26; // @[processor_controller.scala 55:20]
  assign io_next_header_27 = packet_header_27; // @[processor_controller.scala 55:20]
  assign io_next_header_28 = packet_header_28; // @[processor_controller.scala 55:20]
  assign io_next_header_29 = packet_header_29; // @[processor_controller.scala 55:20]
  assign io_next_header_30 = packet_header_30; // @[processor_controller.scala 55:20]
  assign io_next_header_31 = packet_header_31; // @[processor_controller.scala 55:20]
  assign io_next_header_32 = packet_header_32; // @[processor_controller.scala 55:20]
  assign io_next_header_33 = packet_header_33; // @[processor_controller.scala 55:20]
  assign io_next_header_34 = packet_header_34; // @[processor_controller.scala 55:20]
  assign io_next_header_35 = packet_header_35; // @[processor_controller.scala 55:20]
  assign io_next_header_36 = packet_header_36; // @[processor_controller.scala 55:20]
  assign io_next_header_37 = packet_header_37; // @[processor_controller.scala 55:20]
  assign io_next_header_38 = packet_header_38; // @[processor_controller.scala 55:20]
  assign io_next_header_39 = packet_header_39; // @[processor_controller.scala 55:20]
  assign io_next_header_40 = packet_header_40; // @[processor_controller.scala 55:20]
  assign io_next_header_41 = packet_header_41; // @[processor_controller.scala 55:20]
  assign io_next_header_42 = packet_header_42; // @[processor_controller.scala 55:20]
  assign io_next_header_43 = packet_header_43; // @[processor_controller.scala 55:20]
  assign io_next_header_44 = packet_header_44; // @[processor_controller.scala 55:20]
  assign io_next_header_45 = packet_header_45; // @[processor_controller.scala 55:20]
  assign io_next_header_46 = packet_header_46; // @[processor_controller.scala 55:20]
  assign io_next_header_47 = packet_header_47; // @[processor_controller.scala 55:20]
  assign io_next_header_48 = packet_header_48; // @[processor_controller.scala 55:20]
  assign io_next_header_49 = packet_header_49; // @[processor_controller.scala 55:20]
  assign io_next_header_50 = packet_header_50; // @[processor_controller.scala 55:20]
  assign io_next_header_51 = packet_header_51; // @[processor_controller.scala 55:20]
  assign io_next_header_52 = packet_header_52; // @[processor_controller.scala 55:20]
  assign io_next_header_53 = packet_header_53; // @[processor_controller.scala 55:20]
  assign io_next_header_54 = packet_header_54; // @[processor_controller.scala 55:20]
  assign io_next_header_55 = packet_header_55; // @[processor_controller.scala 55:20]
  assign io_next_header_56 = packet_header_56; // @[processor_controller.scala 55:20]
  assign io_next_header_57 = packet_header_57; // @[processor_controller.scala 55:20]
  assign io_next_header_58 = packet_header_58; // @[processor_controller.scala 55:20]
  assign io_next_header_59 = packet_header_59; // @[processor_controller.scala 55:20]
  assign io_next_header_60 = packet_header_60; // @[processor_controller.scala 55:20]
  assign io_next_header_61 = packet_header_61; // @[processor_controller.scala 55:20]
  assign io_next_header_62 = packet_header_62; // @[processor_controller.scala 55:20]
  assign io_next_header_63 = packet_header_63; // @[processor_controller.scala 55:20]
  assign io_next_proc = packet_header_0[2:0]; // @[processor_controller.scala 54:37]
  assign proc_clock = clock;
  assign proc_reset = reset;
  assign proc_io_start = updated & ~processing; // @[processor_controller.scala 26:25]
  assign proc_io_packet_header_0 = packet_header_0; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_1 = packet_header_1; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_2 = packet_header_2; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_3 = packet_header_3; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_4 = packet_header_4; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_5 = packet_header_5; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_6 = packet_header_6; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_7 = packet_header_7; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_8 = packet_header_8; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_9 = packet_header_9; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_10 = packet_header_10; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_11 = packet_header_11; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_12 = packet_header_12; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_13 = packet_header_13; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_14 = packet_header_14; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_15 = packet_header_15; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_16 = packet_header_16; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_17 = packet_header_17; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_18 = packet_header_18; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_19 = packet_header_19; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_20 = packet_header_20; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_21 = packet_header_21; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_22 = packet_header_22; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_23 = packet_header_23; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_24 = packet_header_24; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_25 = packet_header_25; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_26 = packet_header_26; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_27 = packet_header_27; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_28 = packet_header_28; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_29 = packet_header_29; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_30 = packet_header_30; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_31 = packet_header_31; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_32 = packet_header_32; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_33 = packet_header_33; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_34 = packet_header_34; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_35 = packet_header_35; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_36 = packet_header_36; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_37 = packet_header_37; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_38 = packet_header_38; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_39 = packet_header_39; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_40 = packet_header_40; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_41 = packet_header_41; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_42 = packet_header_42; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_43 = packet_header_43; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_44 = packet_header_44; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_45 = packet_header_45; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_46 = packet_header_46; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_47 = packet_header_47; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_48 = packet_header_48; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_49 = packet_header_49; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_50 = packet_header_50; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_51 = packet_header_51; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_52 = packet_header_52; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_53 = packet_header_53; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_54 = packet_header_54; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_55 = packet_header_55; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_56 = packet_header_56; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_57 = packet_header_57; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_58 = packet_header_58; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_59 = packet_header_59; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_60 = packet_header_60; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_61 = packet_header_61; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_62 = packet_header_62; // @[processor_controller.scala 44:27]
  assign proc_io_packet_header_63 = packet_header_63; // @[processor_controller.scala 44:27]
  assign proc_io_mem_rdata = io_mem_rdata; // @[processor_controller.scala 45:27]
  assign proc_io_mod_start = io_mod_start; // @[processor_controller.scala 46:27]
  assign proc_io_mod_hit_action_addr = io_mod_hit_action_addr; // @[processor_controller.scala 46:27]
  assign proc_io_mod_miss_action_addr = io_mod_miss_action_addr; // @[processor_controller.scala 46:27]
  assign proc_io_mod_ps_mod_start = io_mod_ps_mod_start; // @[processor_controller.scala 46:27]
  assign proc_io_mod_ps_mod_header_id = io_mod_ps_mod_header_id; // @[processor_controller.scala 46:27]
  assign proc_io_mod_ps_mod_header_length = io_mod_ps_mod_header_length; // @[processor_controller.scala 46:27]
  assign proc_io_mod_ps_mod_next_tag_start = io_mod_ps_mod_next_tag_start; // @[processor_controller.scala 46:27]
  assign proc_io_mod_ps_mod_next_table_0 = io_mod_ps_mod_next_table_0; // @[processor_controller.scala 46:27]
  assign proc_io_mod_ps_mod_next_table_1 = io_mod_ps_mod_next_table_1; // @[processor_controller.scala 46:27]
  assign proc_io_mod_mt_mod_start = io_mod_mt_mod_start; // @[processor_controller.scala 46:27]
  assign proc_io_mod_mt_mod_header_id = io_mod_mt_mod_header_id; // @[processor_controller.scala 46:27]
  assign proc_io_mod_mt_mod_key_off = io_mod_mt_mod_key_off; // @[processor_controller.scala 46:27]
  assign proc_io_mod_mt_mod_key_len = io_mod_mt_mod_key_len; // @[processor_controller.scala 46:27]
  assign proc_io_mod_mt_mod_val_len = io_mod_mt_mod_val_len; // @[processor_controller.scala 46:27]
  assign proc_io_mod_ex_mod_start = io_mod_ex_mod_start; // @[processor_controller.scala 46:27]
  assign proc_io_mod_ex_mod_ops_0 = io_mod_ex_mod_ops_0; // @[processor_controller.scala 46:27]
  assign proc_io_mod_ex_mod_ops_1 = io_mod_ex_mod_ops_1; // @[processor_controller.scala 46:27]
  assign proc_io_mod_ex_mod_ops_2 = io_mod_ex_mod_ops_2; // @[processor_controller.scala 46:27]
  assign proc_io_mod_ex_mod_ops_3 = io_mod_ex_mod_ops_3; // @[processor_controller.scala 46:27]
  assign proc_io_mod_ex_mod_ops_4 = io_mod_ex_mod_ops_4; // @[processor_controller.scala 46:27]
  assign proc_io_mod_ex_mod_ops_5 = io_mod_ex_mod_ops_5; // @[processor_controller.scala 46:27]
  assign proc_io_mod_ex_mod_ops_6 = io_mod_ex_mod_ops_6; // @[processor_controller.scala 46:27]
  assign proc_io_mod_ex_mod_ops_7 = io_mod_ex_mod_ops_7; // @[processor_controller.scala 46:27]
  assign proc_io_mod_ex_mod_ops_8 = io_mod_ex_mod_ops_8; // @[processor_controller.scala 46:27]
  assign proc_io_mod_ex_mod_ops_9 = io_mod_ex_mod_ops_9; // @[processor_controller.scala 46:27]
  assign proc_io_mod_ex_mod_ops_10 = io_mod_ex_mod_ops_10; // @[processor_controller.scala 46:27]
  assign proc_io_mod_ex_mod_ops_11 = io_mod_ex_mod_ops_11; // @[processor_controller.scala 46:27]
  assign proc_io_mod_ex_mod_ops_12 = io_mod_ex_mod_ops_12; // @[processor_controller.scala 46:27]
  assign proc_io_mod_ex_mod_ops_13 = io_mod_ex_mod_ops_13; // @[processor_controller.scala 46:27]
  assign proc_io_mod_ex_mod_ops_14 = io_mod_ex_mod_ops_14; // @[processor_controller.scala 46:27]
  assign proc_io_mod_ex_mod_ops_15 = io_mod_ex_mod_ops_15; // @[processor_controller.scala 46:27]
  always @(posedge clock) begin
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_0 <= io_packet_header_0; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_1 <= io_packet_header_1; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_2 <= io_packet_header_2; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_3 <= io_packet_header_3; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_4 <= io_packet_header_4; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_5 <= io_packet_header_5; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_6 <= io_packet_header_6; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_7 <= io_packet_header_7; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_8 <= io_packet_header_8; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_9 <= io_packet_header_9; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_10 <= io_packet_header_10; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_11 <= io_packet_header_11; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_12 <= io_packet_header_12; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_13 <= io_packet_header_13; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_14 <= io_packet_header_14; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_15 <= io_packet_header_15; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_16 <= io_packet_header_16; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_17 <= io_packet_header_17; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_18 <= io_packet_header_18; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_19 <= io_packet_header_19; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_20 <= io_packet_header_20; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_21 <= io_packet_header_21; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_22 <= io_packet_header_22; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_23 <= io_packet_header_23; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_24 <= io_packet_header_24; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_25 <= io_packet_header_25; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_26 <= io_packet_header_26; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_27 <= io_packet_header_27; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_28 <= io_packet_header_28; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_29 <= io_packet_header_29; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_30 <= io_packet_header_30; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_31 <= io_packet_header_31; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_32 <= io_packet_header_32; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_33 <= io_packet_header_33; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_34 <= io_packet_header_34; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_35 <= io_packet_header_35; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_36 <= io_packet_header_36; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_37 <= io_packet_header_37; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_38 <= io_packet_header_38; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_39 <= io_packet_header_39; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_40 <= io_packet_header_40; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_41 <= io_packet_header_41; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_42 <= io_packet_header_42; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_43 <= io_packet_header_43; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_44 <= io_packet_header_44; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_45 <= io_packet_header_45; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_46 <= io_packet_header_46; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_47 <= io_packet_header_47; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_48 <= io_packet_header_48; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_49 <= io_packet_header_49; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_50 <= io_packet_header_50; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_51 <= io_packet_header_51; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_52 <= io_packet_header_52; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_53 <= io_packet_header_53; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_54 <= io_packet_header_54; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_55 <= io_packet_header_55; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_56 <= io_packet_header_56; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_57 <= io_packet_header_57; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_58 <= io_packet_header_58; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_59 <= io_packet_header_59; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_60 <= io_packet_header_60; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_61 <= io_packet_header_61; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_62 <= io_packet_header_62; // @[processor_controller.scala 33:30]
    end
    if (io_update) begin // @[processor_controller.scala 30:22]
      packet_header_63 <= io_packet_header_63; // @[processor_controller.scala 33:30]
    end
    if (reset) begin // @[processor_controller.scala 23:26]
      updated <= 1'h0; // @[processor_controller.scala 23:26]
    end else if (start) begin // @[processor_controller.scala 37:18]
      updated <= 1'h0; // @[processor_controller.scala 39:20]
    end else begin
      updated <= _GEN_0;
    end
    if (reset) begin // @[processor_controller.scala 24:29]
      processing <= 1'h0; // @[processor_controller.scala 24:29]
    end else if (proc_io_ready & io_end) begin // @[processor_controller.scala 48:36]
      processing <= 1'h0; // @[processor_controller.scala 49:20]
    end else begin
      processing <= _GEN_65;
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
  packet_header_0 = _RAND_0[7:0];
  _RAND_1 = {1{`RANDOM}};
  packet_header_1 = _RAND_1[7:0];
  _RAND_2 = {1{`RANDOM}};
  packet_header_2 = _RAND_2[7:0];
  _RAND_3 = {1{`RANDOM}};
  packet_header_3 = _RAND_3[7:0];
  _RAND_4 = {1{`RANDOM}};
  packet_header_4 = _RAND_4[7:0];
  _RAND_5 = {1{`RANDOM}};
  packet_header_5 = _RAND_5[7:0];
  _RAND_6 = {1{`RANDOM}};
  packet_header_6 = _RAND_6[7:0];
  _RAND_7 = {1{`RANDOM}};
  packet_header_7 = _RAND_7[7:0];
  _RAND_8 = {1{`RANDOM}};
  packet_header_8 = _RAND_8[7:0];
  _RAND_9 = {1{`RANDOM}};
  packet_header_9 = _RAND_9[7:0];
  _RAND_10 = {1{`RANDOM}};
  packet_header_10 = _RAND_10[7:0];
  _RAND_11 = {1{`RANDOM}};
  packet_header_11 = _RAND_11[7:0];
  _RAND_12 = {1{`RANDOM}};
  packet_header_12 = _RAND_12[7:0];
  _RAND_13 = {1{`RANDOM}};
  packet_header_13 = _RAND_13[7:0];
  _RAND_14 = {1{`RANDOM}};
  packet_header_14 = _RAND_14[7:0];
  _RAND_15 = {1{`RANDOM}};
  packet_header_15 = _RAND_15[7:0];
  _RAND_16 = {1{`RANDOM}};
  packet_header_16 = _RAND_16[7:0];
  _RAND_17 = {1{`RANDOM}};
  packet_header_17 = _RAND_17[7:0];
  _RAND_18 = {1{`RANDOM}};
  packet_header_18 = _RAND_18[7:0];
  _RAND_19 = {1{`RANDOM}};
  packet_header_19 = _RAND_19[7:0];
  _RAND_20 = {1{`RANDOM}};
  packet_header_20 = _RAND_20[7:0];
  _RAND_21 = {1{`RANDOM}};
  packet_header_21 = _RAND_21[7:0];
  _RAND_22 = {1{`RANDOM}};
  packet_header_22 = _RAND_22[7:0];
  _RAND_23 = {1{`RANDOM}};
  packet_header_23 = _RAND_23[7:0];
  _RAND_24 = {1{`RANDOM}};
  packet_header_24 = _RAND_24[7:0];
  _RAND_25 = {1{`RANDOM}};
  packet_header_25 = _RAND_25[7:0];
  _RAND_26 = {1{`RANDOM}};
  packet_header_26 = _RAND_26[7:0];
  _RAND_27 = {1{`RANDOM}};
  packet_header_27 = _RAND_27[7:0];
  _RAND_28 = {1{`RANDOM}};
  packet_header_28 = _RAND_28[7:0];
  _RAND_29 = {1{`RANDOM}};
  packet_header_29 = _RAND_29[7:0];
  _RAND_30 = {1{`RANDOM}};
  packet_header_30 = _RAND_30[7:0];
  _RAND_31 = {1{`RANDOM}};
  packet_header_31 = _RAND_31[7:0];
  _RAND_32 = {1{`RANDOM}};
  packet_header_32 = _RAND_32[7:0];
  _RAND_33 = {1{`RANDOM}};
  packet_header_33 = _RAND_33[7:0];
  _RAND_34 = {1{`RANDOM}};
  packet_header_34 = _RAND_34[7:0];
  _RAND_35 = {1{`RANDOM}};
  packet_header_35 = _RAND_35[7:0];
  _RAND_36 = {1{`RANDOM}};
  packet_header_36 = _RAND_36[7:0];
  _RAND_37 = {1{`RANDOM}};
  packet_header_37 = _RAND_37[7:0];
  _RAND_38 = {1{`RANDOM}};
  packet_header_38 = _RAND_38[7:0];
  _RAND_39 = {1{`RANDOM}};
  packet_header_39 = _RAND_39[7:0];
  _RAND_40 = {1{`RANDOM}};
  packet_header_40 = _RAND_40[7:0];
  _RAND_41 = {1{`RANDOM}};
  packet_header_41 = _RAND_41[7:0];
  _RAND_42 = {1{`RANDOM}};
  packet_header_42 = _RAND_42[7:0];
  _RAND_43 = {1{`RANDOM}};
  packet_header_43 = _RAND_43[7:0];
  _RAND_44 = {1{`RANDOM}};
  packet_header_44 = _RAND_44[7:0];
  _RAND_45 = {1{`RANDOM}};
  packet_header_45 = _RAND_45[7:0];
  _RAND_46 = {1{`RANDOM}};
  packet_header_46 = _RAND_46[7:0];
  _RAND_47 = {1{`RANDOM}};
  packet_header_47 = _RAND_47[7:0];
  _RAND_48 = {1{`RANDOM}};
  packet_header_48 = _RAND_48[7:0];
  _RAND_49 = {1{`RANDOM}};
  packet_header_49 = _RAND_49[7:0];
  _RAND_50 = {1{`RANDOM}};
  packet_header_50 = _RAND_50[7:0];
  _RAND_51 = {1{`RANDOM}};
  packet_header_51 = _RAND_51[7:0];
  _RAND_52 = {1{`RANDOM}};
  packet_header_52 = _RAND_52[7:0];
  _RAND_53 = {1{`RANDOM}};
  packet_header_53 = _RAND_53[7:0];
  _RAND_54 = {1{`RANDOM}};
  packet_header_54 = _RAND_54[7:0];
  _RAND_55 = {1{`RANDOM}};
  packet_header_55 = _RAND_55[7:0];
  _RAND_56 = {1{`RANDOM}};
  packet_header_56 = _RAND_56[7:0];
  _RAND_57 = {1{`RANDOM}};
  packet_header_57 = _RAND_57[7:0];
  _RAND_58 = {1{`RANDOM}};
  packet_header_58 = _RAND_58[7:0];
  _RAND_59 = {1{`RANDOM}};
  packet_header_59 = _RAND_59[7:0];
  _RAND_60 = {1{`RANDOM}};
  packet_header_60 = _RAND_60[7:0];
  _RAND_61 = {1{`RANDOM}};
  packet_header_61 = _RAND_61[7:0];
  _RAND_62 = {1{`RANDOM}};
  packet_header_62 = _RAND_62[7:0];
  _RAND_63 = {1{`RANDOM}};
  packet_header_63 = _RAND_63[7:0];
  _RAND_64 = {1{`RANDOM}};
  updated = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  processing = _RAND_65[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule