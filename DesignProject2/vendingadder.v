// Copyright (C) 2024  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 23.1std.1 Build 993 05/14/2024 SC Lite Edition"
// CREATED		"Thu Nov 21 19:57:49 2024"

module vendingadder(
	Buy,
	Quarters,
	Dimes,
	Nickles,
	Clock,
	out
);


input wire	Buy;
input wire	Quarters;
input wire	Dimes;
input wire	Nickles;
input wire	Clock;
output wire	out;






and5_0	b2v_inst(
	.IN3(Dimes),
	.IN2(Buy),
	.IN1(Clock),
	.IN5(Quarters),
	.IN4(Nickles),
	.OUT1(out));


endmodule

module and5_0(IN3,IN2,IN1,IN5,IN4,OUT1);
/* synthesis black_box */

input IN3;
input IN2;
input IN1;
input IN5;
input IN4;
output OUT1;

endmodule
