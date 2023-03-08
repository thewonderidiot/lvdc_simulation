`timescale 1ns/1ps
`default_nettype none

module bfr_pa(
    input wire a,
    output wire y
);

assign y = a;

endmodule
`default_nettype wire
