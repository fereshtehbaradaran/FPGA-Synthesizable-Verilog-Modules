`timescale 1ns / 1ps

module bidirec(
    input oe,
    input clk,
    input [7:0] inp,
    output [7:0] outp,
    inout [7:0] bidir
    );
	 
	 reg [7:0] a;
	 reg [7:0] b;
	 
	 assign bidir = oe ? a : 8'bz ;
	 assign outp = b;
	 
	 always @ (posedge clk) begin
		b <= bidir;
		a <= inp;
	 end


endmodule
