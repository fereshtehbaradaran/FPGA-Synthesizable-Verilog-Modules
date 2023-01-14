`timescale 1ns / 1ps

module Single_Process(
    input CLK,
    input CLR,
    input x1,
    output reg Output
    );
	 
	 reg [1:0] state;
	 parameter s1 = 2'b00;
	 parameter s2 = 2'b01;
	 parameter s3 = 2'b10;
	 parameter s4 = 2'b11;
	 initial state = 2'b00;
	 
	 always @ (posedge CLK) begin
		if (CLR) begin
			state <= s1;
			Output <= 1'b1;
		end
		else begin
		
			case (state)
				s1: begin
					if (x1 == 1'b1) begin
						state <= s2;
						Output <= 1'b1;
					end
					else begin
						state <= s3;
						Output <= 1'b0;
					end
				end
				
				s2: begin
					state <= s4;
					Output <= 1'b0;
				end
				
				s3: begin
					state <= s4;
					Output <= 1;b0;
				end
				
				s4: begin
					state <= s1;
					Output <= 1'b0;
				end
				
			endcase
			
		end
	 end
endmodule
