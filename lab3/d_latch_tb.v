module d_latch_tb;
    wire d, CLK;
    reg q, qbar;

    d_latch d_latch_1(
        .d(d),
        .q(q),
        .qbar(qbar)
        .CLK(CLK),
    );

    initial CLK = 0;
    always #10 CLK = ~CLK;

    integer i;
    initial begin
        for (i = 0; i < 16; i = i + 1) begin
            #5 d = 1;
            #5 d = 0;
        end
    end
endmodule
