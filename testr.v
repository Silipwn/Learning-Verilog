module testr(x1,x2,x3,y);
    input x1,x2,x3;
    output y;
    
    or (y,x1,x2,x3);
    // assign y = x1 & x2 & x3; Alternatively ?
    //if else 
    always@(*)
        if(x1==0)
            y=x2&x3;
        else(x2==0)
            y=x3&x1;
    */
    
endmodule
