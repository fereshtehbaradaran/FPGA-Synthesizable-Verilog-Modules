`timescale 1ns / 1ps

module Three_Process(
    input CLK,
    input CLR,
    input x1,
    output reg Output
    );
	 
	 reg [1:0] state, next_state;
	 parameter s1 = 2'b00;
	 parameter s2 = 2'b01;
	 parameter s3 = 2'b10;
	 parameter s4 = 2'b11;
	 initial state = 2'b00;
	 
	 always @ (posedge CLK or posedge CLR) begin
		if (CLR)
			state <= s1;
			else state <= next_state;
	 end
	 
	 always @ (state or x1) begin
		case (state)
			s1:
				if(x1 == 1'b1)
					next_state = s2;
				else
					next_state = s3;
			s2: next_state = s4;
			s3: next_state = s4;
			s4: next_state = s1;
		endcase
	 end
	 
	 always @ (state) begin
		case (state)
			s1: Output = 1'b1;
			s2: Output = 1'b1;
			s3: Output = 1'b0;
			s4: Output = 1'b0;
		endcase
	 end
endmodule
