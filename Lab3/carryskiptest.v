`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2022 11:08:14 PM
// Design Name: 
// Module Name: carryskiptest
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


module carryskiptest();
wire [31:0]out;
wire carryo;
reg [31:0]A,B;
reg carryin;
integer i,j;
CarrySkipAdder C(out,carryo,A,B,carryin);
initial
begin
assign carryin = 0;
for(i = 0; i<7; i=i+1)
begin
for(j = 0; j<7 ; j=j+1)
begin
assign A = i;
assign B = j; #10;
end
end
end
endmodule


