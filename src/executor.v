`include "def.v"

`define STATE_FREE          3'h0
`define STATE_LOAD          3'h1
`define STATE_FETCH_INST1   3'h2
`define STATE_FETCH_INST2   3'h3
`define STATE_EXEC          3'h4
`define STATE_DONE          3'h5

`define OPCODE_NOP              6'b000000
`define OPCODE_CKSUM            6'b000001
`define OPCODE_ADD              6'b000010
`define OPCODE_COPY_FIELD       6'b000011
`define OPCODE_SET_FIELD        6'b000100
`define OPCODE_SET_PORT         6'b000101
`define OPCODE_SET_MULTICAST    6'b000110
`define OPCODE_RECIRCULATE      6'b000111

`define SRAM_MUX_EXEC    1'h0
`define SRAM_MUX_CKSUM   1'h1

module executor (
    input wire clk,
    input wire rst,

    input wire start_i,
    input wire [`ADDR_BUS] start_addr_i,

    // sram
    output reg sram_ce_o,
    output reg sram_we_o,
    output reg [`ADDR_BUS] sram_addr_o,
    output reg [3:0] sram_sel_o,
    output reg [`DATA_BUS] sram_data_o,
    input wire [`DATA_BUS] sram_data_i,

    // done signal
    output reg exec_done_o
);
    // executor sram signals
    reg ex_sram_ce_o;
    reg ex_sram_we_o;
    reg [`ADDR_BUS] ex_sram_addr_o;
    reg [3:0] ex_sram_sel_o;
    reg [`DATA_BUS] ex_sram_data_o;

    // checksum module
    reg cksum_start_o;
    reg [`ADDR_BUS] cksum_field_start_o;
    reg [`DATA_BUS] cksum_field_len_o;
    reg [`ADDR_BUS] cksum_dst_field_start_o;
    wire cksum_ready_i;
    // checksum sram signals
    wire cksum_sram_ce_o;
    wire cksum_sram_we_o;
    wire [`ADDR_BUS] cksum_sram_addr_o;
    wire [3:0] cksum_sram_sel_o;
    wire [`DATA_BUS] cksum_sram_data_o;
    wire [`DATA_BUS] cksum_sram_data_i;
    assign cksum_sram_data_i = sram_data_i;

    // sram selector
    reg sram_mux;

    // state
    reg [2:0] state;
    reg [63:0] inst;    // instruction (primitive)

    always @(posedge clk) begin
        if (rst == `TRUE) begin
            // exec sram
            ex_sram_ce_o <= `FALSE;
            ex_sram_we_o <= `FALSE;
            ex_sram_addr_o <= `ZERO_WORD;
            ex_sram_sel_o <= 4'b0000;
            ex_sram_data_o <= `ZERO_WORD;
            // output
            exec_done_o <= `FALSE;
            // // checksum
            cksum_start_o <= `FALSE;
            cksum_field_start_o <= `ZERO_WORD;
            cksum_field_len_o <= `ZERO_WORD;
            // sram mux
            sram_mux <= `SRAM_MUX_EXEC;
            // state
            state <= `STATE_FREE;
            inst <= {`ZERO_WORD, `ZERO_WORD};
        end else begin
            case (state)
            `STATE_FREE: begin
                if (start_i == `TRUE) begin
                    ex_sram_ce_o <= `TRUE;
                    ex_sram_addr_o <= start_addr_i;
                    state <= `STATE_LOAD;
                end
            end
            `STATE_LOAD: begin
                ex_sram_addr_o <= ex_sram_addr_o + 4;
                state <= `STATE_FETCH_INST1;
            end
            `STATE_FETCH_INST1: begin
                inst[63:32] <= sram_data_i;
                ex_sram_addr_o <= ex_sram_addr_o + 4;
                state <= `STATE_FETCH_INST2;
            end
            `STATE_FETCH_INST2: begin
                inst[31:0] <= sram_data_i;
                ex_sram_addr_o <= ex_sram_addr_o + 4;
                state <= `STATE_EXEC;
            end
            `STATE_EXEC: begin
                case (inst[63:58])
                `OPCODE_NOP: begin
                    // done
                    state <= `STATE_DONE;
                end
                `OPCODE_CKSUM: begin
                    cksum_start_o <= `TRUE;
                    // TODO parse from inst
                    cksum_field_start_o <= 14;
                    cksum_field_len_o <= 20;
                    cksum_dst_field_start_o <= 24;
                    sram_mux <= `SRAM_MUX_CKSUM;
                    if (cksum_ready_i == `TRUE) begin
                        cksum_start_o <= `FALSE;
                        sram_mux <= `SRAM_MUX_EXEC;
                        state <= `STATE_FETCH_INST1;
                    end
                end
                `OPCODE_ADD: begin
                    
                end
                `OPCODE_COPY_FIELD: begin
                    
                end
                `OPCODE_SET_FIELD: begin
                    
                end
                `OPCODE_SET_PORT: begin
                    
                end
                `OPCODE_SET_MULTICAST: begin
                    
                end
                `OPCODE_RECIRCULATE: begin
                    
                end
                default: begin
                    // unknown op code, exit
                    state <= `STATE_DONE;
                end
                endcase
            end
            `STATE_DONE: begin
                exec_done_o <= `TRUE;
                if (start_i == `FALSE) begin
                    state <= `STATE_FREE;
                end
            end
            default: begin
                state <= `STATE_FREE;
            end
            endcase
        end
    end

    always @(*) begin
        case (sram_mux)
        `SRAM_MUX_CKSUM: begin
            // checksum
            sram_ce_o <= cksum_sram_ce_o;
            sram_we_o <= cksum_sram_we_o;
            sram_addr_o <= cksum_sram_addr_o;
            sram_sel_o <= cksum_sram_sel_o;
            sram_data_o <= cksum_sram_data_o;
        end
        default: begin
            // executor
            sram_ce_o <= ex_sram_ce_o;
            sram_we_o <= ex_sram_we_o;
            sram_addr_o <= ex_sram_addr_o;
            sram_sel_o <= ex_sram_sel_o;
            sram_data_o <= ex_sram_data_o;
        end
        endcase
    end

    cksum cksum0(
        .clk(clk),
        .rst(rst),
        .start_i(cksum_start_o),
        .field_start_i(cksum_field_start_o),
        .field_len_i(cksum_field_len_o),
        .dst_field_start_i(cksum_dst_field_start_o),
        // sram
        .sram_ce_o(cksum_sram_ce_o),
        .sram_we_o(cksum_sram_we_o),
        .sram_addr_o(cksum_sram_addr_o),
        .sram_sel_o(cksum_sram_sel_o),
        .sram_data_o(cksum_sram_data_o),
        .sram_data_i(cksum_sram_data_i),
        // output
        .cksum_ready_o(cksum_ready_i)
    );
endmodule