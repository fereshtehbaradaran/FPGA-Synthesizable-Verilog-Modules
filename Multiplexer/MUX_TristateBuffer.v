`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:53:25 01/12/2023 
// Design Name: 
// Module Name:    MUX_TristateBuffer 
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
module MUX_TristateBuffer(
    input [1:0] S,
    input A,
    input B,
    input C,
    input D,
    output O
    );
	
	 assign O = S[3] ? A :1'bz;
	 assign O = S[2] ? B :1'bz;
	 assign O = S[1] ? C :1'bz;
	 assign O = S[0] ? D :1'bz;
	 
endmodule
