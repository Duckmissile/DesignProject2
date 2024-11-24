vsim -gui work.vendingMachineProject
add wave *

force Reset 1 @ 0 , 0 @ 1
force Nickle 0 @ 0
force Dime 0 @ 0
force Quarter 0 @ 0


force buy  00 @ 0
force Nickle 1 @ 10, 0 @ 20
force Dime 1 @ 30, 0 @ 40
force Dime 1 @ 50, 0 @ 60



force buy 00 @ 200;
force Quarter 1 @ 210, 0 @ 220


force buy 00 @ 400;
Nickle 1 @ 410, 0 @ 420
Dime 1 @ 430, 0 @ 440
Refund 1 @ 440, 0 @ 590


force buy 11 @ 600;

 
force Clock 0 @ 0, 1 @ 1 -r 2
run 600
