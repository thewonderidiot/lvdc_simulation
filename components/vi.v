`timescale 1ns/1ps
`default_nettype none

module vi(
    input wire a,
    output wire y
);

assign y = ~a;

endmodule
`default_nettype wire
