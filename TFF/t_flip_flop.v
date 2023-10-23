module t_flip_flop (
    input wire clk,
    input wire reset,
    input wire t,
    output reg q
);

    always @(posedge clk or negedge reset) begin
        if (!reset) begin
            q <= 1'b0;
        end else begin
            if (t) begin
                q <= ~q;
            end
        end
    end

endmodule
