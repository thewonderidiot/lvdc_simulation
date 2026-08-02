`timescale 1ns/1ps
`default_nettype none

module window #(
    parameter WIDTH = 8
)(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire line,
    input wire clock,
    output reg [WIDTH:1] out
);

initial out = 'b0;

`ifdef TARGET_FPGA
`else
always @(posedge clock) out <= {line, out[WIDTH:2]};
`endif

endmodule
`default_nettype wire
