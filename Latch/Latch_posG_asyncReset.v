`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:52:25 12/28/2022 
// Design Name: 
// Module Name:    Latch_posG_asyncReset 
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
module Latch_posG_asyncReset(
    input D,
    input G,
    input CLR,
    output reg Q
    );
	 
	 always @ (G or D or CLR) begin
		if (CLR)
			Q = 1'b0;
		else if (G)
			Q = D;
	 end

endmodule
