module OutAXI(
  input           clock,
  input           reset,
  output          io_m_axis_tvalid,
  input           io_m_axis_tready,
  output [511:0]  io_m_axis_tdata,
  output [63:0]   io_m_axis_tkeep,
  output          io_m_axis_tlast,
  input           io_ipsa_en_out,
  input  [1023:0] io_ipsa_data_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [1:0] status; // @[outaxi.scala 22:25]
  wire [63:0] _GEN_1 = io_ipsa_en_out ? 64'hffffffffffffffff : 64'h0; // @[outaxi.scala 31:35 outaxi.scala 33:34 outaxi.scala 26:22]
  wire [511:0] _GEN_2 = io_ipsa_en_out ? io_ipsa_data_out[1023:512] : 512'h0; // @[outaxi.scala 31:35 outaxi.scala 34:33 outaxi.scala 25:22]
  wire [1:0] _GEN_4 = io_ipsa_en_out ? 2'h1 : status; // @[outaxi.scala 31:35 outaxi.scala 36:24 outaxi.scala 22:25]
  wire  _GEN_5 = status == 2'h0 & io_ipsa_en_out; // @[outaxi.scala 30:36 outaxi.scala 24:22]
  wire [63:0] _GEN_6 = status == 2'h0 ? _GEN_1 : 64'h0; // @[outaxi.scala 30:36 outaxi.scala 26:22]
  wire [511:0] _GEN_7 = status == 2'h0 ? _GEN_2 : 512'h0; // @[outaxi.scala 30:36 outaxi.scala 25:22]
  wire  _GEN_10 = status == 2'h1 | _GEN_5; // @[outaxi.scala 39:36 outaxi.scala 40:30]
  wire [63:0] _GEN_11 = status == 2'h1 ? 64'hffffffffffffffff : _GEN_6; // @[outaxi.scala 39:36 outaxi.scala 41:30]
  wire [511:0] _GEN_12 = status == 2'h1 ? {{510'd0}, status} : _GEN_7; // @[outaxi.scala 39:36 outaxi.scala 42:30]
  assign io_m_axis_tvalid = io_m_axis_tready & _GEN_10; // @[outaxi.scala 29:29 outaxi.scala 24:22]
  assign io_m_axis_tdata = io_m_axis_tready ? _GEN_12 : 512'h0; // @[outaxi.scala 29:29 outaxi.scala 25:22]
  assign io_m_axis_tkeep = io_m_axis_tready ? _GEN_11 : 64'h0; // @[outaxi.scala 29:29 outaxi.scala 26:22]
  assign io_m_axis_tlast = 1'h0; // @[outaxi.scala 27:22]
  always @(posedge clock) begin
    if (reset) begin // @[outaxi.scala 22:25]
      status <= 2'h0; // @[outaxi.scala 22:25]
    end else if (io_m_axis_tready) begin // @[outaxi.scala 29:29]
      if (status == 2'h1) begin // @[outaxi.scala 39:36]
        status <= 2'h0; // @[outaxi.scala 43:20]
      end else if (status == 2'h0) begin // @[outaxi.scala 30:36]
        status <= _GEN_4;
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
  status = _RAND_0[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
