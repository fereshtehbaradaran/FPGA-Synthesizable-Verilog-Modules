`timescale 1ns / 1ps

module unsigned_Up_syncLoad_counter(
    input C,
    input SLOAD,
    output [3:0] Q
    );
	 reg [3:0] temp;
	 
	 always @ (posedge C) begin
		if (SLOAD)
			temp <= 4'b1010;
		else
			temp <= temp + 1'b1;
	 end
	 assign Q = temp;
	 
endmodule
