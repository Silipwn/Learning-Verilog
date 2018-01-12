module F_A(a,b,c,s);
input a,b;
output c,s;
assign c=a*b; 
assign s=a^b;
endmodule

module ripple_carry_adder(q,a0,b0,a1,b1,a2,b2,a3,b3);
output [3:0]q;
input a0,b0,a1,b1,a2,b2,a3,b3;
F_A fa0(a0,b0,s0,c1);
F_A fa1(a1,b1,s1,c2);
F_A fa2(a2,b2,s2,c3);
F_A fa3(a3,b3,s3,c4);
// Not exactly 
endmodule


