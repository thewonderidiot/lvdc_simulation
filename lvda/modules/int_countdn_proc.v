`timescale 1ns/1ps
`default_nettype none

module int_countdn_proc(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire V1,

    input wire A1DVN,
    input wire A2DV,
    input wire A3DVN,
    input wire A4DV,
    input wire A4DVN,
    input wire A5DV,
    input wire A6DV,
    input wire A6DVN,
    input wire A7DVN,
    input wire ADV,
    input wire ADVN,
    input wire C2R,
    input wire C2RN,
    input wire C3R,
    input wire C3RN,
    input wire G1DV,
    input wire G1DVN,
    input wire G2DV,
    input wire G3DV,
    input wire G3DVN,
    input wire G4DV,
    input wire G4DVN,
    input wire G5DV,
    input wire G5DVN,
    input wire G6DVN,
    input wire LGAV,
    input wire LPAG2N,
    input wire PABG1V,
    input wire PAAV,
    input wire PBAV,
    input wire PBG2V,
    input wire PCAV,
    input wire RECAV,
    input wire RECCV,
    input wire W4,
    input wire X4,
    input wire Y5,
    input wire Z5,

    output wire C2RD,
    output wire C2RDN,
    output wire C3RD,
    output wire ITS,
    output wire PAAVN,
    output wire TC2A,
    output wire TC2AN
);

wire BOR2;
wire BOR2N;
wire BOR3;
wire BOR3N;
wire C3RDN;
wire ITSN;
wire SSIT1;
wire SSIT2;
wire SSIT3;
wire TI;
wire TIN;

wire na1b;
wire na1b_a1a;
wire na1b_a1b;
assign na1b = na1b_a1a | na1b_a1b;
wire na2a;
wire na2a_a2a;
wire na2a_a2b;
assign na2a = na2a_a2a & na2a_a2b;
wire na3a;
wire na3a_a2c;
wire na3a_a3a;
wire na3a_a9b;
assign na3a = na3a_a2c | na3a_a3a | na3a_a9b;
wire na4a;
wire na4a_a3b;
wire na4a_a4a;
wire na4a_a4b;
wire na4a_a5a;
assign na4a = na4a_a3b | na4a_a4a | na4a_a4b | na4a_a5a;
wire na6a;
wire na6a_a5b;
wire na6a_a6a;
wire na6a_a6b;
wire na6a_a7a;
assign na6a = na6a_a5b | na6a_a6a | na6a_a6b | na6a_a7a;
wire na7b;
wire na8a;
wire na8a_a8a;
wire na8a_a8b;
wire na8a_a9a;
wire na8a_a15a;
assign na8a = na8a_a8a | na8a_a8b | na8a_a9a | na8a_a15a;
wire na10b;
wire na10b_a10a;
wire na10b_a10b;
assign na10b = na10b_a10a | na10b_a10b;
wire na11a;
wire na11a_a11a;
wire na11a_a12a;
wire na11a_a12b;
assign na11a = na11a_a11a | na11a_a12a | na11a_a12b;
wire na13b;
wire na13b_a13a;
wire na13b_a13b;
assign na13b = na13b_a13a | na13b_a13b;
wire na14a;
wire na15b;
wire na16b;
wire na17b;
wire na17b_a11c;
wire na17b_a17b;
assign na17b = na17b_a11c & na17b_a17b;
wire na18a;
wire na18a_a17a;
wire na18a_a18a;
wire na18a_a26b;
assign na18a = na18a_a17a | na18a_a18a | na18a_a26b;
wire na18b;
wire na20b;
wire na21a;
wire na21a_a20a;
wire na21a_a21a;
wire na21a_a21b;
assign na21a = na21a_a20a | na21a_a21a | na21a_a21b;
wire na22a;
wire na22a_a22a;
wire na22a_a29b;
assign na22a = na22a_a22a | na22a_a29b;
wire na22b;
wire na23a;
wire na23a_a23a;
wire na23a_a23b;
wire na23a_a29a;
assign na23a = na23a_a23a | na23a_a23b | na23a_a29a;
wire na24a;
wire na24a_a16a;
wire na24a_a24a;
assign na24a = na24a_a16a | na24a_a24a;
wire na24c;
wire na25a;
wire na25a_a25a;
wire na25a_a26a;
assign na25a = na25a_a25a | na25a_a26a;
wire na25c;
wire na27b;
wire na27b_a27b;
wire na27b_a34b;
assign na27b = na27b_a27b & na27b_a34b;
wire na28a;
wire na28a_a27a;
wire na28a_a28a;
wire na28a_a35a;
assign na28a = na28a_a27a | na28a_a28a | na28a_a35a;
wire na28c;
wire na30b;
wire na31a;
wire na31a_a30a;
wire na31a_a31a;
wire na31a_a32a;
wire na31a_a32b;
assign na31a = na31a_a30a | na31a_a31a | na31a_a32a | na31a_a32b;
wire na31b;
wire na33a;
wire na33a_a33a;
wire na33a_a33b;
assign na33a = na33a_a33a | na33a_a33b;
wire na35b;
wire na35b_a34a;
wire na35b_a35b;
assign na35b = na35b_a34a & na35b_a35b;

