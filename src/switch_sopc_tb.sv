`timescale 1ns/1ps

module switch_sopc_tb (
);
    reg clk;
    reg rst;

    initial begin
        clk = 1'b0;
        forever begin
            #10 clk = ~clk;
        end
    end

    initial begin
        rst = 1'b1;
        #65 rst = 1'b0;
        #200 $stop;
    end

    switch_sopc switch_sopc0(
        .clk(clk),
        .rst(rst)
    );

    initial begin
        $display("Loading packet");
        $readmemh("D:\\year4\\final_paper\\ReconfSwitch\\src\\packet.data", switch_sopc0.sram0.data_mem);
        // reset checksum
        switch_sopc0.sram0.data_mem[6][31:16] = `ZERO_HALF;
    end

endmodule
