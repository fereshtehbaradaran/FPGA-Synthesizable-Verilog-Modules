`timescale 1ns / 1ps

module dualPort_RAM_enableOnEachPort(
    input CLK,
    input we,
    input en1,
    input en2,
    input [5:0] addr1,
    input [5:0] addr2,
    input [15:0] DI,
    output [15:0] DO1,
    output [15:0] DO2
    );
	 
	 reg [15:0] RAM [63:0];
	 reg [5:0] read_addr1, read_addr2;
	 
	 always @ (posedge CLK) begin
		if (en1) begin
			if (we)
				RAM [addr1] <= DI;
			read_addr1 <= addr1;
		end
		if (en2)
			read_addr2 <= addr2;
	 end
	 
	 assign DO1 = RAM[read_addr1];
	 assign DO2 = RAM[read_addr2];

endmodule
