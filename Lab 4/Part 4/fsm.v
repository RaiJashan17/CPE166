module fsm(
	input RESET,
	input CLK,
	output reg CLR,
	output reg [2:0] W,
	output reg [3:0] CE,
	output reg [1:0] SEL,
	output reg [2:0] S
	);
	
parameter s0=3'b000, s1=3'b001, s2=3'b010, s3=3'b011, s4=3'b100, s5=3'b101;
reg [2:0] cs, ns;
/*reg [2:0] W;
reg [3:0] CE;
reg [1:0] SEL;
reg [2:0] S;*/

always@(posedge CLK or posedge RESET)
begin
	if(RESET)
		cs <= s0;
	else
		cs <= ns;
end

always@(cs)
begin
	case(cs)
		s0: ns=s1;
		s1: ns=s2;
		s2: ns=s3;
		s3: ns=s4;
		s4: ns=s5;
		s5: ns=s5;
		default: ns=s0;
	endcase
end

always@(cs)
begin
	case(cs)
		s0: begin
			CLR=1; 
			W=3'b000; 
			CE=4'b0000; 
			SEL=2'b00; 
			S=3'b000;
			end
		s1: begin
			CLR=0; 
			W=3'b000; 
			CE=4'b0011; 
			SEL=2'b00; 
			S=3'b000;
			end
		s2: begin
			CLR=0; 
			W=3'b000; 
			CE=4'b1000; 
			SEL=2'b00; 
			S=3'b010; 
			end
		s3: begin
			CLR=0; 
			W=3'b000; 
			CE=4'b1000; 
			SEL=2'b01; 
			S=3'b001;
			end
		s4: begin
			CLR=0; 
			W=3'b100; 
			CE=4'b0100;
			end
		s5: begin
			CLR=0; 
			W=3'b100; 
			CE=4'b0100;
			end
		default: begin
			CLR=1;  
			W=3'b000; 
			CE=4'b0000; 
			SEL=2'b00; 
			S=3'b000;
			end
	endcase
end
endmodule