module counter_2bit(res, en, cnt, CLK);
    input res, en, CLK;
    output reg [1:0] cnt;

    always @(posedge CLK) begin
        if (en) begin
            if (res) begin
                cnt <= 2'b00;
            end else begin
                cnt <= cnt + 1;
            end
        end
    end
endmodule
