module fullAdder(a, b, cin, sum, cout);

input a,b, cin;
output sum, cout;
wire m,n,p;

halfAdder ha1(a, b, m, n);
halfAdder ha2(cin, m, sum, p);
or(cout,p,n);

endmodule