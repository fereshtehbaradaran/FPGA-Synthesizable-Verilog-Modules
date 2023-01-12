`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:44:39 01/12/2023 
// Design Name: 
// Module Name:    sequential_complex_Multiplier 
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
module sequential_complex_Multiplier(CLK, A, B, Oper_Load, Oper_AddSub, RES);
	parameter A_WIDTH = 18;
	parameter B_WIDTH = 18;
	parameter RES_WIDTH = 48;
	parameter P_WIDTH = A_WIDTH + B_WIDTH;
	
	input CLK;
	input signed [A_WIDTH - 1:0] A;
	input signed [B_WIDTH - 1:0] B;
	input Oper_Load, Oper_AddSub;
	output [RES_WIDTH - 1:0] RES;
	
	
	reg oper_load0 = 0;
	reg oper_addsub0 = 0;
	reg signed [P_WIDTH - 1:0] p1 = 0;
	
	reg oper_load1 = 0;
	reg oper_addsub1 = 0;
	reg signed [RES_WIDTH - 1:0] res0;
	reg signed [RES_WIDTH - 1:0] acc;
	
	always @ (posedge CLK) begin
		oper_load0 <= Oper_Load;
		oper_addsub0 <= Oper_AddSub;
		p1 <= A * B;
		
		oper_load1 <= oper_load0;
		oper_addsub1 <= oper_addsub0;
		
		if (oper_load1 == 1'b1)
			acc = res0;
		else
			acc = 0;
			
		if (oper_addsub1 == 1'b1)
			res0 <= acc - p1;
		else
			res0 <= acc + p1;
	
	end
	
	assign RES = res0;

endmodule
