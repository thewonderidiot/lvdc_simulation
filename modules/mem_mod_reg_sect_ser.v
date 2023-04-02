`timescale 1ns/1ps
`default_nettype none

module mem_mod_reg_sect_ser(
    input wire V1,
    input wire V4MOD6,
    input wire AV,
    input wire AVN,
    input wire CDSV,
    input wire DS1,
    input wire DS2,
    input wire DS3,
    input wire DS4,
    input wire DS1M,
    input wire DS2M,
    input wire DSS,
    input wire DSSN,
    input wire G1V,
    input wire G1VN,
    input wire G2V,
    input wire G2VN,
    input wire G3V,
    input wire G3VN,
    input wire G4V,
    input wire G4VN,
    input wire G5V,
    input wire G5VN,
    input wire G6V,
    input wire G6VN,
    input wire G7V,
    input wire G7VN,
    input wire HOPV,
    input wire IS1,
    input wire IS2,
    input wire IS3,
    input wire IS4,
    input wire ISS,
    input wire ISSN,
    input wire OP1V,
    input wire PAV,
    input wire PBV,
    input wire PCV,
    input wire SYLC1V,
    input wire W5,
    input wire X2,
    input wire XN,
    input wire Y7,
    input wire Z8,
    output wire DMAN,
    output wire DMBN,
    output wire HOPC1,
    output wire IMAN,
    output wire IMBN,
    output wire MZON,
    output wire MTTN,
    output wire MFFN,
    output wire MSSN
);

wire DM0;
wire DM1;
wire DM2;
wire DM2N;
wire DM3;
wire DM3N;
wire DUPDN;
wire DUPIN;
wire HOPC1N;
wire HP1;
wand HP1N;
wire IM0;
wire IM1;
wire IM2;
wire IM2N;
wire IM3;
wire IM3N;
wire OC;
wand OCN;
wire RED;
wire REDN;
wire REI;
wire REIN;

wire na1a;
wor na1b;
wor na2c;
wor na3c;
wire na3d;
wire na5a;
wor na5b;
wire na8a;
wor na6a;
wor na7b;
wor na7d;
wor na8b;
wire na8d;
wire na8e;
wire na9a;
wor na9b;
wor na9e;
wire na10a;
wor na10b;
wire na10d;
wire na11a;
wor na11b;
wor na11d;
wire na12a;
wire na12b;
wire na12d;
wire na13a;
wire na13b;
wire na13c;
wire na13d;
wire na13e;
wire na14a;
wire na14b;
wire na14c;
wor na14d;
wire na15a;
wor na15b;
wire na15d;
wire na15e;
wire na16d;
wire na17c;
wor na17d;
wire na18a;
wor na18b;
wire na19a;
wire na19b;
wor na19e;
wor na20b;
wire na20d;
wire na20e;
wire na20f;
wor na21a;
wire na22b;
wire na23a;
wor na23b;
wire na23d;
wire na23e;
wor na24b;
wire na24e;
wire na24f;
wire na25a;
wor na25b;
wire na25d;
wor na25e;
wire na26a;
wire na26b;
wire na27a;
wire na27b;
wor na28b;
wire na29a;
wor na29b;
wire na31a;
wor na31b;
wire na32a;
wor na32b;
wire na32d;
wire na32e;
wire na33d;
wire na34a;
wor na34b;
wire na35b;

// 10-42
a a2a(.clk(Z8), .exp(na9a), .a1(CDSV), .a2(DSSN), .a3(G6V), .y(na8b));
a a9a(.a1(G7VN), .y(na9a));
a a8a(.a1(DUPDN), .y(na8a));
a a8b(.clk(V1), .exp(na8a), .a1(DM0), .y(na8b));
i a8c(.a(na8b), .y(DM1));

a a22a(.clk(Z8), .exp(na23a), .a1(ISSN), .a2(PCV), .a3(G1VN), .y(na18b));
a a23a(.a1(G7VN), .a2(HOPV), .y(na23a));
a a18a(.a1(DUPIN), .y(na18a));
a a18b(.clk(V1), .exp(na18a), .a1(IM0), .y(na18b));
i a18c(.a(na18b), .y(IM1));

