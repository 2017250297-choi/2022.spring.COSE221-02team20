module seg7(data,display);
input [3:0] data;
output [6:0] display;
reg[6:0]display;
always @(data) begin
    case(data)
        4'b0000 : display = 7'b1000000;
        4'b0001 : display = 7'b1111001;
        4'b0010 : display = 7'b0100100;
        4'b0011 : display = 7'b0110000;
        4'b0100 : display = 7'b0011001;
        4'b0101 : display = 7'b0010010;
        4'b0110 : display = 7'b0000010;
        4'b0111 : display = 7'b1111000;
        4'b1000 : display = 7'b0000000;
        4'b1001 : display = 7'b0010000;
        default : display = 7'b0111111;
    endcase
end
endmodule
