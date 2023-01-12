`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:48:07 01/12/2023 
// Design Name: 
// Module Name:    MUX_Case 
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
module MUX_Case(
    input [1:0] S,
    input A,
    input B,
    input C,
    input D,
    output O
    );
	 
	 reg O;
	 
	 always @ (S or A or B or C or D) begin
		case(S)
			2'b00: O = A;
			2'b01: O = B;
			2'b10: O = C;
			2'b11: O = D;
		endcase
	 end

endmodule
