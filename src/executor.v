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

    // op add mem signals
    wire add_mem_ce_o;
    reg add_mem_we_o;
    reg [`ADDR_BUS] add_mem_addr_o;
    reg [3:0] add_mem_width_o;
    reg [`DATA_BUS] add_mem_data_o;
    assign add_mem_ce_o = `TRUE;

    // op add state
    reg [`EX_ADD_STATE_BUS] add_state;

    // op copy field state
    reg [`EX_COPY_STATE_BUS] copy_state;

    // mem selector
    reg [`EX_MEM_MUX_BUS] mem_mux;

    // state
    reg [2:0] state;
    reg [63:0] inst;    // instruction (primitive)

    always @(posedge clk) begin
        if (rst == `TRUE) begin
            // output
            exec_done_o <= `FALSE;
            // instruction
            inst_mem_ce_o <= `FALSE;
            inst_mem_addr_o <= `ZERO_WORD;
            // checksum
            cksum_start_o <= `FALSE;
            cksum_field_start_o <= `ZERO_WORD;
            cksum_field_len_o <= `ZERO_WORD;
            cksum_dst_field_start_o <= `ZERO_WORD;
            // op add
            add_mem_we_o <= `FALSE;
            add_mem_addr_o <= `ZERO_WORD;
            add_mem_width_o <= 0;
            add_mem_data_o <= `ZERO_WORD;
            add_state <= `EX_ADD_STATE_FREE;
            // op copy field
            copy_state <= `EX_COPY_STATE_FREE;
            // mem mux
            mem_mux <= `EX_MEM_MUX_INST;
            // state
            state <= `EX_STATE_FREE;
            inst <= {`ZERO_WORD, `ZERO_WORD};
        end else begin
            case (state)
            `EX_STATE_FREE: begin
                if (start_i == `TRUE) begin
                    inst_mem_addr_o <= start_addr_i;
                    inst_mem_ce_o <= `TRUE;
                    state <= `EX_STATE_FETCH_INST1;
                end
            end
            `EX_STATE_FETCH_INST1: begin
                inst[63:32] <= mem_data_i;
                inst_mem_addr_o <= inst_mem_addr_o + 4;
                state <= `EX_STATE_FETCH_INST2;
            end
            `EX_STATE_FETCH_INST2: begin
                inst[31:0] <= mem_data_i;
                inst_mem_addr_o <= inst_mem_addr_o + 4;
                state <= `EX_STATE_EXEC;
            end
            `EX_STATE_EXEC: begin
                case (inst[63:58])
                `OPCODE_NOP: begin
                    // done
                    inst_mem_ce_o <= `FALSE;
                    inst_mem_addr_o <= `ZERO_WORD;
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
                        mem_mux <= `EX_MEM_MUX_INST;
                        state <= `EX_STATE_FETCH_INST1;
                    end
                end
                `OPCODE_ADD: begin
                    case (add_state)
                    `EX_ADD_STATE_FREE: begin
                        mem_mux <= `EX_MEM_MUX_ADD;
                        // load field, TODO
                        add_mem_we_o <= `FALSE;
                        add_mem_addr_o <= 14 + inst[27:22];
                        add_mem_width_o <= inst[19:16];
                        add_mem_data_o <= `ZERO_WORD;

                        add_state <= `EX_ADD_STATE_LOAD;
                    end
                    `EX_ADD_STATE_LOAD: begin
                        // data is ready, store result to memory
                        add_mem_we_o <= `TRUE;
                        add_mem_data_o <= mem_data_i + {{6{inst[57]}}, inst[57:32]};
                        add_state <= `EX_ADD_STATE_STORE;
                    end
                    `EX_ADD_STATE_STORE: begin
                        mem_mux <= `EX_MEM_MUX_INST; 
                        add_state <= `EX_ADD_STATE_FREE;
                        state <= `EX_STATE_FETCH_INST1;
                    end
                    default: begin
                        add_state <= `EX_ADD_STATE_FREE;
                    end
                    endcase
                end
                `OPCODE_COPY_FIELD: begin
                    case (copy_state)
                    `EX_COPY_STATE_FREE: begin
                        mem_mux <= `EX_MEM_MUX_ADD;
                        // load src field, TODO: add header
                        add_mem_we_o <= `FALSE;
                        add_mem_addr_o <= inst[27:22];
                        add_mem_width_o <= inst[19:16];
                        add_mem_data_o <= `ZERO_WORD;

                        copy_state <= `EX_COPY_STATE_LOAD;
                    end
                    `EX_COPY_STATE_LOAD: begin
                        // data is ready, store it to dst field
                        add_mem_we_o <= `TRUE;
                        add_mem_addr_o <= inst[11:6];
                        add_mem_width_o <= inst[5:0];
                        add_mem_data_o <= mem_data_i;

                        copy_state <= `EX_COPY_STATE_STORE;
                    end
                    `EX_COPY_STATE_STORE: begin
                        mem_mux <= `EX_MEM_MUX_INST;
                        copy_state <= `EX_COPY_STATE_FREE;
                        state <= `EX_STATE_FETCH_INST1;
                    end
                    default: begin
                        copy_state <= `EX_COPY_STATE_FREE;
                    end
                    endcase
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

    // mem mux
    always @(*) begin
        if (rst == `TRUE) begin
            mem_ce_o <= `FALSE;
            mem_we_o <= `FALSE;
            mem_addr_o <= `ZERO_WORD;
            mem_width_o <= 0;
            mem_data_o <= `ZERO_WORD;
        end else begin
            case (mem_mux)
            `EX_MEM_MUX_CKSUM: begin
                // checksum
                mem_ce_o <= cksum_mem_ce_o;
                mem_we_o <= cksum_mem_we_o;
                mem_addr_o <= cksum_mem_addr_o;
                mem_width_o <= cksum_mem_width_o;
                mem_data_o <= cksum_mem_data_o;
            end
            `EX_MEM_MUX_ADD: begin
                // add
                mem_ce_o <= add_mem_ce_o;
                mem_we_o <= add_mem_we_o;
                mem_addr_o <= add_mem_addr_o;
                mem_width_o <= add_mem_width_o;
                mem_data_o <= add_mem_data_o;
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