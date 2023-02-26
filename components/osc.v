`timescale 1ns/1ps
`default_nettype none

module osc(
    output reg clk
);

initial clk = 0;
always #244.140625 clk = !clk;

endmodule
`default_nettype wire
