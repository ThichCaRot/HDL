module jk_flip_flop (
    input j,
    input k,
    input clk,
    input reset,
    output reg q,
    output reg qbar
);

always @(posedge clk or posedge reset) begin
    if (reset) begin
        q <= 1'b0;
        qbar <= 1'b1;
    end else begin
        if (j && k) begin
            q <= ~q;
            qbar <= ~qbar;
        end else if (j) begin
            q <= 1'b1;
            qbar <= 1'b0;
        end else if (k) begin
            q <= 1'b0;
            qbar <= 1'b1;
        end else begin
            q <= q;
            qbar <= qbar;
        end
    end
end

endmodule
