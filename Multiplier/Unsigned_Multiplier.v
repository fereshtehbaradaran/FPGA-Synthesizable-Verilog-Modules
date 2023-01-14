`timescale 1ns / 1ps

module unsigned_Multiplier(
    input [7:0] A,
    input [3:0] B,
    output [11:0] RES
    );
	 
	 assign RES = A * B;

endmodule
