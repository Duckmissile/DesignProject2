//checks if there is enough time to buy something of cost
module canbuy #(parameter cost=5) (
                input logic [:0] money,
                output logic ans);
    assign ans = (money>cost);
endmodule