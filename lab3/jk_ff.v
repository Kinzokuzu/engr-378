module jk_ff(j, k, q, qbar, CLK);
    input j, k, CLK;
    output reg q, qbar;

    always @(posedge CLK) begin
        case ({j, k})
            2'b00: begin
                q <= q;
                qbar <= qbar;
            end
            2'b01: begin
                q <= 0;
                qbar <= 1;
            end
            2'b10: begin
                q <= 1;
                qbar <= 0;
            end
            2'b11: begin
                q <= ~q;
                qbar <= ~qbar;
            end
    end
endmodule
