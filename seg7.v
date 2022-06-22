module display7(data,display);
input [5:0] data;
output [6:0] display;
reg[6:0]display;

parameter C = 5'b01010;
parameter D = 5'b01011;
parameter E = 5'b01100;
parameter L = 5'b01101;
parameter N = 5'b01110;
parameter O = 5'b01111;
parameter P = 5'b10000;
parameter S = 5'b10001;
always @(data) begin
    case(data)
        5'b00000 : display = 7'b1000000;
        5'b00001 : display = 7'b1111001;
        5'b00010 : display = 7'b0100100;
        5'b00011 : display = 7'b0110000;
        5'b00100 : display = 7'b0011001;
        5'b00101 : display = 7'b0010010;
        5'b00110 : display = 7'b0000010;
        5'b00111 : display = 7'b1111000;
        5'b01000 : display = 7'b0000000;
        5'b01001 : display = 7'b0010000;
        C : display = 7'b1000110;
        D : display = 7'b0100001;
        E : display = 7'b0000110;
        L : display = 7'b1000111;
        N : display = 7'b1001000;
        O : display = 7'b1000000;
        P : display = 7'b0001100;
        S : display = 7'b0010010;
        default : display = 7'b0111111;
    endcase

    
end
endmodule
