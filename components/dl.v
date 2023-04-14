`timescale 1ns/1ps
`default_nettype none

module dl(
    output reg y,
    input wire a
);
parameter delay = 31000;

initial y = 0;

always @(a) begin
    y <= #delay a;
end

endmodule
`default_nettype wire
