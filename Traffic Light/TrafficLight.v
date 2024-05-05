module TrafficLight(
	input clk, 
	input reset,
	input button,
	output reg [1:0] NS_traffic_light,
	output reg PED_light);
	
parameter green=2'b10, yellow=2'b01, red=2'b00;
reg [1:0] cs, ns;
integer i=0;

always@(posedge clk or posedge reset)
begin
	if(reset)
		cs <= green;
	else
		cs <= ns;
end

always@(cs, button, clk)
begin
	case(cs)
		green:
			begin
			if(button==1 && i==0) begin
				//ns=yellow;
				i=i+1;
			end else if (i>0 && i<3) begin
				i=i+1;
			end else if (i>2) begin
				ns=yellow;
			end else begin
				ns=green;
				i=0;
			end
			end
		yellow: begin
			if(i<9)
			i=i+1;
			else
			ns=red;
		end
		red: 
			begin
			if(i>0 && i<30) begin
				i=i+1;
				ns=red;
			end else begin
				ns=green;
				i=0;
			end
			end
		default: ns=green;
	endcase
end

always@(cs)
begin
	case(cs)
		green: PED_light=0;
		yellow: PED_light=0;
		red: PED_light=1;
		default: PED_light=0;
	endcase
	NS_traffic_light=cs;
end

endmodule