`timescale 1ns / 1ps

module fourBit_latch_InvG_asyncSet(
    input [3:0] D,
    input G,
    input PRE,
    output reg [3:0] Q
    );
	 
	 always @ (G or D or PRE) begin
		if (PRE)
			Q = 4'b1111;
		else if (~G)
			Q = D;
	 end
	 
endmodule
