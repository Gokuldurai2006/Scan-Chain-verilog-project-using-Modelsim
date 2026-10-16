smodule scan_chain (
    input clk,
    input rst,
    input scan_en,
    input scan_in,
    input [3:0] d,
    output reg [3:0] q,
    output scan_out
);

always @(posedge clk or posedge rst) begin
    if (rst)
        q <= 4'b0000;

    else if (scan_en) begin
        q[0] <= scan_in;
        q[1] <= q[0];
        q[2] <= q[1];
        q[3] <= q[2];
    end

    else
        q <= d;
end

assign scan_out = q[3];

endmodule
