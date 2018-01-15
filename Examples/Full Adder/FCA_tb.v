module FA_Stimulus;

reg [3:0] A,B;
reg C_IN;
wire [3:0] SUM;
wire C_OUT;

fulladd fa1(SUM,C_OUT,A,B,C_IN);

//Simulation 
initial 
begin 
    $monitor($time , "A=%d,B=%d,C_IN= %d ----> C_OUT= %b,SUM= %d\n",A,B,C_IN,C_OUT,SUM);

end

//Stimulate Inputs 
initial 
begin 
    A = 4'd0 ; B= 4'd0; C_IN = 1'b0;
    #5 A = 4'd3 ; B= 4'd3;
    #10 A = 4'd3 ; B= 4'd2;
    #5 A = 4'd2 ; B= 4'd1;
    #10 A = 4'd4 ; B= 4'd3;
    #5  A = 4'd1 ; B= 4'd6;
    C_IN=1'b1;
    #5 A = 4'd2 ; B= 4'd1;
    #10 A = 4'd4 ; B= 4'd3;
    #5  A = 4'd1 ; B= 4'd6;
end 
endmodule
