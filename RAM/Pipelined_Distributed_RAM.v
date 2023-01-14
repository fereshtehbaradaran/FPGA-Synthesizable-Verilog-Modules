`timescale 1ns / 1ps

module pipelined_distributed_RAM(
    input CLK,
    input we,
    input [8:0] addr,
    input [3:0] DI,
    output reg [3:0] DO
    );
	 
	 (*ram_style="pipe_distributed"*)
	 reg [3:0] RAM [511:0];
	 reg [3:0] pipe_reg;
	 
	 always @ (posedge CLK) begin
		if (we)
			RAM[addr] <= DI;
		else
			pipe_reg <= RAM[addr];
		DO <= pipe_reg;
	 end
endmodule
