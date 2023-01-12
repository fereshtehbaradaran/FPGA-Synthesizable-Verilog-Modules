`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:40:56 01/12/2023 
// Design Name: 
// Module Name:    MUX_notFull_notParallel 
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
module MUX_notFull_notParallel(
    input [1:0] sel1,
    input [1:0] sel2,
    input [1:0] I1,
    input [1:0] I2,
    output reg [1:0] O
    );
	 
	 always @ (sel1 or sel2) begin
		case (2'b00)
			sel1: O = I1;
			sel2: O = I2;
		endcase
	 end
endmodule
