`timescale 1ns/1ps
`default_nettype none

module cg2(
    input wire a1,
    input wire a2,
    output wire y
);

assign #2 y = a1 & a2;

endmodule
`default_nettype wire
