`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2022 10:48:22 PM
// Design Name: 
// Module Name: TestBenchComparator
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


module TestBenchComparator( );
reg [3:0]A;
reg [3:0] B;
wire Agreater,Bgreater,equal;
Comparator C(A,B,Agreater,Bgreater,equal);

initial
begin
assign A = 1;
assign B = 2;
#10;
assign A = 1;
assign B = 1;
#10;
assign A = 2;
assign B = 1;
#10;
end
endmodule

