`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/13/2022 08:33:58 PM
// Design Name: 
// Module Name: PEFor
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


module PEFor( 
    input [4:0]A,
    output reg v,
    output reg [1:0]out
    );
    
    integer i;
    always @(A)
    begin
        out = 2'bxx;
        v = 0;
        for(i = 0;i<4; i=i+1)
        if(A[i])
        begin
        out = i;
        v = 1;
        end
    end
endmodule
