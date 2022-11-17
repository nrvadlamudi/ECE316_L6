`timescale 1ns / 1ps

module up_counter(
    input clk,
    input reset,
    input pause, 
    input [3:0] load0,
    input [3:0] load1,
    input [3:0] load2,
    input [3:0] load3,
    output reg[3:0] d0, d1, d2, d3,
    output tc
    );
    
    always @(posedge clk or posedge reset) begin
        if(reset) begin
            d0 = load0;
            d1 = load1;
            d2 = load2;
            d3 = load3;
        end
        if(!pause) begin
            if(d0 == 9 && d1 == 9 && d2 == 9 && d3 == 9)
                tc = 0;
            else
            if(d0 == 9) begin
                d0 = 0;
                if(d1 == 9) begin
                    d1 = 0;
                    if(d2 == 9) begin
                        d2 = 0;
                        d3 = d3 + 1;
                    end
                    else
                    d2 = d2 + 1;
                end
                else
                d1 = d1 + 1;
            end
            else
            d0 = d0 + 1;
        end
    end 
endmodule
