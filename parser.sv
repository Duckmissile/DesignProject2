//parses a number<75 to its base ten digits
module parser(input logic clk,
                input logic reset,
                input logic [6:0] money,
                output logic [3:0] d1,
                output logic [3:0] d0);
    logic [6:0] ones;
    assign d1=money/10;
    assign d0=money%10;
endmodule