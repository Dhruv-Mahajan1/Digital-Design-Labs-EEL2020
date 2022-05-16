`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/04/2022 10:08:28 PM
// Design Name: 
// Module Name: TB_Adder
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


module TB_Adder();
    reg [7:0]A,B;
    wire cout;
    wire [8:0]Sum;
    reg clk,reset;
    SerialAdder SA(A,B,clk,reset,cout,Sum);
    initial begin
    clk = 0;
    end
    always #10 clk = !clk;
    initial begin
    A=8'b01010011;B=8'b00011101;
    #5 reset=1'b1;#5 reset=1'b0;
    
    #140 A=8'b00100111;B=8'b00000001;
    #5 reset=1'b1;#5 reset=1'b0;
    
    #140 A=8'b01010101;B=8'b00010011;reset=1'b1;
    #140 $stop;
    end
endmodule

