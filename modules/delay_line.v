`timescale 1ns/1ps
`default_nettype none

module delay_line(
    input wire V1,
    input wire V5,
    input wire BON,
    input wire DL31,
    input wire DL44,
    input wire W7,
    input wire WN,
    input wire X3,
    input wire XN,
    input wire Y8,
    input wire YN,
    input wire Z2,
    input wire ZN,
    output wire ACC0,
    output wire ACC0N,
    output wire AI0,
    output wire AI0N,
    output wire MD0,
    output wire MD0N,
    output wire MR0,
    output wire MR0N,
    output wire NU,
    output wire PQR,
    output wire PR,
    output wire PRN,
    output wire STP
);

wire DL31SA;
wire DL44SA;
wire DLD31B;
wire DLD44B;
wire NUN;
wire PQRN;
wire STPN;
wire TP3;
wire TP16;

wor na5a;
wire na9a;
wire na9b;
wire na13a;
wire na13b;
wor na14b;
wor na16b;
wire na17a;
wire na17b;
wire na19a;
wire na19b;
wor na20b;
wor na23b;
wor na24b;
wire na25a;
wire na25b;
wor na26b;
wor na27b;
wire na30a;
wire na30b;
wire na33a;
wire na33b;
wire na34a;
wire na34b;

// 10-12
a a9a(.clk(W7), .y(na9a));
a a8a(.clk(W7), .exp(na9a), .a1(DL44SA), .y(na5a));
a a5a(.clk(ZN), .a1(PRN), .y(na5a));
i a8b(.a(na5a), .y(PR));
i a9c(.a(na9b), .y(PRN));
a #(1) a9b(.clk(V1), .a1(PR), .y(na9b));

a a17a(.clk(X3), .y(na17a));
a a16a(.clk(X3), .exp(na17a), .a1(DL44SA), .y(na16b));
a a16b(.clk(WN), .a1(MD0N), .y(na16b));
i a16c(.a(na16b), .y(MD0));
i a17c(.a(na17b), .y(MD0N));
a #(1) a17b(.clk(V1), .a1(MD0), .y(na17b));

a a30a(.clk(Y8), .y(na30a));
a a23a(.clk(Y8), .exp(na30a), .a1(DL44SA), .y(na23b));
a a23b(.clk(XN), .a1(MR0N), .y(na23b));
i a23c(.a(na23b), .y(MR0));
i a30c(.a(na30b), .y(MR0N));
a #(1) a30b(.clk(V1), .a1(MR0), .y(na30b));

a a25a(.clk(Z2), .y(na25a));
a a24a(.clk(Z2), .exp(na25a), .a1(DL44SA), .y(na24b));
a a24b(.clk(YN), .a1(ACC0N), .y(na24b));
i a24c(.a(na24b), .y(ACC0));
i a25c(.a(na25b), .y(ACC0N));
a #(1) a25b(.clk(V1), .a1(ACC0), .y(na25b));

a a13a(.clk(W7), .y(na13a));
a a14a(.clk(W7), .exp(na13a), .a1(DL31SA), .y(na14b));
a a14b(.clk(ZN), .a1(STPN), .y(na14b));
i a14c(.a(na14b), .y(STP));
i a13c(.a(na13b), .y(STPN));
a #(1) a13b(.clk(V1), .a1(STP), .y(na13b));

a a19a(.clk(X3), .y(na19a));
a a20a(.clk(X3), .exp(na19a), .a1(DL31SA), .y(na20b));
a a20b(.clk(WN), .a1(AI0N), .y(na20b));
i a20c(.a(na20b), .y(AI0));
i a19c(.a(na19b), .y(AI0N));
a #(1) a19b(.clk(V1), .a1(AI0), .y(na19b));

a a34a(.clk(Y8), .y(na34a));
a a27a(.clk(Y8), .exp(na34a), .a1(DL31SA), .y(na27b));
a a27b(.clk(XN), .a1(NUN), .y(na27b));
i a27c(.a(na27b), .y(NU));
i a34c(.a(na34b), .y(NUN));
a #(1) a34b(.clk(V1), .a1(NU), .y(na34b));

a a33a(.clk(Z2), .y(na33a));
a a26a(.clk(Z2), .exp(na33a), .a1(DL31SA), .y(na26b));
a a26b(.clk(YN), .a1(PQRN), .y(na26b));
i a26c(.a(na26b), .y(PQR));
i a33c(.a(na33b), .y(PQRN));
a #(1) a33b(.clk(V1), .a1(PQR), .y(na33b));

// 10-13
dld a2(.volt(V5), .gate(DL44), .clk(BON), .y(DLD44B));
dl #(43390) dl1(.a(DLD44B), .y(TP3));
dsa a15(.a(TP3), .y(DL44SA));

dld a6(.volt(V5), .gate(DL31), .clk(BON), .y(DLD31B));
dl #(30207) dl2(.a(DLD31B), .y(TP16));
dsa a21(.a(TP16), .y(DL31SA));

endmodule
`default_nettype wire
