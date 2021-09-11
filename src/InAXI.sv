module InAXI(
  input           clock,
  input           reset,
  input           io_s_axis_tvalid,
  output          io_s_axis_tready,
  input  [511:0]  io_s_axis_tdata,
  input  [63:0]   io_s_axis_tkeep,
  input           io_s_axis_tlast,
  output          io_ipsa_en_in,
  output          io_ipsa_last_in,
  output [1023:0] io_ipsa_data_in
);
`ifdef RANDOMIZE_REG_INIT
  reg [511:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [511:0] buf_; // @[inaxi.scala 27:18]
  reg  last; // @[inaxi.scala 28:24]
  reg  phase; // @[inaxi.scala 29:24]
  wire  _T = ~phase; // @[inaxi.scala 33:21]
  wire [1023:0] _io_ipsa_data_in_T = {buf_,io_s_axis_tdata}; // @[Cat.scala 30:58]
  wire  _GEN_2 = ~phase ? 1'h0 : last; // @[inaxi.scala 33:35 inaxi.scala 23:19 inaxi.scala 38:29]
  wire [1023:0] _GEN_3 = ~phase ? 1024'h0 : _io_ipsa_data_in_T; // @[inaxi.scala 33:35 inaxi.scala 25:21 inaxi.scala 39:29]
  wire  _GEN_4 = ~phase ? 1'h0 : io_s_axis_tlast; // @[inaxi.scala 33:35 inaxi.scala 24:21 inaxi.scala 40:29]
  wire  _GEN_5 = ~phase ? last : io_s_axis_tlast; // @[inaxi.scala 33:35 inaxi.scala 28:24 inaxi.scala 41:19]
  wire  _GEN_6 = io_s_axis_tvalid & _T; // @[inaxi.scala 32:29 inaxi.scala 45:15]
  wire  _GEN_11 = io_s_axis_tvalid ? _GEN_5 : 1'h1; // @[inaxi.scala 32:29 inaxi.scala 44:15]
  assign io_s_axis_tready = 1'h1; // @[inaxi.scala 22:22]
  assign io_ipsa_en_in = io_s_axis_tvalid & _GEN_2; // @[inaxi.scala 32:29 inaxi.scala 23:19]
  assign io_ipsa_last_in = io_s_axis_tvalid & _GEN_4; // @[inaxi.scala 32:29 inaxi.scala 24:21]
  assign io_ipsa_data_in = io_s_axis_tvalid ? _GEN_3 : 1024'h0; // @[inaxi.scala 32:29 inaxi.scala 25:21]
  always @(posedge clock) begin
    if (io_s_axis_tvalid) begin // @[inaxi.scala 32:29]
      if (~phase) begin // @[inaxi.scala 33:35]
        buf_ <= io_s_axis_tdata; // @[inaxi.scala 35:19]
      end
    end
    last <= reset | _GEN_11; // @[inaxi.scala 28:24 inaxi.scala 28:24]
    if (reset) begin // @[inaxi.scala 29:24]
      phase <= 1'h0; // @[inaxi.scala 29:24]
    end else begin
      phase <= _GEN_6;
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
  _RAND_0 = {16{`RANDOM}};
  buf_ = _RAND_0[511:0];
  _RAND_1 = {1{`RANDOM}};
  last = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  phase = _RAND_2[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
