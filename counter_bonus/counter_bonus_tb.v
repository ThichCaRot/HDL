`timescale 1ns / 1ps

module counter_bonus_tb;
    reg clk;
    reg rst;
    reg UpDwn;
    wire [7:0] count;

    counter_bonus u1 (
        .clk(clk), 
        .rst(rst), 
        .UpDwn(UpDwn), 
        .count(count)
    );

    always begin
        #5 clk = ~clk;    
    end

    initial begin
        clk = 0;
        rst = 1;
        UpDwn = 1;

        #15;
        rst = 0;
        #15;
        UpDwn = 0;
        #200;
        UpDwn = 1;
        #75;
        rst = 1;
        #15;
        rst = 0;
        #15;

        $finish;
    end

endmodule
