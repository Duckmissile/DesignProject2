vsim -gui work.parser
add wave *

force reset 1 @ 0 , 0 @ 1

force money 111111 @ 100
force money 011101 @ 110
force money 011001 @ 120
force money 010110 @ 130
force money 010111 @ 140
force money 010101 @ 150
force money 010100 @ 160
force money 001111 @ 170
force money 001110 @ 180
force money 001101 @ 190
force money 001100 @ 200
force money 001011 @ 210
force money 001010 @ 220
force money 001001 @ 230
force money 001000 @ 240

force money 000001 @ 250

force money 001100 @ 300

force clk 0 @ 0, 1 @ 1 -r 2
run 600
