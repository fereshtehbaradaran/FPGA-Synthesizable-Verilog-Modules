`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:10:07 12/28/2022 
// Design Name: 
// Module Name:    tristate_buffer 
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
module tristate_buffer(
    input T,
    input I,
    output O
    );
	 
	 assign O = (~T)? I : 1'bz;

endmodule
