
module fulladd(sum, c_out, a, b, c_in);

output[3:0] sum;
output c_out;
input [3:0] a,b;
input c_in;

// Internal Wires
wire c1,c2,c3;

adder A0(sum[0],c1,a[0],b[0],c_in);
adder A1(sum[1],c2,a[1],b[1],c1);
adder A2(sum[2],c3,a[2],b[2],c2);
adder A3(sum[3],c_out,a[3],b[3],c3);

endmodule
