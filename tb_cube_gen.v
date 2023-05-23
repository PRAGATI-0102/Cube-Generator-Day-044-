`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2023 09:43:53 PM
// Design Name: 
// Module Name: tb_cube_gen
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


module tb_cube_gen();

        parameter n = 4;
        reg [n-1:0] num;
        wire [2*n-1:0] out; 
 
        cube_gen dut(num,out);
        
        always
        begin
            num = 1;
            #10;
             num = 2;
            #10;
             num = 3;
            #10;
             num = 4;
            #10;
             num = 5;
            #10;
             num = 6;
            #10;
        end
        
        initial
        begin
            $monitor("num = %d,out = %d",num,out);
            #60;
            $finish;
        end
endmodule
