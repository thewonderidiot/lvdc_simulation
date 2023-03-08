`timescale 1ns/1ps
`default_nettype none

module dld(
    input wire volt,
    input wire gate,
    input wire clk,
    output wire y
);

assign y = volt & gate & clk;

endmodule
`default_nettype wire
