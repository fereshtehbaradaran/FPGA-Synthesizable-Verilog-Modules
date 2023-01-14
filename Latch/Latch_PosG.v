`timescale 1ns / 1ps

module Latch_posG(
    input D,
    input G,
    output reg Q
    );
	 
	 always @ (G or D) begin
		if (G)
			Q = D;
	 end

endmodule
