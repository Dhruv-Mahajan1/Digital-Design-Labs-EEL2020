`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/23/2022 09:55:26 PM
// Design Name: 
// Module Name: GraytoBinary
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

module GraytoBinary(Gray,Bcd);
    input [0:3] Gray;
    output [0:3] Bcd;
    assign Bcd[0] = Gray[0];
    assign Bcd[1] = Gray[0]^Gray[1];
    assign Bcd[2] = Gray[2]^Gray[1]^Gray[0];
    assign Bcd[3] = Gray[3]^Gray[2]^Gray[1]^Gray[0];

endmodule
