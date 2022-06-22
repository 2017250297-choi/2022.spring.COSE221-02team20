`timescale 1ns/1ns
module tb_clk_dll();
reg rst, clk;
wire out_clk;

clk_dll #(.half(4)) u0 (rst,clk,out_clk);

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

endmodule