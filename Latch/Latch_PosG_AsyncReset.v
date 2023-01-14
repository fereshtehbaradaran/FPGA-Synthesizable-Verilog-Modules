`timescale 1ns / 1ps

module Latch_posG_asyncReset(
    input D,
    input G,
    input CLR,
    output reg Q
    );
	 
	 always @ (G or D or CLR) begin
		if (CLR)
			Q = 1'b0;
		else if (G)
			Q = D;
	 end

endmodule
