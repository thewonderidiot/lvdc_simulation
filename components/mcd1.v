`timescale 1ns/1ps
`default_nettype none

module mcd1(
    output reg y,
    input wire a1,
    input wire a2
);

initial y = 0;

wire b;
assign b = a1 & a2;

reg on = 0;
initial begin
    #100 on = 1;
end

always @(negedge b) begin
    y <= on;
    y <= #3500 0;
end

endmodule
`default_nettype wire
