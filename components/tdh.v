`timescale 1ns/1ps
`default_nettype none

module tdh(
    output wire y,
    input wire a,
    input wire clk,
    input wire rst
);

parameter iv = 1;

`ifdef TARGET_FPGA

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

assign #2 y = rst ? ~a : iv;

`endif

endmodule
`default_nettype wire
