module d_latch_tb;
    wire d, CLK;
    reg q, q_bar;

    d_latch d_latch_1(
        .d(d),
        .CLK(CLK),
        .q(q),
        .q_bar(q_bar)
    );

    initial CLK = 0;
    always #5 CLK = ~CLK;

    integer i;
    initial begin
