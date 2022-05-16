`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2022 08:19:47 PM
// Design Name: 
// Module Name: CarryLookAhead4Bit
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


module CarryLookAhead4Bit(A,B,Cin,OutputSum,out);
input [3:0] A,B;
input Cin;
output [3:0] OutputSum;
output out;
wire [3:0] Carry;
wire [3:0] Generator, Propagator, Sum;
wire tempCarry;
genvar i;
assign #10 Propagator=A^B;
assign #5 Generator=A&B;

assign Carry[0] = Generator[0] | (Propagator[0] &Cin);
for(i = 1 ; i<4; i=i+1)
begin
    assign Carry[i] = Generator[i] | (Propagator[i] & Carry[i-1]);
end
assign OutputSum=Propagator^Carry;
assign out=Carry[3];

endmodule
