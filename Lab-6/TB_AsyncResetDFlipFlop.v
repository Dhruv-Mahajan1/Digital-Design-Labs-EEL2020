`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/04/2022 06:31:13 PM
// Design Name: 
// Module Name: TB_AsyncResetDFlipFlop
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


module TB_syncResetDFlipFlop();
reg D;
reg clk,reset;
wire Q;
SyncResetDFlipFlop A2(D,clk,reset,Q);
initial begin
    D = 0;clk = 0;reset=0;
    end
    always #10 clk=~clk;
    initial
    begin
        #20 D= 1'b1;reset = 1'b1;
        #20 D = 1'b1;reset=1'b0;
        
        #20 D = 1'b0;
        #20 D= 1'b1;
        reset=1'b1;
        #20 D = 1'b0;
        #110 $stop;
    end
endmodule