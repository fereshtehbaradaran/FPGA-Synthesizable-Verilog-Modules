`timescale 1ns / 1ps

module unsigned_down_syncSet_counter(
    input C,
    input S,
    output [3:0] Q
    );
	 reg [3:0] temp;
	 
	 always @ (posedge C) begin
		if (S)
			temp <= 4'b1111;
		else
			temp <= temp - 1'b1;
	  end
	  assign Q = temp;

endmodule
