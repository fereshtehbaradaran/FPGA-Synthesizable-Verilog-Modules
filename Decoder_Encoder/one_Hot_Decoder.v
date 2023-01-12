`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:58:02 01/12/2023 
// Design Name: 
// Module Name:    one_Hot_Decoder 
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
module one_Hot_Decoder(   // 3 to 8 decoder : one of them 1 others 0
    input [2:0] sel,
    output [7:0] res
    );
	 
	 reg [7:0] res;
	 
	 always @ (sel or res) begin
		case(sel)
			3'b000: res = 8'b00000001;
			3'b001: res = 8'b00000010;
			3'b010: res = 8'b00000100;
			3'b011: res = 8'b00001000;
			3'b100: res = 8'b00010000;
			3'b101: res = 8'b00100000;
			3'b110: res = 8'b01000000;
			3'b111: res = 8'b10000000;
		endcase
	 end

endmodule
