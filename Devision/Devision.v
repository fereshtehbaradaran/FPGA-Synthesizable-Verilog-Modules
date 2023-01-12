`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:03:31 01/12/2023 
// Design Name: 
// Module Name:    Devision 
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
module Devision(
    input [7:0] DI,
    output [7:0] DO
    );
	 
	 assign DO = DI / 2; //Only power of 2 can be used   
	                     //will be implemented by shift

endmodule
