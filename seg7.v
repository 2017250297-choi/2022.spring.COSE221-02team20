module seg7(data,display);
input [3:0] data;
output [6:0] display;
reg[6:0]display;
always @(data) begin
    case(data)
        4'b00000 : display = 7'b1000000;
        4'b00001 : display = 7'b1111001;
        4'b00010 : display = 7'b0100100;
        4'b00011 : display = 7'b0110000;
        4'b00100 : display = 7'b0011001;
        4'b00101 : display = 7'b0010010;
        4'b00110 : display = 7'b0000010;
        4'b00111 : display = 7'b1111000;
        4'b01000 : display = 7'b0000000;
        4'b01001 : display = 7'b0010000;
        default : display = 7'b0111111;
    endcase
end
endmodule
