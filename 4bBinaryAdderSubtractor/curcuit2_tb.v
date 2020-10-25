`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2020 09:35:40 PM
// Design Name: 
// Module Name: curcuit2_tb
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


module curcuit2_tb();
    //inputs of UUT
    reg A;
    reg B;
    
    integer i;
    //outputs of UUT
    wire F2;
   
   //instantiate UUT
   curcuit2 uut(
                .A(A),
                .B(B),
                .F2(F2)
                );
                
    //initalize test bench
    initial begin
        $timeformat(-9, 1, " ns", 9);
        $display(" ");
        $display(" ");
        $display(" ");
        
        for(i = 0; i < 4; i =i+1 ) begin
        {A,B} = i;
        #5 $display("time =%t  A=%0b  B=%0b || F2=%0b",$time, A, B, F2);
        end
        $finish;
    end
endmodule

