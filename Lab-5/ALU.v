`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/13/2022 07:44:35 PM
// Design Name: 
// Module Name: ALU
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


module ALU(
input [31:0] A,B,
input [2:0] inp,
output reg [31:0] out

    );
    
 
always @(A,B,inp)
    begin
        case(inp)
            
            3'b000: out= 0;
            
            3'b001: out = A+B;
            
            3'b010: out= A - B;
          
            3'b011: out = A << 1;
          
            3'b100: out = A>> 1;

            3'b101: out = A & B;
      
            3'b110: out = A | B;
       
            3'b111: out = A^B;
        endcase
    end
endmodule

