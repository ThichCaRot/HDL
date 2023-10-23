module ASM1(
  input wire clk,
  input wire pre,
  input wire clear,
  input wire [3:0] data_in,
  output reg [3:0] data_out,
  input en
);
always @(posedge clk or posedge en or posedge clear or posedge pre) begin
  if (pre == 1'b1)
    begin
      data_out <= 4'b1111; 
    end
    else
      if (clear == 1'b1)
    begin
      data_out <= 4'b0000;
    end
    else if (en == 1'b1)
    begin
      data_out <= data_in; 
    end
    else
      data_out <= data_out+ 1; //or data_out + 3'b0001;
      
end
endmodule
