`timescale 1ns / 1ps

module dualPort_RAM_syncRead(
    input CLK,
    input we,
    input [5:0] address,
    input [5:0] DPRA,
    input [15:0] DI,
    output [15:0] SPO,
    output [15:0] DPO
    );
	 
	 reg [15:0] RAM [63:0];
	 reg [5:0] read_addr, read_DPaddr;
	 
	 always @ (posedge CL) begin
		if (we)
			RAM[address] <= DI;
		read_addr <= address;
		read_DPaddr <= DPRA;
	 end
	 
	 assign SPO = RAM[read_addr];
	 assign DPO = RAM[read_DPaddr];
	 
endmodule
