module lab1(
    input [3:0] a, [3:0] b,
    input [1:0] sel,
    input cin,
    output [3:0] f,
    output cout
);

    always @(*) begin
        case ({sel, cin})
            3'b000: f = a + b;
            3'b001: f = a + b + 1;
            3'b010: f = a + ~b;
            3'b011: f = a + ~b + 1;
            3'b100: f = ~b;
            3'b101: f = ~b + 1;
    end

endmodule

