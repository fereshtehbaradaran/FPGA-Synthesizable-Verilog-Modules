`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:53:13 12/27/2022 
// Design Name: 
// Module Name:    FF_posedgeClk_clkEnable 
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
module FF_posedgeClk_clkEnable(
    input D,
    input clk,
    input CE,
    output Q
    );
	 
	 reg Q;
	 always @ (posedge clk) begin
		if (CE)
			Q <= D;
	 end

endmodule
