`timescale 1ns/1ps
module tb_top ();
    reg rst,clk,start_stop;
    wire[6:0]h10,h1,m10,m1,s10,s1;
    top_stopwatch u0 (rst,clk,start_stop,h10,h1,m10,m1,s10,s1);

    initial begin
        rst=1'b0;
        #105; rst=1'b1;
    end
    initial begin
        clk=1'b0;
        forever #0.01 clk= ~clk;
    end
    initial begin
        start_stop=1'b1;
        #3100;start_stop= ~start_stop;
        #3150; start_stop= ~start_stop;

    end
endmodule