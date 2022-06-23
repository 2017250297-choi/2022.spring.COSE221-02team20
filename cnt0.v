module cnt0(rst,clk,out);
input rst, clk;
output [6:0] out;
reg [6:0] out, temp;

always@(posedge (clk) or negedge rst) begin 
    if(!rst)
    begin
        out <=7'b0000000;
        temp<=7'b0000000;
    end
    else
    begin
        
        if(temp == 99)
            temp <= 7'b0000000;
        else
            temp <= temp +1;
        out <=temp;
    end


end
endmodule