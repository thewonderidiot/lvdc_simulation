`timescale 1ns/1ps
`default_nettype none

module mcd2(
    output reg y,
    input wire a,
    input wire clk,
    input wire rst
);
parameter delay = 2500;

initial y = 0;

`ifdef TARGET_FPGA

localparam WIDTH = (delay*10/244);

reg prev_a;
initial prev_a = 1'b0;

reg [6:0] count;
reg [6:0] next_count;
initial count = 7'd0;
initial next_count = 7'd0;

always @(*) begin
    if (count == 7'd0) begin
        if (~prev_a & a) begin
            next_count = 7'd20 + WIDTH;
        end else begin
            next_count = 7'd0;
        end
    end else begin
        next_count = count - 7'd1;
    end
end

always @(*) begin
    y = (count > 7'd0) & (count <= WIDTH);
end

always @(posedge clk) begin
    if (~rst) begin
        prev_a = 1'b0;
        count <= 9'd0;
    end else begin
        prev_a <= a;
        count <= next_count;
    end
end

`else

always @(posedge a) begin
    y <= #500 1;
    y <= #delay 0;
end

`endif

endmodule
`default_nettype wire
