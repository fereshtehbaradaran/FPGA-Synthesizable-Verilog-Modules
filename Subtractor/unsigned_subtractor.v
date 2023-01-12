`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:34:33 01/12/2023 
// Design Name: 
// Module Name:    unsigned_subtractor 
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
module unsigned_subtractor(
    input [7:0] A,
    input [7:0] B,
    output [7:0] RES
    );
	 
	 assign RES = A - B;

endmodule
