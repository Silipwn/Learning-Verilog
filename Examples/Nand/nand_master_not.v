module root;
    reg A;
    wire OP;
    
    nandnot test(OP,A);

initial 
begin
    $monitor($time,": A = %b;O/P = %b",A,OP);
end

initial
begin
        A=1'b0;
    #5 A=1'b1;
end 
endmodule

module nandnot(o,a);
    input a;
    output o;
    nand(o,a,a);
endmodule
