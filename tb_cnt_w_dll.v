`timescale 1ns/1ns
module tb_cnt_w_dll();
reg rst, clk,start_stop;
wire out;

cnt_w_dll#(.half(4),.count_to(8)) u0 (rst,clk,start_stop,out);

initial
begin
rst=0;
#13; rst=1;
end

initial
begin
clk=0;
forever #5 clk=~clk;
end

initial
begin
start_stop=0;
#17; start_stop= ~start_stop;
#53; start_stop= ~start_stop;
#250; start_stop= ~start_stop;
end


endmodule