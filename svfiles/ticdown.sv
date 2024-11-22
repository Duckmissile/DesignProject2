//this module turns on for the 2 tics after the refund switch has turned off
module ticdown(input logic clk,
                input logic reset,
                input logic refund,
                output logic isdown);
    logic refundprev;
    logic refundprevprev;
    ff frp (clk,reset,1,refund, refundprev);
    ff frpp (clk,reset,1,refundprev, refundprevprev);
    ff frpp (clk,reset,1,refundprevprev & ~refund, isdown);
endmodule