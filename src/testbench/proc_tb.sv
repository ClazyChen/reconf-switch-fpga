`timescale 1ns/1ps

`include "def.svh"

module proc_tb (
);

    reg clk;
    reg rst;
    reg start_i;
    wire ready_o;
    wire [`ADDR_BUS] pkt_addr_i;
    assign pkt_addr_i = 4;

    wire mem_ce_o;
    wire mem_we_o;
    wire [`ADDR_BUS] mem_addr_o;
    wire [3:0] mem_width_o;
    wire [`DATA_BUS] mem_data_o;
    wire [`DATA_BUS] mem_data_i;

    // proc
    reg proc_mod_start_i;
    reg [`ADDR_BUS] proc_mod_hit_action_addr_i;
    reg [`ADDR_BUS] proc_mod_miss_action_addr_i;

    // parser
    reg ps_mod_start_i;
    reg [`DATA_BUS] ps_mod_hdr_id_i;
    reg [`DATA_BUS] ps_mod_hdr_len_i;
    reg [`DATA_BUS] ps_mod_next_tag_start_i;
    reg [`DATA_BUS] ps_mod_next_tag_len_i;
    reg [`DATA_BUS] ps_mod_next_table_i [`NEXT_TABLE_SIZE - 1:0];

    // matcher
    reg mt_mod_start_i;
    reg [3:0] mt_mod_match_hdr_id_i;
    reg [5:0] mt_mod_match_key_off_i;
    reg [5:0] mt_mod_match_key_len_i;

    initial begin
        clk = 1'b0;
        forever begin
            #10 clk = ~clk;
        end
    end

    initial begin
        rst = `TRUE;
        #45 rst = `FALSE;
    end

    initial begin
        start_i <= `FALSE;
        #105 start_i <= `TRUE;
    end

    initial begin
        #65
        proc_mod_start_i <= `TRUE;
        proc_mod_hit_action_addr_i <= 64;
        proc_mod_miss_action_addr_i <= 0;
        #20
        proc_mod_start_i <= `FALSE;
    end

    initial begin
        #65
        // ethernet header
        ps_mod_start_i <= `TRUE;
        ps_mod_hdr_id_i <= 0;
        ps_mod_hdr_len_i <= 14;
        ps_mod_next_tag_start_i <= 12;
        ps_mod_next_tag_len_i <= 2;
        ps_mod_next_table_i <= {
            {16'h0800, 16'h0001},
            `NO_NEXT_HEADER
        };
        #20
        // ip header
        ps_mod_start_i <= `TRUE;
        ps_mod_hdr_id_i <= 1;
        ps_mod_hdr_len_i <= 20;
        ps_mod_next_tag_start_i <= 9;
        ps_mod_next_tag_len_i <= 1;
        ps_mod_next_table_i <= {
            `NO_NEXT_HEADER,
            `NO_NEXT_HEADER
        };
        #20
        ps_mod_start_i <= `FALSE;
    end

    initial begin
        #65
        mt_mod_start_i <= `TRUE;
        mt_mod_match_hdr_id_i <= 1;
        mt_mod_match_key_off_i <= 16;
        mt_mod_match_key_len_i <= 4;
        #20
        mt_mod_start_i <= `FALSE;
    end

    proc proc0(
        .clk(clk),
        .rst(rst),
        .start_i(start_i),
        .pkt_addr_i(pkt_addr_i),
        // mem
        .mem_ce_o(mem_ce_o),
        .mem_we_o(mem_we_o),
        .mem_addr_o(mem_addr_o),
        .mem_width_o(mem_width_o),
        .mem_data_o(mem_data_o),
        .mem_data_i(mem_data_i),
        // output
        .ready_o(ready_o),
        // proc
        .proc_mod_start_i(proc_mod_start_i),
        .proc_mod_hit_action_addr_i(proc_mod_hit_action_addr_i),
        .proc_mod_miss_action_addr_i(proc_mod_miss_action_addr_i),
        // parser
        .ps_mod_start_i(ps_mod_start_i),
        .ps_mod_hdr_id_i(ps_mod_hdr_id_i),
        .ps_mod_hdr_len_i(ps_mod_hdr_len_i),
        .ps_mod_next_tag_start_i(ps_mod_next_tag_start_i),
        .ps_mod_next_tag_len_i(ps_mod_next_tag_len_i),
        .ps_mod_next_table_i(ps_mod_next_table_i),
        // matcher
        .mt_mod_start_i(mt_mod_start_i),
        .mt_mod_match_hdr_id_i(mt_mod_match_hdr_id_i),
        .mt_mod_match_key_off_i(mt_mod_match_key_off_i),
        .mt_mod_match_key_len_i(mt_mod_match_key_len_i)
    );

    wire sram_ce;
    wire sram_we;
    wire [`ADDR_BUS] sram_addr_o;
    wire [3:0] sram_sel_o;
    wire [`DATA_BUS] sram_data_o;
    wire [`DATA_BUS] sram_data_i;

    mem mem0(
        .ce(mem_ce_o),
        .we(mem_we_o),
        .addr_i(mem_addr_o),
        .width_i(mem_width_o),
        .data_i(mem_data_o),
        .data_o(mem_data_i),

        .sram_ce(sram_ce),
        .sram_we(sram_we),
        .sram_addr_o(sram_addr_o),
        .sram_sel_o(sram_sel_o),
        .sram_data_o(sram_data_o),
        .sram_data_i(sram_data_i)
    );

    sram sram0(
        .clk(clk),
        .ce(sram_ce),
        .we(sram_we),
        .addr_i(sram_addr_o),
        .sel_i(sram_sel_o),
        .data_i(sram_data_o),
        .data_o(sram_data_i)
    );

    initial begin
        $display("Loading packet");
        $readmemh("D:\\year4\\final_paper\\ReconfSwitch\\src\\packet.data", sram0.data_mem);
    end

endmodule