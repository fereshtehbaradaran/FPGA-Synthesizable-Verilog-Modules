`timescale 1ns / 1ps

module multiplePort_RAM(
    input CLK,
    input we,
    input [5:0] write_addr,
    input [5:0] addr1,
    input [5:0] addr2,
    input [15:0] DI,
    output [15:0] DO1,
    output [15:0] DO2
    );
	 
	 reg [15:0] RAM [63:0];
	 
	 always @ (posedge CLK) begin
		if(we)
			RAM[write_addr] <= DI;
	 end
	 
	 assign DO1 = RAM[addr1];
	 assign DO2 = RAM[addr2];
	 
endmodule
