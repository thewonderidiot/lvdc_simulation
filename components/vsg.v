`timescale 1ns/1ps
`default_nettype none

module vsg(
    output reg y,
    input wire a,
    input wire b
);

initial y = 1;

always @(posedge a) begin
    y <= #400 b;
    y <= #460 1;
end

endmodule
`default_nettype wire
