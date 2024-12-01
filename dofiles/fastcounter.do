vsim -gui work.fastcounter
add wave *

force reset 1 @ 0 , 0 @ 1

force clk 0 @ 0, 1 @ 1 -r 2
run 100
