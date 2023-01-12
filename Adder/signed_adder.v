`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:31:49 01/12/2023 
// Design Name: 
// Module Name:    signed_adder 
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
module signed_adder(
    input signed [7:0] A,
    input signed [7:0] B,
    output signed [7:0] SUM
    );
	 
	 wire signed [7:0] SUM;
	 assign SUM = A + B;
	 
endmodule
