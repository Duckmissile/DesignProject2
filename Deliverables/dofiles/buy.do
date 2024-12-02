vsim -gui work.buy
add wave *


force Reset 1 @ 0, 0 @ 1
force Money 0 @ 0
force Buy 0 @ 0

force Money 11001 @ 10
force Buy 0010 @ 30, 0000 @ 50


force Money 10100 @ 60
force Buy 0100 @ 70, 0000 @ 80
force Reset 1 @ 100, 0 @ 105

force Money 1111 @ 120
force Buy 0100 @ 130, 0000 @ 140





force Clock 0 @ 0, 1 @ 1 -r 2


run 150
