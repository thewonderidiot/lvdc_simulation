`timescale 1ns/1ps
`default_nettype none

module dld(
    output wire y,
    input wire volt,
    input wire gate,
    input wire clk
);

assign y = volt & gate & clk;

endmodule
`default_nettype wire
