`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:42:57 01/12/2023 
// Design Name: 
// Module Name:    blockRAM_resetPin 
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
module blockRAM_resetPin(
    input CLK,
    input en,
    input we,
    input CLR,
    input [5:0] addr,
    input [15:0] DI,
    output reg [15:0] DO
    );
	 
	 reg [15:0] RAM [63:0];
	 
	 always @ (posedge CLK) begin
		if (en) begin
			if (we)
				RAM[addr] <= DI;
			if (CLR)
				DO <= 16'b0000000000000000;
			else
				DO <= RAM[addr];
		end
	 end

endmodule
