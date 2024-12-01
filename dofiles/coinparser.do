vsim -gui work.coinparser
add wave *

force reset 1 @ 0 , 0 @ 1
force en 1 @ 0

force money 1111101 @ 100
force money 1110110 @ 105
force money 1101111 @ 110
force money 1101000 @ 115
force money 1100001 @ 120
force money 1011010 @ 125
force money 1010101 @ 130
force money 1001110 @ 135
force money 1001001 @ 140
force money 1000010 @ 145
force money 0111101 @ 150
force money 0110110 @ 155
force money 0110001 @ 160
force money 0101010 @ 165
force money 0100101 @ 170
force money 0011110 @ 175
force money 0011001 @ 180
force money 0010010 @ 185
force money 0001101 @ 190
force money 0000110 @ 195
force money 0000001 @ 200


force clk 0 @ 0, 1 @ 1 -r 2
run 600
