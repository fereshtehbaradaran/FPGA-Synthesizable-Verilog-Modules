`timescale 1ns / 1ps

module dualPort_RAM_asyncRead(
    input CLK,
    input we,
    input [5:0] address,
    input [5:0] DPRA,
    input [15:0] DI,
    output [15:0] SPO,
    output [15:0] DPO
    );
	 
	 reg [15:0] RAM [63:0];
	 
	 always @ (posedge CLK) begin
		if (we)
			RAM[address] <= DI; 
	 end
	 
	 assign SPO = RAM[address];
	 assign DPO = RAM[DPRA];

endmodule
