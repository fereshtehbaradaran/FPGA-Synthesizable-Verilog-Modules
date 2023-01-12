`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:15:46 01/12/2023 
// Design Name: 
// Module Name:    singlePort_RAM_WriteFirstMode 
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
module singlePort_RAM_WriteFirstMode(
    input CLK,
    input we, //Write Enable
    input en, //Enable
    input [5:0] address,
    input [15:0] DI,
    output [15:0] DO
    );
	 
	 reg [15:0] DO;
	 reg [15:0] RAM [63:0];
	 
	 always @ (posedge CLK) begin
		if (en) begin
			if (we) begin
				RAM[address] <= DI;
				DO <= DI;
			end
			else
				DO <= RAM[address];
		end
	 end
	 
	 
	 
	 /* Another way!
	 
	reg [5:0] read_addr
	
	always @ (posedge CLK) begin
		if (en) begin
			if (we)
				RAM[address] <= DI;
			read_addr <= address;
		end
	end
	
	assign DO = RAM[read_addr];
	 
	 */
	 
	 

endmodule
