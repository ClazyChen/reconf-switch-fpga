`define TRUE 1'b1
`define FALSE 1'b0

`define SIZE_WIDTH 12

`define HDR_VEC_SIZE 32

`define DATA_WIDTH 32
`define ADDR_WIDTH 32

`define RST_ENABLED `TRUE
`define READ_ENABLED `TRUE

`define ZERO_WORD 32'h0000_0000
`define ZERO_HALF 16'h0000

`define NUM_HEADERS 2
`define NO_HEADER 32'hffff_ffff
`define NEXT_TABLE_SIZE 2
`define NO_NEXT_HEADER 32'hffff_ffff
