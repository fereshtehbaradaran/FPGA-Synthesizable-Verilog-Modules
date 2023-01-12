`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:48:17 01/12/2023 
// Design Name: 
// Module Name:    dualPort_RAM_syncRead_2CLK 
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
module dualPort_RAM_syncRead_2CLK(
    input CLK1,
    input CLK2,
    input we,
    input [5:0] add1,
    input [5:0] add2,
    input [15:0] DI,
    output [15:0] DO1,
    output [15:0] DO2
    );
	 
	 reg [15:0] RAM [63:0];
	 reg [5:0] read_add1, read_add2;
	 
	 always @ (posedge CLK1) begin
		if (we)
			RAM[add1] <= DI;
		read_add1 <= add1;
	 end
	 
	 assign DO1 = RAM[read_add1];
	 
	 always @ (posedge CLK2) begin
		read_addr2 <= add2;
	 end
	 
	 assign DO2 = RAM[read_add2];

endmodule
