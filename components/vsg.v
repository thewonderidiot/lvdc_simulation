`timescale 1ns/1ps
`default_nettype none

module vsg(
    output reg y,
    input wire a,
    input wire b,
    input wire clk,
    input wire rst
);

initial y = 1'b1;

`ifdef TARGET_FPGA

reg prev_a;
initial prev_a = 1'b0;

reg [5:0] count;
reg [5:0] next_count;
initial count = 0;
initial next_count = 0;

always @(*) begin
    if ((count > 6'd0) & (count < 6'd20)) begin
        y = b;
    end else begin
        y = 1'b1;
    end
end

always @(*) begin
    if (count == 6'd0) begin
        if ((~prev_a) & a) begin
            next_count = 6'd35;
        end else begin
            next_count = 6'd0;
        end
    end else begin
        next_count = count - 6'd1;
    end
end

always @(posedge clk) begin
    if (~rst) begin
        prev_a <= 1'b0;
        count <= 6'd0;
    end else begin
        prev_a <= a;
        count <= next_count;
    end
end

`else

always @(posedge a) begin
    y <= #400 b;
    y <= #460 1;
end

`endif

endmodule
`default_nettype wire
