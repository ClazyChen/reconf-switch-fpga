`include "def.vh"

module executor (
    input wire clk,
    input wire rst,

    input wire start_i,
    input wire [`ADDR_BUS] start_addr_i,

    // mem
    output reg mem_ce_o,
    output reg mem_we_o,
    output reg [`ADDR_BUS] mem_addr_o,
    output reg [3:0] mem_width_o,
    output reg [`DATA_BUS] mem_data_o,
    input wire [`DATA_BUS] mem_data_i,

    // done signal
    output reg exec_done_o
);

    // executor sram signals
    reg ex_mem_ce_o;
    reg ex_mem_we_o;
    reg [`ADDR_BUS] ex_mem_addr_o;
    reg [3:0] ex_mem_width_o;
    reg [`DATA_BUS] ex_mem_data_o;

    // checksum module
    reg cksum_start_o;
    reg [`ADDR_BUS] cksum_field_start_o;
    reg [`DATA_BUS] cksum_field_len_o;
    reg [`ADDR_BUS] cksum_dst_field_start_o;
    wire cksum_ready_i;
    // checksum sram signals
    wire cksum_mem_ce_o;
    wire cksum_mem_we_o;
    wire [`ADDR_BUS] cksum_mem_addr_o;
    wire [3:0] cksum_mem_width_o;
    wire [`DATA_BUS] cksum_mem_data_o;
    wire [`DATA_BUS] cksum_mem_data_i;
    assign cksum_mem_data_i = mem_data_i;

    // sram selector
    reg mem_mux;

    // state
    reg [2:0] state;
    reg [63:0] inst;    // instruction (primitive)

    always @(posedge clk) begin
        if (rst == `TRUE) begin
            // exec sram
            ex_mem_ce_o <= `FALSE;
            ex_mem_we_o <= `FALSE;
            ex_mem_addr_o <= `ZERO_WORD;
            ex_mem_width_o <= 0;
            ex_mem_data_o <= `ZERO_WORD;
            // output
            exec_done_o <= `FALSE;
            // checksum
            cksum_start_o <= `FALSE;
            cksum_field_start_o <= `ZERO_WORD;
            cksum_field_len_o <= `ZERO_WORD;
            // sram mux
            mem_mux <= `EX_MEM_MUX_EXEC;
            // state
            state <= `EX_STATE_FREE;
            inst <= {`ZERO_WORD, `ZERO_WORD};
        end else begin
            case (state)
            `EX_STATE_FREE: begin
                if (start_i == `TRUE) begin
                    ex_mem_ce_o <= `TRUE;
                    ex_mem_addr_o <= start_addr_i;
                    ex_mem_width_o <= 4;
                    state <= `EX_STATE_LOAD;
                end
            end
            `EX_STATE_LOAD: begin
                ex_mem_addr_o <= ex_mem_addr_o + 4;
                state <= `EX_STATE_FETCH_INST1;
            end
            `EX_STATE_FETCH_INST1: begin
                inst[63:32] <= mem_data_i;
                ex_mem_addr_o <= ex_mem_addr_o + 4;
                state <= `EX_STATE_FETCH_INST2;
            end
            `EX_STATE_FETCH_INST2: begin
                inst[31:0] <= mem_data_i;
                ex_mem_addr_o <= ex_mem_addr_o + 4;
                state <= `EX_STATE_EXEC;
            end
            `EX_STATE_EXEC: begin
                case (inst[63:58])
                `OPCODE_NOP: begin
                    // done
                    ex_mem_width_o <= 0;
                    exec_done_o <= `TRUE;
                    state <= `EX_STATE_DONE;
                end
                `OPCODE_CKSUM: begin
                    cksum_start_o <= `TRUE;
                    // TODO parse from inst
                    cksum_field_start_o <= {26'h0, inst[27:22]} + 14;
                    cksum_field_len_o <= {26'h0, inst[21:16]};
                    cksum_dst_field_start_o <= {26'h0, inst[11:6]} + 14;
                    mem_mux <= `EX_MEM_MUX_CKSUM;
                    if (cksum_ready_i == `TRUE) begin
                        cksum_start_o <= `FALSE;
                        mem_mux <= `EX_MEM_MUX_EXEC;
                        state <= `EX_STATE_FETCH_INST1;
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
                    state <= `EX_STATE_DONE;
                end
                endcase
            end
            `EX_STATE_DONE: begin
                if (start_i == `FALSE) begin
                    state <= `EX_STATE_FREE;
                end
            end
            default: begin
                state <= `EX_STATE_FREE;
            end
            endcase
        end
    end

    always @(*) begin
        case (mem_mux)
        `EX_MEM_MUX_CKSUM: begin
            // checksum
            mem_ce_o <= cksum_mem_ce_o;
            mem_we_o <= cksum_mem_we_o;
            mem_addr_o <= cksum_mem_addr_o;
            mem_width_o <= cksum_mem_width_o;
            mem_data_o <= cksum_mem_data_o;
        end
        default: begin
            // executor
            mem_ce_o <= ex_mem_ce_o;
            mem_we_o <= ex_mem_we_o;
            mem_addr_o <= ex_mem_addr_o;
            mem_width_o <= ex_mem_width_o;
            mem_data_o <= ex_mem_data_o;
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
        .mem_ce_o(cksum_mem_ce_o),
        .mem_we_o(cksum_mem_we_o),
        .mem_addr_o(cksum_mem_addr_o),
        .mem_width_o(cksum_mem_width_o),
        .mem_data_o(cksum_mem_data_o),
        .mem_data_i(cksum_mem_data_i),
        // output
        .cksum_ready_o(cksum_ready_i)
    );
endmodule