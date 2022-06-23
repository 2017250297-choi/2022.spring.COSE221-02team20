`timescale 1ns/1ns
module tb_cnt0();
reg rst, clk,start_stop;
wire out;

cnt0 u0 (rst,clk&start_stop,out);

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
#53; start_stop= ~start_stop;
#44; start_stop= ~start_stop;
end


endmodule