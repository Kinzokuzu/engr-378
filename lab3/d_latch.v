module d_latch(d, q, qbar, CLK);
    input d, CLK;
    output reg q, qbar;

    always @(*) begin
        if (CLK) begin
            q = d;
            qbar = ~d;
        end
    end
endmodule
