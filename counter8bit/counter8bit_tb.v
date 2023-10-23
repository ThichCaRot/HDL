`timescale 1 ns/ 100 ps
module counter8bit_tb();
  reg clk;
  reg pre;
  reg clear;
  reg [3:0] data_in;
  wire [3:0] data_out;
  reg en;
  counter8bit ct1(.clk(clk),.en(en), .pre(pre), .clear(clear), .data_in(data_in), .data_out(data_out));
  always #35 clk = ~clk;
  initial begin
    pre <= 1'b0;
    clk <= 1'b0;
    clear <= 1'b0;
    en <= 1'b0;
    data_in <= 4'b0000;
  #5 clear<=1'b1;
  #15 clear<=1'b0;
  #145 clear<=1'b1;
  #20 clear<=1'b0;
  #320 pre <=1'b1;
  #20 pre<=1'b0;
  #300 begin
    en <= 1'b1;
    data_in <= 5; //4'b0101;
    end
  #20 en <= 1'b0;
  #100;
  $finish;
  end
endmodule