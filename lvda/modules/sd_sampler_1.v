`timescale 1ns/1ps
`default_nettype none

module sd_sampler_1(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire V1,
    input wire V4,

    input wire A3DV,
    input wire A4DV,
    input wire A4DVN,
    input wire A5DV,
    input wire A5DVN,
    input wire A6DVN,
    input wire A7DV,
    input wire C1RD,
    input wire C4RDA,
    input wire C4RDB,
    input wire C4RDC,
    input wire CCSL,
    input wire CODGV,
    input wire DARO,
    input wire DOMS,
    input wire EMA,
    input wire G1DV,
    input wire G1DVN,
    input wire G2DV,
    input wire G2DVN,
    input wire G3DV,
    input wire G3DVN,
    input wire G4DV,
    input wire G4DVN,
    input wire G5DV,
    input wire G5DVN,
    input wire G6DV,
    input wire G6DVN,
    input wire G7DV,
    input wire G7DVN,
    input wire ITS,
    input wire ML1_2,
    input wire ML3,
    input wire ML4,
    input wire ML5,
    input wire ML6,
    input wire ML7,
    input wire ML8,
    input wire ML9,
    input wire ML10,
    input wire ML11,
    input wire ML12,
    input wire ML13,
    input wire ML14,
    input wire MLAV,
    input wire PAAV,
    input wire PAAVN,
    input wire PARSV,
    input wire PBAV,
    input wire PCAV,
    input wire TAGS,
    input wire X2,
    input wire Y2,

    output wire DATA
);

wire DATA1N;
wire DATA2N;
wire DATA3N;
wire DATA4N;
wire MBYPD;
wire MBYPDN;

wire na1a;
wire na1a_a1a;
wire na1a_a1b;
assign na1a = na1a_a1a & na1a_a1b;
wire na2b;
wire na3b;
wire na9b;
wire na9b_a9b;
wire na9b_a9c;
wire na9b_a10a;
assign na9b = na9b_a9b & na9b_a9c & na9b_a10a;
wire na10b;
wire na10b_a1c;
wire na10b_a2a;
wire na10b_a3a;
wire na10b_a9a;
wire na10b_a10b;
wire na10b_a11c;
wire na10b_a17c;
assign na10b = na10b_a1c | na10b_a2a | na10b_a3a | na10b_a9a | na10b_a10b | na10b_a11c | na10b_a17c;
wire na11a;
wire na11a_a11a;
wire na11a_a11b;
assign na11a = na11a_a11a & na11a_a11b;
wire na13a;
wire na13a_a13a;
wire na13a_a13b;
assign na13a = na13a_a13a | na13a_a13b;
wire na15a;
wire na15b;
wire na16a;
wire na16b;
wire na16b_a8a;
wire na16b_a8b;
wire na16b_a15c;
wire na16b_a16b;
wire na16b_a23a;
wire na16b_a23b;
wire na16b_a23c;
assign na16b = na16b_a8a | na16b_a8a | na16b_a15c | na16b_a16b | na16b_a23a | na16b_a23b | na16b_a23c;
wire na17a;
wire na17a_a17a;
wire na17a_a17b;
assign na17a = na17a_a17a & na17a_a17b;
wire na19a;
wire na19b;
wire na19c;
wire na20a;
wire na20a_a18a;
wire na20a_a18b;
wire na20a_a20a;
wire na20a_a26a;
wire na20a_a26b;
wire na20a_a34a;
wire na20a_a34b;
assign na20a = na20a_a18a | na20a_a18b | na20a_a20a | na20a_a26a | na20a_a26a | na20a_a34a | na20a_a34b;
wire na20b;
wire na20b_a20b;
wire na20b_a21a;
assign na20b = na20b_a20b & na20b_a21a;
wire na21b;
wire na21b_a21b;
wire na21b_a21c;
assign na21b = na21b_a21b & na21b_a21c;
wire na22a;
wire na22b;
wire na24a;
wire na24a_a24a;
wire na24a_a24b;
assign na24a = na24a_a24a & na24a_a24b;
wire na25a;
wire na25a_a25a;
wire na25a_a25b;
assign na25a = na25a_a25a & na25a_a25b;
wire na27a;
wire na27b;
wire na27c;
wire na28b;
wire na28b_a28a;
wire na28b_a28b;
assign na28b = na28b_a28a | na28b_a28b;
wire na30a;
wire na30b;
wire na32a;
wire na32b;
wire na32b_a24c;
wire na32b_a25c;
wire na32b_a31a;
wire na32b_a31b;
wire na32b_a32b;
wire na32b_a33a;
wire na32b_a33b;
assign na32b = na32b_a24c | na32b_a25c | na32b_a31a | na32b_a31b | na32b_a32b | na32b_a33a | na32b_a33b;
wire na35a;
wire na35b;

