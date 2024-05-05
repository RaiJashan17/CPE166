module BinaryCombinationalArray(
	input [2:0] x,
	input [2:0] y,
	output[5:0] p
);
wire [16:1] w;

and(p[0],x[0],y[0]);
and(w[1],x[0],y[1]);
and(w[9],x[0],y[2]);
and(w[2],x[1],y[0]);
and(w[3],x[1],y[1]);
and(w[12],x[1],y[2]);
and(w[4],x[2],y[0]);
and(w[5],x[2],y[1]);
and(w[14],x[2],y[2]);

halfAdder ha1(.a(w[1]), .b(w[2]), .cout(w[6]), .sum(p[1]));
halfAdder ha2(.a(w[5]), .b(w[7]), .cout(w[8]), .sum(w[13]));
halfAdder ha3(.a(w[9]), .b(w[11]), .cout(w[15]), .sum(p[2]));

fullAdder fa1(.a(w[3]), .b(w[4]), .cin(w[6]), .cout(w[7]), .sum(w[11]));
fullAdder fa2(.a(w[12]), .b(w[13]), .cin(w[15]), .cout(w[16]), .sum(p[3]));
fullAdder fa3(.a(w[14]), .b(w[8]), .cin(w[16]), .cout(p[5]), .sum(p[4]));
endmodule