module counter_bonus (
    input wire clk,
    input wire rst,
    input wire UpDwn,
    output reg [7:0] count
);

always @(posedge clk) begin
    if (rst) begin
        count <= 8'b0;
    end else if (UpDwn) begin
        if (count < 255) begin
            count <= count + 1;
        end
    end else begin
        if (count > 0) begin
            count <= count - 1;
        end
    end
end

endmodule
