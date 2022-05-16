`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2022 11:19:45 PM
// Design Name: 
// Module Name: CarrySelectAddertest
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


module CarrySelectAddertest( );
reg [31:0] A;
reg [31:0] B;
reg cin;

wire [31:0] S;
wire cout;
integer i,j,error;

CarrySelectAdder CSA (.A(A), .B(B), .cin(cin), .S(S), .cout(cout));

initial begin

A = 0;
B = 0;
error = 0;

cin = 0;
for(i=0;i<16;i=i+1) begin
for(j=0;j<16;j=j+1) begin
A = i;
B = j;
#10;
if({cout,S} != (i+j))
error <= error + 1;
end
end

cin = 1;
for(i=0;i<16;i=i+1) begin
for(j=0;j<16;j=j+1) begin
A = i;

B = j;
#10;
if({cout,S} != (i+j+1))
error <= error + 1;
end
end
end
endmodule
