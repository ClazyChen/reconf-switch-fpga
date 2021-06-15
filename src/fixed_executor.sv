`include "def.svh"

module fixed_executor (
    input wire clk,
    input wire rst,
    // input
    input wire start_i,
    input wire [`BYTE_BUS] pkt_hdr_i [0:`HDR_MAX_LEN - 1],
    input wire is_match_i,
    input wire [`BYTE_BUS] args_i [`MAX_VAL_LEN - 1:0],
    input wire [`DATA_BUS] parsed_hdrs_i [`NUM_HEADERS - 1:0],
    input wire [`NUM_PORTS - 1:0] out_port_i,
    // output
    output reg ready_o,
    output reg [`BYTE_BUS] pkt_hdr_o [0:`HDR_MAX_LEN - 1],
    output reg [`NUM_PORTS - 1:0] out_port_o
);

    // exec config
    reg [`ADDR_BUS] hit_action_addr;
    reg [`ADDR_BUS] miss_action_addr;
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
    int copy_cnt = 0;
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
            // for (int i = 0; i < `MAX_OP_NUM; i++) begin
            //     ops[i] <= i * 31;   // random
            // end
            ops[0:6] <= {
                `ZERO_QUAD,
                64'h0c000000_01860006,      // copy dst mac to src mac
                64'h0c000000_0006f006,      // copy next hop mac to dst mac
                64'h0bffffff_12010000,      // ttl - 1
                64'h04000000_10141282,      // ip cksum
                64'h10000000_0000f184,      // set out port
                `ZERO_QUAD                  // nop
            };
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
            out_port_o <= 0;
            state <= STATE_FREE;
        end else begin
            case (state)
            STATE_FREE: begin
                if (start_i == `TRUE) begin
                    if (is_match_i == `TRUE) begin
                        inst <= ops[hit_action_addr];
                        inst_cnt <= hit_action_addr + 1;
                    end else begin
                        inst <= ops[miss_action_addr];
                        inst_cnt <= miss_action_addr + 1;
                    end
                    pkt_hdr_o <= pkt_hdr_i;
                    out_port_o <= out_port_i;
                    ready_o <= `FALSE;
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
                    if (copy_cnt < f1_len) begin
                        if (f2_hdr == `ARGS_FIELD_ID) begin
                            pkt_hdr_o[f1_start + copy_cnt] <= args_i[f2_off + copy_cnt];
                        end else begin
                            pkt_hdr_o[f1_start + copy_cnt] <= pkt_hdr_o[f2_start + copy_cnt];
                        end
                        copy_cnt <= copy_cnt + 1;
                    end else begin
                        copy_cnt <= 0;
                        inst <= ops[inst_cnt];
                        inst_cnt <= inst_cnt + 1;
                    end
                end
                `OPCODE_SET_PORT: begin
                    if (f2_hdr == `ARGS_FIELD_ID) begin
                        out_port_o <= args_i[f2_off + 1][`NUM_PORTS - 1:0];
                    end else begin
                        $display("Expected port from args");
                    end
                    inst <= ops[inst_cnt];
                    inst_cnt <= inst_cnt + 1;
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
        // output
        .cksum_ready_o(cksum_ready_i),
        .cksum_val_o(cksum_val_i)
    );
endmodule