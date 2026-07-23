`timescale 1ns/1ps

module testbench;

    reg clk;
    reg reset;
    reg [1:0] a;
    reg [1:0] b;
    wire [1:0] out;

    // Instantiate the top module
    top uut (
        .clk(clk),
        .reset(reset),
        .a(a),
        .b(b),
        .out(out)
    );

    // Clock generation: 2ns period (500MHz)
    always #1 clk = ~clk;

    initial begin
    `timescale 1ns / 1ps

module testbench;

    // Inputs
    reg clk;
    reg reset;
    reg [1:0] a;
    reg [1:0] b;

    // Outputs
    wire [1:0] out;

    // Instantiate the Unit Under Test (UUT)
    top uut (
        .clk(clk), 
        .reset(reset), 
        .a(a), 
        .b(b), 
        .out(out)
    );

    // Clock generation (10ns period)
    always #5 clk = ~clk;

    initial begin
        // Waveform dumping commands
        $dumpfile("dump.vcd");
        $dumpvars(0, testbench);

        // Display setup
        $monitor("Time=%0t ns | reset=%b | a=%b | b=%b | out=%b", $time, reset, a, b, out);

        // Initialize signals
        clk = 0;
        reset = 1;

        #10 reset = 0; a = 2'b00; b = 2'b00;
        #10 a = 2'b11; b = 2'b11;
        #10 a = 2'b10; b = 2'b01;
        #10 a = 2'b01; b = 2'b11;

        #20 $finish;
    end

endmodule
    $dumpfile("dump.vcd");    // Add this line
    $dumpvars(0, testbench);  // Add this line

    // Your existing code below...
    $monitor("Time=%0t ns | reset=%b | a=%b | b=%b | out=%b", $time, reset, a, b, out);
    clk = 0;
    reset = 1;
    // ... rest of your code ...
end
    // ADD THESE TWO LINES FOR WAVEFORM GENERATION:
    $dumpfile("dump.vcd");
    $dumpvars(0, testbench);

    // Your existing code stays here...
    $monitor("Time=%0t ns | reset=%b | a=%b | b=%b | out=%b", $time, reset, a, b, out);
    clk = 0;
    reset = 1;
    // ... 
   // Display output header in terminal
        $monitor("Time=%0t ns | reset=%b | a=%b | b=%b | out=%b", $time, reset, a, b, out);

        // Initialize signals
        clk = 0;
        reset = 1;
        a = 2'b00;
        b = 2'b00;

        // Release reset after 2 ns
        #2 reset = 0;

        // Apply inputs
        #2 a = 2'b11; b = 2'b11;
        #2 a = 2'b10; b = 2'b01;
        #2 a = 2'b01; b = 2'b11;

        #5 $finish;
    end

endmodule
