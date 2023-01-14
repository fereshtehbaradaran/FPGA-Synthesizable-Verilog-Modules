`timescale 1ns / 1ps

module FF_pos_edge_clk(
    input D,
    input clk,
    output Q
    );
	 
	 reg Q;
	 
	 always @ (posedge clk) begin
		Q <= D;
	end

endmodule
