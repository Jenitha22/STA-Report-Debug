module top (
    input wire clk,
    input wire reset,
    input wire [1:0] a,
    input wire [1:0] b,
    output reg [1:0] out
);

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            out <= 2'b00;
        end else begin
            // Data path with combinational logic (NAND + BUF equivalent logic)
            out <= ~(a & b);
        end
    end

endmodule
