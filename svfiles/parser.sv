//parses a number<75 to its base ten digits
module parser(input logic clk,
                input logic reset,
                input logic [7:0] money,
                ouptput logic [3:0] d1,
                ouptput logic [3:0] d0);
    always_ff@(posedge clk,posedge reset)
        if (reset)   d1<=4'b1010;
        else N<=money/10;
    always_ff@(posedge clk,posedge reset)
        if (reset)   d0<=4'b1010;
        else D<=(money-(money/10));

endmodule