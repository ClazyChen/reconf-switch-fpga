`define TRUE 1'b1
`define FALSE 1'b0

`define DATA_BUS 31:0
`define ADDR_BUS 31:0

`define ZERO_WORD 32'h0000_0000
`define ZERO_HALF 16'h0000

`define NUM_HEADERS 2
`define NO_HEADER 32'hffff_ffff
`define NEXT_TABLE_SIZE 2
`define NO_NEXT_HEADER 32'hffff_ffff

// parser
`define NEXT_TAG_VAL    31:16
`define NEXT_HDR_ID     15:0

`define PS_STATE_FREE      2'h0
`define PS_STATE_LOAD      2'h1
`define PS_STATE_PARSING   2'h2
`define PS_STATE_DONE      2'h3

// executor
`define EX_STATE_FREE          3'h0
`define EX_STATE_LOAD          3'h1
`define EX_STATE_FETCH_INST1   3'h2
`define EX_STATE_FETCH_INST2   3'h3
`define EX_STATE_EXEC          3'h4
`define EX_STATE_DONE          3'h5

`define EX_ADD_STATE_START    2'h0
`define EX_ADD_STATE_LOAD     2'h1
`define EX_ADD_STATE_STORE    2'h2

`define OPCODE_NOP              6'b000000
`define OPCODE_CKSUM            6'b000001
`define OPCODE_ADD              6'b000010
`define OPCODE_COPY_FIELD       6'b000011
`define OPCODE_SET_FIELD        6'b000100
`define OPCODE_SET_PORT         6'b000101
`define OPCODE_SET_MULTICAST    6'b000110
`define OPCODE_RECIRCULATE      6'b000111

`define EX_MEM_MUX_EXEC    1'h0
`define EX_MEM_MUX_CKSUM   1'h1

// checksum
`define CKSUM_STATE_FREE          3'h0
`define CKSUM_STATE_CLEAR         3'h1
`define CKSUM_STATE_LOAD          3'h2
`define CKSUM_STATE_SUM           3'h3
`define CKSUM_STATE_COMPLEMENT1   3'h4
`define CKSUM_STATE_COMPLEMENT2   3'h5
`define CKSUM_STATE_STORE         3'h6
`define CKSUM_STATE_DONE          3'h7
