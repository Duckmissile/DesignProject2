module main(input logic  Buy,
            input logic Refund,
            input logic Reset,
            input logic Clock,
            input logic Quarters,
            input logic Dimes,
            input logic Nickles,
            output logic [6:0] QuarterOut,
            output logic [6:0] DimeOut,
            output logic [6:0] NickelOut,
            output logic Vending,
            output logic [6:0] Seg1,
            output logic [6:0] Seg0);
    logic CanBuy, ParserReset;
    logic [6:0] Q,D,N,C,Money,numprev;
    logic [3:0] Qnum,Dnum,Nnum,Snum0,Snum1;
    assign Vending = Buy & CanBuy;
    fastcounter #(.cost(25)) fsq (Quarters,Reset,Q);
    fastcounter #(.cost(10)) fsd (Dimes,Reset,D);
    fastcounter #(.cost(5)) fsn (Nickles,Reset,N);
    fastcounter #(.cost(-25)) fsc (Vending,Reset,C);
    canbuy  #(.cost(25)) cb (Money,CanBuy);
    sum4 sum (Clock,Reset,Q,D,N,C,Money);
    ticdown td (Clock,Reset,Refund,ParserReset);
    coinparser cp (Clock,Refund | Reset,ParserReset | Reset ,Money,Qnum,Dnum,Nnum,numprev);
    parser p (Clock,Reset,Money,Snum1,Snum0);
endmodule
    