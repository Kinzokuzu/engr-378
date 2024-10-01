module fulladder_4bit(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] sum,
);

    wire c0, c1, c2;
    wire s0, s1, s2;

    fulladder_1bit(a[0], b[0], cin, c0, s[0]);
    fulladder_1bit(a[1], b[1], c0, c1, s[1]);
    fulladder_1bit(a[2], b[2], c1, c2, s[2]);
    fulladder_1bit(a[3], b[3], c2, cout, s[3]);

endmodule

