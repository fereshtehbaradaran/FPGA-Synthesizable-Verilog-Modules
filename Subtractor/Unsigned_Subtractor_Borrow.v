`timescale 1ns / 1ps

module unsigned_subtractor_borrow(
    input [7:0] A,
    input [7:0] B,
    input BI,
    output [7:0] RES
    );
	 
	 assign RES = A - B - BI;

endmodule
