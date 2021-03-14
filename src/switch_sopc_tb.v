`timescale 1ns/1ps

module switch_sopc_tb (
);
    reg CLOCK_50;
    reg rst;

    initial begin
        CLOCK_50 = 1'b0;
        forever begin
            #10 CLOCK_50 = ~CLOCK_50;
        end
    end

    initial begin
        rst = 1'b1;
        #65 rst = 1'b0;
        #200 $stop;
    end

    switch_sopc switch_sopc0(
        .clk(CLOCK_50),
        .rst(rst)
    );

endmodule
