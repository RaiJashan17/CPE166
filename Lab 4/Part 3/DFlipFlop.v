module DFlipFlop(
	input [3:0] D,
	input CLR,
	input CE,
	input CLK,
	output reg [3:0] Q
	);

always @ (posedge CLK or posedge CLR)
begin
	if(CLR)
		Q<=4'b0000;
	else if(CE)
		Q<=D;
end
endmodule