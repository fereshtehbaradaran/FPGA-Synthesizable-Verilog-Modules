`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:34:47 01/12/2023 
// Design Name: 
// Module Name:    dynamicShiftReg_posedgeClk_CE_serialIn_serialOut 
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
module dynamicShiftReg_posedgeClk_CE_serialIn_serialOut(
    output Q,
    input CE,
    input CLK,
    input D,
    input [3:0] A
    );
	 
	 reg [15:0] data;
	 assign Q = data[A];
	 
	 always @ (posedge CLK) begin
		if (CE == 1'b1)
			data <= {data[14:0], D};
	 end
endmodule
