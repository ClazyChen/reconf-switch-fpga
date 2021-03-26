`include "def.svh"

module proc(
    input wire clk,
    input wire rst,
    input wire start_i,
    input wire [`BYTE_BUS] pkt_hdr_i [0:`HDR_MAX_LEN - 1],

    // mem
    output reg mem_ce_o,
    output reg mem_we_o,
    output reg [`ADDR_BUS] mem_addr_o,
    output reg [3:0] mem_width_o,
    output reg [`DATA_BUS] mem_data_o,
    input wire [`DATA_BUS] mem_data_i,
    // output
    output reg ready_o,
    // proc modify
    input wire proc_mod_start_i,
    input wire [`ADDR_BUS] proc_mod_hit_action_addr_i,
    input wire [`ADDR_BUS] proc_mod_miss_action_addr_i,
    // parser modify
    input wire ps_mod_start_i,
    input wire [`DATA_BUS] ps_mod_hdr_id_i,
    input wire [`DATA_BUS] ps_mod_hdr_len_i,
    input wire [`DATA_BUS] ps_mod_next_tag_start_i,
    input wire [`DATA_BUS] ps_mod_next_tag_len_i,
    input wire [`DATA_BUS] ps_mod_next_table_i [`NEXT_TABLE_SIZE - 1:0],
    // matcher mod
    input wire mt_mod_start_i,
    input wire [3:0] mt_mod_match_hdr_id_i,
    input wire [5:0] mt_mod_match_key_off_i,
    input wire [5:0] mt_mod_match_key_len_i,
    input wire [5:0] mt_mod_match_val_len_i,
    // executor mod
    input wire ex_mod_start_i,
    input wire [`QUAD_BUS] ex_mod_ops_i [0:`MAX_OP_NUM - 1]
);

    // parser
    reg ps_start_o;
    wire ps_ready_i;
    wire [`DATA_BUS] ps_hdrs_i [`NUM_HEADERS - 1:0];

    // matcher
    reg mt_start_o;
    wire mt_ready_i;
    wire mt_is_match_i;
    wire [`BYTE_BUS] mt_flow_val_i [`MAX_VAL_LEN - 1:0];

    // executor
    reg ex_start_o;
    reg [`DATA_BUS] ex_op_start_cnt_o;
    wire ex_ready_i;

    // proc config
    reg [`ADDR_BUS] hit_action_addr;
    reg [`ADDR_BUS] miss_action_addr;

    enum {
        STATE_FREE, STATE_PARSER, STATE_MATCHER, STATE_EXEC, STATE_DONE
    } state;

    always @(posedge clk) begin
        if (rst == `TRUE) begin
            // output
            ready_o <= `FALSE;
            // parser
            ps_start_o <= `FALSE;
            // matcher
            mt_start_o <= `FALSE;
            // executor
            ex_start_o <= `FALSE;
            ex_op_start_cnt_o <= 0;
            // proc
            hit_action_addr <= 0;
            miss_action_addr <= 0;
            // reg
            state <= STATE_FREE;
        end else begin
            case (state)
            STATE_FREE: begin
                if (proc_mod_start_i == `TRUE) begin
                    hit_action_addr <= proc_mod_hit_action_addr_i;
                    miss_action_addr <= proc_mod_miss_action_addr_i;
                end else if (start_i == `TRUE) begin
                    // output
                    ready_o <= `FALSE;
                    // parser
                    ps_start_o <= `TRUE;
                    // matcher
                    mt_start_o <= `FALSE;
                    // executor
                    ex_start_o <= `FALSE;
                    ex_op_start_cnt_o <= 0;
                    // proc
                    state <= STATE_PARSER;
                end
            end
            STATE_PARSER: begin
                if (ps_ready_i == `TRUE) begin
                    ps_start_o <= `FALSE;
                    mt_start_o <= `TRUE;
                    state <= STATE_MATCHER;
                end
            end
            STATE_MATCHER: begin
                if (mt_ready_i == `TRUE) begin
                    mt_start_o <= `FALSE;
                    ex_start_o <= `TRUE;
                    if (mt_is_match_i == `TRUE) begin
                        ex_op_start_cnt_o <= hit_action_addr;
                    end else begin
                        ex_op_start_cnt_o <= miss_action_addr;
                    end
                    state <= STATE_EXEC;
                end
            end
            STATE_EXEC: begin
                if (ex_ready_i == `TRUE) begin
                    ex_start_o <= `FALSE;
                    ready_o <= `TRUE;
                    state <= STATE_DONE;
                end
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

    parser parser0(
        .clk(clk),
        .rst(rst),
        .start_i(ps_start_o),
        .pkt_hdr_i(pkt_hdr_i),
        // output
        .ready_o(ps_ready_i),
        .parsed_hdrs_o(ps_hdrs_i),
        // mod
        .mod_start_i(ps_mod_start_i),
        .mod_hdr_id_i(ps_mod_hdr_id_i),
        .mod_hdr_len_i(ps_mod_hdr_len_i),
        .mod_next_tag_start_i(ps_mod_next_tag_start_i),
        .mod_next_tag_len_i(ps_mod_next_tag_len_i),
        .mod_next_table_i(ps_mod_next_table_i)
    );

    matcher matcher0(
        .clk(clk),
        .rst(rst),
        .start_i(mt_start_o),
        .pkt_hdr_i(pkt_hdr_i),
        .parsed_hdrs_i(ps_hdrs_i),
        // mem
        .mem_ce_o(mem_ce_o),
        .mem_we_o(mem_we_o),
        .mem_addr_o(mem_addr_o),
        .mem_width_o(mem_width_o),
        .mem_data_o(mem_data_o),
        .mem_data_i(mem_data_i),
        // output
        .ready_o(mt_ready_i),
        .is_match_o(mt_is_match_i),
        .flow_val_o(mt_flow_val_i),
        // mod
        .mod_start_i(mt_mod_start_i),
        .mod_match_hdr_id_i(mt_mod_match_hdr_id_i),
        .mod_match_key_off_i(mt_mod_match_key_off_i),
        .mod_match_key_len_i(mt_mod_match_key_len_i),
        .mod_match_val_len_i(mt_mod_match_val_len_i)
    );

    executor executor0(
        .clk(clk),
        .rst(rst),
        // input
        .start_i(ex_start_o),
        .pkt_hdr_i(pkt_hdr_i),
        .op_start_cnt_i(ex_op_start_cnt_o),
        .args_i(mt_flow_val_i),
        .parsed_hdrs_i(ps_hdrs_i),
        // output
        .ready_o(ex_ready_i),
        // mod
        .mod_start_i(ex_mod_start_i),
        .mod_ops_i(ex_mod_ops_i)
    );

endmodule
