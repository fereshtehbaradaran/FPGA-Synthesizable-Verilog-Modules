`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:28:54 01/12/2023 
// Design Name: 
// Module Name:    unsigned_adder_CarryIn_CarryOut 
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
module unsigned_adder_CarryIn_CarryOut(
    input [7:0] A,
    input [7:0] B,
    input CI,
    output CO,
    output [7:0] SUM
    );
	 
	 wire [8:0] temp;
	 
	 assign temp = A + B + CI;
	 assign SUM = temp[7:0];
	 assign CO = temp[8];

endmodule
