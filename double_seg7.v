module double_seg7 (
    data_in,
    seg10,
    seg01
);
    input [6:0]data_in;
    output[6:0] seg10 , seg01;
    reg[6:0] ten, one;
    seg7 s10 (ten[3:0],seg10);
    seg7 s01 (one[3:0],seg01);
    always @ (data_in)
    begin
        ten <=((data_in % 100)/10);
        one <=(data_in % 10);
    end

endmodule