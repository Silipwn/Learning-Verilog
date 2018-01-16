module D_tb;
reg A,B,C;

wire OUT;

D d1(OUT, A,B,C);

initial
begin    
    A=1'b0; B=1'b0; C=1'b0;
    #10 A=1'b0; B=1'b0; C=1'b0;
    #15 A=1'b0; B=1'b0; C=1'b0;
    #20 $finish;
end


// initial 
// begin 
//     $monitor($time , "A=%b; B=%b; C=%b;\n",A,B,C);
// end

endmodule   
