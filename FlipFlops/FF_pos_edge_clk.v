`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:53:36 12/27/2022 
// Design Name: 
// Module Name:    FF_pos_edge_clk 
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
