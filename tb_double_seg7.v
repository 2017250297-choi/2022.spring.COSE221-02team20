`timescale 1ns/1ns
module tb_double_seg7 ();
    reg[6:0] data_in;
    wire[6:0] out10, out01;
    double_seg7 u0 (data_in,out10,out01);
    initial
    begin
        data_in=0;
        forever #5 data_in=data_in+1;
    end
endmodule