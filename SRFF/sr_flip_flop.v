module sr_flip_flop(
    input s,
    input r,
    input reset,
    input clk,
    output reg q,
    output reg qbar
);

always @(posedge clk or posedge reset) begin
    if (reset) begin
        q <= 1'b0;
        qbar <= 1'b1;
    end else begin
        if (s && !r) begin
            q <= 1'b1;
            qbar <= 1'b0;
        end else if (!s && r) begin
            q <= 1'b0;
            qbar <= 1'b1;
        end else begin
            q <= q;
            qbar <= qbar;
        end
    end
end

endmodule
