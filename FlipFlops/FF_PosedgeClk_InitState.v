`timescale 1ns / 1ps

module FF_pos_edge_clk_initState(
    input D,
    input clk,
    output Q
    );
	 
	 reg qtemp = 'b1;
	 always @ (posedge clk) begin
		qtemp = D;
	 end
	 
	 assign Q = qtemp;

endmodule
