`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:59:42 12/28/2022 
// Design Name: 
// Module Name:    fourBit_latch_InvG_asyncSet 
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
module fourBit_latch_InvG_asyncSet(
    input [3:0] D,
    input G,
    input PRE,
    output reg [3:0] Q
    );
	 
	 always @ (G or D or PRE) begin
		if (PRE)
			Q = 4'b1111;
		else if (~G)
			Q = D;
	 end
	 
endmodule
