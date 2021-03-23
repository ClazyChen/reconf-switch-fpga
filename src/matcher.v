`include "def.vh"

module matcher (
    input wire clk,
    input wire rst,
    input wire start_i,
    input wire [`WORD_WIDTH * `NUM_HEADERS - 1:0] parsed_hdrs_i,
    // mem
    output reg mem_ce_o,
    output reg mem_we_o,
    output reg [`ADDR_BUS] mem_addr_o,
    output reg [3:0] mem_width_o,
    output reg [`DATA_BUS] mem_data_o,
    input wire [`DATA_BUS] mem_data_i,
    // output
    output reg ready_o,
    output reg [`ADDR_BUS] val_addr_o,
    // modify
    input wire mod_start_i,
    input wire [3:0] mod_match_hdr_id_i,
    input wire [5:0] mod_match_key_off_i,
    input wire [5:0] mod_match_key_len_i
);

    parameter LOGIC_ENTRY_LEN = 16;
    parameter LOGIC_START_ADDR = 128;

    // headers
    wire [`DATA_BUS] parsed_hdrs [`NUM_HEADERS - 1:0];
    assign parsed_hdrs[0] = parsed_hdrs_i[63:32];
    assign parsed_hdrs[1] = parsed_hdrs_i[31:0];

    // table
    reg [3:0] match_hdr_id;
    reg [5:0] match_key_off;
    reg [5:0] match_key_len;

    // load
    reg [`ADDR_BUS] mem_addr;
    integer mem_cnt;

    // key
    reg [`BYTE_BUS] key_data [7:0];
    reg [`BYTE_BUS] entry_key_data [7:0];

    // hash
    reg hash_start;
    wire hash_ready;
    wire [`DATA_BUS] hash_val;
    wire [`QUAD_BUS] hash_key_o;
    assign hash_key_o = {
        key_data[0], key_data[1], key_data[2], key_data[3],
        key_data[4], key_data[5], key_data[6], key_data[7]
    };

    reg [`MT_STATE_BUS] state;

    integer i;

    always @(posedge clk) begin
        if (rst == `TRUE) begin
            // mem
            mem_ce_o <= `FALSE;
            // output
            ready_o <= `FALSE; 
            val_addr_o <= `ZERO_ADDR;
            // table
            match_hdr_id <= 0;
            match_key_off <= 0;
            match_key_len <= 0;
            // reg
            hash_start <= `FALSE;
            mem_addr <= `ZERO_ADDR;
            mem_cnt <= 0;
            for (i = 0; i < 8; i = i + 1) begin
                key_data[i] <= `ZERO_BYTE;
                entry_key_data[i] <= `ZERO_BYTE;
            end
            state <= `MT_STATE_FREE;
        end else begin
            // load key
            case (state)
            `MT_STATE_FREE: begin
                if (mod_start_i == `TRUE) begin
                    match_hdr_id <= mod_match_hdr_id_i;
                    match_key_off <= mod_match_key_off_i;
                    match_key_len <= mod_match_key_len_i;
                end else if (start_i == `TRUE) begin
                    // mem
                    mem_ce_o <= `TRUE;
                    // output
                    ready_o <= `FALSE;
                    val_addr_o <= `ZERO_ADDR;
                    // reg
                    hash_start <= `FALSE;
                    mem_addr <= parsed_hdrs[match_hdr_id] + match_key_off;
                    mem_cnt <= 0;
                    for (i = 0; i < 8; i = i + 1) begin
                        key_data[i] <= `ZERO_BYTE;
                        entry_key_data[i] <= `ZERO_BYTE;
                    end
                    state <= `MT_STATE_LOAD_KEY;
                end
            end
            `MT_STATE_LOAD_KEY: begin
                if (mem_cnt == match_key_len) begin
                    mem_ce_o <= `FALSE;
                    hash_start <= `TRUE;
                    state <= `MT_STATE_HASH;
                end else begin
                    mem_addr <= mem_addr + 1;
                    key_data[mem_cnt] <= mem_data_i[`BYTE_BUS];
                    mem_cnt <= mem_cnt + 1;
                end
            end
            `MT_STATE_HASH: begin
                if (hash_ready == `TRUE) begin
                    hash_start <= `FALSE;
                    mem_ce_o <= `TRUE;
                    mem_addr <= LOGIC_START_ADDR + hash_val * LOGIC_ENTRY_LEN;
                    mem_cnt <= 0;
                    state <= `MT_STATE_LOAD_ENTRY;
                end
            end
            `MT_STATE_LOAD_ENTRY: begin
                if (mem_cnt == match_key_len) begin
                    mem_ce_o <= `FALSE;
                    ready_o <= `TRUE;
                    if (entry_key_data[0] == key_data[0] &&
                        entry_key_data[1] == key_data[1] &&
                        entry_key_data[2] == key_data[2] &&
                        entry_key_data[3] == key_data[3] &&
                        entry_key_data[4] == key_data[4] &&
                        entry_key_data[5] == key_data[5] &&
                        entry_key_data[6] == key_data[6] &&
                        entry_key_data[7] == key_data[7]) begin
                        val_addr_o <= mem_addr;
                    end else begin
                        val_addr_o <= `ZERO_ADDR;
                    end
                    state <= `MT_STATE_DONE;
                end else begin
                    entry_key_data[mem_cnt] <= mem_data_i[`BYTE_BUS];
                    mem_addr <= mem_addr + 1;
                    mem_cnt <= mem_cnt + 1;
                end
            end
            `MT_STATE_DONE: begin
                if (start_i == `FALSE) begin
                    state <= `MT_STATE_FREE;
                end
            end
            default: begin
                state <= `MT_STATE_FREE;
            end
            endcase
        end
    end

    always @(*) begin
        assign mem_we_o = `FALSE;
        assign mem_addr_o = mem_addr;
        assign mem_width_o = 1;
        assign mem_data_o = `ZERO_WORD;
    end

    hash hash0(
        .clk(clk),
        .rst(rst),
        .start_i(hash_start),
        .key_i(hash_key_o),
        .hash_ready_o(hash_ready),
        .hash_val_o(hash_val)
    );

endmodule