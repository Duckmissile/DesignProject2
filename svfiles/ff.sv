//this is a 16 bit flip flop with enable and reset
module ff(input logic clk,
                input logic reset,
                input logic en,
                input logic [7:0] d,
                output logic [7:0] q);
    //asynchronous reset
    always_ff@(posedge clk,posedge reset)
        if (reset)   q<=8'b0;
        else if (en) q<=d;
endmodule