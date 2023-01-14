`timescale 1ns / 1ps

module unsigned_Up_asyncReset_counter(
    input C,
    input CLR,
    input CE,
    output [3:0] Q
    );
	 
	 reg [3:0] temp;
	 
	 always @ (posedge C or posedge CLR) begin
		if (CLR)
			temp <= 4'b0000;
		else if (CE)
			temp <= temp + 1'b1;
	 end
	 
	 assign Q = temp;


endmodule
