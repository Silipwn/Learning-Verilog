module stimulus;

reg clk;
reg reset;
wire [3:0] q;

RCc r1(q,clk,reset);    // Adding Design block.

initial 
    clk = 1'b0; //Set to 0.
always
    #5 clk = ~clk;

initial
begin
    reset = 1'b1;
    #15 reset = 1'b0;
    #180 reset = 1'b1;
    #10 reset = 1'b0;
    #20 $finish;
end

//Output mon.
intial 
    $monitor($time, "q= %d",q);
endmodule
