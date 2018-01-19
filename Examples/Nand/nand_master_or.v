module root;
    reg A,B;
    wire O;
    
    myor test(O,A,B);

//Simulation Dat
initial 
begin  
    $display("Time A B O/P ");
    $monitor($time, " A=%b;B=%b,O=%b \n",A,B,O);
end

initial
begin
      A=1'b0; B=1'b0;
     #5A=1'b0; B=1'b1;
     #5A=1'b1; B=1'b0;
     #5A=1'b1; B=1'b1;
end
endmodule

module myor(OP,a,b);
    input a,b;
    output OP;
    wire o1,o2;
    
    nand (o1,a,1);
    nand (o2,b,1);
    nand (OP,o1,o2);
endmodule
