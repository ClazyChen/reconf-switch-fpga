`include "def.svh"

module proc(
    input wire clk,
    input wire rst,
    input wire start_i,
    input wire [`ADDR_BUS] pkt_addr_i,

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
    input wire [5:0] mt_mod_match_key_len_i
);
    // parser mem
    wire ps_mem_ce_i;
    wire ps_mem_we_i;
    wire [`ADDR_BUS] ps_mem_addr_i;
    wire [3:0] ps_mem_width_i;
    wire [`DATA_BUS] ps_mem_data_i;
    // parser
    reg ps_start_o;
    wire ps_ready_i;
    wire [`DATA_BUS] ps_hdrs_i [`NUM_HEADERS - 1:0];

    // matcher mem
    wire mt_mem_ce_i;
    wire mt_mem_we_i;
    wire [`ADDR_BUS] mt_mem_addr_i;
    wire [3:0] mt_mem_width_i;
    wire [`DATA_BUS] mt_mem_data_i;
    // matcher
    reg mt_start_o;
    wire mt_ready_i;
    wire [`ADDR_BUS] mt_val_addr_i;

    // executor mem
    wire ex_mem_ce_i;
    wire ex_mem_we_i;
    wire [`ADDR_BUS] ex_mem_addr_i;
    wire [3:0] ex_mem_width_i;
    wire [`DATA_BUS] ex_mem_data_i;
    // executor
    reg ex_start_o;
    reg [`ADDR_BUS] ex_start_addr_o;
    wire ex_ready_i;

    // processor
    reg [`ADDR_BUS] hit_action_addr;
    reg [`ADDR_BUS] miss_action_addr;

    enum {
        MUX_PARSER, MUX_MATCHER, MUX_EXEC
    } mem_mux;

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
            ex_start_addr_o <= `ZERO_ADDR;
            // proc
            mem_mux <= MUX_PARSER;
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
                    ex_start_addr_o <= `ZERO_ADDR;
                    // proc
                    mem_mux <= MUX_PARSER;
                    state <= STATE_PARSER;
                end
            end
            STATE_PARSER: begin
                if (ps_ready_i == `TRUE) begin
                    ps_start_o <= `FALSE;
                    mt_start_o <= `TRUE;
                    mem_mux <= MUX_MATCHER;
                    state <= STATE_MATCHER;
                end
            end
            STATE_MATCHER: begin
                if (mt_ready_i == `TRUE) begin
                    mt_start_o <= `FALSE;
                    ex_start_o <= `TRUE;
                    if (mt_val_addr_i == `ZERO_ADDR) begin
                        ex_start_addr_o <= miss_action_addr;
                    end else begin
                        ex_start_addr_o <= hit_action_addr;
                    end
                    mem_mux <= MUX_EXEC;
                    state <= STATE_EXEC;
                end
            end
            STATE_EXEC: begin
                if (ex_ready_i == `TRUE) begin
                    ex_start_o <= `FALSE;
                    mem_mux <= MUX_PARSER;
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

    always_comb begin
        case (mem_mux)
        MUX_PARSER: begin
            mem_ce_o <= ps_mem_ce_i;
            mem_we_o <= ps_mem_we_i;
            mem_addr_o <= ps_mem_addr_i;
            mem_width_o <= ps_mem_width_i;
            mem_data_o <= ps_mem_data_i;
        end
        MUX_MATCHER: begin
            mem_ce_o <= mt_mem_ce_i;
            mem_we_o <= mt_mem_we_i;
            mem_addr_o <= mt_mem_addr_i;
            mem_width_o <= mt_mem_width_i;
            mem_data_o <= mt_mem_data_i;
        end
        default: begin
            mem_ce_o <= ex_mem_ce_i;
            mem_we_o <= ex_mem_we_i;
            mem_addr_o <= ex_mem_addr_i;
            mem_width_o <= ex_mem_width_i;
            mem_data_o <= ex_mem_data_i;
        end
        endcase
    end

    parser parser0(
        .clk(clk),
        .rst(rst),
        .start_i(ps_start_o),
        .pkt_addr_i(pkt_addr_i),
        // mem
        .mem_ce_o(ps_mem_ce_i),
        .mem_we_o(ps_mem_we_i),
        .mem_addr_o(ps_mem_addr_i),
        .mem_width_o(ps_mem_width_i),
        .mem_data_o(ps_mem_data_i),
        .mem_data_i(mem_data_i),
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
        .parsed_hdrs_i(ps_hdrs_i),
        // mem
        .mem_ce_o(mt_mem_ce_i),
        .mem_we_o(mt_mem_we_i),
        .mem_addr_o(mt_mem_addr_i),
        .mem_width_o(mt_mem_width_i),
        .mem_data_o(mt_mem_data_i),
        .mem_data_i(mem_data_i),
        // output
        .ready_o(mt_ready_i),
        .val_addr_o(mt_val_addr_i),
        // mod
        .mod_start_i(mt_mod_start_i),
        .mod_match_hdr_id_i(mt_mod_match_hdr_id_i),
        .mod_match_key_off_i(mt_mod_match_key_off_i),
        .mod_match_key_len_i(mt_mod_match_key_len_i)
    );

    executor executor0(
        .clk(clk),
        .rst(rst),
        .start_i(ex_start_o),
        .start_addr_i(ex_start_addr_o),
        .args_start_i(mt_val_addr_i),
        .parsed_hdrs_i(ps_hdrs_i),
        // mem
        .mem_ce_o(ex_mem_ce_i),
        .mem_we_o(ex_mem_we_i),
        .mem_addr_o(ex_mem_addr_i),
        .mem_width_o(ex_mem_width_i),
        .mem_data_o(ex_mem_data_i),
        .mem_data_i(mem_data_i),
        // output
        .ready_o(ex_ready_i)
    );

endmodule
