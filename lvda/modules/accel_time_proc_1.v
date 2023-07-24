`timescale 1ns/1ps
`default_nettype none

module accel_time_proc_1(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire V1,
    input wire V4,

    input wire ADV,
    input wire ADVN,
    input wire C4R,
    input wire C4RN,
    input wire CST,
    input wire G2DV,
    input wire G3DVN,
    input wire G4DV,
    input wire HLT,
    input wire PAAVN,
    input wire PABG1V,
    input wire PBG2V,
    input wire PCAV,
    input wire QBP,
    input wire QCP,
    input wire RBP,
    input wire RCP,
    input wire RECAV,
    input wire RECAVN,
    input wire RECCV,
    input wire RECCVN,
    input wire TE1H,
    input wire W4,
    input wire X4,
    input wire Y5,
    input wire Z5,

    output wire C4RD,
    output wire CSTN,
    output wire HALT
);

wire AQ;
wire AQN;
wire AR;
wire ARN;
wire BGTF1;
wire BGTF1N;
wire C4RDN;
wire HALTN;
wire QB;
wire QC;
wire RB;
wire RC;

wire na4a;
wire na9a;
wire na10a;
wire na10c;
wire na11a;
wire na12a;
wire na13a;
wire na13b;
wire na13b_a12c;
wire na13b_a13b;
assign na13b = na13b_a12c | na13b_a13b;
wire na15b;
wire na17a;
wire na17b;
wire na17b_a16a;
wire na17b_a16b;
wire na17b_a17b;
wire na17b_a18a;
wire na17b_a18b;
wire na17b_a24a;
assign na17b = na17b_a16a | na17b_a16b | na17b_a17b | na17b_a18a | na17b_a18b | na17b_a24a;
wire na19a;
wire na19a_a12b;
wire na19a_a19a;
wire na19a_a20b;
wire na19a_a26b;
assign na19a = na19a_a12b | na19a_a19a | na19a_a20b | na19a_a26b;
wire na19b;
wire na22a;
wire na22b;
wire na22b_a8a;
wire na22b_a8b;
wire na22b_a9b;
wire na22b_a9c;
wire na22b_a10b;
wire na22b_a15a; wire na22b_a22b;
wire na22b_a23b;
wire na22b_a24b;
assign na22b = na22b_a8a | na22b_a8b | na22b_a9b | na22b_a9c | na22b_a10b | na22b_a15a | na22b_a22b | na22b_a23b | na22b_a24b;
wire na23a;
wire na23c;
wire na25a;
wire na25a_a25a;
wire na25a_a25b;
assign na25a = na25a_a25a | na25a_a25b;
wire na26a;
wire na26a_a20a;
wire na26a_a26a;
assign na26a = na26a_a20a | na26a_a26a;
wire na27a;
wire na27a_a27a;
wire na27a_a27b;
assign na27a = na27a_a27a | na27a_a27b;
wire na29a;
wire na29a_a29a;
wire na29a_a29b;
wire na29a_a30a;
wire na29a_a30b;
assign na29a = na29a_a29a | na29a_a29b | na29a_a30a | na29a_a30b;

// 10-162
ib ib1(RC, RCP);
ib ib2(RB, RBP);
ib ib3(QC, QCP);

// 10-163
ib ib4(QB, QBP);

// 10-164
and a18a(na17b_a18a, W4, BGTF1N, ARN, C4R);
and a18b(na17b_a18b, W4, C4RN, AR, BGTF1N);
and a16a(na17b_a16a, W4, ADV, BGTF1, AQ);
and a16b(na17b_a16b, W4, na10a, AR, BGTF1, ADVN);
and a10a(na10a, AQ);
and a24a(na17b_a24a, W4, na17a, AQN, ARN, BGTF1);
and a17a(na17a, ADVN);
and a17b(na17b_a17b, V1, C4RD);
inv a17c(C4RDN, na17b, SIM_CLK, SIM_RST);
inv #(0) a25c(C4RD, na25a, SIM_CLK, SIM_RST);
and a25a(na25a_a25a, V4, C4RDN);
and a25b(na25a_a25b, Z5);

and a20a(na26a_a20a, Y5, PAAVN, G3DVN, G2DV);
and a26a(na26a_a26a, V1, AQ);
inv a26c(AQN, na26a, SIM_CLK, SIM_RST);
inv #(0) a19c(AQ, na19a, SIM_CLK, SIM_RST);
and a19a(na19a_a19a, V1, AQN);
and a26b(na19a_a26b, Z5, na19b, PBG2V);
and a19b(na19b, QB);
and a20b(na19a_a20b, Z5, na12a, G2DV, G3DVN, PCAV);
and a12a(na12a, QC);
and a12b(na19a_a12b, Z5, PABG1V);

and a12c(na13b_a12c, Z5, na13a, PAAVN);
and a13a(na13a, G2DV, G3DVN);
and a13b(na13b_a13b, V1, BGTF1);
inv a13c(BGTF1N, na13b, SIM_CLK, SIM_RST);
inv #(0) a27c(BGTF1, na27a, SIM_CLK, SIM_RST);
and a27a(na27a_a27a, V1, BGTF1N);
and a27b(na27a_a27b, Z5, G4DV);

// 10-165
and a8a(na22b_a8a, Z5, RECCV, PABG1V, RECAVN);
and a8b(na22b_a8b, Z5, PABG1V, RECCVN, RECAV);
and a15a(na22b_a15a, X4, C4RN, AQN, BGTF1N);
and a9a(na9a, X4, AQ);
and a9b(na22b_a9b, na9a, C4R);
and a15b(na15b, X4, AQN, BGTF1, ADV, C4RN);
and a9c(na22b_a9c, na15b);
and a24b(na22b_a24b, Z5, na23a, G2DV, G3DVN, PCAV);
and a23a(na23a, RC);
and a23b(na22b_a23b, Z5, na22a);
and a22a(na22a, PBG2V, RB);
and a10b(na22b_a10b, TE1H, na10c, CST);
and a10c(na10c, PABG1V);
and a22b(na22b_a22b, V1, ARN);
inv #(0) a22c(AR, na22b, SIM_CLK, SIM_RST);
inv a29c(ARN, na29a, SIM_CLK, SIM_RST);
and a29a(na29a_a29a, V1, AR);
and a29b(na29a_a29b, Y5, PABG1V);
and a30a(na29a_a30a, X4, na23c, ADVN, AQN, BGTF1);
and a23c(na23c, C4R);
and a30b(na29a_a30b, Y5, PAAVN, G3DVN, G2DV);

dia a7a(HALTN, HLT, SIM_CLK, SIM_RST);

and a4a(na4a, V1, HALTN);
inv a4b(HALT, na4a, SIM_CLK, SIM_RST);

and a11a(na11a, TE1H, CST);
inv a11b(CSTN, na11a, SIM_CLK, SIM_RST);

endmodule
`default_nettype wire
