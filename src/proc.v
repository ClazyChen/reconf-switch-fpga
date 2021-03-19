`include "def.vh"

module proc(
    input wire clk,
    input wire rst,
    input wire start_i,

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
    // parser mem
    wire ps_mem_ce_i;
    wire ps_mem_we_i;
    wire [`ADDR_BUS] ps_mem_addr_i;
    wire [3:0] ps_mem_width_i;
    wire [`DATA_BUS] ps_mem_data_i;
    // parser
    reg ps_start_o;
    wire ps_ready_i;
    wire [`WORD_WIDTH * `NUM_HEADERS - 1:0] ps_hdrs_i;

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
    reg [`ADDR_BUS] ex_args_start_o;
    wire ex_ready_i;

    // processor
    reg [`PROC_MEM_MUX_BUS] mem_mux;
    reg [`PROC_STATE_BUS] state;

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
            ex_args_start_o <= `ZERO_ADDR;
            // proc
            mem_mux <= `PROC_MEM_MUX_PARSER;
            state <= `PROC_STATE_FREE;
        end else begin
            case (state)
            `PROC_STATE_FREE: begin
                if (start_i == `TRUE) begin
                    // output
                    ready_o <= `FALSE;
                    // parser
                    ps_start_o <= `TRUE;
                    // matcher
                    mt_start_o <= `FALSE;
                    // executor
                    ex_start_o <= `FALSE;
                    ex_start_addr_o <= `ZERO_ADDR;
                    ex_args_start_o <= `ZERO_ADDR;
                    // proc
                    mem_mux <= `PROC_MEM_MUX_PARSER;
                    state <= `PROC_STATE_PARSER;
                end
            end
            `PROC_STATE_PARSER: begin
                if (ps_ready_i == `TRUE) begin
                    ps_start_o <= `FALSE;
                    mt_start_o <= `TRUE;
                    mem_mux <= `PROC_MEM_MUX_MATCHER;
                    state <= `PROC_STATE_MATCHER;
                end
            end
            `PROC_STATE_MATCHER: begin
                if (mt_ready_i == `TRUE) begin
                    mt_start_o <= `FALSE;
                    ex_start_o <= `TRUE;
                    ex_start_addr_o <= 64;
                    ex_args_start_o <= 128; // TODO
                    mem_mux <= `PROC_MEM_MUX_EXEC;
                    state <= `PROC_STATE_EXEC;
                end
            end
            `PROC_STATE_EXEC: begin
                if (ex_ready_i == `TRUE) begin
                    ex_start_o <= `FALSE;
                    mem_mux <= `PROC_MEM_MUX_PARSER;
                    ready_o <= `TRUE;
                    state <= `PROC_STATE_DONE;
                end
            end
            `PROC_STATE_DONE: begin
                if (start_i == `FALSE) begin
                    state <= `PROC_STATE_FREE;
                end
            end
            default: begin
                state <= `PROC_STATE_FREE;
            end
            endcase
        end
    end

    always @(*) begin
        case (mem_mux)
        `PROC_MEM_MUX_PARSER: begin
            mem_ce_o <= ps_mem_ce_i;
            mem_we_o <= ps_mem_we_i;
            mem_addr_o <= ps_mem_addr_i;
            mem_width_o <= ps_mem_width_i;
            mem_data_o <= ps_mem_data_i;
        end
        `PROC_MEM_MUX_MATCHER: begin
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
        // mem
        .mem_ce_o(ps_mem_ce_i),
        .mem_we_o(ps_mem_we_i),
        .mem_addr_o(ps_mem_addr_i),
        .mem_width_o(ps_mem_width_i),
        .mem_data_o(ps_mem_data_i),
        .mem_data_i(mem_data_i),
        // output
        .ready_o(ps_ready_i),
        .parsed_hdrs_o(ps_hdrs_i)
    );

    matcher matcher0(
        .clk(clk),
        .rst(rst),
        .start_i(mt_start_o),
        // mem
        .mem_ce_o(mt_mem_ce_i),
        .mem_we_o(mt_mem_we_i),
        .mem_addr_o(mt_mem_addr_i),
        .mem_width_o(mt_mem_width_i),
        .mem_data_o(mt_mem_data_i),
        .mem_data_i(mem_data_i),
        // output
        .ready_o(mt_ready_i),
        .val_addr_o(mt_val_addr_i)
    );

    executor executor0(
        .clk(clk),
        .rst(rst),
        .start_i(ex_start_o),
        .start_addr_i(ex_start_addr_o),
        .args_start_i(ex_args_start_o),
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
