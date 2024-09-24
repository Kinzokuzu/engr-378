module ac(a, b, cin, s, cout, f);
    input [3:0] a, [3:0] b, cin, [1:0] s;
    output cout, [3:0] f;
    wire [3:0] w0, [3:0] w1;

    mux_16to4({a, a, ~a, 0}, s, w0);
    mux_16to4({b, ~b, b, ~b}, s, w1);

    fulladder_4bit(w0, w1, cin, cout, f);

endmodule

