`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:54:06 05/09/2020
// Design Name:   sh_reg
// Module Name:   D:/Study/2019-2020/Second Semester/CPE433 - Advanced Digital/Home Work 4/SHL-SHR-Register/sh_reg_tb.v
// Project Name:  SHL-SHR-Register
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sh_reg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sh_reg_tb;

	// Inputs
	reg shl;
	reg shr;
	reg d;
	reg clk;
	reg reset;

	// Outputs
	wire [7:0] Q;

	// Instantiate the Unit Under Test (UUT)
	sh_reg uut (
		.shl(shl), 
		.shr(shr), 
		.d(d), 
		.clk(clk), 
		.reset(reset), 
		.Q(Q)
	);

	
		initial begin
			forever begin
				clk <= 0;
		   #5 clk <= 1;
         #5 clk <= 0;
			end
		end
		initial begin
				 reset = 1;
		   #12 reset = 0;
         #90 reset = 1;
         #12 reset = 0;
		end
		initial begin
			    shl = 1;
			    shr = 0;
	      #50 shl = 0;
         #12 shr = 1;
		end
		initial begin
			forever begin
					d = 0;
				#7 d = 1;
				#8 d = 0;
			end
		end 
      
endmodule

