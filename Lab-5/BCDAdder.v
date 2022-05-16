`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/13/2022 09:19:11 PM
// Design Name: 
// Module Name: BCDAdder
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


module BCDAdder(
input [3:0] A,B,
input Cin,
output reg [3:0] sum,
output reg Cout
);
reg [4:0] sum1;
reg [3:0] sum2;

always @(A,B, Cin)
begin
    sum1 = A+B+Cin; 
    if(sum1 > 9)
        begin
            sum1 = sum1+6; 
            assign Cout = 1;  
            sum = sum1;
        end
    else
        begin
            Cout = 0;
            sum = sum1;
        end
end     

endmodule
