`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:16:32 01/11/2023 
// Design Name: 
// Module Name:    shiftReg_posedgeClk_asyncReset_serialIn_serialOut 
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
module shiftReg_posedgeClk_asyncReset_serialIn_serialOut(
    input C,
    input CLR,
    input SI,
    output SO
    );
	 
	 reg [7:0] temp;
	 
	 always @ (posedge C or posedge CLR) begin
		if (CLR)
			temp <= 8'b00000000;
		else
			temp <= {temp[6:0], SI};
	 end
	 
	 assign SO = temp[7];


endmodule
