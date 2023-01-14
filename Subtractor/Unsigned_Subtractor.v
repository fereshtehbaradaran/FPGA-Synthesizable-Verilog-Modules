`timescale 1ns / 1ps

module unsigned_subtractor(
    input [7:0] A,
    input [7:0] B,
    output [7:0] RES
    );
	 
	 assign RES = A - B;

endmodule
