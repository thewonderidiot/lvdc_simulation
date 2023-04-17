`timescale 1ns/1ps
`default_nettype none

module mcd1(
    output reg y,
    input wire a1,
    input wire a2,
    input wire clk,
    input wire rst
);

initial y = 0;

wire b;
assign b = a1 & a2;

`ifdef TARGET_FPGA

reg prev_b;
initial prev_b = 1'b1;

reg [8:0] count;
reg [8:0] next_count;
initial count = 9'd0;
initial next_count = 9'd0;

always @(*) begin
    if (count == 9'd0) begin
        if (prev_b & ~b) begin
            next_count = 9'd144;
        end else begin
            next_count = 9'd0;
        end
    end else begin
        next_count = count - 9'd1;
    end
end

always @(*) begin
    y = (count > 9'd0);
end

always @(posedge clk) begin
    if (~rst) begin
        prev_b = 1'b0;
        count <= 9'd0;
    end else begin
        prev_b <= b;
        count <= next_count;
    end
end

`else

always @(negedge b) begin
    y <= rst;
    y <= #3500 0;
end

`endif

endmodule
`default_nettype wire
