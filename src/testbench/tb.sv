`timescale 1ns/1ps

`include "def.svh"

module tb (
);

    reg clk;
    reg rst;

    // switch input
    reg sw_wr_i;
    reg [`BYTE_BUS] sw_pkt_hdr_i [0:`HDR_MAX_LEN - 1];
    wire [`NUM_PORTS - 1:0] sw_out_port_i;
    wire sw_in_empty_o;

    // switch output
    reg sw_rd_i;
    wire [`BYTE_BUS] sw_pkt_hdr_o [0:`HDR_MAX_LEN - 1];
    wire [`NUM_PORTS - 1:0] sw_out_port_o;
    wire sw_out_empty_o;

    // proc 0
    // parser mod
    reg ps0_mod_start_i;
    reg [`DATA_BUS] ps0_mod_hdr_id_i;
    reg [`DATA_BUS] ps0_mod_hdr_len_i;
    reg [`DATA_BUS] ps0_mod_next_tag_start_i;
    reg [`DATA_BUS] ps0_mod_next_tag_len_i;
    reg [`DATA_BUS] ps0_mod_next_table_i [`NEXT_TABLE_SIZE - 1:0];
    // matcher mod
    reg mt0_mod_start_i;
    reg [3:0] mt0_mod_match_hdr_id_i;
    reg [5:0] mt0_mod_match_key_off_i;
    reg [5:0] mt0_mod_match_key_len_i;
    reg [5:0] mt0_mod_match_val_len_i;
    reg [`DATA_BUS] mt0_mod_logic_entry_len_i;
    reg [`DATA_BUS] mt0_mod_logic_start_addr_i;
    reg [`BYTE_BUS] mt0_mod_logic_tag;
    reg mt0_mod_is_counter_table;
    // executor mod
    reg ex0_mod_start_i;
    reg [`ADDR_BUS] ex0_mod_hit_action_addr_i;
    reg [`ADDR_BUS] ex0_mod_miss_action_addr_i;
    reg [`QUAD_BUS] ex0_mod_ops_i [0:`MAX_OP_NUM - 1];

    // proc 1
    // parser mod
    reg ps1_mod_start_i;
    reg [`DATA_BUS] ps1_mod_hdr_id_i;
    reg [`DATA_BUS] ps1_mod_hdr_len_i;
    reg [`DATA_BUS] ps1_mod_next_tag_start_i;
    reg [`DATA_BUS] ps1_mod_next_tag_len_i;
    reg [`DATA_BUS] ps1_mod_next_table_i [`NEXT_TABLE_SIZE - 1:0];
    assign ps1_mod_start_i = ps0_mod_start_i;
    assign ps1_mod_hdr_id_i = ps0_mod_hdr_id_i;
    assign ps1_mod_hdr_len_i = ps0_mod_hdr_len_i;
    assign ps1_mod_next_tag_start_i= ps0_mod_next_tag_start_i;
    assign ps1_mod_next_tag_len_i = ps0_mod_next_tag_len_i;
    assign ps1_mod_next_table_i = ps0_mod_next_table_i;
    // matcher mod
    reg mt1_mod_start_i;
    reg [3:0] mt1_mod_match_hdr_id_i;
    reg [5:0] mt1_mod_match_key_off_i;
    reg [5:0] mt1_mod_match_key_len_i;
    reg [5:0] mt1_mod_match_val_len_i;
    reg [`DATA_BUS] mt1_mod_logic_entry_len_i;
    reg [`DATA_BUS] mt1_mod_logic_start_addr_i;
    reg [`BYTE_BUS] mt1_mod_logic_tag;
    reg mt1_mod_is_counter_table;
    // executor mod
    reg ex1_mod_start_i;
    reg [`ADDR_BUS] ex1_mod_hit_action_addr_i;
    reg [`ADDR_BUS] ex1_mod_miss_action_addr_i;
    reg [`QUAD_BUS] ex1_mod_ops_i [0:`MAX_OP_NUM - 1];

    // controller
    reg ctrl_mem_ce_i;
    reg ctrl_mem_we_i;
    reg [`ADDR_BUS] ctrl_mem_addr_i;
    reg [`DATA_BUS] ctrl_mem_data_i;
    wire [`DATA_BUS] ctrl_mem_data_o;
    wire ctrl_mem_ready_o;

    switch_sopc switch_sopc0(
        .clk(clk),
        .rst(rst),
        // switch input
        .sw_wr_i(sw_wr_i),
        .sw_pkt_hdr_i(sw_pkt_hdr_i),
        .sw_in_empty_o(sw_in_empty_o),
        // switch output
        .sw_rd_i(sw_rd_i),
        .sw_pkt_hdr_o(sw_pkt_hdr_o),
        .sw_out_port_o(sw_out_port_o),
        .sw_out_empty_o(sw_out_empty_o),
        // ctrl
        .ctrl_mem_ce_i(ctrl_mem_ce_i),
        .ctrl_mem_we_i(ctrl_mem_we_i),
        .ctrl_mem_addr_i(ctrl_mem_addr_i),
        .ctrl_mem_data_i(ctrl_mem_data_i),
        .ctrl_mem_data_o(ctrl_mem_data_o),
        .ctrl_mem_ready_o(ctrl_mem_ready_o),
        // proc 0
        // parser mod
        .ps0_mod_start_i(ps0_mod_start_i),
        .ps0_mod_hdr_id_i(ps0_mod_hdr_id_i),
        .ps0_mod_hdr_len_i(ps0_mod_hdr_len_i),
        .ps0_mod_next_tag_start_i(ps0_mod_next_tag_start_i),
        .ps0_mod_next_tag_len_i(ps0_mod_next_tag_len_i),
        .ps0_mod_next_table_i(ps0_mod_next_table_i),
        // matcher mod
        .mt0_mod_start_i(mt0_mod_start_i),
        .mt0_mod_match_hdr_id_i(mt0_mod_match_hdr_id_i),
        .mt0_mod_match_key_off_i(mt0_mod_match_key_off_i),
        .mt0_mod_match_key_len_i(mt0_mod_match_key_len_i),
        .mt0_mod_match_val_len_i(mt0_mod_match_val_len_i),
        .mt0_mod_logic_entry_len_i(mt0_mod_logic_entry_len_i),
        .mt0_mod_logic_start_addr_i(mt0_mod_logic_start_addr_i),
        .mt0_mod_logic_tag(mt0_mod_logic_tag),
        .mt0_mod_is_counter_table(mt0_mod_is_counter_table),
        // executor mod
        .ex0_mod_start_i(ex0_mod_start_i),
        .ex0_mod_hit_action_addr_i(ex0_mod_hit_action_addr_i),
        .ex0_mod_miss_action_addr_i(ex0_mod_miss_action_addr_i),
        .ex0_mod_ops_i(ex0_mod_ops_i),

        // proc 1
        // parser mod
        .ps1_mod_start_i(ps1_mod_start_i),
        .ps1_mod_hdr_id_i(ps1_mod_hdr_id_i),
        .ps1_mod_hdr_len_i(ps1_mod_hdr_len_i),
        .ps1_mod_next_tag_start_i(ps1_mod_next_tag_start_i),
        .ps1_mod_next_tag_len_i(ps1_mod_next_tag_len_i),
        .ps1_mod_next_table_i(ps1_mod_next_table_i),
        // matcher mod
        .mt1_mod_start_i(mt1_mod_start_i),
        .mt1_mod_match_hdr_id_i(mt1_mod_match_hdr_id_i),
        .mt1_mod_match_key_off_i(mt1_mod_match_key_off_i),
        .mt1_mod_match_key_len_i(mt1_mod_match_key_len_i),
        .mt1_mod_match_val_len_i(mt1_mod_match_val_len_i),
        .mt1_mod_logic_entry_len_i(mt1_mod_logic_entry_len_i),
        .mt1_mod_logic_start_addr_i(mt1_mod_logic_start_addr_i),
        .mt1_mod_logic_tag(mt1_mod_logic_tag),
        .mt1_mod_is_counter_table(mt1_mod_is_counter_table),
        // executor mod
        .ex1_mod_start_i(ex1_mod_start_i),
        .ex1_mod_hit_action_addr_i(ex1_mod_hit_action_addr_i),
        .ex1_mod_miss_action_addr_i(ex1_mod_miss_action_addr_i),
        .ex1_mod_ops_i(ex1_mod_ops_i)
    );

    // BEGIN TEST
    initial begin
        clk = 1'b0;
        forever #10 clk = ~clk;
    end

    initial begin
        rst = `TRUE;
        #45 rst = `FALSE;
    end

    // add flow entry
    initial begin
        ctrl_mem_ce_i <= `FALSE;
        ctrl_mem_we_i <= `FALSE;
        ctrl_mem_addr_i <= 32'h00100000;
        ctrl_mem_data_i <= `ZERO_WORD;
        #65
        ctrl_mem_ce_i <= `TRUE;
        ctrl_mem_we_i <= `TRUE;

        ctrl_mem_addr_i <= 32'h00100000 + (136 * 16);
        ctrl_mem_data_i <= 32'h0100b7ac;
        wait(ctrl_mem_ready_o == `FALSE);
        wait(ctrl_mem_ready_o == `TRUE);
        ctrl_mem_addr_i <= ctrl_mem_addr_i + 4;
        ctrl_mem_data_i <= 32'hf62c0000;
        wait(ctrl_mem_ready_o == `FALSE);
        wait(ctrl_mem_ready_o == `TRUE);
        ctrl_mem_addr_i <= ctrl_mem_addr_i + 4;
        ctrl_mem_data_i <= 32'h00000000;
        wait(ctrl_mem_ready_o == `FALSE);
        wait(ctrl_mem_ready_o == `TRUE);
        ctrl_mem_addr_i <= ctrl_mem_addr_i + 4;
        ctrl_mem_data_i <= 32'h00000000;
        wait(ctrl_mem_ready_o == `FALSE);
        wait(ctrl_mem_ready_o == `TRUE);
        #20
        ctrl_mem_ce_i <= `FALSE;
    end

    // switch input
    initial begin
        sw_wr_i = `FALSE;
        #105
        // packet 1
        sw_wr_i = `TRUE;
        sw_pkt_hdr_i = {
            8'hc8, 8'h58, 8'hc0, 8'hb5, 8'hfe, 8'h1e, 8'h90, 8'h03, 8'h25, 8'hb9, 8'h7f, 8'h06, 8'h08, 8'h00, 8'h45, 8'h00,
            8'h00, 8'h28, 8'h4c, 8'hd6, 8'h00, 8'h00, 8'heb, 8'h06, 8'hd5, 8'hfb, 8'h59, 8'hf8, 8'ha5, 8'h2c, 8'hb7, 8'hac,
            8'hf6, 8'h2c, 8'hc5, 8'h7f, 8'h4e, 8'h3c, 8'hba, 8'h38, 8'hf4, 8'hc6, 8'h00, 8'h00, 8'h00, 8'h00, 8'h50, 8'h02,
            8'h04, 8'h00, 8'h3c, 8'h29, 8'h00, 8'h00, 8'h00, 8'h00, 8'h00, 8'h00, 8'h00, 8'h00,
            // padding
            8'h00, 8'h00, 8'h00, 8'h00
        };

        $write("Input Packet 1: ");
        foreach (sw_pkt_hdr_i[i]) begin
            $write("%h ", sw_pkt_hdr_i[i]);
        end
        $write("\n");

        #20
        sw_wr_i = `FALSE;
        wait(sw_in_empty_o == `TRUE);
        #20
        // packet 2
        sw_wr_i = `TRUE;
        sw_pkt_hdr_i = {
            8'h01, 8'h23, 8'h45, 8'h67, 8'h89, 8'hab, 8'hcd, 8'hef, 8'hde, 8'had, 8'hde, 8'had, 8'h08, 8'h00, 8'h45, 8'h00,
            8'h00, 8'h28, 8'h4c, 8'hd6, 8'h00, 8'h00, 8'heb, 8'h06, 8'hd5, 8'hfb, 8'h59, 8'hf8, 8'ha5, 8'h2c, 8'hb7, 8'hac,
            8'hf6, 8'h2c, 8'hc5, 8'h7f, 8'h4e, 8'h3c, 8'hba, 8'h38, 8'hf4, 8'hc6, 8'h00, 8'h00, 8'h00, 8'h00, 8'h50, 8'h02,
            8'h04, 8'h00, 8'h3c, 8'h29, 8'h00, 8'h00, 8'h00, 8'h00, 8'h00, 8'h00, 8'h00, 8'h00,
            // padding
            8'h00, 8'h00, 8'h00, 8'h00
        };

        $write("Input Packet 2: ");
        foreach (sw_pkt_hdr_i[i]) begin
            $write("%h ", sw_pkt_hdr_i[i]);
        end
        $write("\n");

        #20
        sw_wr_i = `FALSE;
    end

    // switch output
    initial begin
        sw_rd_i = `FALSE;
    end

    // proc 0
    // parser mod
    initial begin
        ps0_mod_start_i <= `FALSE;
        ps0_mod_hdr_id_i <= 0;
        ps0_mod_hdr_len_i <= 0;
        ps0_mod_next_tag_start_i <= 0;
        ps0_mod_next_tag_len_i <= 0;
        ps0_mod_next_table_i <= {`NO_NEXT_HEADER, `NO_NEXT_HEADER};
        #65
        // ethernet header
        ps0_mod_start_i <= `TRUE;
        ps0_mod_hdr_id_i <= 0;
        ps0_mod_hdr_len_i <= 14;
        ps0_mod_next_tag_start_i <= 12;
        ps0_mod_next_tag_len_i <= 2;
        ps0_mod_next_table_i <= {
            {16'h0800, 16'h0001},
            {16'h1212, 16'h0002}
        };
        #20
        // ip header
        ps0_mod_start_i <= `TRUE;
        ps0_mod_hdr_id_i <= 1;
        ps0_mod_hdr_len_i <= 20;
        ps0_mod_next_tag_start_i <= 9;
        ps0_mod_next_tag_len_i <= 1;
        ps0_mod_next_table_i <= {
            `NO_NEXT_HEADER,
            `NO_NEXT_HEADER
        };
        #20
        // tunnel header
        ps0_mod_start_i <= `TRUE;
        ps0_mod_hdr_id_i <= 2;
        ps0_mod_hdr_len_i <= 4;
        ps0_mod_next_tag_start_i <= 0;
        ps0_mod_next_tag_len_i <= 2;
        ps0_mod_next_table_i <= {
            {16'h0800, 16'h0001},
            `NO_NEXT_HEADER
        };
        #20
        ps0_mod_start_i <= `FALSE;
    end
    // matcher mod
    initial begin
        mt0_mod_start_i <= `FALSE;
        mt0_mod_match_hdr_id_i <= 0;
        mt0_mod_match_key_off_i <= 0;
        mt0_mod_match_key_len_i <= 0;
        mt0_mod_match_val_len_i <= 0;
        mt0_mod_logic_entry_len_i <= 0;
        mt0_mod_logic_start_addr_i <= 0;
        mt0_mod_logic_tag <= 0;
        mt0_mod_is_counter_table <= `FALSE;
        #65
        mt0_mod_start_i <= `TRUE;
        mt0_mod_match_hdr_id_i <= 1;
        mt0_mod_match_key_off_i <= 16;
        mt0_mod_match_key_len_i <= 4;
        mt0_mod_match_val_len_i <= 6 + 2;
        mt0_mod_logic_entry_len_i <= 16;
        mt0_mod_logic_start_addr_i <= 0;
        mt0_mod_logic_tag <= 0;
        mt0_mod_is_counter_table <= `FALSE;
        #20
        mt0_mod_start_i <= `FALSE;
    end
    // executor mod
    initial begin
        ex0_mod_start_i <= `FALSE;
        ex0_mod_hit_action_addr_i <= 0;
        ex0_mod_miss_action_addr_i <= 0;
        for (int i = 0; i < `MAX_OP_NUM; i++) begin
            ex0_mod_ops_i[i] = `ZERO_QUAD;
        end
        #65
        ex0_mod_start_i <= `TRUE;
        ex0_mod_hit_action_addr_i <= 1;
        ex0_mod_miss_action_addr_i <= 0;
        ex0_mod_ops_i[0:6] <= {
            `ZERO_QUAD,
            64'h0c000000_01860006,      // copy dst mac to src mac
            64'h0c000000_0006f006,      // copy next hop mac to dst mac
            64'h0bffffff_12010000,      // ttl - 1
            64'h04000000_10141282,      // ip cksum
            64'h10000000_0000f184,      // set out port
            `ZERO_QUAD                  // nop
        };
        #20
        ex0_mod_start_i <= `FALSE;
    end

    // proc 1
    // matcher mod
    initial begin
        mt1_mod_start_i <= `FALSE;
        mt1_mod_match_hdr_id_i <= 0;
        mt1_mod_match_key_off_i <= 0;
        mt1_mod_match_key_len_i <= 0;
        mt1_mod_match_val_len_i <= 0;
        mt1_mod_logic_entry_len_i <= 0;
        mt1_mod_logic_start_addr_i <= 0;
        mt1_mod_logic_tag <= 0;
        mt1_mod_is_counter_table <= `FALSE;
        #65
        mt1_mod_start_i <= `TRUE;
        mt1_mod_match_hdr_id_i <= 1;
        mt1_mod_match_key_off_i <= 16;
        mt1_mod_match_key_len_i <= 4;
        mt1_mod_match_val_len_i <= 6 + 2;
        mt1_mod_logic_entry_len_i <= 16;
        mt1_mod_logic_start_addr_i <= 32'h00100000;
        mt1_mod_logic_tag <= 1;
        mt1_mod_is_counter_table <= `TRUE;
        #20
        mt1_mod_start_i <= `FALSE;
    end
    // executor mod
    initial begin
        ex1_mod_start_i <= `FALSE;
        ex1_mod_hit_action_addr_i <= 0;
        ex1_mod_miss_action_addr_i <= 0;
        for (int i = 0; i < `MAX_OP_NUM; i++) begin
            ex1_mod_ops_i[i] = `ZERO_QUAD;
        end
        #65
        ex1_mod_start_i <= `TRUE;
        ex1_mod_hit_action_addr_i <= 0;
        ex1_mod_miss_action_addr_i <= 0;
        ex1_mod_ops_i[0] <= `ZERO_QUAD;
        #20
        ex1_mod_start_i <= `FALSE;
    end

    // expected output pkt header
    reg [`BYTE_BUS] ans_pkt_hdr [0:`HDR_MAX_LEN - 1];

    // check answer
    initial begin
        $display("===== BEGIN TEST =====");

        wait(sw_out_empty_o == `FALSE);
        // print packet
        $write("Output Packet 1 via port %b: ", sw_out_port_o);
        foreach (sw_pkt_hdr_o[i]) begin
            $write("%h ", sw_pkt_hdr_o[i]);
        end
        $write("\n");
        // check answer
        ans_pkt_hdr = {
            8'hde, 8'had, 8'hbe, 8'hef, 8'hfa, 8'hce, 8'hc8, 8'h58, 8'hc0, 8'hb5, 8'hfe, 8'h1e, 8'h08, 8'h00, 8'h45, 8'h00,
            8'h00, 8'h28, 8'h4c, 8'hd6, 8'h00, 8'h00, 8'hea, 8'h06, 8'hd6, 8'hfb, 8'h59, 8'hf8, 8'ha5, 8'h2c, 8'hb7, 8'hac,
            8'hf6, 8'h2c, 8'hc5, 8'h7f, 8'h4e, 8'h3c, 8'hba, 8'h38, 8'hf4, 8'hc6, 8'h00, 8'h00, 8'h00, 8'h00, 8'h50, 8'h02,
            8'h04, 8'h00, 8'h3c, 8'h29, 8'h00, 8'h00, 8'h00, 8'h00, 8'h00, 8'h00, 8'h00, 8'h00,
            // padding
            8'h00, 8'h00, 8'h00, 8'h00
        };
        if (sw_pkt_hdr_o == ans_pkt_hdr && sw_out_port_o == 4'b0001) begin
            $display("Packet 1 PASSED!");
        end else begin
            $display("Packet 1 FAILED!");
        end
        #20
        sw_rd_i = `TRUE;
        #20
        sw_rd_i = `FALSE;
        wait(sw_out_empty_o == `FALSE);
        // print packet
        $write("Output Packet 2 via port %b: ", sw_out_port_o);
        foreach (sw_pkt_hdr_o[i]) begin
            $write("%h ", sw_pkt_hdr_o[i]);
        end
        $write("\n");

        $display("===== END TEST =====");
    end

endmodule