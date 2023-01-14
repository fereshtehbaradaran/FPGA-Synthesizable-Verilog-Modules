`timescale 1ns / 1ps

module singlePort_RAM_WriteFirstMode(
    input CLK,
    input we, //Write Enable
    input en, //Enable
    input [5:0] address,
    input [15:0] DI,
    output [15:0] DO
    );
	 
	 reg [15:0] DO;
	 reg [15:0] RAM [63:0];
	 
	 always @ (posedge CLK) begin
		if (en) begin
			if (we) begin
				RAM[address] <= DI;
				DO <= DI;
			end
			else
				DO <= RAM[address];
		end
	 end
	 
	 
	 
	 /* Another way!
	 
	reg [5:0] read_addr
	
	always @ (posedge CLK) begin
		if (en) begin
			if (we)
				RAM[address] <= DI;
			read_addr <= address;
		end
	end
	
	assign DO = RAM[read_addr];
	 
	 */
	 
	 

endmodule
