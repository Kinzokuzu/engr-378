module fulladder_1bit(
    input a,
    input b,
    input cin,
    output sum,
    output cout
);

    always @(*) begin
        sum = a ^ b ^ cin;
        cout = (a & b) | (b & cin) | (a & cin);
    end

endmodule
