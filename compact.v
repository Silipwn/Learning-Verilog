module compact(input x,y,s, output reg f);

always @(x,y,s)
    if (s==0)
        f=x;
    else 
        f=y;

endmodule