a a13a(.clk(Z8), .a1(HOPV), .a2(PBV), .a3(G3V), .a4(G4VN), .y(na13a));
a a20a(.exp(na13a), .y(na20b));
a a20b(.clk(V1), .a1(IM2N), .y(na20b));
i a20c(.a(na20b), .y(IM2));
i a21c(.a(na21a), .y(IM2N));
a #(1) a21a(.clk(V1), .a1(IM2), .y(na21a));
a a21b(.exp(na14a), .y(na21a));
a a14a(.clk(Z8), .a1(ISS), .a2(PBV), .a3(G4V), .a4(G5VN), .y(na14a));

a a30a(.clk(V4MOD6), .a1(DM2N), .a2(DM3N), .a3(RED), .y(na29b));
a a29a(.clk(V4MOD6), .a1(IM2N), .a2(IM3N), .y(na29a));
a a29b(.exp(na29a), .a1(REI), .y(na29b));
i a29c(.a(na29b), .y(MZON));

a a30b(.clk(V4MOD6), .a1(DM2), .a2(DM3N), .a3(RED), .y(na31b));
a a31a(.clk(V4MOD6), .a1(IM2), .a2(IM3N), .y(na31a));
a a31b(.exp(na31a), .a1(REI), .y(na31b));
i a31c(.a(na31b), .y(MTTN));

a a2b(.clk(Z8), .a1(DSS), .a2(G6V), .a3(G7VN), .y(na1b));
a a1a(.a1(DM1), .y(na1a));
a a1b(.clk(V1), .exp(na1a), .a1(DM0), .y(na1b));
i a1c(.a(na1b), .y(DUPDN));

a a22b(.clk(Z8), .a1(ISS), .a2(PCV), .a3(G1VN), .a4(G7VN), .y(na22b));
a a24a(.exp(na22b), .y(na25b));
a a25a(.a1(IM1), .y(na25a));
a a25b(.clk(V1), .exp(na25a), .a1(IM0), .y(na25b));
i a25c(.a(na25b), .y(DUPIN));

a a14b(.clk(Z8), .a1(HOPV), .a2(PBV), .a3(G4V), .a4(G5VN), .y(na14b));
a a7a(.exp(na14b), .y(na7b));
a a7b(.clk(V1), .a1(IM3N), .y(na7b));
i a7c(.a(na7b), .y(IM3));
i a6c(.a(na6a), .y(IM3N));
a #(1) a6a(.clk(V1), .a1(IM3), .y(na6a));
a a6b(.exp(na13b), .y(na6a));
a a13b(.clk(Z8), .a1(ISS), .a2(PBV), .a3(G5V), .a4(G6VN), .y(na13b));

a a33a(.clk(V4MOD6), .a1(DM2N), .a2(DM3), .a3(RED), .y(na32b));
a a32a(.clk(V4MOD6), .a1(IM2N), .a2(IM3), .y(na32a));
a a32b(.exp(na32a), .a1(REI), .y(na32b));
i a32c(.a(na32b), .y(MFFN));

a a33b(.clk(V4MOD6), .a1(DM2), .a2(DM3), .a3(RED), .y(na34b));
a a34a(.clk(V4MOD6), .a1(IM2), .a2(IM3), .y(na34a));
a a34b(.exp(na34a), .a1(REI), .y(na34b));
i a34c(.a(na34b), .y(MSSN));

// 10-43
a a16a(.clk(Z8), .a1(DSS), .a2(G1V), .a3(G7V), .y(na15b));
a a15a(.a1(DUPDN), .y(na15a));
a #(1) a15b(.clk(V1), .exp(na15a), .a1(DM1), .y(na15b));
i a15c(.a(na15b), .y(DM0));

a a3a(.clk(Z8), .exp(na10a), .a1(PAV), .a2(G1V), .a3(G2VN), .y(na11b));
a a10a(.a1(ISS), .y(na10a));
a a11a(.a1(IM1), .y(na11a));
a #(1) a11b(.clk(V1), .exp(na11a), .a1(DUPIN), .y(na11b));
i a11c(.a(na11b), .y(IM0));

