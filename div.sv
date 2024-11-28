module div #(parameter denom=5) 
            (input logic clk,
            input logic reset,
            input logic  [6:0] num,
            output logic [3:0] quo,
            output logic [6:0] tics);
    logic realreset;
    logic [6:0] numprev;
    assign realreset = reset | (numprev!=num);
    always_ff@(posedge clk,posedge realreset)
        if (reset) numprev<=7'b0;
        else if (numprev!=num)   numprev<=num;
    always_ff@(posedge clk,posedge realreset)
        if (reset) tics<=7'b0;
        else if (numprev!=num)   tics<=num;
        else if (tics>=denom) tics<=tics-denom;
    always_ff@(posedge clk,posedge realreset)
        if (realreset)   quo<=4'b0;
        else if (tics>=denom) quo<=quo+1;
endmodule