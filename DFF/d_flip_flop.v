module d_flip_flop (
    input wire clk,     // Clock input
    input wire reset,   // Reset input (active low)
    input wire d,       // Data input
    output reg q        // Output
);

    always @(posedge clk or negedge reset) begin
        if (!reset) begin
            q <= 1'b0;  // Reset the output to 0 when reset is active
        end else begin
            q <= d;     // Update the output with the D input on the rising edge of the clock
        end
    end

endmodule
