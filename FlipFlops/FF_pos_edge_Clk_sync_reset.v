`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:36:11 12/27/2022 
// Design Name: 
// Module Name:    FF_pos_edge_Clk_sync_reset 
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
