//this is a counter that resets after N tics
module fastcounter #(parameter cost=5) (input logic clk,
                input logic reset,
                output logic [7:0] tics);
    //asynchronous reset
    always_ff@(posedge clk,posedge reset)
        if (reset)   tics<=8'b0;
        else tics<=tics+cost;
endmodule