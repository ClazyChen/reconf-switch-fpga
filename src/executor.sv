`include "def.svh"

module executor (
    input wire clk,
    input wire rst,
    // input
    input wire start_i,
    input wire [`BYTE_BUS] pkt_hdr_i [0:`HDR_MAX_LEN - 1],
    input wire [`ADDR_BUS] op_start_cnt_i,
    input wire [`BYTE_BUS] args_i [`MAX_VAL_LEN - 1:0],
    input wire [`DATA_BUS] parsed_hdrs_i [`NUM_HEADERS - 1:0],
    // output
    output reg ready_o,
    output reg [`BYTE_BUS] pkt_hdr_o [0:`HDR_MAX_LEN - 1],
    // mod
    input wire mod_start_i,
    input wire [`QUAD_BUS] mod_ops_i [0:`MAX_OP_NUM - 1]
);

    // exec config
    reg [`QUAD_BUS] ops [0:`MAX_OP_NUM - 1];

    // checksum module
    reg cksum_start_o;
    reg [`ADDR_BUS] cksum_field_start_o;
    reg [`DATA_BUS] cksum_field_len_o;
    wire cksum_ready_i;
    wire [`HALF_BUS] cksum_val_i;

    // op checksum state
    enum {
        CKSUM_STATE_FREE, CKSUM_STATE_ON
    } cksum_state;

    // op add state
    enum {
        ADD_STATE_FREE, ADD_STATE_LOAD, ADD_STATE_STORE
    } add_state;

    // op copy field state
    enum {
        COPY_STATE_FREE, COPY_STATE_LOAD, COPY_STATE_STORE
    } copy_state;
    reg [`ADDR_BUS] copy_src_addr;
    reg [`ADDR_BUS] copy_src_end_addr;
    reg [`ADDR_BUS] copy_dst_addr;

    // reg
    int inst_cnt = 0;
    reg [`QUAD_BUS] inst;    // instruction (primitive)

    enum {
        STATE_FREE, STATE_EXEC
    } state;

    // general op
    wire [5:0] opcode;
    assign opcode = inst[63:58];
    wire [3:0] f1_hdr, f2_hdr;
    wire [5:0] f1_off, f1_len, f2_off, f2_len;
    assign f1_hdr = inst[31:28];
    assign f1_off = inst[27:22];
    assign f1_len = inst[21:16];
    assign f2_hdr = inst[15:12];
    assign f2_off = inst[11:6];
    assign f2_len = inst[5:0];
    wire [`ADDR_BUS] f1_start, f2_start;
    assign f1_start = parsed_hdrs_i[f1_hdr] + f1_off;
    assign f2_start = parsed_hdrs_i[f2_hdr] + f2_off;
    // add op
    wire [`DATA_BUS] add_delta;
    assign add_delta = {{6{inst[57]}}, inst[57:32]};

    always @(posedge clk) begin
        if (rst == `TRUE) begin
            // output
            ready_o <= `FALSE;
            // exec config
            for (int i = 0; i < `MAX_OP_NUM; i++) begin
                ops[i] <= 0;
            end
            // checksum
            cksum_start_o <= `FALSE;
            cksum_field_start_o <= `ZERO_ADDR;
            cksum_field_len_o <= `ZERO_WORD;
            // op add
            add_state <= ADD_STATE_FREE;
            // op copy field
            copy_state <= COPY_STATE_FREE;
            copy_src_addr <= `ZERO_ADDR;
            copy_src_end_addr <= `ZERO_ADDR;
            copy_dst_addr <= `ZERO_ADDR;
            // reg
            inst_cnt <= 0;
            inst <= `ZERO_QUAD;
            for (int i = 0; i < `HDR_MAX_LEN; i++) begin
                pkt_hdr_o[i] <= 0;
            end
            state <= STATE_FREE;
        end else begin
            case (state)
            STATE_FREE: begin
                if (mod_start_i == `TRUE) begin
                    ops <= mod_ops_i;
                end else if (start_i == `TRUE) begin
                    inst <= ops[op_start_cnt_i];
                    inst_cnt <= op_start_cnt_i + 1;
                    pkt_hdr_o <= pkt_hdr_i;
                    state <= STATE_EXEC;
                end
            end
            STATE_EXEC: begin
                case (opcode)
                `OPCODE_NOP: begin
                    // done
                    ready_o <= `TRUE;
                    state <= STATE_FREE;
                end
                `OPCODE_CKSUM: begin
                    case (cksum_state)
                    CKSUM_STATE_FREE: begin
                        cksum_start_o <= `TRUE;
                        cksum_field_start_o <= f1_start;
                        cksum_field_len_o <= f1_len;
                        {pkt_hdr_o[f2_start], pkt_hdr_o[f2_start + 1]} <= 0;
                        cksum_state <= CKSUM_STATE_ON;
                    end
                    CKSUM_STATE_ON: begin
                        cksum_start_o <= `FALSE;
                        if (cksum_ready_i == `TRUE) begin
                            {pkt_hdr_o[f2_start], pkt_hdr_o[f2_start + 1]} <= cksum_val_i;
                            inst <= ops[inst_cnt];
                            inst_cnt <= inst_cnt + 1;
                            cksum_state <= CKSUM_STATE_FREE;
                        end
                    end
                    endcase
                end
                `OPCODE_ADD: begin
                    pkt_hdr_o[f1_start] += add_delta;
                    inst <= ops[inst_cnt];
                    inst_cnt <= inst_cnt + 1;
                end
                `OPCODE_COPY_FIELD: begin
                    if (f2_hdr == `HDR_PARAM) begin
                        for (int i = 0; i < f1_len; i++) begin
                            pkt_hdr_o[f1_start + i] <= args_i[f2_off + i];
                        end
                    end else begin
                        for (int i = 0; i < f1_len; i++) begin
                            pkt_hdr_o[f1_start + i] <= pkt_hdr_o[f2_start + i];
                        end
                    end
                    inst <= ops[inst_cnt];
                    inst_cnt <= inst_cnt + 1;
                end
                `OPCODE_SET_PORT: begin
                    
                end
                `OPCODE_SET_MULTICAST: begin
                    
                end
                `OPCODE_RECIRCULATE: begin
                    
                end
                default: begin
                    // unknown op code, exit
                    ready_o <= `TRUE;
                    state <= STATE_FREE;
                end
                endcase
            end
            default: begin
                state <= STATE_FREE;
            end
            endcase
        end
    end

    cksum cksum0(
        .clk(clk),
        .rst(rst),
        // input
        .start_i(cksum_start_o),
        .pkt_hdr_i(pkt_hdr_o),
        .field_start_i(cksum_field_start_o),
        .field_len_i(cksum_field_len_o),
        .cksum_val_o(cksum_val_i),
        // output
        .cksum_ready_o(cksum_ready_i)
    );
endmodule