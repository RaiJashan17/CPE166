module fullAdder_tb();
	reg a,b,cin;
	wire sum,cout;
	fullAdder uut (.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));
	integer i;
initial begin

			for (i=0; i <= 7; i = i+1)

            begin

                  {a,b,cin} <= i;

                   #10; 
						 end

  $finish;
  end
endmodule