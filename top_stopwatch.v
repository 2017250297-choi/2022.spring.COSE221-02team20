module top_stopwatch(rst,clk,start_stop,h10,h1,m10,m1,s10,s1);
    input rst, clk, start_stop;
    output[6:0]h10,h1,m10,m1,s10,s1;
    reg start_temp, start2;
    wire new_clk;
    wire[6:0]ms_cnt,s_cnt,m_cnt;


    
	always @ (posedge new_clk or negedge rst) begin
		if(!rst) begin
        start_temp <= 1'b1;
		end else begin
		start_temp <= start_stop;
        end
    end
    always@(posedge start_temp or negedge rst)begin
    if(!rst) begin
        start2 <=1'b0;
    end else begin
        start2<= ~start2;

        end
    end
    clk_dll #(.half(24999))main_dll(rst,clk,new_clk);
    cnt_w_dll #(.half(4), .count_to(100))msec0(rst,new_clk&start2,ms_cnt);
    cnt_w_dll #(.half(499), .count_to(60)) sec0(rst,new_clk&start2,s_cnt);
    cnt_w_dll #(.half(29999), .count_to(60)) min0(rst,new_clk&start2,m_cnt);

    double_seg7 s11 (ms_cnt,s10,s1);
    double_seg7 m11 (s_cnt,m10,m1);
    double_seg7 h11 (m_cnt,h10,h1);


endmodule