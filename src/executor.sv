`include "def.svh"

module executor (
    input wire clk,
    input wire rst,
    // input
    input wire start_i,
    input wire [`ADDR_BUS] start_addr_i,
    input wire [`ADDR_BUS] args_start_i,
    input wire [`DATA_BUS] parsed_hdrs_i [`NUM_HEADERS - 1:0],
    // mem
    output reg mem_ce_o,
    output reg mem_we_o,
    output reg [`ADDR_BUS] mem_addr_o,
    output reg [3:0] mem_width_o,
    output reg [`DATA_BUS] mem_data_o,
    input wire [`DATA_BUS] mem_data_i,
    // output
    output reg ready_o
);

    // instruction mem signals
    reg inst_mem_ce_o;
    wire inst_mem_we_o;
    reg [`ADDR_BUS] inst_mem_addr_o;
    wire [3:0] inst_mem_width_o;
    wire [`DATA_BUS] inst_mem_data_o;
    assign inst_mem_we_o = `FALSE;
    assign inst_mem_width_o = 4;
    assign inst_mem_data_o = `ZERO_WORD;

    // checksum module
    reg cksum_start_o;
    reg [`ADDR_BUS] cksum_field_start_o;
    reg [`DATA_BUS] cksum_field_len_o;
    reg [`ADDR_BUS] cksum_dst_field_start_o;
    wire cksum_ready_i;
    // checksum mem signals
    wire cksum_mem_ce_o;
    wire cksum_mem_we_o;
    wire [`ADDR_BUS] cksum_mem_addr_o;
    wire [3:0] cksum_mem_width_o;
    wire [`DATA_BUS] cksum_mem_data_o;

    // op mem signals
    wire op_mem_ce_o;
    reg op_mem_we_o;
    reg [`ADDR_BUS] op_mem_addr_o;
    reg [3:0] op_mem_width_o;
    reg [`DATA_BUS] op_mem_data_o;
    assign op_mem_ce_o = `TRUE;

    // op add state
    enum {
        ADD_STATE_BUS, ADD_STATE_FREE, ADD_STATE_LOAD, ADD_STATE_STORE
    } add_state;

    // op copy field state
    enum {
        COPY_STATE_FREE, COPY_STATE_LOAD, COPY_STATE_STORE
    } copy_state;
    reg [`ADDR_BUS] copy_src_addr;
    reg [`ADDR_BUS] copy_src_end_addr;
    reg [`ADDR_BUS] copy_dst_addr;

    // mem selector
    enum {
        MUX_INST, MUX_CKSUM, MUX_OP
    } mem_mux;

    // reg
    reg [`QUAD_BUS] inst;    // instruction (primitive)

    enum {
        STATE_FREE, STATE_LOAD, STATE_FETCH_INST1, STATE_FETCH_INST2, STATE_EXEC, STATE_DONE
    } state;

    always @(posedge clk) begin
        if (rst == `TRUE) begin
            // output
            ready_o <= `FALSE;
            // instruction
            inst_mem_ce_o <= `FALSE;
            inst_mem_addr_o <= `ZERO_ADDR;
            // checksum
            cksum_start_o <= `FALSE;
            cksum_field_start_o <= `ZERO_ADDR;
            cksum_field_len_o <= `ZERO_WORD;
            cksum_dst_field_start_o <= `ZERO_ADDR;
            // op
            op_mem_we_o <= `FALSE;
            op_mem_addr_o <= `ZERO_ADDR;
            op_mem_width_o <= 0;
            op_mem_data_o <= `ZERO_WORD;
            // op add
            add_state <= ADD_STATE_FREE;
            // op copy field
            copy_state <= COPY_STATE_FREE;
            copy_src_addr <= `ZERO_ADDR;
            copy_src_end_addr <= `ZERO_ADDR;
            copy_dst_addr <= `ZERO_ADDR;
            // mem mux
            mem_mux <= MUX_INST;
            // state
            state <= STATE_FREE;
            inst <= `ZERO_QUAD;
        end else begin
            case (state)
            STATE_FREE: begin
                if (start_i == `TRUE) begin
                    inst_mem_addr_o <= start_addr_i;
                    inst_mem_ce_o <= `TRUE;
                    state <= STATE_FETCH_INST1;
                end
            end
            STATE_FETCH_INST1: begin
                inst[63:32] <= mem_data_i;
                inst_mem_addr_o <= inst_mem_addr_o + 4;
                state <= STATE_FETCH_INST2;
            end
            STATE_FETCH_INST2: begin
                inst[31:0] <= mem_data_i;
                inst_mem_addr_o <= inst_mem_addr_o + 4;
                state <= STATE_EXEC;
            end
            STATE_EXEC: begin
                case (inst[63:58])
                `OPCODE_NOP: begin
                    // done
                    inst_mem_ce_o <= `FALSE;
                    inst_mem_addr_o <= `ZERO_ADDR;
                    ready_o <= `TRUE;
                    state <= STATE_DONE;
                end
                `OPCODE_CKSUM: begin
                    cksum_start_o <= `TRUE;
                    cksum_field_start_o <= parsed_hdrs_i[inst[31:28]] + inst[27:22];
                    cksum_field_len_o <= inst[21:16];
                    cksum_dst_field_start_o <= parsed_hdrs_i[inst[15:12]] + inst[11:6];
                    mem_mux <= MUX_CKSUM;
                    if (cksum_ready_i == `TRUE) begin
                        cksum_start_o <= `FALSE;
                        mem_mux <= MUX_INST;
                        state <= STATE_FETCH_INST1;
                    end
                end
                `OPCODE_ADD: begin
                    case (add_state)
                    ADD_STATE_FREE: begin
                        mem_mux <= MUX_OP;

                        op_mem_we_o <= `FALSE;
                        op_mem_addr_o <= parsed_hdrs_i[inst[31:28]] + inst[27:22];
                        op_mem_width_o <= inst[19:16];
                        op_mem_data_o <= `ZERO_WORD;

                        add_state <= ADD_STATE_LOAD;
                    end
                    ADD_STATE_LOAD: begin
                        // data is ready, store result to memory
                        op_mem_we_o <= `TRUE;
                        op_mem_data_o <= mem_data_i + {{6{inst[57]}}, inst[57:32]};
                        add_state <= ADD_STATE_STORE;
                    end
                    ADD_STATE_STORE: begin
                        mem_mux <= MUX_INST; 
                        add_state <= ADD_STATE_FREE;
                        state <= STATE_FETCH_INST1;
                    end
                    default: begin
                        add_state <= ADD_STATE_FREE;
                    end
                    endcase
                end
                `OPCODE_COPY_FIELD: begin
                    case (copy_state)
                    COPY_STATE_FREE: begin
                        mem_mux <= MUX_OP;

                        if (inst[15:12] == `HDR_PARAM) begin
                            // src is from param
                            copy_src_addr <= args_start_i + inst[11:6];
                            copy_src_end_addr <= args_start_i + inst[11:6] + inst[5:0];
                            op_mem_addr_o <= args_start_i + inst[11:6];
                        end else begin
                            // src is from header
                            copy_src_addr <= parsed_hdrs_i[inst[15:12]] + inst[11:6];
                            copy_src_end_addr <= parsed_hdrs_i[inst[15:12]] + inst[11:6] + inst[5:0];
                            op_mem_addr_o <= parsed_hdrs_i[inst[15:12]] + inst[11:6];
                        end
                        copy_dst_addr <= parsed_hdrs_i[inst[31:28]] + inst[27:22];
                        // load src field
                        op_mem_we_o <= `FALSE;
                        op_mem_width_o <= 1;
                        op_mem_data_o <= `ZERO_WORD;

                        copy_state <= COPY_STATE_LOAD;
                    end
                    COPY_STATE_LOAD: begin
                        // data is ready, store it to dst field
                        copy_src_addr <= copy_src_addr + 1;
                        copy_dst_addr <= copy_dst_addr + 1;

                        op_mem_we_o <= `TRUE;
                        op_mem_addr_o <= copy_dst_addr;
                        op_mem_width_o <= 1;
                        op_mem_data_o <= mem_data_i;

                        copy_state <= COPY_STATE_STORE;
                    end
                    COPY_STATE_STORE: begin
                        if (copy_src_addr == copy_src_end_addr) begin
                            mem_mux <= MUX_INST;
                            copy_state <= COPY_STATE_FREE;
                            state <= STATE_FETCH_INST1;
                        end else begin
                            op_mem_we_o <= `FALSE;
                            op_mem_addr_o <= copy_src_addr;
                            op_mem_width_o <= 1;
                            op_mem_data_o <= `ZERO_WORD;

                            copy_state <= COPY_STATE_LOAD;
                        end
                    end
                    default: begin
                        copy_state <= COPY_STATE_FREE;
                    end
                    endcase
                end
                `OPCODE_SET_PORT: begin
                    
                end
                `OPCODE_SET_MULTICAST: begin
                    
                end
                `OPCODE_RECIRCULATE: begin
                    
                end
                default: begin
                    // unknown op code, exit
                    state <= STATE_DONE;
                end
                endcase
            end
            STATE_DONE: begin
                if (start_i == `FALSE) begin
                    state <= STATE_FREE;
                end
            end
            default: begin
                state <= STATE_FREE;
            end
            endcase
        end
    end

    // mem mux
    always @(*) begin
        if (rst == `TRUE) begin
            mem_ce_o <= `FALSE;
            mem_we_o <= `FALSE;
            mem_addr_o <= `ZERO_ADDR;
            mem_width_o <= 0;
            mem_data_o <= `ZERO_WORD;
        end else begin
            case (mem_mux)
            MUX_CKSUM: begin
                // checksum
                mem_ce_o <= cksum_mem_ce_o;
                mem_we_o <= cksum_mem_we_o;
                mem_addr_o <= cksum_mem_addr_o;
                mem_width_o <= cksum_mem_width_o;
                mem_data_o <= cksum_mem_data_o;
            end
            MUX_OP: begin
                // op running
                mem_ce_o <= op_mem_ce_o;
                mem_we_o <= op_mem_we_o;
                mem_addr_o <= op_mem_addr_o;
                mem_width_o <= op_mem_width_o;
                mem_data_o <= op_mem_data_o;
            end
            default: begin
                // instruction
                mem_ce_o <= inst_mem_ce_o;
                mem_we_o <= inst_mem_we_o;
                mem_addr_o <= inst_mem_addr_o;
                mem_width_o <= inst_mem_width_o;
                mem_data_o <= inst_mem_data_o;
            end
            endcase
        end
    end

    cksum cksum0(
        .clk(clk),
        .rst(rst),
        .start_i(cksum_start_o),
        .field_start_i(cksum_field_start_o),
        .field_len_i(cksum_field_len_o),
        .dst_field_start_i(cksum_dst_field_start_o),
        // mem
        .mem_ce_o(cksum_mem_ce_o),
        .mem_we_o(cksum_mem_we_o),
        .mem_addr_o(cksum_mem_addr_o),
        .mem_width_o(cksum_mem_width_o),
        .mem_data_o(cksum_mem_data_o),
        .mem_data_i(mem_data_i),
        // output
        .cksum_ready_o(cksum_ready_i)
    );
endmodule