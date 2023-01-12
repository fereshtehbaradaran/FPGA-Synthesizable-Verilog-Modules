`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:26:19 01/12/2023 
// Design Name: 
// Module Name:    unsigned_adder_CarryOut 
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
module unsigned_adder_CarryOut(
    input [7:0] A,
    input [7:0] B,
    output [7:0] SUM,
    output CO
    );
	 
	 wire [8:0] temp;
	 assign temp = A + B;
	 assign SUM = temp[7:0];
	 assign CO = temp[8];
	 
endmodule
