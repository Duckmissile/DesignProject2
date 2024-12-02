//this is a counter that resets after N tics
module fastcounter #(parameter cost=5) (input logic clk,
                input logic reset,
                output logic [6:0] tics);
    //asynchronous reset
    always_ff@(posedge clk,posedge reset)
        if (reset)   tics<=7'b0;
        else tics<=tics+cost;
endmodule