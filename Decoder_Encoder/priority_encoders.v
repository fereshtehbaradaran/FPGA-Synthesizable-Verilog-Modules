`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:09:45 01/12/2023 
// Design Name: 
// Module Name:    priority_encoders 
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
(*priority_extract="force"*)

module priority_encoders(
    input [7:0] se,
    output [2:0] res
    );
	 
	 reg [2:0] res;
	 
	 always @ (res) begin
		if (sel[0]) res = 3'b000;
		else if (sel[1]) res = 3'b001;
		else if (sel[2]) res = 3'b010;
		else if (sel[3]) res = 3'b011;
		else if (sel[4]) res = 3'b100;
		else if (sel[5]) res = 3'b101;
      else if (sel[6]) res = 3'b110;
		else if (sel[7]) res = 3'b111;
		else res = 3'bzzz;
	 end

endmodule
