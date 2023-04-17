`timescale 1ns/1ps
`default_nettype none

module dl(
    output reg y,
    input wire a,
    input wire clk,
    input wire rst
);
parameter delay = 31000;

initial y = 0;

`ifdef TARGET_FPGA

localparam SIZE = (delay*10/244);
reg [SIZE-1:0] delay_line;

always @(posedge clk) begin
    if (~rst) begin
        delay_line <= 0;
        y <= 0;
    end else begin
        y <= delay_line[SIZE-1];
        delay_line <= {delay_line[SIZE-2:0], a};
    end
end

`else

always @(a) begin
    y <= #delay a;
end

`endif
endmodule
`default_nettype wire
