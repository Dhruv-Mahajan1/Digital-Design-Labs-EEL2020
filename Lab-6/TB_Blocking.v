`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/04/2022 08:06:58 PM
// Design Name: 
// Module Name: TB_Blocking
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


module TB_Blocking();
reg P,clk;
wire Q;
Blocking B(P,clk,Q);
initial begin
P = 0;
clk = 0;
end
always #10 clk=~clk;
initial
begin
    #10 P = 1'b1;
    
    #10 P = 1'b0;
    #10 P = 1'b1;
    #10 P = 1'b1;
    #10 P = 1'b0;
    #70 $stop;
end
endmodule

