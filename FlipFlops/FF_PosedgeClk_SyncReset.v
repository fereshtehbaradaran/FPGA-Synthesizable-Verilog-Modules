`timescale 1ns / 1ps

module FF_pos_edge_Clk_sync_set(
    input D,
    input S,
    input clk,
    output Q
    );
	 
	 reg Q;
	 always @ (posedge clk) begin
	 if (S)
		Q <= 1'b1;
	 else
		Q <= D;
	 end

endmodule