// 10-180
and a35a(na28a_a35a, Y5, na35b, A4DVN, A2DV, A7DVN);
and a35b(na35b_a35b, A6DV, A1DVN, PBAV, G5DVN);
and a34a(na35b_a34a, A5DV, A3DVN, G4DV);
and a27a(na28a_a27a, Y5, na27b, A7DVN, A6DVN, A4DV);
and a27b(na27b_a27b, PCAV, A1DVN, G3DV, G4DVN);
and a34b(na27b_a34b, A2DV, A3DVN, A5DV);
and a28a(na28a_a28a, V1, TC2A);
inv a28b(TC2AN, na28a, SIM_CLK, SIM_RST);
inv #(0) a21c(TC2A, na21a, SIM_CLK, SIM_RST);
and a21a(na21a_a21a, V1, TC2AN);
and a20a(na21a_a20a, X4, na28c, PCAV, G4DVN, ADVN);
and a28c(na28c, G2DV);
and a21b(na21a_a21b, Z5, PABG1V);

and a20b(na20b, X4, ADVN);
and a26a(na25a_a26a, na20b, PCAV, G2DV, G4DVN);
and a25a(na25a_a25a, V1, ITS);
inv a25b(ITSN, na25a, SIM_CLK, SIM_RST);
inv #(0) a33c(ITS, na33a, SIM_CLK, SIM_RST);
and a33a(na33a_a33a, V1, ITSN);
and a33b(na33a_a33b, Y5, PABG1V);

and a10a(na10b_a10a, X4);
and a10b(na10b_a10b, V1, C2RDN);
inv #(0) a10c(C2RD, na10b, SIM_CLK, SIM_RST);
inv a11b(C2RDN, na11a, SIM_CLK, SIM_RST);
and a11a(na11a_a11a, V1, C2RD);
and a12a(na11a_a12a, Y5, C2R, BOR2N);
and a12b(na11a_a12b, Y5, C2RN, BOR2);

and a16a(na24a_a16a, X4, na16b, RECCV, ADV, RECAV);
and a16b(na16b, G3DV, G5DVN, PBAV);
and a24a(na24a_a24a, V1, BOR2);
inv a24b(BOR2N, na24a, SIM_CLK, SIM_RST);
inv #(0) a23c(BOR2, na23a, SIM_CLK, SIM_RST);
and a23a(na23a_a23a, V1, BOR2N);
and a29a(na23a_a29a, Z5, PCAV, G2DV, G3DVN);
and a23b(na23a_a23b, Z5, C2R);

and a17a(na18a_a17a, na17b, A2DV, A3DVN, A1DVN);
and a17b(na17b_a17b, Z5, A4DVN, A6DV, A7DVN, A5DV);
and a11c(na17b_a11c, PABG1V);
and a26b(na18a_a26b, Z5, PBG2V, SSIT3);
and a18a(na18a_a18a, V1, na18b, SSIT2);
and a18b(na18b, SSIT3);
inv #(0) a18c(SSIT1, na18a, SIM_CLK, SIM_RST);

and a32a(na31a_a32a, Z5, na24c, SSIT3, PBAV, G4DV);
and a24c(na24c, C2RD);
and a32b(na31a_a32b, Z5, na25c, SSIT3, PBAV, C2RD);
and a25c(na25c, G1DVN);
and a30a(na31a_a30a, Z5, na30b, PAAVN, G3DVN, C2RD);
and a30b(na30b, G1DV, PCAV, SSIT3);
and a31a(na31a_a31a, V1, na31b, SSIT1);
and a31b(na31b, SSIT3);
inv a31c(SSIT2, na31a, SIM_CLK, SIM_RST);

and a1a(na1b_a1a, Y5);
and a1b(na1b_a1b, V1, C3RDN);
inv #(0) a1c(C3RD, na1b, SIM_CLK, SIM_RST);
inv a8c(C3RDN, na8a, SIM_CLK, SIM_RST);
and a8a(na8a_a8a, V1, C3RD);
and a15a(na8a_a15a, Z5, C3R, BOR3N, LPAG2N);
and a15b(na15b, Z5, LGAV, G5DV, G6DVN, PAAV);
and a8b(na8a_a8b, na15b);
and a9a(na8a_a9a, Z5, C3RN, BOR3, LPAG2N);

// 10-181
and a2a(na2a_a2a, Y5, RECCV, G5DVN);
and a2b(na2a_a2b, PBAV, G4DV);
and a2c(na3a_a2c, na2a, RECAV);
and a9b(na3a_a9b, Y5, G2DV, G3DVN, PAAV);
and a3a(na3a_a3a, V1, BOR3);
inv a3c(BOR3N, na3a, SIM_CLK, SIM_RST);
inv #(0) a4c(BOR3, na4a, SIM_CLK, SIM_RST);
and a4a(na4a_a4a, V1, BOR3N);
and a3b(na4a_a3b, W4, C3R);
and a4b(na4a_a4b, Y5, PBG2V);
and a5a(na4a_a5a, Y5, PCAV, G3DV, G4DVN);

and a29b(na22a_a29b, Y5, SSIT2, PABG1V);
and a22a(na22a_a22a, V1, na22b, SSIT1);
and a22b(na22b, SSIT2);
inv a22c(SSIT3, na22a, SIM_CLK, SIM_RST);

and a14a(na14a, V1, PAAV);
inv a14b(PAAVN, na14a, SIM_CLK, SIM_RST);

and a13a(na13b_a13a, Z5, PBG2V);
and a13b(na13b_a13b, V1, TI);
inv a13c(TIN, na13b, SIM_CLK, SIM_RST);
inv #(0) a16c(TI, na6a, SIM_CLK, SIM_RST);
and a6a(na6a_a6a, V1, TIN);
and a5b(na6a_a5b, Z5, PBAV, G4DV, C3R);
and a7a(na6a_a7a, Z5, PBAV, G1DVN, C3R);
and a7b(na7b, Z5, PCAV, G1DV, G3DVN, C3R);
and a6b(na6a_a6b, na7b, PAAVN);

endmodule
`default_nettype wire
