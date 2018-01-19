module D_tb;
reg A,B,C;

wire OUT;

D d1(OUT, A,B,C);


initial 
begin 
    $monitor($time , " A=%b; B=%b ; C=%b;\n ",A,B,C);
end

initial 
begin    
    A=1'b0; B=1'b0; C=1'b0;
    #10 A=1'b1; B=1'b0; C=1'b1;
    #15 A=1'b0; B=1'b1; C=1'b0;
end
endmodule   
