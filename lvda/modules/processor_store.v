`timescale 1ns/1ps
`default_nettype none

module processor_store(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire V1,
    input wire V5,

    input wire BON,
    input wire C2RD,
    input wire C2RDN,
    input wire C3RD,
    input wire C4RD,
    input wire C4RDV,
    input wire DINFV,
    input wire ITS,
    input wire PAAV,
    input wire PAAVN,
    input wire SINT,
    input wire TC2A,
    input wire TC2AN,
    input wire TC3A,
    input wire TC3AN,
    input wire W4,
    input wire X4,
    input wire Y5,
    input wire Y6,
    input wire Z4,

    output wire C1RD,
    output wire C1RDN,
    output wire C2R,
    output wire C2RN,
    output wire C3R,
    output wire C3RN
);

wire C1R;
wire C1RN;
wire C4R;
wire C4RN;
wire DINP;
wire DLO;
wire ITSN;
wire TD1;
wire TD3;

wire na10a;
wire na10a_a10a;
wire na10a_a10b;
assign na10a = na10a_a10a | na10a_a10b;
wire na11b;
wire na11b_a11a;
wire na11b_a11b;
assign na11b = na11b_a11a | na11b_a11b;
wire na12b;
wire na12b_a12a;
wire na12b_a12b;
assign na12b = na12b_a12a | na12b_a12b;
wire na13b;
wire na13b_a13a;
wire na13b_a13b;
assign na13b = na13b_a13a | na13b_a13b;
wire na14b;
wire na14b_a14a;
wire na14b_a14b;
assign na14b = na14b_a14a | na14b_a14b;
wire na16a;
wire na16a_a8a;
wire na16a_a8b;
wire na16a_a15a;
wire na16a_a15b;
wire na16a_a16a;
wire na16a_a23a;
wire na16a_a23b;
wire na16a_a24a;
wire na16a_a24b;
assign na16a = na16a_a8a | na16a_a8b | na16a_a15a | na16a_a15b | na16a_a16a |
               na16a_a23a | na16a_a23b | na16a_a24a | na16a_a24b;
wire na16b;
wire na17b;
wire na17b_a17a;
wire na17b_a17b;
assign na17b = na17b_a17a | na17b_a17b;
wire na18a;
wire na18a_a18a;
wire na18a_a18b;
assign na18a = na18a_a18a | na18a_a18b;
wire na19a;
wire na19a_a19a;
wire na19a_a19b;
wire na19a_a25a;
assign na19a = na19a_a19a | na19a_a19b | na19a_a25a;
wire na20a;
wire na20a_a20a;
wire na20a_a20b;
wire na20a_a25b;
assign na20a = na20a_a20a | na20a_a20b | na20a_a25b;
wire na21a;
wire na21a_a21a;
wire na21a_a21b;
wire na21a_a25c;
assign na21a = na21a_a21a | na21a_a21b | na21a_a25c;
wire na29a;

// 10-184
and a16a(na16a_a16a, na16b, SINT);
and a16b(na16b, Z4, ITS, C2RDN);
and a8a(na16a_a8a, Z4, C1RD, ITS, C2RDN);
and a8b(na16a_a8b, W4, C2RD, SINT, ITS);
and a15a(na16a_a15a, W4, ITSN, C2RD, TC2AN);
and a15b(na16a_a15b, W4, DINFV, TC2A);
and a23a(na16a_a23a, X4, C3RD, TC3AN);
and a23b(na16a_a23b, X4, TC3A, DINFV);
and a24a(na16a_a24a, Y6, PAAVN, C4RD);
and a24b(na16a_a24b, Y6, C4RDV, PAAV);
inv a16c(DINP, na16a, SIM_CLK, SIM_RST);

dld a3(TD1, V5, DINP, BON);
dl #(80566) dl1(TD3, TD1, SIM_CLK, SIM_RST);
dsa a5(DLO, TD3);

and a11a(na11b_a11a, W4, DLO);
and a11b(na11b_a11b, V1, C1RN);
inv #(0) a11c(C1R, na11b, SIM_CLK, SIM_RST);
inv a18c(C1RN, na18a, SIM_CLK, SIM_RST);
and a18a(na18a_a18a, V1, C1R);
and a18b(na18a_a18b, Z4);

and a17a(na17b_a17a, W4);
and a17b(na17b_a17b, V1, C1RDN);
inv #(0) a17c(C1RD, na17b, SIM_CLK, SIM_RST);
inv a10c(C1RDN, na10a, SIM_CLK, SIM_RST);
and a10a(na10a_a10a, V1, C1RD);
and a10b(na10a_a10b, X4, C1R);

and a12a(na12b_a12a, X4, DLO);
and a12b(na12b_a12b, V1, C2RN);
inv #(0) a12c(C2R, na12b, SIM_CLK, SIM_RST);
inv a19c(C2RN, na19a, SIM_CLK, SIM_RST);
and a19a(na19a_a19a, V1, C2R);
and a19b(na19a_a19b, W4);
and a25a(na19a_a25a, W4);

// 10-185
and a13a(na13b_a13a, Y5, DLO);
and a13b(na13b_a13b, V1, C3RN);
inv #(0) a13c(C3R, na13b, SIM_CLK, SIM_RST);
inv a20c(C3RN, na20a, SIM_CLK, SIM_RST);
and a20a(na20a_a20a, V1, C3R);
and a20b(na20a_a20b, X4);
and a25b(na20a_a25b, X4);

and a14a(na14b_a14a, Z4, DLO);
and a14b(na14b_a14b, V1, C4RN);
inv #(0) a14c(C4R, na14b, SIM_CLK, SIM_RST);
inv a21c(C4RN, na21a, SIM_CLK, SIM_RST);
and a21a(na21a_a21a, V1, C4R);
and a21b(na21a_a21b, Y6);
and a25c(na21a_a25c, Y6);

and a29a(na29a, V1, ITS);
inv a29b(ITSN, na29a, SIM_CLK, SIM_RST);

endmodule
`default_nettype wire
