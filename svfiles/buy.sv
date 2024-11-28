module buy (input logic Reset,
            input logic [6:0] Money,
            input logic [3:0] Buy,
            output logic [6:0] C,
            output logic [3:0] Vending);
    logic [3:0] CanBuy; 
    logic [6:0] C0,C1,C2,C3;
    canbuy  #(.cost(5)) cb0 (Money,CanBuy[0]);
    canbuy  #(.cost(10)) cb1 (Money,CanBuy[1]);
    canbuy  #(.cost(15)) cb2 (Money,CanBuy[2]);
    canbuy  #(.cost(30)) cb3 (Money,CanBuy[3]);
    assign Vending = Buy & CanBuy;
    fastcounter #(.cost(-5)) fsc0 (Vending[0],Reset,C0);
    fastcounter #(.cost(-10)) fsc1 (Vending[1],Reset,C1);
    fastcounter #(.cost(-15)) fsc2 (Vending[2],Reset,C2);
    fastcounter #(.cost(-30)) fsc3 (Vending[3],Reset,C3);
    assign C = C0+C1+C2+C3;
endmodule