a a26a(.clk(V4MOD6), .a1(IM1), .y(na26a));
a a26b(.exp(na26a), .a1(REI), .y(na26b));
i a26c(.a(na26b), .y(IMBN));

a a27a(.clk(V4MOD6), .a1(IM0), .y(na27a));
a a27b(.exp(na27a), .a1(REI), .y(na27b));
i a27c(.a(na27b), .y(IMAN));

a a16b(.clk(Z8), .a1(CDSV), .a2(G1V), .a3(G7V), .y(na23b));
a a23b(.clk(V1), .a1(DM2N), .y(na23b));
i a23c(.a(na23b), .y(DM2));
i a24c(.a(na24b), .y(DM2N));
a #(1) a24b(.clk(V1), .a1(DM2), .y(na24b));
a a17a(.clk(Z8), .a1(DSS), .a2(G1VN), .a3(G2V), .y(na24b));

a a17b(.clk(Z8), .a1(CDSV), .a2(G1VN), .a3(G2V), .y(na9b));
a a9b(.clk(V1), .a1(DM3N), .y(na9b));
i a9c(.a(na9b), .y(DM3));
i a10c(.a(na10b), .y(DM3N));
a #(1) a10b(.clk(V1), .a1(DM3), .y(na10b));
a a3b(.clk(Z8), .a1(DSS), .a2(G2VN), .a3(G3V), .y(na10b));

a a19a(.clk(V4MOD6), .a1(DM1), .a2(RED), .y(na19a));
a a19b(.exp(na19a), .y(na19b));
i a19c(.a(na19b), .y(DMBN));

a a12a(.clk(V4MOD6), .a1(DM0), .a2(RED), .y(na12a));
a a12b(.exp(na12a), .y(na12b));
i a12c(.a(na12b), .y(DMAN));

// 10-44
a a1d(.clk(W5), .exp(na8d), .a1(IM2), .a2(PBV), .a3(G4VN), .y(na9e));
a a8d(.a1(G2V), .y(na8d));
a a1e(.clk(W5), .exp(na8e), .a1(IS1), .a2(G4V), .a3(G6VN), .y(na9e));
a a8e(.a1(PBV), .y(na8e));
a a15d(.clk(W5), .a1(IS3), .a2(PBV), .a3(G1V), .a4(G6V), .y(na15d));
a a8f(.exp(na15d), .y(na9e));
a a15e(.clk(W5), .a1(SYLC1V), .a2(PBV), .a3(G1VN), .a4(G3V), .y(na15e));
a a16c(.exp(na15e), .y(na9e));
a a10d(.clk(W5), .a1(DM1), .a2(PCV), .a3(G4V), .a4(G6VN), .y(na10d));
a a9d(.exp(na10d), .a1(DM0), .y(na9e));
a a9e(.clk(V1), .a1(HP1), .y(na9e));
i a9f(.a(na9e), .y(HP1N));
i a2e(.a(na2c), .y(HP1));
a #(1) a2c(.clk(V1), .a1(HP1N), .y(na2c));
a a2d(.clk(X2), .a1(AV), .y(na2c));

a a10e(.clk(W5), .exp(na16d), .a1(DM2), .a2(G1V), .a3(G6V), .y(na17d));
a a16d(.a1(PCV), .y(na16d));
a a23d(.clk(W5), .a1(DS1), .a2(PCV), .a3(G1VN), .a4(G3V), .y(na23d));
a a16e(.exp(na23d), .y(na17d));
a a23e(.clk(W5), .a1(DS3), .a2(PCV), .a3(G3VN), .a4(G5V), .y(na23e));
a a24d(.exp(na23e), .y(na17d));
a a18d(.clk(W5), .exp(na24e), .a1(PCV), .a2(G5VN), .a3(G7V), .y(na17d));
a a24e(.a1(IM1), .a2(IM0), .y(na24e));
a a18e(.clk(W5), .exp(na17c), .a1(PAV), .a2(G5VN), .a3(G7V), .y(na17d));
a a17c(.a1(DS1M), .y(na17c));
a a17d(.clk(V1), .a1(HP1), .y(na17d));
i a17e(.a(na17d), .y(HP1N));

