`timescale 1ns/1ps
`default_nettype none

module mcd2(
    input wire a,
    output reg y
);
parameter delay = 2500;

initial y = 0;

always @(posedge a) begin
    y <= #500 1;
    y <= #delay 0;
end

endmodule
`default_nettype wire
