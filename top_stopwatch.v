module top_stopwatch(rst,clk,start_stop,h10,h1,m10,m1,s10,s1);
    input rst, clk, start_stop;
    output[6:0]h10,h1,m10,m1,s10,s1;
    wire new_clk;
    wire[6:0]ms_cnt,s_cnt,m_cnt;

    clk_dll #(.half(24999))main_dll(rst,clk,new_clk);

    cnt0 ms0 (rst,new_clk,start_stop,ms_cnt);
    cnt_w_dll #(.half(49), .count_to(60)) sec0(rst,new_clk,start_stop,s_cnt);
    cnt_w_dll #(.half(2999), .count_to(100)) min0(rst,new_clk,start_stop,m_cnt);

    double_seg7 s11 (ms_cnt,s10,s1);
    double_seg7 m11 (s_cnt,m10,m1);
    double_seg7 h11 (m_cnt,h10,h1);


endmodule