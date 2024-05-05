module TrafficLight_tb();
reg clk; 
reg reset;
reg button;
wire [1:0] NS_traffic_light;
wire PED_light;

TrafficLight uut(.clk(clk), .reset(reset), .button(button), .NS_traffic_light(NS_traffic_light), .PED_light(PED_light));

initial clk=0; 

always #10 clk=~clk;

initial begin
reset=1; button=0; #10;
reset=0; button=0; #100;
reset=0; button=1; #10;
reset=0; button=0; #500;
reset=0; button=1; #10;
reset=0; button=0; #40;
end

endmodule