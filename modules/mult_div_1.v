`timescale 1ns/1ps
`default_nettype none

module mult_div_1(
    input wire V1,
    input wire V4MOD4,
    input wire AI3V,
    input wire G2V,
    input wire G4VN,
    input wire G5V,
    input wire G6V,
    input wire G7VN,
    input wire HOYV,
    input wire HOYVN,
    input wire MD7V,
    input wire MR2,
    input wire NU,
    input wire OP1V,
    input wire OP2V,
    input wire OP2VN,
    input wire OP3VN,
    input wire OP4VN,
    input wire P1VN,
    input wire P2VN,
    input wire P3VN,
    input wire PAV,
    input wire PBV,
    input wire PCV,
    input wire PCVN,
    input wire PQR,
    input wire PR2V,
    input wire PR10,
    input wire Q8V,
    input wire STP,
    input wire TBCV,
    input wire TMVN,
    input wire TTLV,
    input wire VOYV,
    input wire W2,
    input wire X7,
    input wire Y1,
    input wire Z6,
    input wire ZN,
    output wire DL31,
    output wire DL44,
    output wire HOY,
    output wire HOYN,
    output wire VOY,
    output wire VOYN
);

wire P3N;
wire Q9;
wire Q9N;

assign P3N = 1;

wire na4a;
wire na8a;
wire na10b;
wor na11a;
wor na15b;
wire na16b;
wire na17a;
wor na17b;
wor na18a;
wor na22a;
wire na23a;
wand na25a;
wire na25b;
wire na25c;
wire na29b;
wor na30b;
wire na31a;
wor na31b;
wire na33b;

// 10-14
a a17a(.clk(Z6), .a1(OP2VN), .a2(PBV), .y(na17a));
a a16a(.exp(na17a), .a1(OP4VN), .a2(OP1V), .a3(G2V), .y(na17b));
a a17b(.clk(V4MOD4), .a1(HOY), .y(na17b));
i a17c(.a(na17b), .y(HOYN));
i a18c(.a(na18a), .y(HOY));
a #(1) a18a(.clk(V4MOD4), .a1(HOYN), .y(na18a));
a a25a(.clk(Z6), .a1(PAV), .a2(P2VN), .y(na25a));
a a18b(.exp(na25a), .a1(TMVN), .y(na18a));
a a33a(.a1(G2V), .y(na25a));

a a15a(.clk(Z6), .exp(na16b), .a1(OP4VN), .y(na15b));
a a16b(.a1(OP3VN), .a2(OP1V), .a3(PBV), .a4(G2V), .y(na16b));
a a15b(.clk(V4MOD4), .a1(VOY), .y(na15b));
i a15c(.a(na15b), .y(VOYN));
i a22c(.a(na22a), .y(VOY));
a #(1) a22a(.clk(V4MOD4), .a1(VOYN), .y(na22a));
a a23a(.a1(G5V), .a2(P1VN), .a3(PCVN), .a4(P2VN), .y(na23a));
a a22b(.clk(Y1), .exp(na23a), .y(na22a));

a #(1) a4a(.clk(V1), .a1(Q9N), .y(na4a));
i a4b(.a(na4a), .y(Q9));
i a11c(.a(na11a), .y(Q9N));
a a11a(.clk(ZN), .a1(Q9), .y(na11a));
a a11b(.clk(W2), .a1(Q8V), .y(na11a));
a a10a(.clk(W2), .exp(na10b), .a1(TBCV), .a2(OP1V), .a3(OP2V), .y(na11a));
a a10b(.a1(OP3VN), .a2(AI3V), .a3(TTLV), .y(na10b));

a a9a(.clk(W2), .a1(NU), .a2(HOYN), .a3(VOYN), .y(na30b));
a a9b(.clk(W2), .a1(MD7V), .a2(HOY), .y(na30b));
a a8a(.a1(VOY), .y(na8a));
a a30a(.clk(W2), .exp(na8a), .a1(MD7V), .y(na30b));
a a23b(.clk(X7), .a1(PQR), .a2(P1VN), .a3(P2VN), .y(na30b));
a a29a(.clk(X7), .a1(MR2), .a2(HOYV), .a3(P3VN), .y(na30b));
a a29b(.clk(X7), .a1(P3VN), .a2(HOYVN), .a3(VOYV), .y(na29b));
a a30b(.exp(na29b), .a1(Q9), .y(na30b));
a a24a(.clk(Z6), .a1(PR2V), .a2(P3N), .a3(HOYV), .y(na30b));
a a24b(.clk(Z6), .a1(PR10), .a2(P3N), .a3(HOYVN), .y(na30b));
i a30c(.a(na30b), .y(DL44));

a a25b(.clk(Y1), .a1(HOYV), .a2(G4VN), .y(na25b));
a a32a(.exp(na25b), .a1(PBV), .a2(P2VN), .a3(G5V), .y(na31b));
a a25c(.clk(Y1), .a1(P2VN), .a2(G7VN), .y(na25c));
a a32b(.exp(na25c), .a1(PCV), .a2(G6V), .a3(VOYV), .y(na31b));
a a31a(.clk(Y1), .a1(P3VN), .y(na31a));
a a31b(.exp(na31a), .a1(STP), .y(na31b));
a a26a(.clk(X7), .exp(na33b), .a1(Q9), .y(na31b));
a a33b(.a1(TBCV), .y(na33b));
i a31c(.a(na31b), .y(DL31));

// 10-15









        
endmodule
`default_nettype wire