a a35a(.clk(Y7), .a1(HP1), .y(na28b));
a a28a(.clk(Y7), .a1(OC), .y(na28b));
a a28b(.clk(XN), .a1(HOPC1), .y(na28b));
i a28c(.a(na28b), .y(HOPC1N));
i a35c(.a(na35b), .y(HOPC1));
a #(1) a35b(.clk(V4MOD6), .a1(HOPC1N), .y(na35b));

a a4a(.clk(X2), .exp(na5a), .a1(G1V), .a2(G6V), .a3(AVN), .y(na5b));
a a5a(.a1(PAV), .y(na5a));
a a5b(.clk(V1), .a1(REI), .y(na5b));
i a5c(.a(na5b), .y(REIN));
i a3e(.a(na3c), .y(REI));
a #(1) a3c(.clk(V1), .a1(REIN), .y(na3c));
a a4b(.clk(X2), .exp(na3d), .a1(G5VN), .a2(AVN), .y(na3c));
a a3d(.clk(X2), .y(na3d));

// 10-45
a a31d(.clk(W5), .exp(na24f), .a1(IM3), .a2(G3V), .a3(G5VN), .y(na25e));
a a24f(.a1(PBV), .y(na24f));
a a31e(.clk(W5), .exp(na32d), .a1(IS2), .a2(G5V), .a3(G7VN), .y(na25e));
a a32d(.a1(PBV), .y(na32d));
a a33c(.clk(W5), .exp(na32e), .a1(PBV), .a2(G2V), .a3(G7V), .y(na25e));
a a32e(.a1(IS4), .y(na32e));
a a33d(.clk(W5), .a1(DM1), .a2(PCV), .a3(G5V), .a4(G7VN), .y(na33d));
a a32f(.exp(na33d), .a1(DUPDN), .y(na25e));
a a26d(.clk(W5), .exp(na25d), .a1(PCV), .a2(G2V), .a3(G7V), .y(na25e));
a a25d(.a1(DM3), .y(na25d));
a a25e(.clk(V1), .a1(OC), .y(na25e));
i a25f(.a(na25e), .y(OCN));
i a11f(.a(na11d), .y(OC));
a #(1) a11d(.clk(V1), .a1(OCN), .y(na11d));
a a11e(.clk(X2), .a1(AVN), .y(na11d));

a a26e(.clk(W5), .exp(na20d), .a1(DS2), .a2(PCV), .a3(G2VN), .y(na19e));
a a20d(.a1(G4V), .y(na20d));
a a27d(.clk(W5), .exp(na20e), .a1(DS4), .a2(PCV), .a3(G6V), .y(na19e));
a a20e(.a1(G4VN), .y(na20e));
a a27e(.clk(W5), .exp(na20f), .a1(IM1), .a2(DUPIN), .a3(G1VN), .y(na19e));
a a20f(.a1(PCV), .a2(G6VN), .y(na20f));
a a12d(.clk(W5), .a1(DS2M), .a2(PAV), .a3(G1VN), .a4(G6VN), .y(na12d));
a a19d(.exp(na12d), .y(na19e));
a a19e(.clk(V1), .a1(OC), .y(na19e));
i a19f(.a(na19e), .y(OCN));

a a12e(.clk(X2), .exp(na13c), .a1(OP1V), .a2(G4VN), .a3(G6V), .y(na14d));
a a13c(.a1(REIN), .a2(AV), .y(na13c));
a a6d(.clk(X2), .exp(na13d), .a1(PBV), .a2(G4VN), .a3(AV), .y(na14d));
a a13d(.a1(G6V), .y(na13d));
a a6e(.clk(X2), .exp(na14c), .a1(G5VN), .a2(G7V), .a3(AVN), .y(na14d));
a a14c(.a1(PAV), .y(na14c));
a a14d(.clk(V1), .a1(RED), .y(na14d));
i a14e(.a(na14d), .y(REDN));
i a7f(.a(na7d), .y(RED));
a #(1) a7d(.clk(V1), .a1(REDN), .y(na7d));
a a13e(.clk(X2), .a1(G4V), .a2(AVN), .y(na13e));
a a7e(.clk(X2), .exp(na13e), .y(na7d));

endmodule
`default_nettype wire
