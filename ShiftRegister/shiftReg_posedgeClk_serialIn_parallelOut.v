`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:21:54 01/11/2023 
// Design Name: 
// Module Name:    shiftReg_posedgeClk_serialIn_parallelOut 
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
module shiftReg_posedgeClk_serialIn_parallelOut(
    input C,
    input SI,
    output [7:0] PO
    );
	 
	 reg [7:0] temp;
	 
	 always @ (posedge C) begin
		temp <= {temp[6:0], SI};
	 end
	 
	 assign PO = temp;      // 8 CLB will be used


endmodule
