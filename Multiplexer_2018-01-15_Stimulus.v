module Stimulus;

reg IN0,IN1,IN2,IN3;
reg S1,S0;

wire OUTPUT;

//Instantiate Multiplexer
Multi mux(OUTPUT,IN0,IN1,IN2,IN3,S1,S0);

//Begin Stimulation
intial 
    begin
    //setting INPUT
    IN0=1 ; IN1=0; IN2= 1; IN3=0;
    #1 $display("IN0=%b,IN1=%b,IN2=%B,IN3=%b\n",IN0,IN1,IN2,IN3);
    
    //IN0
    S1=0; S0=0
    #1 $display("S1 = %b, S0 = %b, O/P = %b \n",S1,S0,OUTPUT);
    
    //IN1
    S1=0; S0=1
    #1 $display("S1 = %b, S0 = %b, O/P = %b \n",S1,S0,OUTPUT);
    
    //IN2
    S1=1; S0=0
    #1 $display("S1 = %b, S0 = %b, O/P = %b \n",S1,S0,OUTPUT);
    
    //IN3
    S1=1; S0=1
    #1 $display("S1 = %b, S0 = %b, O/P = %b \n",S1,S0,OUTPUT);
    end 
endmodule
