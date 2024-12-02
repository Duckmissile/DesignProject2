vsim -gui work.sum4
add wave *

force reset 1 @ 0 , 0 @ 1



force b 0000000 @ 1
force c 0000000 @ 2
force d 0000000 @ 3
force a 0000000 @ 4


force b 0011001 @ 100
force c 0011001 @ 200
force d 0011001 @ 300
force a 1011001 @ 400

force clk 0 @ 0, 1 @ 1 -r 2
run 600
