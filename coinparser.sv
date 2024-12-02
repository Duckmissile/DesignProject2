//parses a number<75 that is a multiple of 5 to quarters dimes and nickels 
module coinparser(input logic clk,
                input logic en,
                input logic reset,
                input logic [6:0] money,
                output logic [3:0] Q,
                output logic [3:0] D,
                output logic [3:0] N);
 
 always_comb begin
        if (reset) begin
            Q = 4'd0;
            D = 4'd0;
            N = 4'd0;
        end else if (en) begin
            Q = money / 25;
            D = (money % 25) / 10;
            N = ((money % 25) % 10) / 5;
        end else begin
            Q = 4'd0;  // Optional: Hold or reset values when `en` is low
            D = 4'd0;
            N = 4'd0;
        end
    end

endmodule