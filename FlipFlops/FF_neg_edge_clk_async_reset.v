`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:20:33 12/27/2022 
// Design Name: 
// Module Name:    FF_neg_edge_clk_async_reset 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
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
