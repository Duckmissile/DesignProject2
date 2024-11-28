//parses a number<75 that is a multiple of 5 to quarters dimes and nickels 
module coinparser(input logic clk,
                input logic en,
                input logic reset,
                input logic [6:0] money,
                output logic [3:0] Q,
                output logic [3:0] D,
                output logic [3:0] N,
                output logic [6:0] numprev);
    logic [6:0] sansQ, sansDQ;
    logic [3:0] Qo,Do,No; 
    assign numprev = Qo;
    div #(.denom(25)) dq (clk,reset,money,Qo,sansQ);
    div #(.denom(10)) dd (clk,reset,sansQ,Do,sansDQ);
    div #(.denom(5)) dn (clk,reset,sansDQ,No);
    always_ff@(posedge clk,posedge reset)
        if (reset)   N<=4'b1010;
        else if (en) N<=No;
    always_ff@(posedge clk,posedge reset)
        if (reset)   D<=4'b1010;
        else if (en) D<=Do;
    always_ff@(posedge clk,posedge reset)
        if (reset)   Q<=4'b1010;
        else if (en) Q<=Qo;
endmodule