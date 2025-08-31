// Code your testbench here
// or browse Examples
`timescale 1ns / 1ps

module tb_Subtractor_4bit;
    reg  [3:0] A, B;
    wire [3:0] Diff;
    wire Borrow;

    // Instantiate DUT
    Subtractor_4bit uut (
        .A(A),
        .B(B),
        .Diff(Diff),
        .Borrow(Borrow)
    );

    initial begin
        // For EPWave
        $dumpfile("subtractor.vcd");
        $dumpvars(0, tb_Subtractor_4bit);

        // Test cases
        A = 4'b1001; B = 4'b0011; #10; // 9 - 3 = 6
        A = 4'b0111; B = 4'b0101; #10; // 7 - 5 = 2
        A = 4'b0100; B = 4'b1001; #10; // 4 - 9 = Borrow
        A = 4'b1111; B = 4'b1111; #10; // 15 - 15 = 0
        A = 4'b1010; B = 4'b0010; #10; // 10 - 2 = 8

        $finish;
    end
endmodule
