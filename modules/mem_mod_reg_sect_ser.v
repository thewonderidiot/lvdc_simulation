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
and a2a(na8b, Z8, na9a, CDSV, DSSN, G6V);
and a9a(na9a, G7VN);
and a8a(na8a, DUPDN);
and a8b(na8b, V1, na8a, DM0);
inv a8c(DM1, na8b);

and a22a(na18b, Z8, na23a, ISSN, PCV, G1VN);
and a23a(na23a, G7VN, HOPV);
and a18a(na18a, DUPIN);
and a18b(na18b, V1, na18a, IM0);
inv a18c(IM1, na18b);

and a13a(na13a, Z8, HOPV, PBV, G3V, G4VN);
and a20a(na20b, na13a);
and a20b(na20b, V1, IM2N);
inv #(0) a20c(IM2, na20b);
inv a21c(IM2N, na21a);
and a21a(na21a, V1, IM2);
and a21b(na21a, na14a);
and a14a(na14a, Z8, ISS, PBV, G4V, G5VN);

and a30a(na29b, V4MOD6, DM2N, DM3N, RED);
and a29a(na29a, V4MOD6, IM2N, IM3N);
and a29b(na29b, na29a, REI);
inv a29c(MZON, na29b);

and a30b(na31b, V4MOD6, DM2, DM3N, RED);
and a31a(na31a, V4MOD6, IM2, IM3N);
and a31b(na31b, na31a, REI);
inv a31c(MTTN, na31b);

and a2b(na1b, Z8, DSS, G6V, G7VN);
and a1a(na1a, DM1);
and a1b(na1b, V1, na1a, DM0);
inv a1c(DUPDN, na1b);

and a22b(na22b, Z8, ISS, PCV, G1VN, G7VN);
and a24a(na25b, na22b);
and a25a(na25a, IM1);
and a25b(na25b, V1, na25a, IM0);
inv a25c(DUPIN, na25b);

and a14b(na14b, Z8, HOPV, PBV, G4V, G5VN);
and a7a(na7b, na14b);
and a7b(na7b, V1, IM3N);
inv #(0) a7c(IM3, na7b);
inv a6c(IM3N, na6a);
and a6a(na6a, V1, IM3);
and a6b(na6a, na13b);
and a13b(na13b, Z8, ISS, PBV, G5V, G6VN);

and a33a(na32b, V4MOD6, DM2N, DM3, RED);
and a32a(na32a, V4MOD6, IM2N, IM3);
and a32b(na32b, na32a, REI);
inv a32c(MFFN, na32b);

and a33b(na34b, V4MOD6, DM2, DM3, RED);
and a34a(na34a, V4MOD6, IM2, IM3);
and a34b(na34b, na34a, REI);
inv a34c(MSSN, na34b);

// 10-43
and a16a(na15b, Z8, DSS, G1V, G7V);
and a15a(na15a, DUPDN);
and a15b(na15b, V1, na15a, DM1);
inv #(0) a15c(DM0, na15b);

and a3a(na11b, Z8, na10a, PAV, G1V, G2VN);
and a10a(na10a, ISS);
and a11a(na11a, IM1);
and a11b(na11b, V1, na11a, DUPIN);
inv #(0) a11c(IM0, na11b);

and a26a(na26a, V4MOD6, IM1);
and a26b(na26b, na26a, REI);
inv a26c(IMBN, na26b);

and a27a(na27a, V4MOD6, IM0);
and a27b(na27b, na27a, REI);
inv a27c(IMAN, na27b);

and a16b(na23b, Z8, CDSV, G1V, G7V);
and a23b(na23b, V1, DM2N);
inv #(0) a23c(DM2, na23b);
inv a24c(DM2N, na24b);
and a24b(na24b, V1, DM2);
and a17a(na24b, Z8, DSS, G1VN, G2V);

and a17b(na9b, Z8, CDSV, G1VN, G2V);
and a9b(na9b, V1, DM3N);
inv #(0) a9c(DM3, na9b);
inv a10c(DM3N, na10b);
and a10b(na10b, V1, DM3);
and a3b(na10b, Z8, DSS, G2VN, G3V);

and a19a(na19a, V4MOD6, DM1, RED);
and a19b(na19b, na19a);
inv a19c(DMBN, na19b);

