`timescale 1ns/1ps
`default_nettype none

module inv(
    output wire y,
    input wire a,
    input wire clk,
    input wire rst
);

parameter [0:0] iv = 1;

`ifdef CLOCKED

reg yc;
reg yp;
reg yn;

initial yc = iv;
initial yp = iv;

assign y = yc;

always @(*) begin
    if ((y != yp) & (y == iv)) begin
        yn = iv;
    end else begin
        yn = ~a;
    end
end

always @(posedge clk) begin
    if (~rst) begin
        yc <= iv;
        yp <= iv;
    end else begin
        yp <= y;
        yc <= yn;
    end
end

`else

localparam real dt = 24.4140625;

wire yn = rst ? ~a : iv;
wire #(dt + !iv, dt + iv) yd = yn;
assign y = (yd === 1'bx) ? iv : yd;

`endif

endmodule
`default_nettype wire
