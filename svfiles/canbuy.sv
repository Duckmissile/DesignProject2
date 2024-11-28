//checks if there is enough time to buy something of cost
module canbuy #(parameter cost=5) (
                input logic [6:0] money,
                input logic [3:0] stock,
                output logic ans);
    assign ans = (money>cost) & (stock>0);
endmodule