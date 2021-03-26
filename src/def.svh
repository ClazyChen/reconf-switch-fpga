`define TRUE 1'b1
`define FALSE 1'b0

`define BYTE_WIDTH  8
`define HALF_WIDTH  16
`define WORD_WIDTH  32
`define QUAD_WIDTH  64

`define BYTE_BUS    7:0
`define HALF_BUS    15:0
`define WORD_BUS    31:0
`define QUAD_BUS    63:0

`define ZERO_BYTE   8'h00
`define ZERO_HALF   16'h0000
`define ZERO_WORD   32'h0000_0000
`define ZERO_QUAD   64'h0000_0000_0000_0000

`define DATA_BUS    `WORD_BUS
`define ADDR_BUS    `WORD_BUS
`define ZERO_ADDR   `ZERO_WORD

`define NUM_HEADERS 2
`define NO_HEADER 32'hffff_ffff
`define NEXT_TABLE_SIZE 2
`define NO_NEXT_HEADER 32'hffff_ffff

`define HDR_PARAM       4'hf

// parser
`define NEXT_TAG_VAL    31:16
`define NEXT_HDR_ID     15:0

// executor
`define OPCODE_NOP              6'b000000
`define OPCODE_CKSUM            6'b000001
`define OPCODE_ADD              6'b000010
`define OPCODE_COPY_FIELD       6'b000011
`define OPCODE_SET_PORT         6'b000100
`define OPCODE_SET_MULTICAST    6'b000101
`define OPCODE_RECIRCULATE      6'b000110
