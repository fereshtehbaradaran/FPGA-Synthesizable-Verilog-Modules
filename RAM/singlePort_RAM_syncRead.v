`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:33:36 01/12/2023 
// Design Name: 
// Module Name:    singlePort_RAM_syncRead 
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
module singlePort_RAM_syncRead(   //write first
    input CLK,
    input we,
    input [5:0] address,
    input [15:0] DI,
    output [15:0] DO
    );
	 
	 reg [15:0] RAM [63:0];
	 reg [5:0] read_addr;
	 
	 always @ (posedge CLK) begin
		if (we)
			RAM[address] <= DI;
		read_addr <= address;
	 end
	 
	 assign DO = RAM[read_addr];

endmodule
