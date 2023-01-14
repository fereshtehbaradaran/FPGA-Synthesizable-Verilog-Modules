`timescale 1ns / 1ps

module unsigned_Up_asyncReset_accumulator(
    input C,
    input CLR,
    input [3:0] D,
    output [3:0] Q
    );
	 reg [3:0] temp;
	 
	 always @ (posedge C or posedge CLR) begin
		if (CLR)
			temp = 4'b0000;
		else
			temp = temp + D;
	 end
	 
	 assign Q = temp;

endmodule
