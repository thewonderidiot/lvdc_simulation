`timescale 1ns/1ps
`default_nettype none

module dsa(
    input wire a,
    output wire y
);

assign #2 y = a;

endmodule
`default_nettype wire
