// Code your design here
// 4-bit Subtractor using 2's complement method
module Subtractor_4bit (
    input  [3:0] A,   // Minuend
    input  [3:0] B,   // Subtrahend
    output [3:0] Diff, // Difference
    output Borrow      // Borrow (when B > A)
);
    wire [4:0] result;

    // Perform subtraction using 2’s complement: A - B = A + (~B + 1)
    assign result = {1'b0, A} - {1'b0, B};

    assign Diff   = result[3:0]; // Difference
    assign Borrow = result[4];   // Borrow bit
endmodule
