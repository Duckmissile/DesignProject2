//parses a number<75 to its base ten digits
module parser(input logic clk,
                input logic reset,
                input logic [6:0] money,
                output logic [3:0] d1,
                output logic [3:0] d0);
    logic [6:0] ones;
    div #(.denom(10)) dt (clk,reset,money,d1,ones);
    assign d0=ones[3:0];
endmodule