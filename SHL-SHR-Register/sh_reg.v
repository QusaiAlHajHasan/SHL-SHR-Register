`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:50:35 05/09/2020 
// Design Name: 
// Module Name:    sh_reg 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module sh_reg(shl, shr, d, clk, reset, Q);

input shl, shr, d, clk, reset;
output reg [7:0] Q;

always @ (posedge clk)
begin
	if (~reset) 
		begin
			if (shl)
			begin
				Q <= #2 {Q[6:0],d};
			end
			else if (shr)
			begin
				Q <= #2 {d, Q[7:1]};
			end
		end
end

always @ (posedge reset)
begin
	Q <= 8'b00000000;
end 

endmodule
