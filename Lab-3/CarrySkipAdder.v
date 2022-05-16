`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2022 11:02:04 PM
// Design Name: 
// Module Name: CarrySkipAdder
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


module CarrySkipAdder(out,carryo,A,B,carryin);
input [31:0]A,B;
output [31:0]out;
output carryo;
input carryin;
wire [31:0]g,p;
wire [32:0]c;
wire temp;
assign c[0] = carryin;
genvar i;
for (i=0; i<32; i=i+1)
begin
assign  p[i] = A[i] ^ B[i];
assign  c[i+1] = ( A[i] & B[i] ) | ( A[i] & c[i] ) | ( B[i] & c[i] );
assign  out[i] = A[i] ^ B[i] ^ c[i];
end

assign temp= p[0];
for(i = 1 ; i<32 ; i=i+1)
begin
assign temp= temp& p[i];
end

assign carryo = temp ? carryin : c[32];

endmodule


