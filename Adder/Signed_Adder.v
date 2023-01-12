`timescale 1ns / 1ps

module signed_adder(
    input signed [7:0] A,
    input signed [7:0] B,
    output signed [7:0] SUM
    );
	 
	 wire signed [7:0] SUM;
	 assign SUM = A + B;
	 
endmodule
