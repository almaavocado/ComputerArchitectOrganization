`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2020 09:30:35 PM
// Design Name: 
// Module Name: curcuit2
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


module curcuit2(

    input A,
    input B,
    output reg F2
    );
    
    always@ (*) begin
       F2 = ~A|B && A|~B;
    end
endmodule
