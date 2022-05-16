`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/13/2022 10:44:53 PM
// Design Name: 
// Module Name: TestSerial
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////




module test_serial_multiplier();
reg [3:0] A,B;
reg clk,ctrl,load;
wire [3:0] P,Q,M;
wire [7:0] PQ;
SerialMultiplier SM(A,B,clk,ctrl,load,P,Q,M,PQ);

initial
fork
    A=4'd3;B=4'd12;clk=0;ctrl=0;load=0;
    #5 load=1;
    #10 clk=1; #15 load=0;
    #20 clk=0; #25 ctrl=1;
    #30 clk=1;
    #40 clk=0;
    #50 clk=1;
    #60 clk=0;
    #70 clk=1;
    #80 clk=0; #85 A=4'd15; #85 B=4'd15;
    #90 clk=1; #95 ctrl=0;
    #100 clk=0; #105 load=1;
    #110 clk=1; #115 load=0;
    #120 clk=0; #125 ctrl=1;
    #130 clk=1;
    #140 clk=0;
    #150 clk=1;
    #160 clk=0;
    #170 clk=1;
    #180 clk=0;
    #190 clk=1; #195 ctrl=0;
join
initial #200 $finish;
endmodule

