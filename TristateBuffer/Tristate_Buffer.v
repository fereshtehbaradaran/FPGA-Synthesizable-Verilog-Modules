`timescale 1ns / 1ps

module tristate_buffer(
    input T,
    input I,
    output O
    );
	 
	 assign O = (~T)? I : 1'bz;

endmodule
