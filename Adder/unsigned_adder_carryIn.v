`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:24:37 01/12/2023 
// Design Name: 
// Module Name:    unsigned_adder_carryIn 
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
module unsigned_adder_carryIn(
    input [7:0] A,
    input [7:0] B,
    input CI,
    output [7:0] SUM
    );
	 
	 assign SUM = A + B + CI;
endmodule
