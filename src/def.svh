// fixed
`define FIXED

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

`ifdef FIXED

`define NUM_HEADERS 8
`define NEXT_TABLE_SIZE 256

`else

`define NUM_HEADERS 3
`define NEXT_TABLE_SIZE 2

`endif

`define NO_HEADER 32'hffff_ffff
`define NO_NEXT_HEADER 32'hffff_ffff

// axi
`define ID_WIDTH        3
`define NUM_MASTERS     5
`define NUM_SLAVES      4

// proc
`define NUM_PORTS       4

// parser
`define HDR_MAX_LEN     64

// executor
`define OPCODE_NOP              6'b000000
`define OPCODE_CKSUM            6'b000001
`define OPCODE_ADD              6'b000010
`define OPCODE_COPY_FIELD       6'b000011
`define OPCODE_SET_PORT         6'b000100
`define OPCODE_SET_MULTICAST    6'b000101
`define OPCODE_RECIRCULATE      6'b000110

`define MAX_OP_NUM      16
`define MAX_VAL_LEN     16

`define ARGS_FIELD_ID   4'hf

// hash
`define MAX_HASH_LEN    8
`define FLOW_TAG_LEN    2
