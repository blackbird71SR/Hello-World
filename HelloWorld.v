`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NIL
// Engineer: driedmelon
// 
// Create Date: 17.10.2018 08:45:28
// Design Name: Hello World
// Module Name: hello_world
// Project Name: hello_world
// Target Devices: - 
// Tool Versions: - 
// Description: A simple hello world program.
// 
// Dependencies: -
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: - 
// 
//////////////////////////////////////////////////////////////////////////////////

module hello_world();

initial begin
  $display ("Hello World");
  #10 $finish;
end

endmodule // End of module

//Created & Edited with Xilinx Vivado Design Suite
