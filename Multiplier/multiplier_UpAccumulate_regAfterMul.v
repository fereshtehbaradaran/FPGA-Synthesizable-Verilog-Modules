`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:50:43 01/12/2023 
// Design Name: 
// Module Name:    multiplier_UpAccumulate_regAfterMul 
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
module multiplier_UpAccumulate_regAfterMul(
    input CLK,
    input reset,
    input [7:0] A,
    input [7:0] B ,
    output [15:0] RES
    );
	 
	 reg [15:0] mult, accum;
	 
	 always @ (posedge CLK) begin
		if (reset)
			mult <= 16'b0000000000000000;
		else
			mult <= A * B;
			
	 end
	 
	 always @ (posedge CLK) begin
		if (reset)
			accum <= 16'b0000000000000000;
		else
			accum <= accum + mult;
	 end
	 
	 assign RES = accum;
endmodule
