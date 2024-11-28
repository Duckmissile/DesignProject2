module main(input logic [3:0] Buy,
            input logic Refund,
            input logic Reset,
            input logic Clock,
            input logic Quarters,
            input logic Dimes,
            input logic Nickles,
            output logic [6:0] QuarterOut,
            output logic [6:0] DimeOut,
            output logic [6:0] NickelOut,
            output logic [3:0] Vending,
            output logic [6:0] Seg1,
            output logic [6:0] Seg0);
    //inits variables    
    logic  ParserReset;
    logic [6:0] Q,D,N,C,Money,numprev;
    logic [3:0] Qnum,Dnum,Nnum,Snum0,Snum1;
    // increments coins when inputted
    fastcounter #(.cost(25)) fsq (Quarters, Reset,Q);
    fastcounter #(.cost(10)) fsd (Dimes,Reset,D);
    fastcounter #(.cost(5)) fsn (Nickles,Reset,N);
    //deals with if items are being bought
    buy b (ParserReset | Reset,Money,Buy,C,Vending);
    //adds together credit and debt
    sum4 sum (Clock,Reset,Q,D,N,C,Money);
    //checks whether or not to reset money and display after refunding
    ticdown td (Clock,Reset,Refund,ParserReset);
    //outputs what coins are refunded
    coinparser cp (Clock,Refund | Reset,ParserReset | Reset ,Money,Qnum,Dnum,Nnum,numprev);
    // outputs the credit in decimal
    parser p (Clock,Reset,Money,Snum1,Snum0);
    //displays
    sevenseg sqo (Qnum,QuarterOut);
    sevenseg sdo (Dnum,DimeOut);
    sevenseg sno (Nnum,NickelOut); 
    sevenseg s1 (Snum1,Seg1);
    sevenseg s0 (Snum0,Seg0);
endmodule
    