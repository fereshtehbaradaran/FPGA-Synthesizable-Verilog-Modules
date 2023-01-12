`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:16:08 01/12/2023 
// Design Name: 
// Module Name:    LogicalShifter_One 
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
module LogicalShifter_One(  //Barrel Shifter
    input [7:0] DI,
    input [1:0] SEL,
    output [7:0] SO
    );
	 
	 reg [7:0] SO;
	 
	 always @ (DI or SO) begin
		case (SEL)
			2'b00: SO = DI;
			2'b01: SO = DI << 1;
			2'b10: SO = DI << 2;
			2'b11: SO = DI << 3;
		endcase
	 end
endmodule
