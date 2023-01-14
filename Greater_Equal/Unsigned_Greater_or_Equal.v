`timescale 1ns / 1ps

module unsigned_Greater_or_Equal(
    input [7:0] A,
    input [7:0] B,
    output CMP
    );
	 
	 assign CMP = (A >= B) ? 1'b1 : 1'b0;

endmodule
