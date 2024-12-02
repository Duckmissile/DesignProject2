//checks if there is enough moeny to buy something of cost
//also checks if there is enough stock to sell it
module canbuy #(parameter cost=5) (
                input logic [6:0] money,
                input logic [3:0] stock,
                output logic ans);
    assign ans = (money>=cost) & (stock>0);
endmodule