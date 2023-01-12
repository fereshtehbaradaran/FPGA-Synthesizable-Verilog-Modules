`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:20:52 12/18/2022 
// Design Name: 
// Module Name:    bidirec 
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
module bidirec(
    input oe,
    input clk,
    input [7:0] inp,
    output [7:0] outp,
    inout [7:0] bidir
    );
	 
	 reg [7:0] a;
	 reg [7:0] b;
	 
	 assign bidir = oe ? a : 8'bz ;
	 assign outp = b;
	 
	 always @ (posedge clk) begin
		b <= bidir;
		a <= inp;
	 end


endmodule
