module d_ff(clk,d,q,q_b);
input clk,d;
output q,q_b;
wire clk,d;
reg q,q_b;

always @ (posedge clk)
begin
    q <=d;
    q_b <=!d;
end

endmodule
