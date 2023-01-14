`timescale 1ns / 1ps

module singlePort_RAM_asyncRead(
    input CLK,
    input we,
    input [5:0] address,
    input [15:0] DI,
    output [15:0] DO
    );
	 
	 reg [15:0] RAM [63:0];
	 
	 always @ (posedge CLK) begin
		if (we)
			RAM[address] <= DI;
	 end
	 
	 assign DO = RAM[adress];
	 
endmodule
