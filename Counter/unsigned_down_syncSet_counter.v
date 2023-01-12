`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:24:48 12/28/2022 
// Design Name: 
// Module Name:    unsigned_down_syncSet_counter 
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
module unsigned_down_syncSet_counter(
    input C,
    input S,
    output [3:0] Q
    );
	 reg [3:0] temp;
	 
	 always @ (posedge C) begin
		if (S)
			temp <= 4'b1111;
		else
			temp <= temp - 1'b1;
	  end
	  assign Q = temp;

endmodule
