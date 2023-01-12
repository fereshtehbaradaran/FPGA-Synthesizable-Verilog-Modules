`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:46:07 01/12/2023 
// Design Name: 
// Module Name:    pipelined_multiplier_Outside_Shift 
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
module pipelined_multiplier_Outside_Shift(
    input CLK,
    input [17:0] A,
    input [17:0] B,
    output [35:0] MULT
    );
	 
	 reg [35:0] MULT;
	 
	 reg [17:0] a_in, b_in;
	 wire [35:0] mult_res;
	 reg [35:0] pipe_regs [2:0];
	 
	 assign mult_res = a_in * b_in;
	 
	 integer i;
	 always @ (posedge CLK) begin
		a_in <= A;
		b_in <= B;
		pipe_regs[2] <= mult_res;
		for (i = 0; i <= 1; i = i + 1)
			pipe_regs[i] <= pipe_regs[i + 1];
		MULT <= pipe_regs[0];
	 end
endmodule
