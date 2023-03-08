`timescale 1ns/1ps
`default_nettype none

module tmv(
    input wire en1,
    input wire en2,
    input wire en3,
    input wire a1,
    input wire a2,
    input wire a3,
    output wire y
);

wire int_a1;
wire int_a2;
wire int_a3;

assign int_a1 = en1 & a1;
assign int_a2 = en2 & a2;
assign int_a3 = en3 & a3;

assign y = ~((int_a1 & int_a2) | (int_a1 & int_a3) | (int_a2 & int_a3));

endmodule
`default_nettype wire
