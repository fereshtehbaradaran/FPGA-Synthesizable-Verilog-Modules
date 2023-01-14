`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:02:47 01/12/2023 
// Design Name: 
// Module Name:    one_Cold_Decoder 
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
module one_Cold_Decoder(
    input [2:0] sel,
    output [7:0] res
    );
	 reg [7:0] res;
	 
	 always @ (sel) begin
		case(sel)
			3'b000: res = 8'b11111110;
			3'b001: res = 8'b11111101;
			3'b010: res = 8'b11111011;
			3'b011: res = 8'b11110111;
			3'b100: res = 8'b11101111;
			3'b101: res = 8'b11011111;
			3'b110: res = 8'b10111111;
			3'b111: res = 8'b01111111;
		endcase
	 end

endmodule