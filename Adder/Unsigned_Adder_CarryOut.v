`timescale 1ns / 1ps

module unsigned_adder_CarryOut(
    input [7:0] A,
    input [7:0] B,
    output [7:0] SUM,
    output CO
    );
	 
	 wire [8:0] temp;
	 assign temp = A + B;
	 assign SUM = temp[7:0];
	 assign CO = temp[8];
	 
endmodule
