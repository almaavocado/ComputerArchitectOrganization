`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2020 08:23:20 PM
// Design Name: 
// Module Name: curcuit1_tb
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


module curcuit1_tb();
    //inputs of UUT
    reg A;
    reg B;
    reg C;
    
    integer i;
    //outputs of UUT
    wire F1;
   
   //instantiate UUT
   curcuit1 uut(
                .A(A),
                .B(B),
                .C(C),
                .F1(F1)
                );
                
    //initalize test bench
    initial begin
        $timeformat(-9, 1, " ns", 9);
        $display(" ");
        $display(" ");
        $display(" ");
        
        for(i = 0; i < 8; i =i+1 ) begin
        {A,B,C} = i;
        #5 $display("time =%t  A=%0b  B=%0b  C=%0b || F1=%0b",$time, A, B, C, F1);

        
        end
        $finish;
    end
endmodule

