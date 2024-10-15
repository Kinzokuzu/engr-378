module jk_ff_tb;
    wire j, k, CLK;
    reg q, qbar;

    jk_ff jk_ff_1(
        .j(j),
        .k(k),
        .q(q),
        .qbar(qbar)
        .CLK(CLK),
    );

    initial CLK = 0;
    always #10 CLK = ~CLK;

    integer i;
    initial begin
        for (i = 0; i < 4; i = i + 1) begin
            j = 0;
            k = 0;
            #10;
            j = 0;
            k = 1;
            #10;
            j = 1;
            k = 0;
            #10;
            j = 1;
            k = 1;
            #10;
        end
    end
endmodule
