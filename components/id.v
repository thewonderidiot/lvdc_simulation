`timescale 1ns/1ps
`default_nettype none

module id(
    input wire a,
    input wire b,
    input wire c,
    input wire d,
    input wire clk2,
    output wire y
);

assign y = ((a & b) | (c & d)) ? clk2 : 1'b0;

endmodule
`default_nettype wire
