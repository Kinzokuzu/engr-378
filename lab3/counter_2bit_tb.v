module count_2bit_tb;
    wire res, en, CLK;
    reg [1:0] cnt;

    counter_2bit counter_2bit_1(
        .res(res)
        .en(en),
        .cnt(cnt),
        .CLK(CLK)
    );

    initial CLK = 0;
    always #5 CLK = ~CLK;

    integer i;
    initial begin
        res = 0;
        en = 0;
        for (i = 0; i < 10; i = i + 1) begin
            #10 en = 1;
            #10 en = 0;
        end
    end
endmodule
