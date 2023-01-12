`timescale 1ns / 1ps

module unsigned_adder(
    input [7:0] A,
    input [7:0] B,
    output [7:0] SUM
    );
	 
	 assign SUM = A + B;

endmodule
