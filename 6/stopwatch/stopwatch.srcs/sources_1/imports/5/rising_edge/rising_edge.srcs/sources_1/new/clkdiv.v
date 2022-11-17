`timescale 1ns / 1ps

module clkdiv(
        input clk, 
        input reset, 
        output clk_out 
    );
    // Board simulation
    // reg [15:0] COUNT;
    //Behavioral simulation 
    reg [15:0] COUNT;
    
    assign clk_out = COUNT[1];
    
    always @(posedge clk)
    begin
      if(reset)
        COUNT = 0;
      else 
        COUNT = COUNT + 1;
      end
    
endmodule
