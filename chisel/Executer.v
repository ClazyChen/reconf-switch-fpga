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
  input  [31:0] io_op_start_cnt,
  input  [7:0]  io_args_0,
  input  [7:0]  io_args_1,
  input  [7:0]  io_args_2,
  input  [7:0]  io_args_3,
  input  [7:0]  io_args_4,
  input  [7:0]  io_args_5,
  input  [7:0]  io_args_6,
  input  [7:0]  io_args_7,
  input  [7:0]  io_args_8,
  input  [7:0]  io_args_9,
  input  [7:0]  io_args_10,
  input  [7:0]  io_args_11,
  input  [7:0]  io_args_12,
  input  [7:0]  io_args_13,
  input  [7:0]  io_args_14,
  input  [7:0]  io_args_15,
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
