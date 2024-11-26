//parses a number<75 that is a multiple of 5 to quarters dimes and nickels 
module coinparser(input logic clk,
                input logic en,
                input logic reset,
                input logic [7:0] money,
                output logic [3:0] Q,
                output logic [3:0] D,
                output logic [3:0] N);
    always_ff@(posedge clk,posedge reset)
        if (reset)   Q<=4'b1010;
        else if (en) Q<=money/25;
    always_ff@(posedge clk,posedge reset)
        if (reset)   N<=4'b1010;
        else if (en) N<=(money-Q*25)/10;
    always_ff@(posedge clk,posedge reset)
        if (reset)   D<=4'b1010;
        else if (en) D<=(money-N*10-Q*25)/5;

endmodule