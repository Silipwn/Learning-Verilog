module Multi(y,i0,i1,i2,i3,s0,s1);
    input i0,i1,i2,i3,s0,s1;
    output y;;
    wire s1n,s0n,y1,y2,y3,y4;

    and y1(y1,i0,s1,s0n);
    and y2(y2,i1,s1n,s0);
    and y3(y3,i2,s1,s0n);
    and y4(y4,i3,s1n,s0);

    or(y,y1,y2,y3,y4);
endmodule
