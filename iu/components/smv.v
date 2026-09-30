`timescale 1ns/1ps
`default_nettype none

module smv(
    output wire y,
    input wire a,
    input wire clk,
    input wire rst
);

// Simplex bypass to create voted nets. This component
// is non-original and should eventually be replaced by
// voter card implementations.
wire z;
tmv tmv0(z, 1'b1, 1'b1, 1'b1, a, 1'b1, 1'b0, clk, rst);
vi vi0(y, z);

endmodule
`default_nettype wire
