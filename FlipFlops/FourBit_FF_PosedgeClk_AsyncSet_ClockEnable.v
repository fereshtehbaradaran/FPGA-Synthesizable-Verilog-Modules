`timescale 1ns / 1ps

module fourBit_FF_posedgeClk_async_set_CE(
    input [3:0] D,
    input clk,
    input S,
    input CE,
    output reg [3:0] Q
    );
	 
	 always @ (posedge clk or posedge S) begin
		if (S)
			Q = 4'b1111;
		else
			if (CE)
				Q <= D;
	 end

endmodule
