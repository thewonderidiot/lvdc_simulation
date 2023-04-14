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
and a9a(na9a, W7);
and a8a(na5a, W7, na9a, DL44SA);
and a5a(na5a, ZN, PRN);
inv #(0) a8b(PR, na5a);
inv a9c(PRN, na9b);
and a9b(na9b, V1, PR);

and a17a(na17a, X3);
and a16a(na16b, X3, na17a, DL44SA);
and a16b(na16b, WN, MD0N);
inv #(0) a16c(MD0, na16b);
inv a17c(MD0N, na17b);
and a17b(na17b, V1, MD0);

and a30a(na30a, Y8);
and a23a(na23b, Y8, na30a, DL44SA);
and a23b(na23b, XN, MR0N);
inv #(0) a23c(MR0, na23b);
inv a30c(MR0N, na30b);
and a30b(na30b, V1, MR0);

and a25a(na25a, Z2);
and a24a(na24b, Z2, na25a, DL44SA);
and a24b(na24b, YN, ACC0N);
inv #(0) a24c(ACC0, na24b);
inv a25c(ACC0N, na25b);
and a25b(na25b, V1, ACC0);

and a13a(na13a, W7);
and a14a(na14b, W7, na13a, DL31SA);
and a14b(na14b, ZN, STPN);
inv #(0) a14c(STP, na14b);
inv a13c(STPN, na13b);
and a13b(na13b, V1, STP);

and a19a(na19a, X3);
and a20a(na20b, X3, na19a, DL31SA);
and a20b(na20b, WN, AI0N);
inv #(0) a20c(AI0, na20b);
inv a19c(AI0N, na19b);
and a19b(na19b, V1, AI0);

and a34a(na34a, Y8);
and a27a(na27b, Y8, na34a, DL31SA);
and a27b(na27b, XN, NUN);
inv #(0) a27c(NU, na27b);
inv a34c(NUN, na34b);
and a34b(na34b, V1, NU);

and a33a(na33a, Z2);
and a26a(na26b, Z2, na33a, DL31SA);
and a26b(na26b, YN, PQRN);
inv #(0) a26c(PQR, na26b);
inv a33c(PQRN, na33b);
and a33b(na33b, V1, PQR);

// 10-13
dld a2(.volt(V5), .gate(DL44), .clk(BON), .y(DLD44B));
dl #(43390) dl1(.a(DLD44B), .y(TP3));
dsa a15(.a(TP3), .y(DL44SA));

dld a6(.volt(V5), .gate(DL31), .clk(BON), .y(DLD31B));
dl #(30207) dl2(.a(DLD31B), .y(TP16));
dsa a21(.a(TP16), .y(DL31SA));

endmodule
`default_nettype wire
