module fulladder_4bit(a, b, cin, cout, sum);
    input [3:0] a, [3:0] b, cin;
    output cout, [3:0] sum;
    wire c0, c1, c2;
    wire s0, s1, s2;

    fulladder(a[0], b[0], cin, c0, s[0]);
    fulladder(a[1], b[1], c0, c1, s[1]);
    fulladder(a[2], b[2], c1, c2, s[2]);
    fulladder(a[3], b[3], c2, cout, s[3]);

endmodule

