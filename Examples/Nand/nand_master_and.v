module root;
    reg A,B;
    wire OP;
    
    myand test(OP,A,B);

initial
begin 
    $display("Time\tA\tB\tO\n"); 
    $monitor($time," A=%b\tB=%b\tO=%b\n",A,B,OP);
end
initial
begin 
    A=1'b0; B=1'b0;
     #5A=1'b0; B=1'b1;
     #5A=1'b1; B=1'b0;
     #5A=1'b1; B=1'b1;
end
endmodule
module myand(O,a,b);
    input a,b;
    output O;
    wire o1,o2;
    nand (o1,a,a);
    nand (o2,b,b);
    nand (O,o1,o2);
endmodule
