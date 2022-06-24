module cnt_w_dll#(parameter half=49, count_to = 60)(rst,clk,out);
input rst, clk;
output [6:0] out;
reg [6:0] out, temp;
reg new_clk;
reg [15:0]cnt_clk;

always@(posedge clk or negedge rst)
begin
    if(!rst)
	begin
      new_clk <= 0;
      cnt_clk <= 0;
    end
    else
	begin  
      cnt_clk <= cnt_clk+1;

      if(cnt_clk == half)
        cnt_clk <=0;
      else if(cnt_clk==0)
        new_clk <= !new_clk;     

    end
end    

always@(posedge new_clk or negedge rst) begin 
    if(!rst)
    begin
        out <=7'b0000000;
        temp<=7'b0000000;
    end
    else
    begin
        
        if(temp == count_to-1)
            temp <= 7'b0000000;
        else
            temp <= temp +1;
        out <=temp;
    end


end
endmodule