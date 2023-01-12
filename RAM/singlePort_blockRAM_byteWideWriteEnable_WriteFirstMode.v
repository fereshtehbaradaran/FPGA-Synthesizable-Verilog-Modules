`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:10:54 01/12/2023 
// Design Name: 
// Module Name:    singlePort_blockRAM_byteWideWriteEnable_WriteFirstMode 
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
module singlePort_blockRAM_byteWideWriteEnable_WriteFirstMode(CLK, we, addr, DI, DO);
	parameter SIZE = 512;
	parameter ADD_WIDTH = 9;
	parameter DI_WIDTH = 8;
	
	input CLK;
	input [1:0] we;
	input [ADD_WIDTH - 1 : 0] addr;
	input [2 * DI_WIDTH - 1 : 0] DI;
	output reg [2 * DI_WIDTH - 1 : 0] DO;
	
	reg [2 * DI_WIDTH - 1 : 0] RAM [SIZE - 1 : 0];
	reg [DI_WIDTH - 1 : 0] diH, diL, doH, doL;
	
	always @ (we or DI) begin
		if (we[1]) begin
			diH = DI[2 * DI_WIDTH - 1 : 1 * DI_WIDTH];
			doH = DI[2 * DI_WIDTH - 1 : 1 * DI_WIDTH];
		end
		else begin
			diH = RAM[addr][2 * DI_WIDTH - 1 : 1 * DI_WIDTH];
			doH = RAM[addr][2 * DI_WIDTH - 1 : 1 * DI_WIDTH];
		end
		if (we[0]) begin
			diL = DI[DI_WIDTH - 1 : 0];
			doL = DI[DI_WIDTH - 1 : 0];
		end
		else begin
			diL = RAM[addr][DI_WIDTH - 1 : 0];
			doL = RAM[addr][DI_WIDTH - 1 : 0];
		end
	end
	
	always @ (posedge CLK) begin
		RAM[addr] <= {diH, diL};
		DO <= {doH, doL};
	end
	
endmodule
