`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:33:26 01/12/2023 
// Design Name: 
// Module Name:    MUX_full_parallel 
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
module MUX_full_parallel(
    input [1:0] sel,
    input [1:0] I1,
    input [1:0] I2,
    input [1:0] I3,
    input [1:0] I4,
    output reg [1:0] O
    );
	 
	 always @ (sel or I1 or I2 or I3 or I4) begin
		case(sel)
			2'b00: O = I1;
			2'b01: O = I2;
			2'b10: O = I3;
			2'b11: O = I4;
		endcase
	 end
	 


endmodule
