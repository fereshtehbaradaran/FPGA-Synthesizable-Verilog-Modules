`timescale 1ns / 1ps

module FF_neg_edge_clk_async_reset(
    input D,
    input CLK,
    input CLR,
    output Q
    );
	 
	 reg Q;
	 always @ (negedge CLK or posedge CLR) begin
		if (CLR)
			Q <= 1'b0;
		else
		Q <= D;
	 
	 end

endmodule
