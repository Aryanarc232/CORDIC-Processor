`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.06.2023 13:17:42
// Design Name: 
// Module Name: cordic_tb
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



module cordic_tb();
 reg clock; 
 reg signed [31:0] angle; 
 reg signed [31:0] Xin; 
 reg signed [15:0] Yin; 
 wire signed [16:0] Xout; 
 wire signed [16:0] Yout; 
 
 CORDIC c1(clock,angle,Xin,Yin,Xout,Yout);
 
 initial
  begin
    clock =1'b0;
    forever #10 clock = ~clock;
  end   
 
 initial 
  begin 
   angle = 32'd35;
   Xin   = 16'd32;
   Yin   = 16'd36;  
  end
endmodule   
 