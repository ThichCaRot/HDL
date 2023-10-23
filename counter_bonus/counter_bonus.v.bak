module counter_bonus (
    input wire clk,
    input wire reset,
    input wire load,
    input wire [7:0] in,
    input wire up_down,
    output reg [7:0] out
);

always @(posedge clk or posedge reset) begin
    if (reset) begin
        out <= 8'b0;
    end else if (load) begin
        out <= in;
    end else begin
        if (up_down) begin
            out <= out + 1;
        end else begin
            out <= out - 1;
        end
    end
end

endmodule
