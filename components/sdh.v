`timescale 1ns/1ps
`default_nettype none

module sdh(
    output wire y,
    input wire a,
    input wire clk,
    input wire rst
);

parameter iv = 1;

inv #(iv) inv0(y, a, clk, rst);

endmodule
`default_nettype wire
