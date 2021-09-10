module InAXI(
  input           clock,
  input           reset,
  input           io_s_axis_tvalid,
  output          io_s_axis_tready,
  input  [511:0]  io_s_axis_tdata,
  input  [63:0]   io_s_axis_tkeep,
  input           io_s_axis_tlast,
  output          io_ipsa_en_in,
  output [1023:0] io_ipsa_data_in
);
`ifdef RANDOMIZE_REG_INIT
  reg [511:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg [511:0] buf_; // @[inaxi.scala 25:18]
  reg [1:0] status; // @[inaxi.scala 26:25]
  wire [1023:0] _io_ipsa_data_in_T = {io_s_axis_tdata,512'h0}; // @[Cat.scala 30:58]
  wire [1:0] _GEN_0 = io_s_axis_tlast ? 2'h0 : 2'h1; // @[inaxi.scala 32:36 inaxi.scala 33:24 inaxi.scala 37:24]
  wire [1023:0] _GEN_2 = io_s_axis_tlast ? _io_ipsa_data_in_T : 1024'h0; // @[inaxi.scala 32:36 inaxi.scala 35:33 inaxi.scala 23:21]
  wire [1:0] _GEN_4 = io_s_axis_tvalid ? _GEN_0 : status; // @[inaxi.scala 31:33 inaxi.scala 26:25]
  wire  _GEN_5 = io_s_axis_tvalid & io_s_axis_tlast; // @[inaxi.scala 31:33 inaxi.scala 22:19]
  wire [1023:0] _GEN_6 = io_s_axis_tvalid ? _GEN_2 : 1024'h0; // @[inaxi.scala 31:33 inaxi.scala 23:21]
  wire [1:0] _GEN_8 = status == 2'h0 ? _GEN_4 : status; // @[inaxi.scala 30:32 inaxi.scala 26:25]
  wire  _GEN_9 = status == 2'h0 & _GEN_5; // @[inaxi.scala 30:32 inaxi.scala 22:19]
  wire [1023:0] _GEN_10 = status == 2'h0 ? _GEN_6 : 1024'h0; // @[inaxi.scala 30:32 inaxi.scala 23:21]
  wire [1:0] _GEN_12 = io_s_axis_tlast ? 2'h0 : 2'h2; // @[inaxi.scala 44:36 inaxi.scala 45:24 inaxi.scala 47:24]
  wire [1023:0] _io_ipsa_data_in_T_1 = {buf_,io_s_axis_tdata}; // @[Cat.scala 30:58]
  wire [1:0] _GEN_13 = io_s_axis_tvalid ? _GEN_12 : _GEN_8; // @[inaxi.scala 43:33]
  wire  _GEN_14 = io_s_axis_tvalid | _GEN_9; // @[inaxi.scala 43:33 inaxi.scala 49:27]
  wire [1023:0] _GEN_15 = io_s_axis_tvalid ? _io_ipsa_data_in_T_1 : _GEN_10; // @[inaxi.scala 43:33 inaxi.scala 50:29]
  wire [1:0] _GEN_16 = status == 2'h1 ? _GEN_13 : _GEN_8; // @[inaxi.scala 42:32]
  assign io_s_axis_tready = 1'h1; // @[inaxi.scala 21:22]
  assign io_ipsa_en_in = status == 2'h1 ? _GEN_14 : _GEN_9; // @[inaxi.scala 42:32]
  assign io_ipsa_data_in = status == 2'h1 ? _GEN_15 : _GEN_10; // @[inaxi.scala 42:32]
  always @(posedge clock) begin
    if (status == 2'h0) begin // @[inaxi.scala 30:32]
      if (io_s_axis_tvalid) begin // @[inaxi.scala 31:33]
        if (!(io_s_axis_tlast)) begin // @[inaxi.scala 32:36]
          buf_ <= io_s_axis_tdata; // @[inaxi.scala 38:21]
        end
      end
    end
    if (reset) begin // @[inaxi.scala 26:25]
      status <= 2'h0; // @[inaxi.scala 26:25]
    end else if (status == 2'h2) begin // @[inaxi.scala 53:32]
      if (io_s_axis_tvalid) begin // @[inaxi.scala 54:33]
        if (io_s_axis_tlast) begin // @[inaxi.scala 55:36]
          status <= 2'h0; // @[inaxi.scala 56:24]
        end else begin
          status <= _GEN_16;
        end
      end else begin
        status <= _GEN_16;
      end
    end else begin
      status <= _GEN_16;
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
  status = _RAND_1[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
