`include "def.svh"

module matcher (
    input wire clk,
    input wire rst,
    input wire start_i,
    input wire [`BYTE_BUS] pkt_hdr_i [0:`HDR_MAX_LEN - 1],
    input wire [`DATA_BUS] parsed_hdrs_i [`NUM_HEADERS - 1:0],
    // mem
    output reg mem_ce_o,
    output reg mem_we_o,
    output reg [`ADDR_BUS] mem_addr_o,
    output reg [3:0] mem_width_o,
    output reg [`DATA_BUS] mem_data_o,
    input wire [`DATA_BUS] mem_data_i,
    input wire mem_ready_i,
    // output
    output reg ready_o,
    output reg is_match_o,
    output reg [`BYTE_BUS] flow_val_o [`MAX_VAL_LEN - 1:0],
    // modify
    input wire mod_start_i,
    input wire [3:0] mod_match_hdr_id_i,
    input wire [5:0] mod_match_key_off_i,
    input wire [5:0] mod_match_key_len_i,
    input wire [5:0] mod_match_val_len_i,
    input wire [`DATA_BUS] mod_logic_entry_len_i,
    input wire [`DATA_BUS] mod_logic_start_addr_i,
    input wire [`BYTE_BUS] mod_logic_tag,
    input wire mod_is_counter_table
);

    // table
    reg [3:0] match_hdr_id;
    reg [5:0] match_key_off;
    reg [5:0] match_key_len;
    reg [5:0] match_val_len;
    reg [`DATA_BUS] logic_entry_len;
    reg [`DATA_BUS] logic_start_addr;
    reg [`BYTE_BUS] logic_tag;
    reg is_counter_table;

    // load
    int mem_cnt;

    // key
    reg [`BYTE_BUS] key_data [7:0];     // format: [ tag(1) | zero(1) | match_key(6) ]
    reg [`BYTE_BUS] entry_key_data [7:0];
    assign key_data[0] = logic_tag;
    assign key_data[1] = `ZERO_BYTE;

    // hash
    reg hash_start_i;
    wire hash_ready_i;
    wire [`DATA_BUS] hash_val_i;
    wire [`QUAD_BUS] hash_key_o;
    assign hash_key_o = {
        key_data[0], key_data[1], key_data[2], key_data[3],
        key_data[4], key_data[5], key_data[6], key_data[7]
    };

    enum {
        STATE_FREE, STATE_HASH, STATE_LOAD_KEY, STATE_LOAD_VAL, STATE_STORE_VAL
    } state;

    assign mem_width_o = 4;

    always @(posedge clk) begin
        if (rst == `TRUE) begin
            // mem
            mem_ce_o <= `FALSE;
            mem_we_o <= `FALSE;
            mem_data_o <= `ZERO_WORD;
            // output
            ready_o <= `FALSE;
            is_match_o <= `FALSE;
            for (int i = 0; i < `MAX_VAL_LEN; i++) begin
                flow_val_o[i] = 0;
            end
            // table
            match_hdr_id <= 0;
            match_key_off <= 0;
            match_key_len <= 0;
            match_val_len <= 0;
            logic_entry_len <= 0;
            logic_start_addr <= 0;
            logic_tag <= 0;
            is_counter_table <= `FALSE;
            // reg
            hash_start_i <= `FALSE;
            mem_addr_o <= `ZERO_ADDR;
            mem_cnt <= 0;
            for (int i = 2; i < 8; i++) begin
                key_data[i] <= `ZERO_BYTE;
            end
            for (int i = 0; i < 8; i++) begin
                entry_key_data[i] <= `ZERO_BYTE;
            end
            state <= STATE_FREE;
        end else begin
            case (state)
            STATE_FREE: begin
                if (mod_start_i == `TRUE) begin
                    match_hdr_id <= mod_match_hdr_id_i;
                    match_key_off <= mod_match_key_off_i;
                    match_key_len <= mod_match_key_len_i;
                    match_val_len <= mod_match_val_len_i;
                    logic_entry_len <= mod_logic_entry_len_i;
                    logic_start_addr <= mod_logic_start_addr_i;
                    logic_tag <= mod_logic_tag;
                    is_counter_table <= mod_is_counter_table;
                end else if (start_i == `TRUE) begin
                    // mem
                    mem_ce_o <= `FALSE;
                    // output
                    ready_o <= `FALSE; 
                    is_match_o <= `FALSE;
                    for (int i = 0; i < `MAX_VAL_LEN; i++) begin
                        flow_val_o[i] = 0;
                    end
                    // reg
                    hash_start_i <= `TRUE;
                    mem_addr_o <= `ZERO_ADDR;
                    mem_cnt <= 0;
                    for (int i = 0; i < match_key_len; i++) begin
                        key_data[i + `FLOW_TAG_LEN] <= pkt_hdr_i[parsed_hdrs_i[match_hdr_id] + match_key_off + i];
                    end
                    for (int i = 0; i < 8; i++) begin
                        entry_key_data[i] <= `ZERO_BYTE;
                    end
                    state <= STATE_HASH;
                end
            end
            STATE_HASH: begin
                hash_start_i <= `FALSE;
                if (hash_ready_i == `TRUE) begin
                    mem_ce_o <= `TRUE;
                    mem_we_o <= `FALSE;
                    mem_addr_o <= logic_start_addr + hash_val_i * logic_entry_len;
                    mem_cnt <= 0;
                    state <= STATE_LOAD_KEY;
                end
            end
            STATE_LOAD_KEY: begin
                if (mem_cnt < match_key_len + `FLOW_TAG_LEN) begin
                    // loading key
                    if (mem_ready_i == `TRUE) begin
                        {entry_key_data[mem_cnt], entry_key_data[mem_cnt + 1],
                        entry_key_data[mem_cnt + 2], entry_key_data[mem_cnt + 3]} <= mem_data_i;
                        mem_addr_o <= mem_addr_o + 4;
                        mem_cnt <= mem_cnt + 4;
                    end
                end else begin
                    // load key done
                    if (entry_key_data == key_data) begin
                        // match, load value
                        if (mem_ready_i == `TRUE) begin
                            {flow_val_o[0], flow_val_o[1], flow_val_o[2], flow_val_o[3]} <= mem_data_i;
                            mem_addr_o <= mem_addr_o + 4;
                            mem_cnt <= 4;
                            state <= STATE_LOAD_VAL;
                        end
                    end else begin
                        // not match, return
                        mem_ce_o <= `FALSE;
                        ready_o <= `TRUE;
                        is_match_o <= `FALSE;
                        state <= STATE_FREE;
                    end
                end
            end
            STATE_LOAD_VAL: begin
                if (mem_cnt != match_val_len) begin
                    // loading
                    if (mem_ready_i == `TRUE) begin
                        {flow_val_o[mem_cnt], flow_val_o[mem_cnt + 1],
                        flow_val_o[mem_cnt + 2], flow_val_o[mem_cnt + 3]} <= mem_data_i;
                        mem_addr_o <= mem_addr_o + 4;
                        mem_cnt <= mem_cnt + 4;
                    end
                end else begin
                    // load done
                    if (is_counter_table == `TRUE) begin
                        $display("Counter: %h-%h-%h-%h = %d", key_data[2], key_data[3], key_data[4], key_data[5],
                            flow_val_o[0] + 1);
                        mem_we_o <= `TRUE;
                        mem_addr_o <= mem_addr_o - match_val_len;
                        mem_data_o <= {flow_val_o[0] + 1, flow_val_o[1],
                                        flow_val_o[2], flow_val_o[3]};
                        state <= STATE_STORE_VAL;
                    end else begin
                        mem_ce_o <= `FALSE;
                        ready_o <= `TRUE;
                        is_match_o <= `TRUE;
                        state <= STATE_FREE;
                    end
                end
            end
            STATE_STORE_VAL: begin
                if (mem_ready_i == `TRUE) begin
                    mem_ce_o <= `FALSE;
                    ready_o <= `TRUE;
                    is_match_o <= `TRUE;
                    state <= STATE_FREE;
                end
            end
            default: begin
                state <= STATE_FREE;
            end
            endcase
        end
    end

    hash hash0(
        .clk(clk),
        .rst(rst),
        .start_i(hash_start_i),
        .key_i(hash_key_o),
        .hash_ready_o(hash_ready_i),
        .hash_val_o(hash_val_i)
    );

endmodule