`timescale 1ns/1ps
`default_nettype none

module i(
    input wire a,
    output wire y
);

assign #3 y = ~a;

endmodule
`default_nettype wire