and a12a(na12a, V4MOD6, DM0, RED);
and a12b(na12b, na12a);
inv a12c(DMAN, na12b);

// 10-44
and a1d(na9e, W5, na8d, IM2, PBV, G4VN);
and a8d(na8d, G2V);
and a1e(na9e, W5, na8e, IS1, G4V, G6VN);
and a8e(na8e, PBV);
and a15d(na15d, W5, IS3, PBV, G1V, G6V);
and a8f(na9e, na15d);
and a15e(na15e, W5, SYLC1V, PBV, G1VN, G3V);
and a16c(na9e, na15e);
and a10d(na10d, W5, DM1, PCV, G4V, G6VN);
and a9d(na9e, na10d, DM0);
and a9e(na9e, V1, HP1);
inv a9f(HP1N, na9e);
inv #(0) a2e(HP1, na2c);
and a2c(na2c, V1, HP1N);
and a2d(na2c, X2, AV);

and a10e(na17d, W5, na16d, DM2, G1V, G6V);
and a16d(na16d, PCV);
and a23d(na23d, W5, DS1, PCV, G1VN, G3V);
and a16e(na17d, na23d);
and a23e(na23e, W5, DS3, PCV, G3VN, G5V);
and a24d(na17d, na23e);
and a18d(na17d, W5, na24e, PCV, G5VN, G7V);
and a24e(na24e, IM1, IM0);
and a18e(na17d, W5, na17c, PAV, G5VN, G7V);
and a17c(na17c, DS1M);
and a17d(na17d, V1, HP1);
inv a17e(HP1N, na17d);

and a35a(na28b, Y7, HP1);
and a28a(na28b, Y7, OC);
and a28b(na28b, XN, HOPC1);
inv a28c(HOPC1N, na28b);
inv #(0) a35c(HOPC1, na35b);
and a35b(na35b, V4MOD6, HOPC1N);

and a4a(na5b, X2, na5a, G1V, G6V, AVN);
and a5a(na5a, PAV);
and a5b(na5b, V1, REI);
inv a5c(REIN, na5b);
inv #(0) a3e(REI, na3c);
and a3c(na3c, V1, REIN);
and a4b(na3c, X2, na3d, G5VN, AVN);
and a3d(na3d, X2);

// 10-45
and a31d(na25e, W5, na24f, IM3, G3V, G5VN);
and a24f(na24f, PBV);
and a31e(na25e, W5, na32d, IS2, G5V, G7VN);
and a32d(na32d, PBV);
and a33c(na25e, W5, na32e, PBV, G2V, G7V);
and a32e(na32e, IS4);
and a33d(na33d, W5, DM1, PCV, G5V, G7VN);
and a32f(na25e, na33d, DUPDN);
and a26d(na25e, W5, na25d, PCV, G2V, G7V);
and a25d(na25d, DM3);
and a25e(na25e, V1, OC);
inv a25f(OCN, na25e);
inv #(0) a11f(OC, na11d);
and a11d(na11d, V1, OCN);
and a11e(na11d, X2, AVN);

and a26e(na19e, W5, na20d, DS2, PCV, G2VN);
and a20d(na20d, G4V);
and a27d(na19e, W5, na20e, DS4, PCV, G6V);
and a20e(na20e, G4VN);
and a27e(na19e, W5, na20f, IM1, DUPIN, G1VN);
and a20f(na20f, PCV, G6VN);
and a12d(na12d, W5, DS2M, PAV, G1VN, G6VN);
and a19d(na19e, na12d);
and a19e(na19e, V1, OC);
inv a19f(OCN, na19e);

and a12e(na14d, X2, na13c, OP1V, G4VN, G6V);
and a13c(na13c, REIN, AV);
and a6d(na14d, X2, na13d, PBV, G4VN, AV);
and a13d(na13d, G6V);
and a6e(na14d, X2, na14c, G5VN, G7V, AVN);
and a14c(na14c, PAV);
and a14d(na14d, V1, RED);
inv a14e(REDN, na14d);
inv #(0) a7f(RED, na7d);
and a7d(na7d, V1, REDN);
and a13e(na13e, X2, G4V, AVN);
and a7e(na7d, X2, na13e);

endmodule
`default_nettype wire
