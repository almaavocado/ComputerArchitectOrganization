`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2020 08:18:25 PM
// Design Name: 
// Module Name: curcuit1
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


module curcuit1(
    input A,
    input B,
    input C,
    output reg F1
    );
    
    always@ (*) begin
        F1 = (A&B) | (~A&C) | (A&~B&~C);
        
        end
       
endmodule
        
    
    

 