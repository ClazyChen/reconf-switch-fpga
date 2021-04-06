
// no_change mode: output doesn't chnage when write enable, chnage only when rd enable (~|we = 0)
// write: 1 clock latency; read: 1 clock latency
module bram_write_enable_dual_port
#(
    parameter NUM_COL = 4,
    parameter COL_WIDTH = 8,
    parameter ADDR_WIDTH = 10, 
    parameter DATA_WIDTH = NUM_COL*COL_WIDTH 
) (
    input                           clkA,
    input                           enaA,
    input   [NUM_COL-1:0]           weA,
    input   [ADDR_WIDTH-1:0]        addrA,
    input   [DATA_WIDTH-1:0]        dinA,
    output  reg [DATA_WIDTH-1:0]    doutA,
    input                           clkB,
    input                           enaB,
    input   [NUM_COL-1:0]           weB,
    input   [ADDR_WIDTH-1:0]        addrB,
    input   [DATA_WIDTH-1:0]        dinB,
    output  reg [DATA_WIDTH-1:0]    doutB
);
    // Core Memory
    reg [DATA_WIDTH-1:0] ram_block [(2**ADDR_WIDTH)-1:0];
    // Port-A Operation
    generate
        genvar i;
        for(i=0;i<NUM_COL;i=i+1) begin
            always @ (posedge clkA) begin
                if(enaA) begin
                    if(weA[i]) begin
                        ram_block[addrA][i*COL_WIDTH +: COL_WIDTH] <= dinA[i*COL_WIDTH +: COL_WIDTH];
                    end
                end
            end
        end
    endgenerate

    always @ (posedge clkA) begin
        if(enaA) begin
            if (~|weA)
                doutA <= ram_block[addrA];
        end
    end

    // Port-B Operation:
    generate
        for(i=0;i<NUM_COL;i=i+1) begin
            always @ (posedge clkB) begin
                if(enaB) begin
                    if(weB[i]) begin
                        ram_block[addrB][i*COL_WIDTH +: COL_WIDTH] <= dinB[i*COL_WIDTH +: COL_WIDTH];
                    end
                end
            end
        end
    endgenerate

    always @ (posedge clkB) begin
        if(enaB) begin
            if (~|weB)
                doutB <= ram_block[addrB];
        end
    end
    
endmodule