`timescale 1ns/1ps
`default_nettype none

module nsi(
    input wire a,
    output wire y
);

assign y = ~a;

endmodule
`default_nettype wire
