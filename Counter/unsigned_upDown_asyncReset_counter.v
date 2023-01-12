`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:03:52 12/28/2022 
// Design Name: 
// Module Name:    unsigned_upDown_asyncReset_counter 
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
module unsigned_upDown_asyncReset_counter(
    input C,
    input CLR,
    input Up_Down,
    output [3:0] Q
    );
	 
	 reg [3:0] temp;
	 
	 always @ (posedge C or posedge CLR) begin
		if (CLR)
			temp <= 4'b0000;
		else if (Up_Down)
			temp <= temp + 1'b1;
		else
			temp <= temp - 1'b1;
	 end
	 
	 assign Q = temp;

endmodule
