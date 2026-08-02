`timescale 1ns/1ps
`default_nettype none

module register #(
    parameter WIDTH = 8
)(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire [WIDTH:1] window,
    input wire clock,
    output reg [WIDTH:1] out
);

initial out = 'b0;

`ifdef TARGET_FPGA
`else
wire t;
always @(posedge clock) out <= window;
`endif

endmodule
`default_nettype wire