// 10-127
and a18a(na20a_a18a, Y2, na19a, ML3, G3DV, G4DVN);
and a19a(na19a, MLAV);
and a18b(na20a_a18b, Y2, na19b, MLAV, G4DV, ML4);
and a19b(na19b, G5DVN);
and a26a(na20a_a26a, Y2, na19c, ML5, G5DV, G6DVN);
and a19c(na19c, MLAV);
and a26b(na20a_a26b, Y2, na27a, G6DV, G7DVN, ML6);
and a27a(na27a, MLAV);
and a34a(na20a_a34a, Y2, na27b, ML7, G7DV, G1DV);
and a27b(na27b, MLAV);
and a34b(na20a_a34b, Y2, na27c, G1DVN, G2DV, ML8);
and a27c(na27c, MLAV);
and a20a(na20a_a20a, V1, DATA);
inv a20c(DATA1N, na20a, SIM_CLK, SIM_RST);
inv #(0) a13c(DATA, na13a, SIM_CLK, SIM_RST);
and a13a(na13a_a13a, V4, na20b, DATA4N);
and a20b(na20b_a20b, DATA1N, DATA2N);
and a21a(na20b_a21a, DATA3N);
and a13b(na13a_a13b, X2, na16a);
and a16a(na16a, X2);

and a8a(na16b_a8a, Y2, na15a, MLAV, ML9, G3DV);
and a15a(na15a, G2DVN);
and a8b(na16b_a8b, Y2, na15b, MLAV, ML10, G4DV);
and a15b(na15b, G3DVN);
and a22a(na22a, Y2, MLAV, ML11, G4DVN, G5DV);
and a15c(na16b_a15c, na22a);
and a22b(na22b, Y2, G6DV, ML12, G5DVN, MLAV);
and a23a(na16b_a23a, na22b);
and a30a(na30a, Y2, MLAV, ML13, G6DVN, G7DV);
and a23b(na16b_a23b, na30a);
and a30b(na30b, Y2, MLAV, G1DVN, ML14, G7DVN);
and a23c(na16b_a23c, na30b);
and a16b(na16b_a16b, V1, DATA);
inv a16c(DATA2N, na16b, SIM_CLK, SIM_RST);

and a3a(na10b_a3a, Y2, na3b, PAAVN, PCAV, C4RDA);
and a3b(na3b, MBYPD, A5DV, A4DVN);
and a2a(na10b_a2a, Y2, na2b, PAAVN, PCAV, C4RDB);
and a2b(na2b, MBYPD, A5DVN, A4DV);
and a17a(na17a_a17a, Y2, C4RDC, MBYPD);
and a17b(na17a_a17b, A5DVN, A4DV);
and a17c(na10b_a17c, na17a, PBAV); 
and a11a(na11a_a11a, Y2, A5DV, A4DVN);
and a11b(na11a_a11b, MBYPD, C4RDB);
and a11c(na10b_a11c, na11a, PBAV);
and a9a(na10b_a9a, na9b, MBYPD);
and a9b(na9b_a9b, Y2, C4RDC, PCAV);
and a9c(na9b_a9c, PAAVN, A5DVN);
and a10a(na9b_a10a, A4DVN);
and a1a(na1a_a1a, Y2, C4RDA, MBYPD);
and a1b(na1a_a1b, A5DVN, A4DVN);
and a1c(na10b_a1c, na1a, PBAV);
and a10b(na10b_a10b, V1, DATA);
inv a10c(DATA4N, na10b, SIM_CLK, SIM_RST);

// 10-127
and a25a(na25a_a25a, Y2, C1RD, A5DV);
and a25b(na25a_a25b, A4DV, MBYPD);
and a25c(na32b_a25c, na25a, ITS);
and a24a(na24a_a24a, Y2, G2DVN, G1DV);
and a24b(na24a_a24b, ML1_2, MLAV);
and a24c(na32b_a24c, na24a, PAAVN);
and a31a(na32b_a31a, Y2, na32a, ML1_2, G3DVN, G2DV);
and a32a(na32a, MLAV);
and a31b(na32b_a31b, Y2, DOMS, PAAVN, EMA);
and a33a(na32b_a33a, Y2, PAAVN, CCSL, CODGV);
and a33b(na32b_a33b, Y2, TAGS, PAAV);
and a32b(na32b_a32b, V1, DATA);
inv a32c(DATA3N, na32b, SIM_CLK, SIM_RST);

and a21b(na21b_a21b, Y2, A6DVN, A7DV);
and a21c(na21b_a21c, DARO, A3DV);
and a28a(na28b_a28a, na21b);
and a28b(na28b_a28b, V1, na35a, PARSV);
inv a28c(MBYPDN, na28b, SIM_CLK, SIM_RST);
and a35a(na35a, MBYPD);
inv #(0) a35c(MBYPD, na35b, SIM_CLK, SIM_RST);
and a35b(na35b, V1, MBYPDN);

endmodule
`default_nettype wire
