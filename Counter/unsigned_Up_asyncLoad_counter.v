`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:40:56 12/28/2022 
// Design Name: 
// Module Name:    unsigned_Up_asyncLoad_counter 
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
module unsigned_Up_asyncLoad_counter(
    input C,
    input ALOUD,
    input [3:0] D,
    output [3:0] Q
    );
	 
	 reg [3:0] temp;
	 always @ (posedge C or posedge ALOUD) begin
		if (ALOUD)
			temp <= D;
		else
			temp <= temp + 1'b1;
	 end
	 assign Q = temp;

endmodule
