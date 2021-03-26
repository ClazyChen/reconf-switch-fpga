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

// processor
`define PROC_STATE_BUS      2:0
`define PROC_STATE_FREE     3'h0
`define PROC_STATE_PARSER   3'h1
`define PROC_STATE_MATCHER  3'h2
`define PROC_STATE_EXEC     3'h3
`define PROC_STATE_DONE     3'h4

`define PROC_MEM_MUX_BUS        1:0
`define PROC_MEM_MUX_PARSER     2'h0
`define PROC_MEM_MUX_MATCHER    2'h1
`define PROC_MEM_MUX_EXEC       2'h2

// parser
`define NEXT_TAG_VAL    31:16
`define NEXT_HDR_ID     15:0

`define PS_STATE_BUS        1:0
`define PS_STATE_FREE       2'h0
`define PS_STATE_PARSING    2'h1
`define PS_STATE_DONE       2'h2

// matcher
`define MT_STATE_BUS        2:0
`define MT_STATE_FREE       3'h0
`define MT_STATE_LOAD_KEY   3'h1
`define MT_STATE_HASH       3'h2
`define MT_STATE_LOAD_ENTRY 3'h3
`define MT_STATE_CMP        3'h4
`define MT_STATE_DONE       3'h5

// executor
`define EX_STATE_FREE           3'h0
`define EX_STATE_LOAD           3'h1
`define EX_STATE_FETCH_INST1    3'h2
`define EX_STATE_FETCH_INST2    3'h3
`define EX_STATE_EXEC           3'h4
`define EX_STATE_DONE           3'h5

`define EX_ADD_STATE_BUS        1:0
`define EX_ADD_STATE_FREE       2'h0
`define EX_ADD_STATE_LOAD       2'h1
`define EX_ADD_STATE_STORE      2'h2

`define EX_COPY_STATE_BUS       1:0
`define EX_COPY_STATE_FREE      2'h0
`define EX_COPY_STATE_LOAD      2'h1
`define EX_COPY_STATE_STORE     2'h2

`define OPCODE_NOP              6'b000000
`define OPCODE_CKSUM            6'b000001
`define OPCODE_ADD              6'b000010
`define OPCODE_COPY_FIELD       6'b000011
`define OPCODE_SET_PORT         6'b000100
`define OPCODE_SET_MULTICAST    6'b000101
`define OPCODE_RECIRCULATE      6'b000110

`define EX_MEM_MUX_BUS      1:0
`define EX_MEM_MUX_INST     2'h0
`define EX_MEM_MUX_CKSUM    2'h1
`define EX_MEM_MUX_OP       2'h2

// checksum
`define CKSUM_STATE_FREE            3'h0
`define CKSUM_STATE_CLEAR           3'h1
`define CKSUM_STATE_LOAD            3'h2
`define CKSUM_STATE_SUM             3'h3
`define CKSUM_STATE_COMPLEMENT      3'h4
`define CKSUM_STATE_STORE           3'h5
`define CKSUM_STATE_DONE            3'h6

// hash
`define HASH_STATE_BUS      1:0
`define HASH_STATE_FREE     2'h0
`define HASH_STATE_SUM      2'h1
`define HASH_STATE_DONE     2'h2
