module rippleCarryAdder_tb();
reg [3:0] a;
reg [3:0] b;
reg cin;
wire [3:0] sum;
wire cout;
integer i;
rippleCarryAdder uut(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

initial begin

	for(i=0;i<512;i=i+1)
	begin
		{a, b, cin} <= i;
		#5;
	end
	$finish;
end

endmodule