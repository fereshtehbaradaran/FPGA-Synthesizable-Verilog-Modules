`timescale 1ns / 1ps

module unsigned_Up_asyncLoad_counter(
    input C,
    input ALOUD,
    input [3:0] D,
    output [3:0] Q
    );
	 
	 reg [3:0] temp;
	 always @ (posedge C or posedge ALOUD) begin
		if (ALOUD)
			temp <= D;
		else
			temp <= temp + 1'b1;
	 end
	 assign Q = temp;

endmodule
