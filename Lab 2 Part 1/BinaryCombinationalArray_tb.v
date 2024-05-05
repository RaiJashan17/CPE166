module BinaryCombinationalArray_tb();
reg [2:0] x;
reg [2:0] y;
wire [5:0] p;
integer i;
BinaryCombinationalArray uut(.x(x), .y(y), .p(p));

initial begin

	for(i=0;i<64;i=i+1)
	begin
		{x, y} <= i;
		#5;
	end
	$finish;
end

endmodule