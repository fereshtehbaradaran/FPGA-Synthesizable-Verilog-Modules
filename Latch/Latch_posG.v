`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:48:39 12/28/2022 
// Design Name: 
// Module Name:    Latch_posG 
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
