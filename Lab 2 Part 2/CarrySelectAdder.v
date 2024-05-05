module CarrySelectAdder(
	input [7:0] a, 
	input [7:0] b,
	//input temp,
	input cin, 
	output [7:0] sum,
	output cout);

wire m;
wire [7:0] sa;
wire [7:0] sb;
wire d0;
wire d1;
//wire [7:0] b;

//assign b = temp ? 8 : 3;


rippleCarryAdder rca1(.a(a[3:0]), .b(b[3:0]), .cin(cin), .sum(sum[3:0]), .cout(m));
rippleCarryAdder rca2(.a(a[7:4]), .b(b[7:4]), .cin(1'b1), .sum(sb[7:4]), .cout(d1));
rippleCarryAdder rca3(.a(a[7:4]), .b(b[7:4]), .cin(1'b0), .sum(sa[7:4]), .cout(d0));
multiplexer mux(.d0(d0), .d1(d1), .s(m), .y(cout));
multiplexer4bits muxb(.d0(sa[7:4]), .d1(sb[7:4]), .s(m), .y(sum[7:4]));
	
endmodule