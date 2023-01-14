`timescale 1ns / 1ps

module FF_posedgeClk_clkEnable(
    input D,
    input clk,
    input CE,
    output Q
    );
	 
	 reg Q;
	 always @ (posedge clk) begin
		if (CE)
			Q <= D;
	 end

endmodule
