//adds 4 things supposedly the credit in quarters dimes and nickels 
//and also the debt acrewed from purchases 
module sum4 (input logic clk,
                input logic reset,
                input logic [6:0] a,
                input logic [6:0] b,
                input logic [6:0] c,
                input logic [6:0] d,
                output logic [6:0] sum);
    assign sum = a+b+c+d;
endmodule