module fulladder(a, b, cin, cout, sum);
    input a, b, cin;
    output cout, sum;

    cout = (a & b) | (a & cin) | (b & cin);
    sum = a ^ b ^ cin;

endmodule

