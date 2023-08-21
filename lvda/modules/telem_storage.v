`timescale 1ns/1ps
`default_nettype none

module telem_storage(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire V1,
    input wire V5,

    input wire A1DV,
    input wire A2DV,
    input wire ADVN,
    input wire BON,
    input wire CODGV,
    input wire DC1S,
    input wire DC1SN,
    input wire DC2S,
    input wire DC2SN,
    input wire DC3S,
    input wire DC3SN,
    input wire DC4S,
    input wire DC4SN,
    input wire DIN,
    input wire DINN,
    input wire DT1,
    input wire ETCR,
    input wire G1DV,
    input wire G2DV,
    input wire G2DVN,
    input wire G3DV,
    input wire G4DVN,
    input wire MCFT1,
    input wire PAAV,
    input wire PAAVN,
    input wire PBAV,
    input wire PBG2V,
    input wire PCAV,
    input wire W4,
    input wire X7,
    input wire Y8,
    input wire Z6,
    input wire Z7,

    output wire DC3R,
    output wire DC4R,
    output wire DDC1R,
    output wire DDC2R,
    output wire DLS
);

wire DC1R;
wire DC1RN;
wire DC2R;
wire DC2RN;
wire DC3RN;
wire DC4RN;
wire DDC1RN;
wire DDC2RN;
wire DDC3R;
wire DDC3RN;
wire DDC4R;
wire DDC4RN;
wire DDIN;
wire DDINN;
wire DDIP;
wire DDLO;
wire DIP2;
wire DIP3;
wire DLSN;
wire ZERW;

wire na3b;
wire na3c;
wire na4b;
wire na4b_a4a;
wire na4b_a4b;
assign na4b = na4b_a4a | na4b_a4b;
wire na5a;
wire na5a_a5a;
wire na5a_a5b;
assign na5a = na5a_a5a | na5a_a5b;
wire na8b;
wire na8b_a8a;
wire na8b_a8b;
assign na8b = na8b_a8a | na8b_a8b;
wire na10a;
wire na10a_a3a;
wire na10a_a9a;
wire na10a_a9b;
wire na10a_a10a;
wire na10a_a16a;
wire na10a_a16b;
wire na10a_a17a;
wire na10a_a17c;
assign na10a = na10a_a3a | na10a_a9a | na10a_a9b | na10a_a10a | na10a_a16a | na10a_a16b | na10a_a17a | na10a_a17c;
wire na10b;
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
wire na15a;
wire na15a_a15a;
wire na15a_a15b;
assign na15a = na15a_a15a | na15a_a15b;
wire na17b;
wire na18a;
wire na18a_a18a;
wire na18a_a18b;
assign na18a = na18a_a18a | na18a_a18b;
wire na19a;
wire na19a_a19a;
wire na19a_a19b;
assign na19a = na19a_a19a | na19a_a19b;
wire na20a;
wire na20a_a20a;
wire na20a_a20b;
assign na20a = na20a_a20a | na20a_a20b;
wire na21a;
wire na21a_a21a;
wire na21a_a21b;
assign na21a = na21a_a21a | na21a_a21b;
wire na23a;
wire na23b;
wire na23b_a23b;
wire na23b_a29a;
wire na23b_a30a;
wire na23b_a30b;
assign na23b = na23b_a23b | na23b_a29a | na23b_a30a | na23b_a30b;
wire na24a;
wire na24a_a24a;
wire na24a_a24b;
assign na24a = na24a_a24a | na24a_a24b;
wire na25b;
wire na25b_a25a;
wire na25b_a25b;
assign na25b = na25b_a25a | na25b_a25b;
wire na26b;
wire na26b_a26a;
wire na26b_a26b;
assign na26b = na26b_a26a | na26b_a26b;
wire na27a;
wire na27a_a27a;
wire na27a_a27b;
assign na27a = na27a_a27a | na27a_a27b;
wire na29b;
wire na31a;
wire na31a_a31a;
wire na31a_a31b;
assign na31a = na31a_a31a | na31a_a31b;
wire na32a;
wire na32b;
wire na32b_a32b;
wire na32b_a33a;
wire na32b_a33b;
assign na32b = na32b_a32b | na32b_a33a | na32b_a33b;
wire na34b;
wire na34b_a34a;
wire na34b_a34b;
assign na34b = na34b_a34a | na34b_a34b;
wire na35a;
wire na35a_a35a;
wire na35a_a35b;
assign na35a = na35a_a35a | na35a_a35b;

// 10-194
and a10a(na10a_a10a, na10b, DC1S);
and a10b(na10b, Y8, DIN, ZERW);
and a16a(na10a_a16a, Z7, DC2S, DDIN, ZERW);
and a16b(na10a_a16b, W4, DC3S, DDIN, ZERW);
and a9a(na10a_a9a, X7, DC4S, DDIN, ZERW);
and a9b(na10a_a9b, Y8, DC1SN, DDC1R);
and a17a(na10a_a17a, Z7, na17b, DDC2R);
and a17b(na17b, DC2SN);
and a3a(na10a_a3a, W4, na3b, DDC3R);
and a3b(na3b, DC3SN);
and a17c(na10a_a17c, X7, na3c, DDC4R);
and a3c(na3c, DC4SN);
inv a10c(DDIP, na10a, SIM_CLK, SIM_RST);

