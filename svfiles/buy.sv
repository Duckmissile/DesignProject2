//takes in money and which item is being bought and outputs
//the cost and if it is being bought
module buy (input logic Reset,
            input logic [6:0] Money,
            input logic [3:0] Buy,
            output logic [6:0] C,
            output logic [3:0] Vending);
    //init variables
    logic [3:0] CanBuy,S0,S1,S2,S3; 
    logic [6:0] C0,C1,C2,C3;
    //checks if the elements can be bought considering
    // the amount of money and the amount of stock
    canbuy  #(.cost(5)) cb0 (Money,S0,CanBuy[0]);
    canbuy  #(.cost(10)) cb1 (Money,S1,CanBuy[1]);
    canbuy  #(.cost(15)) cb2 (Money,S2,CanBuy[2]);
    canbuy  #(.cost(30)) cb3 (Money,S3,CanBuy[3]);
    //checking if an item is being bought
    assign Vending = Buy & CanBuy;
    //decrementing the stock of an item being bought
    always_ff@(posedge Vending[0],posedge Reset)
        if (Reset)   S0<=4'b0110;
        else  S0<=S0-1;
    always_ff@(posedge Vending[1],posedge Reset)
        if (Reset)   S1<=4'b0010;
        else  S1<=S1-1;
    always_ff@(posedge Vending[2],posedge Reset)
        if (Reset)   S2<=4'b0001;
        else  S2<=S2-1;
    always_ff@(posedge Vending[3],posedge Reset)
        if (Reset)   S3<=4'b0001;
        else  S3<=S3-1;
    //decrementing the cost by how much the item cost
    fastcounter #(.cost(-5)) fsc0 (Vending[0],Reset,C0);
    fastcounter #(.cost(-10)) fsc1 (Vending[1],Reset,C1);
    fastcounter #(.cost(-15)) fsc2 (Vending[2],Reset,C2);
    fastcounter #(.cost(-30)) fsc3 (Vending[3],Reset,C3);
    //adding together the decrements
    assign C = C0+C1+C2+C3;
endmodule