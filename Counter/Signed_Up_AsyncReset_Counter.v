`timescale 1ns / 1ps

module signed_Up_asuncReset_counter(
    input C,
    input CLR,
    output signed [3:0] Q
    );
	 
	 reg signed [3:0] temp;
	 
	 always @ (posedge C or posedge CLR) begin
		if (CLR)
			temp <= 4'b0000;
		else
			temp <= temp + 1'b1;
	 end
	 
	 assign Q = temp;
	 
endmodule
