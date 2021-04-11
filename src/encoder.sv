module Encoder83(
  input  [7:0] io_input,
  output [2:0] io_output,
  output       io_valid
);
  wire [2:0] _GEN_1 = io_input[1] ? 3'h1 : 3'h0; // @[encoder.scala 14:26 encoder.scala 15:21]
  wire [2:0] _GEN_2 = io_input[2] ? 3'h2 : _GEN_1; // @[encoder.scala 14:26 encoder.scala 15:21]
  wire [2:0] _GEN_3 = io_input[3] ? 3'h3 : _GEN_2; // @[encoder.scala 14:26 encoder.scala 15:21]
  wire [2:0] _GEN_4 = io_input[4] ? 3'h4 : _GEN_3; // @[encoder.scala 14:26 encoder.scala 15:21]
  wire [2:0] _GEN_5 = io_input[5] ? 3'h5 : _GEN_4; // @[encoder.scala 14:26 encoder.scala 15:21]
  wire [2:0] _GEN_6 = io_input[6] ? 3'h6 : _GEN_5; // @[encoder.scala 14:26 encoder.scala 15:21]
  assign io_output = io_input[7] ? 3'h7 : _GEN_6; // @[encoder.scala 14:26 encoder.scala 15:21]
  assign io_valid = |io_input; // @[encoder.scala 19:24]
endmodule