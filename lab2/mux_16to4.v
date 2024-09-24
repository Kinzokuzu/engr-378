module mux_16to4(in, s, out);
    input [15:0] in, [1:0] s;
    output [3:0] out;

    assign out = s[1]
        ? (s[0] ? in[3:0] : in[7:4])
        : (s[0] ? in[11:8] : in[15:12]);

endmodule

