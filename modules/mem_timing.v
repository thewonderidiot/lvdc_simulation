`timescale 1ns/1ps
`default_nettype none

module mem_timing(
    input wire V1,
    input wire V4MOD7,
    input wire CSTN,
    input wire G6V,
    input wire G7VN,
    input wire HALTV,
    input wire HOPV,
    input wire INTV,
    input wire OP1VN,
    input wire OP2VN,
    input wire OP3V,
    input wire OP4V,
    input wire PAV,
    input wire RUNVN,
    input wire STOVN,
    input wire TTLV,
    input wire Y1,
    input wire Z7,
    output wire CST,
    output wire RUN,
    output wire RUNN
);

wire INHBS;
wire MOP;
wire RD;

wire na15a;
wire na15b;
wire na22a;
wire na22b;
wire na23a;
wire na24a;
wor na24b;
wor na29a;
wor na30b;
wire na31b;

// 10-46
a a15a(.a1(MOP), .a2(STOVN), .y(na15a));
a a15b(.clk(V4MOD7), .exp(na15a), .y(na15b));
i a15c(.a(na15b), .y(INHBS));

a a23a(.clk(V4MOD7), .a1(INHBS), .y(na23a));
i a23b(.a(na23a), .y(RD));

a a23c(.clk(V1), .a1(TTLV), .y(na24b));
a a16a(.clk(V1), .a1(INTV), .a2(G6V), .y(na24b));
a a16b(.clk(V1), .a1(PAV), .a2(G6V), .a3(RUNVN), .y(na24b));
a a17a(.clk(V1), .a1(OP1VN), .a2(OP2VN), .a3(OP3V), .y(na24b));
a a17b(.clk(V1), .a1(OP1VN), .a2(OP2VN), .a3(OP4V), .y(na24b));
a a31a(.clk(V1), .a1(OP1VN), .a2(OP3V), .a3(OP4V), .y(na24b));
a a24a(.clk(V1), .a1(HOPV), .a2(RUNVN), .y(na24a));
a a24b(.exp(na24a), .y(na24b));
i a24c(.a(na24b), .y(MOP));

a a31b(.clk(Z7), .a1(G7VN), .a2(PAV), .a3(G6V), .y(na31b));
a a30a(.exp(na31b), .a1(HALTV), .y(na30b));
a #(1) a30b(.clk(V4MOD7), .a1(RUNN), .y(na30b));
i a30c(.a(na30b), .y(RUN));
i a29c(.a(na29a), .y(RUNN));
a a29a(.clk(V4MOD7), .a1(RUN), .y(na29a));
a a29b(.clk(Y1), .exp(na22a), .a1(G7VN), .y(na29a));
a a22a(.a1(G6V), .a2(PAV), .y(na22a));

a a22b(.clk(V4MOD7), .a1(CSTN), .y(na22b));
i a22c(.a(na22b), .y(CST));


endmodule
`default_nettype wire
