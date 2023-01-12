`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:25:11 01/12/2023 
// Design Name: 
// Module Name:    singlePort_RAM_NoChangeMode 
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
module singlePort_RAM_NoChangeMode(
    input CLK,
    input we,
    input en,
    input [5:0] address,
    input [15:0] DI,
    output [15:0] DO
    );
	 
	 reg [15:0] DO;
	 reg [15:0] RAM [63:0];
	 
	 always @ (posedge CLK) begin
		if (en) begin
			if (we)
				RAM[address] <= DI;
			else
				DO <= RAM[address];
		end
	 end

endmodule
