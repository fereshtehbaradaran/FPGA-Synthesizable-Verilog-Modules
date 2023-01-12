`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:49:07 01/12/2023 
// Design Name: 
// Module Name:    blockRAM_optionalOutputReg 
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
module blockRAM_optionalOutputReg(
    input CLK1,
    input CLK2,
    input we,
    input en1,
    input en2,
    input [5:0] addr1,
    input [5:0] addr2,
    input [15:0] DI,
    output reg [15:0] DO1,
    output reg [15:0] DO2
    );
	 
	 reg [15:0] RAM [63:0];
	 reg [15:0] temp1, temp2;
	 
	 
	 /* Initialize RAM
	 initial begin
		RAM[63] = 16'b0000000000000000;
		RAM[62] = 16'b0010000000000000;
		RAM[61] = 16'b0000000001000000;
		RAM[60] = 16'b0000010000000000;
		.
		.
		.
		RAM[0] = 16'b0010000000000000;
	 end
	 */
	 
	 /* Initialize RAM using For
		integer i;
		initial begin
			for (i = 0; i <= 63; i = i + 1)
				RAM[i] = 16'd0;
		end
	 
	 */
	 
	 /* Initialize RAM From External File
		initial begin
			$readmemb("test.data", RAM, 0, 63);
		end
	 */
	 
	 always @ (posedge CLK1) begin
		if(we)
			RAM[addr1] <= DI;
		temp1 <= RAM[addr1];
	 end
	 
	 always @ (posedge CLK1) begin
		if (en1)
			DO1 <= temp1;
	 end
	 
	 always @ (posedge CLK2) begin
		temp2 <= RAM[addr2];
	 end
	 
	 always @ (posedge CLK2) begin
		if (en2)
			DO2 <= temp2;
	 end

endmodule
