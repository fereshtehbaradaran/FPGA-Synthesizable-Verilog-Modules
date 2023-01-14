`timescale 1ns / 1ps

module singlePort_blockRAM_byteWideWriteEnable_ReadFirstMode(CLK, we, addr, DI, DO);
	parameter SIZE = 512; //2 ^ ADDR_WIDTH
	parameter ADDR_WIDTH = 9;
	parameter DI_WIDTH = 8;
	
	input CLK;
	input [1:0] we;
	input [ADDR_WIDTH - 1:0] addr;
	input [2*DI_WIDTH - 1:0] DI;
	output reg [2*DI_WIDTH - 1:0] DO;
	
	reg [2*DI_WIDTH - 1:0] RAM [SIZE - 1:0];
	reg [DI_WIDTH - 1:0] diL, diH;
	
	always @ (we or DI) begin
		if(we[1])
			diH = DI[2 * DI_WIDTH - 1 : 1 * DI_WIDTH];
		else
			diH = RAM[addr][2 * DI_WIDTH - 1 : 1 * DI_WIDTH];
		if (we[0])
			diL = DI[DI_WIDTH - 1 : 0];
		else
			diL = RAM[addr][DI_WIDTH - 1 : 0];
	end
	
	always @ (posedge CLK) begin
		RAM[addr] <= {diH, diL};
		DO <= RAM[addr];
	end
	
endmodule
