`timescale 1ns/1ps
`default_nettype none

module dl(
    input wire a,
    output reg y
);
parameter delay = 31000;

initial y = 0;

always @(a) begin
    y <= #delay a;
end

endmodule
`default_nettype wire
