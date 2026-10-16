`timescale 1ns/1ps

module tb_scan_chain;

reg clk;
reg rst;
reg scan_en;
reg scan_in;
reg [3:0] d;

wire [3:0] q;
wire scan_out;

scan_chain uut (
    .clk(clk),
    .rst(rst),
    .scan_en(scan_en),
    .scan_in(scan_in),
    .d(d),
    .q(q),
    .scan_out(scan_out)
);

always #5 clk = ~clk;

initial begin
    clk = 0;
    rst = 1;
    scan_en = 0;
    scan_in = 0;
    d = 4'b0000;

    #10 rst = 0;

    // Functional mode
    d = 4'b1010;
    #10;

    // Scan mode
    scan_en = 1;

    scan_in = 1; #10;
    scan_in = 0; #10;
    scan_in = 1; #10;
    scan_in = 1; #10;

    #20;
    $stop;
end

endmodule
