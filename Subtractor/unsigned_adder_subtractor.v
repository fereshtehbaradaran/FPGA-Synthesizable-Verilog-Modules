`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:37:50 01/12/2023 
// Design Name: 
// Module Name:    unsigned_adder_subtractor 
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
module unsigned_adder_subtractor(
    input [7:0] A,
    input [7:0] B,
    input OPER,
    output [7:0] RES
    );
	 
	 reg [7:0] RES;
	 
	 always @ (A or B or OPER) begin
		if (OPER == 1'b0)
			RES = A + B;
		else
			RES = A - B;
	 end

endmodule
