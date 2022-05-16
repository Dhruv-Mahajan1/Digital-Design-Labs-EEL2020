`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/18/2022 01:18:45 PM
// Design Name: 
// Module Name: BinaryToGray
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


module BinaryToGray(Binary,Graycode);
    input [0:3] Binary;
    output [0:3] Graycode;
    assign Graycode[0]=Binary[0];
    assign Graycode[1]= Binary[1]^Binary[0];
    assign Graycode[2]=Binary[2]^Binary[1];
    assign Graycode[3]=Binary[3]^Binary[2];
endmodule
