`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:42:24 01/12/2023 
// Design Name: 
// Module Name:    unsigned_Multiplier 
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
module unsigned_Multiplier(
    input [7:0] A,
    input [3:0] B,
    output [11:0] RES
    );
	 
	 assign RES = A * B;

endmodule
