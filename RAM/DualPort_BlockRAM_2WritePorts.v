`timescale 1ns / 1ps

module dualPort_blockRAM_2writePorts(
    input CLK1,
    input CLK2,
    input en1,
    input en2,
    input we1,
    input we2,
    input [5:0] addr1,
    input [5:0] addr2,
    input [15:0] DI1,
    input [15:0] DI2,
    output [15:0] DO1,
    output [15:0] DO2
    );
	 
	 reg [15:0] RAM [63:0];
	 reg [15:0] DO1, DO2;
	 
	 always @ (posedge CLK1) begin
		if (en1) begin
			if (we1)
				RAM[addr1] <= DI1;
			DO1 <= RAM[addr1];   //Read First
		end
	 end
	 
	 always @ (posedge CLK2) begin
		if (en2) begin
			if (we2)
				RAM[addr2] <= DI2;
			DO2 <= RAM[addr2];
		end
	 end

endmodule
