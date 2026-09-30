`timescale 1ns/1ps
`default_nettype none

module tmv(
    output wire y,
    input wire en1,
    input wire en2,
    input wire en3,
    input wire a1,
    input wire a2,
    input wire a3,
    input wire clk,
    input wire rst
);

localparam DELAY = 5;

wire int_a1;
wire int_a2;
wire int_a3;

assign int_a1 = en1 & a1;
assign int_a2 = en2 & a2;
assign int_a3 = en3 & a3;

wire vote = (int_a1 & int_a2) | (int_a1 & int_a3) | (int_a2 & int_a3);
wire delayed_vote;

`ifdef CLOCKED

localparam COUNT_LEN = $clog2(DELAY);
reg [COUNT_LEN:0] count;
reg inertial_vote;

initial inertial_vote = 'b0;
initial count = 0;

assign delayed_vote = inertial_vote;

always @(posedge clk) begin
    if (~rst) begin
        inertial_vote <= vote;
        count <= 0;
    end else if (inertial_vote == vote) begin
        count <= 0;
    end else if (count == DELAY - 1) begin
        inertial_vote <= vote;
        count <= 0;
    end else begin
        count <= count + 'b1;
    end
end

`else

localparam real dt = 24.4140625;
assign #(DELAY * dt) delayed_vote = vote;

`endif

inv #(1) inv0(y, delayed_vote, clk, rst);

endmodule
`default_nettype wire
