module buy (input logic Reset,
            input logic [6:0] Money,
            input logic [3:0] Buy,
            output logic [6:0] C,
            output logic [3:0] Vending);
    logic [3:0] CanBuy,S0,S1,S2,S3; 
    logic [6:0] C0,C1,C2,C3;
    canbuy  #(.cost(5)) cb0 (Money,S0,CanBuy[0]);
    canbuy  #(.cost(10)) cb1 (Money,S1,CanBuy[1]);
    canbuy  #(.cost(15)) cb2 (Money,S2,CanBuy[2]);
    canbuy  #(.cost(30)) cb3 (Money,S3,CanBuy[3]);
    assign Vending = Buy & CanBuy;
    ff fs0 (Vending[0],Reset,1,S0,S0-1);
    ff fs1 (Vending[1],Reset,1,S1,S1-1);
    ff fs2 (Vending[2],Reset,1,S2,S2-1);
    ff fs3 (Vending[3],Reset,1,S3,S3-1);
    fastcounter #(.cost(-5)) fsc0 (Vending[0],Reset,C0);
    fastcounter #(.cost(-10)) fsc1 (Vending[1],Reset,C1);
    fastcounter #(.cost(-15)) fsc2 (Vending[2],Reset,C2);
    fastcounter #(.cost(-30)) fsc3 (Vending[3],Reset,C3);
    assign C = C0+C1+C2+C3;
endmodule