and a11a(na11b_a11a, Z7, DDLO);
and a11b(na11b_a11b, V1, DC1RN);
inv #(0) a11c(DC1R, na11b, SIM_CLK, SIM_RST);
inv a18c(DC1RN, na18a, SIM_CLK, SIM_RST);
and a18a(na18a_a18a, V1, DC1R);
and a18b(na18a_a18b, Y8);

and a12a(na12b_a12a, W4, DDLO);
and a12b(na12b_a12b, V1, DC2RN);
inv #(0) a12c(DC2R, na12b, SIM_CLK, SIM_RST);
inv a19c(DC2RN, na19a, SIM_CLK, SIM_RST);
and a19a(na19a_a19a, V1, DC2R);
and a19b(na19a_a19b, Z7);

and a13a(na13b_a13a, X7, DDLO);
and a13b(na13b_a13b, V1, DC3RN);
inv #(0) a13c(DC3R, na13b, SIM_CLK, SIM_RST);
inv a20c(DC3RN, na20a, SIM_CLK, SIM_RST);
and a20a(na20a_a20a, V1, DC3R);
and a20b(na20a_a20b, W4);

and a4a(na4b_a4a, Y8, DDLO);
and a4b(na4b_a4b, V1, DC4RN);
inv #(0) a4c(DC4R, na4b, SIM_CLK, SIM_RST);
inv a5c(DC4RN, na5a, SIM_CLK, SIM_RST);
and a5a(na5a_a5a, V1, DC4R);
and a5b(na5a_a5b, X7);

and a25a(na25b_a25a, X7, DC1R);
and a25b(na25b_a25b, V1, DDC1R);
inv a25c(DDC1RN, na25b, SIM_CLK, SIM_RST);
inv #(0) a24c(DDC1R, na24a, SIM_CLK, SIM_RST);
and a24a(na24a_a24a, V1, DDC1RN);
and a24b(na24a_a24b, W4);

and a26a(na26b_a26a, Y8, DC2R);
and a26b(na26b_a26b, V1, DDC2R);
inv a26c(DDC2RN, na26b, SIM_CLK, SIM_RST);
inv #(0) a27c(DDC2R, na27a, SIM_CLK, SIM_RST);
and a27a(na27a_a27a, V1, DDC2RN);
and a27b(na27a_a27b, X7);

and a34a(na34b_a34a, Z7, DC3R);
and a34b(na34b_a34b, V1, DDC3R);
inv a34c(DDC3RN, na34b, SIM_CLK, SIM_RST);
inv #(0) a35c(DDC3R, na35a, SIM_CLK, SIM_RST);
and a35a(na35a_a35a, V1, DDC3RN);
and a35b(na35a_a35b, Y8);

and a14a(na14b_a14a, W4, DC4R);
and a14b(na14b_a14b, V1, DDC4R);
inv a14c(DDC4RN, na14b, SIM_CLK, SIM_RST);
inv #(0) a21c(DDC4R, na21a, SIM_CLK, SIM_RST);
and a21a(na21a_a21a, V1, DDC4RN);
and a21b(na21a_a21b, Z7);

// 10-195
and a8a(na8b_a8a, Y8, DIN);
and a8b(na8b_a8b, V1, DDIN);
inv a8c(DDINN, na8b, SIM_CLK, SIM_RST);
inv #(0) a15c(DDIN, na15a, SIM_CLK, SIM_RST);
and a15a(na15a_a15a, V1, DDINN);
and a15b(na15a_a15b, Y8, DINN);

and a29a(na23b_a29a, V1, CODGV, PBAV, MCFT1);
and a29b(na29b, V1, G2DVN, CODGV, MCFT1, G1DV);
and a30a(na23b_a30a, na29b, PCAV, PAAVN);
and a30b(na23b_a30b, V1, ETCR, PAAV, G1DV);
and a23a(na23a, V1, PAAV, G3DV);
and a23b(na23b_a23b, na23a, ETCR);
inv #(0) a23c(ZERW, na23b, SIM_CLK, SIM_RST);

and a33a(na32b_a33a, W4, na32a, ADVN, G2DV, G4DVN);
and a32a(na32a, PBAV, DT1);
and a33b(na32b_a33b, Z6, PBG2V, A1DV, A2DV);
and a32b(na32b_a32b, V1, DLS);
inv a32c(DLSN, na32b, SIM_CLK, SIM_RST);
inv #(0) a31c(DLS, na31a, SIM_CLK, SIM_RST);
and a31a(na31a_a31a, V1, DLSN);
and a31b(na31a_a31b, Z6, G3DV);

dld a2(DIP2, V5, DDIP, BON);
dl #(80566) dl1(DIP3, DIP2, SIM_CLK, SIM_RST);
dsa a6(DDLO, DIP3);

endmodule
`default_nettype wire
