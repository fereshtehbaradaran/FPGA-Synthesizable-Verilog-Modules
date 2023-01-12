`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:46:29 12/28/2022 
// Design Name: 
// Module Name:    unsigned_Up_syncLoad_counter 
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
module unsigned_Up_syncLoad_counter(
    input C,
    input SLOAD,
    output [3:0] Q
    );
	 reg [3:0] temp;
	 
	 always @ (posedge C) begin
		if (SLOAD)
			temp <= 4'b1010;
		else
			temp <= temp + 1'b1;
	 end
	 assign Q = temp;
	 
endmodule
