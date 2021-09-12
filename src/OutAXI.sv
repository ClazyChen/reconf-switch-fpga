module OutAXI(
  input           clock,
  input           reset,
  output          io_m_axis_tvalid,
  input           io_m_axis_tready,
  output [511:0]  io_m_axis_tdata,
  output [63:0]   io_m_axis_tkeep,
  output          io_m_axis_tlast,
  input           io_ipsa_last_out,
  input           io_ipsa_en_out,
  input  [1023:0] io_ipsa_data_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [511:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [511:0] buf_; // @[outaxi.scala 22:21]
  reg  phase; // @[outaxi.scala 23:24]
  reg  last; // @[outaxi.scala 24:24]
  wire  _T = ~phase; // @[outaxi.scala 32:21]
  wire [511:0] _GEN_2 = ~phase ? io_ipsa_data_out[1023:512] : buf_; // @[outaxi.scala 32:35 outaxi.scala 35:30 outaxi.scala 41:29]
  wire  _GEN_4 = ~phase ? io_ipsa_last_out : last; // @[outaxi.scala 32:35 outaxi.scala 37:18 outaxi.scala 24:24]
  wire  _GEN_5 = ~phase ? 1'h0 : last; // @[outaxi.scala 32:35 outaxi.scala 29:22 outaxi.scala 42:29]
  wire  _GEN_6 = io_m_axis_tready & _T; // @[outaxi.scala 31:29 outaxi.scala 45:15]
  wire  _GEN_10 = io_m_axis_tready & _GEN_4; // @[outaxi.scala 31:29 outaxi.scala 46:14]
  assign io_m_axis_tvalid = 1'h1; // @[outaxi.scala 26:22]
  assign io_m_axis_tdata = io_m_axis_tready ? _GEN_2 : 512'h0; // @[outaxi.scala 31:29 outaxi.scala 27:22]
  assign io_m_axis_tkeep = io_m_axis_tready ? 64'hffffffffffffffff : 64'h0; // @[outaxi.scala 31:29 outaxi.scala 28:22]
  assign io_m_axis_tlast = io_m_axis_tready & _GEN_5; // @[outaxi.scala 31:29 outaxi.scala 29:22]
  always @(posedge clock) begin
    if (io_m_axis_tready) begin // @[outaxi.scala 31:29]
      if (~phase) begin // @[outaxi.scala 32:35]
        buf_ <= io_ipsa_data_out[511:0]; // @[outaxi.scala 36:17]
      end
    end
    if (reset) begin // @[outaxi.scala 23:24]
      phase <= 1'h0; // @[outaxi.scala 23:24]
    end else begin
      phase <= _GEN_6;
    end
    if (reset) begin // @[outaxi.scala 24:24]
      last <= 1'h0; // @[outaxi.scala 24:24]
    end else begin
      last <= _GEN_10;
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
  phase = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  last = _RAND_2[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
