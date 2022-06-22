//is skeleton for now

module top_doorlock
(rst,clk,ps_start,ps_num,ps_end,
door_open,state_out,
w1,w2,w3,w4,w5,w6);
input rst, clk, ps_strat,ps_end;
input[3:0]ps_num;
output door_open;
output[1:0]state_out;
output[6:0]w1,w2,w3,w4,w5,w6;
//here: clk dll


//here: state machine


//here: seg7s


endmodule