`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:46:06 01/12/2023 
// Design Name: 
// Module Name:    multiplier_adderSubtractor_2ResgisterLevelInput 
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
module multiplier_adderSubtractor_2ResgisterLevelInput(
    input CLK,
    input [7:0] A,
    input [7:0] B,
    input [7:0] C,
    input add_sub,
    output [15:0] RES
    );
	 
	 reg [7:0] A_reg1, A_reg2, B_reg1, B_reg2;
	 wire [15:0] mult, multaddsub;
	 
	 always @ (posedge CLK) begin
		A_reg1 <= A;
		A_reg2 <= A_reg1;
		B_reg1 <= B;
		B_reg2 <= B_reg1;
	 end
	 
	 assign mult = A_reg2 * B_reg2;
	 assign multaddsub = add_sub ? C + mult : C - mult;
	 assign RES = multaddsub;
	 
endmodule
