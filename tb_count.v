`timescale 1s/1ms
module tb_count();
reg rst, clk, start_stop;
wire out_clk;
wire [6:0] out_ms,out_s,out_m;


clk_dll#(.half(4))dlls(rst, clk, out_clk);
cnt0 u0 (rst,out_clk,start_stop,out_ms);
cnt_w_dll#(.half(49),.count_to(60)) u1 (rst,out_clk,start_stop,out_s);
cnt_w_dll#(.half(2999),.count_to(100)) u2 (rst,out_clk,start_stop,out_m);
initial begin
    rst = 0;
    #1; rst=1;
end
initial
begin
clk=0;
forever #0.001 clk=~clk;
end

initial
begin
start_stop=0;
#10.032; start_stop= ~start_stop;
#100; start_stop= ~start_stop;
#800; start_stop= ~start_stop;
end
endmodule