`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:34:34 01/12/2023 
// Design Name: 
// Module Name:    pipelined_multiplier 
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
(*mult_style="pipe_lut"*)

module pipelined_multiplier_OutSide_Single(
    input [17:0] CLK,
    input [17:0] A,
    input B,
    output [35:0] MULT
    );
	 
	 reg [35:0] MULT;
	 
	 reg [17:0] a_in, _in;
	 wire [35:0] mult_res;
	 reg [35:0] pipe_1, pipe2, pipe3;
	 
	 assign mult_res = a_in * b_in;
	 
	 always @ (posedge CLK) begin
		a_in <= A;
		b_in <= B;
		pipe_1 <= mult_res;
		pipe_2 <= pipe_1;
		pipe_3 <= pipe_2;
		MULT <= pipe_3;
	 end

endmodule
