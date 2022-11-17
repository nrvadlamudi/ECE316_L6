`timescale 1ns / 1ps

module watch_main(
    input clk,
    input reset, 
    input ss,
    input [1:0] mode, 
    input [7:0] sw,
    output  [3:0] an, 
    output [6:0] seg, 
    output dp,
    output done
    );
    
    wire slow_clk; 
    wire disp_clk; 
    wire pause;
    wire [6:0] in0, in1, in2, in3;
    wire [3:0] d0, d1, d2, d3; // digit to display 
    wire [3:0] ucl0, ucl1, ucl2, ucl3; // up counter with load display 
    wire [3:0] uc0, uc1, uc2, uc3; // up counter with no load display 
    
    rising_edge(.clk(clk), .signal(ss), .reset(reset), .out(pause)); // toggle for the start/stop switch 
    clkdiv(.clk(clk), .reset(reset), .clk_out(slow_clk));
    up_counter uc_mode1();
    
    
    
endmodule
