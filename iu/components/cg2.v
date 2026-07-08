`timescale 1ns/1ps
`default_nettype none

module cg2(
    output wire y,
    input wire a,
    input wire b
);

assign y = a & b;

endmodule
`default_nettype wire
