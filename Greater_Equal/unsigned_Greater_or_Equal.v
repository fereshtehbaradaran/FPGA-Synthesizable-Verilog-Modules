`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:40:40 01/12/2023 
// Design Name: 
// Module Name:    unsigned_Greater_or_Equal 
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
module unsigned_Greater_or_Equal(
    input [7:0] A,
    input [7:0] B,
    output CMP
    );
	 
	 assign CMP = (A >= B) ? 1'b1 : 1'b0;

endmodule
