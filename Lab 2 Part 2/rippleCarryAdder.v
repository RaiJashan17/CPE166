module rippleCarryAdder(
	input [3:0] a,
	input [3:0] b,
	input cin,
	output [3:0] sum,
	output cout
	);
wire [2:0] w;

fullAdder fa1(a[0],b[0],cin,sum[0],w[0]);
fullAdder fa2(a[1],b[1],w[0],sum[1],w[1]);
fullAdder fa3(a[2],b[2],w[1],sum[2],w[2]);	
fullAdder fa4(a[3],b[3],w[2],sum[3],cout);

endmodule