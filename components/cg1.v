`timescale 1ns/1ps
`default_nettype none

module cg1(
    output wire y,
    input wire a
);

assign y = a;

endmodule
`default_nettype wire
