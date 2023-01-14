`timescale 1ns / 1ps

module Devision(
    input [7:0] DI,
    output [7:0] DO
    );
	 
	 assign DO = DI / 2; //Only power of 2 can be used   
	                     //will be implemented by shift

endmodule
