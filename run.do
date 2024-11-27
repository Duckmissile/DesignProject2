vsim -gui work.vendingMachineProject
add wave *

force Reset 1 @ 0 , 0 @ 1
force Nickles 0 @ 0
force Dimes 0 @ 0
force Quarters 0 @ 0


force Buy  0 @ 0
force Nickles 1 @ 10, 0 @ 20
force Dimes 1 @ 30, 0 @ 40
force Dimes 1 @ 50, 0 @ 60
force Buy 1 @ 100, 0 @ 110


force Buy 0 @ 200
force Quarters 1 @ 210, 0 @ 220
force Buy 1 @ 300


force Buys 00 @ 400
Nickles 1 @ 410, 0 @ 420
Dimes 1 @ 430, 0 @ 440
Refunds 1 @ 440, 0 @ 590


force Buy 11 @ 600


force Clock 0 @ 0, 1 @ 1 -r 2
run 600
