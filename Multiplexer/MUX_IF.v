`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:44:30 01/12/2023 
// Design Name: 
// Module Name:    MUX_IF 
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
module MUX_IF(
    input A,
    input B,
    input C,
    input D,
    input [1:0] S,
    output O
    );
	 
	 reg O;
	 
	 always @ (S or A or B or C or D) begin
		if(S == 2'b00)
			O = A;
		else if (S == 2'b01)
			O = B;
		else if (S == 2'b10)
			O = C;
		else
			O = D;
	 end
endmodule
