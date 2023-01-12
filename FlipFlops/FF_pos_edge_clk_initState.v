`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:02:02 12/27/2022 
// Design Name: 
// Module Name:    FF_pos_edge_clk_initState 
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
