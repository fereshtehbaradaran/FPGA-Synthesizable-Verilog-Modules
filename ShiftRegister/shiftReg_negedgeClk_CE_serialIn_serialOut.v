`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:03:04 01/11/2023 
// Design Name: 
// Module Name:    shiftReg_negedgeClk_CE_serialIn_serialOut 
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
module shiftReg_negedgeClk_CE_serialIn_serialOut(
    input C,
    input CE,
    input SI,
    inout SO
    );
	 
	 reg [7:0] temp;
	 
	 always @ (negedge C) begin
		if(CE) begin
			temp <= {temp[6:0], SI};
		end
	 end
	 
	 assign SO = temp[7];
	 
endmodule
