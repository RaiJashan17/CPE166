module CarrySelectAdder_tb();
reg [7:0] a;
reg [7:0] b;
reg cin;
wire [7:0] sum;
wire cout;
integer i;

CarrySelectAdder uut(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

initial begin

	for(i=0;i<262144;i=i+1)
	begin
		{a, b, cin} <= i;
		#5;
	end
	$finish;
end

endmodule