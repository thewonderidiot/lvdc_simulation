`timescale 1ns/1ps
`default_nettype none

module mem_mod_reg_sect_ser(
    input wire SIM_CLK,
    input wire SIM_RST,
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
wire HP1N;
wire HP1N_a9f;
wire HP1N_a17e;
assign HP1N = HP1N_a9f & HP1N_a17e;
wire IM0;
wire IM1;
wire IM2;
wire IM2N;
wire IM3;
wire IM3N;
wire OC;
wire OCN;
wire OCN_a25f;
wire OCN_a19f;
assign OCN = OCN_a25f & OCN_a19f;
wire RED;
wire REDN;
wire REI;
wire REIN;

wire na1a;
wire na1b;
wire na1b_a2b;
wire na1b_a1b;
assign na1b = na1b_a2b | na1b_a1b;
wire na2c;
wire na2c_a2c;
wire na2c_a2d;
assign na2c = na2c_a2c | na2c_a2d;
wire na3c;
wire na3c_a3c;
wire na3c_a4b;
assign na3c = na3c_a3c | na3c_a4b;
wire na3d;
wire na5a;
wire na5b;
wire na5b_a4a;
wire na5b_a5b;
assign na5b = na5b_a4a | na5b_a5b;
wire na8a;
wire na6a;
wire na6a_a6a;
wire na6a_a6b;
assign na6a = na6a_a6a | na6a_a6b;
wire na7b;
wire na7b_a7a;
wire na7b_a7b;
assign na7b = na7b_a7a | na7b_a7b;
wire na7d;
wire na7d_a7d;
wire na7d_a7e;
assign na7d = na7d_a7d | na7d_a7e;
wire na8b;
wire na8b_a2a;
wire na8b_a8b;
assign na8b = na8b_a2a | na8b_a8b;
wire na8d;
wire na8e;
wire na9a;
wire na9b;
wire na9b_a17b;
wire na9b_a9b;
assign na9b = na9b_a17b | na9b_a9b;
wire na9e;
wire na9e_a1d;
wire na9e_a1e;
wire na9e_a8f;
wire na9e_a16c;
wire na9e_a9d;
wire na9e_a9e;
assign na9e = na9e_a1d | na9e_a1e | na9e_a8f | na9e_a16c | na9e_a9d | na9e_a9e;
wire na10a;
wire na10b;
wire na10b_a10b;
wire na10b_a3b;
assign na10b = na10b_a10b | na10b_a3b;
wire na10d;
wire na11a;
wire na11b;
wire na11b_a3a;
wire na11b_a11b;
assign na11b = na11b_a3a | na11b_a11b;
wire na11d;
wire na11d_a11d;
wire na11d_a11e;
assign na11d = na11d_a11d | na11d_a11e;
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
wire na14d;
wire na14d_a12e;
wire na14d_a6d;
wire na14d_a6e;
wire na14d_a14d;
assign na14d = na14d_a12e | na14d_a6d | na14d_a6e | na14d_a14d;
wire na15a;
wire na15b;
wire na15b_a16a;
wire na15b_a15b;
assign na15b = na15b_a16a | na15b_a15b;
wire na15d;
wire na15e;
wire na16d;
wire na17c;
wire na17d;
wire na17d_a10e;
wire na17d_a16e;
wire na17d_a24d;
wire na17d_a18d;
wire na17d_a18e;
wire na17d_a17d;
assign na17d = na17d_a10e | na17d_a16e | na17d_a24d | na17d_a18d | na17d_a18e | na17d_a17d;
wire na18a;
wire na18b;
wire na18b_a22a;
wire na18b_a18b;
assign na18b = na18b_a22a | na18b_a18b;
wire na19a;
wire na19b;
wire na19e;
wire na19e_a26e;
wire na19e_a27d;
wire na19e_a27e;
wire na19e_a19d;
wire na19e_a19e;
assign na19e = na19e_a26e | na19e_a27d | na19e_a27e | na19e_a19d | na19e_a19e;
wire na20b;
wire na20b_a20a;
wire na20b_a20b;
assign na20b = na20b_a20a | na20b_a20b;
wire na20d;
wire na20e;
wire na20f;
wire na21a;
wire na21a_a21a;
wire na21a_a21b;
assign na21a = na21a_a21a | na21a_a21b;
wire na22b;
wire na23a;
wire na23b;
wire na23b_a16b;
wire na23b_a23b;
assign na23b = na23b_a16b | na23b_a23b;
wire na23d;
wire na23e;
wire na24b;
wire na24b_a24b;
wire na24b_a17a;
assign na24b = na24b_a24b | na24b_a17a;
wire na24e;
wire na24f;
wire na25a;
wire na25b;
wire na25b_a24a;
wire na25b_a25b;
assign na25b = na25b_a24a | na25b_a25b;
wire na25d;
wire na25e;
wire na25e_a31d;
wire na25e_a31e;
wire na25e_a33c;
wire na25e_a32f;
wire na25e_a26d;
wire na25e_a25e;
assign na25e = na25e_a31d | na25e_a31e | na25e_a33c | na25e_a32f | na25e_a26d | na25e_a25e;
wire na26a;
wire na26b;
wire na27a;
wire na27b;
wire na28b;
wire na28b_a35a;
wire na28b_a28a;
wire na28b_a28b;
assign na28b = na28b_a35a | na28b_a28a | na28b_a28b;
wire na29a;
wire na29b;
wire na29b_a30a;
wire na29b_a29b;
assign na29b = na29b_a30a | na29b_a29b;
wire na31a;
wire na31b;
wire na31b_a30b;
wire na31b_a31b;
assign na31b = na31b_a30b | na31b_a31b;
wire na32a;
wire na32b;
wire na32b_a33a;
wire na32b_a32b;
assign na32b = na32b_a33a | na32b_a32b;
wire na32d;
wire na32e;
wire na33d;
wire na34a;
wire na34b;
wire na34b_a33b;
wire na34b_a34b;
assign na34b = na34b_a33b | na34b_a34b;
wire na35b;

// 10-42
and a2a(na8b_a2a, Z8, na9a, CDSV, DSSN, G6V);
and a9a(na9a, G7VN);
and a8a(na8a, DUPDN);
and a8b(na8b_a8b, V1, na8a, DM0);
inv a8c(DM1, na8b, SIM_CLK, SIM_RST);

and a22a(na18b_a22a, Z8, na23a, ISSN, PCV, G1VN);
and a23a(na23a, G7VN, HOPV);
and a18a(na18a, DUPIN);
and a18b(na18b_a18b, V1, na18a, IM0);
inv a18c(IM1, na18b, SIM_CLK, SIM_RST);

and a13a(na13a, Z8, HOPV, PBV, G3V, G4VN);
and a20a(na20b_a20a, na13a);
and a20b(na20b_a20b, V1, IM2N);
inv #(0) a20c(IM2, na20b, SIM_CLK, SIM_RST);
inv a21c(IM2N, na21a, SIM_CLK, SIM_RST);
and a21a(na21a_a21a, V1, IM2);
and a21b(na21a_a21b, na14a);
and a14a(na14a, Z8, ISS, PBV, G4V, G5VN);

and a30a(na29b_a30a, V4MOD6, DM2N, DM3N, RED);
and a29a(na29a, V4MOD6, IM2N, IM3N);
and a29b(na29b_a29b, na29a, REI);
inv a29c(MZON, na29b, SIM_CLK, SIM_RST);

and a30b(na31b_a30b, V4MOD6, DM2, DM3N, RED);
and a31a(na31a, V4MOD6, IM2, IM3N);
and a31b(na31b_a31b, na31a, REI);
inv a31c(MTTN, na31b, SIM_CLK, SIM_RST);

and a2b(na1b_a2b, Z8, DSS, G6V, G7VN);
and a1a(na1a, DM1);
and a1b(na1b_a1b, V1, na1a, DM0);
inv a1c(DUPDN, na1b, SIM_CLK, SIM_RST);

and a22b(na22b, Z8, ISS, PCV, G1VN, G7VN);
and a24a(na25b_a24a, na22b);
and a25a(na25a, IM1);
and a25b(na25b_a25b, V1, na25a, IM0);
inv a25c(DUPIN, na25b, SIM_CLK, SIM_RST);

and a14b(na14b, Z8, HOPV, PBV, G4V, G5VN);
and a7a(na7b_a7a, na14b);
and a7b(na7b_a7b, V1, IM3N);
inv #(0) a7c(IM3, na7b, SIM_CLK, SIM_RST);
inv a6c(IM3N, na6a, SIM_CLK, SIM_RST);
and a6a(na6a_a6a, V1, IM3);
and a6b(na6a_a6b, na13b);
and a13b(na13b, Z8, ISS, PBV, G5V, G6VN);

and a33a(na32b_a33a, V4MOD6, DM2N, DM3, RED);
and a32a(na32a, V4MOD6, IM2N, IM3);
and a32b(na32b_a32b, na32a, REI);
inv a32c(MFFN, na32b, SIM_CLK, SIM_RST);

and a33b(na34b_a33b, V4MOD6, DM2, DM3, RED);
and a34a(na34a, V4MOD6, IM2, IM3);
and a34b(na34b_a34b, na34a, REI);
inv a34c(MSSN, na34b, SIM_CLK, SIM_RST);

// 10-43
and a16a(na15b_a16a, Z8, DSS, G1V, G7V);
and a15a(na15a, DUPDN);
and a15b(na15b_a15b, V1, na15a, DM1);
inv #(0) a15c(DM0, na15b, SIM_CLK, SIM_RST);

and a3a(na11b_a3a, Z8, na10a, PAV, G1V, G2VN);
and a10a(na10a, ISS);
and a11a(na11a, IM1);
and a11b(na11b_a11b, V1, na11a, DUPIN);
inv #(0) a11c(IM0, na11b, SIM_CLK, SIM_RST);

and a26a(na26a, V4MOD6, IM1);
and a26b(na26b, na26a, REI);
inv a26c(IMBN, na26b, SIM_CLK, SIM_RST);

and a27a(na27a, V4MOD6, IM0);
and a27b(na27b, na27a, REI);
inv a27c(IMAN, na27b, SIM_CLK, SIM_RST);

and a16b(na23b_a16b, Z8, CDSV, G1V, G7V);
and a23b(na23b_a23b, V1, DM2N);
inv #(0) a23c(DM2, na23b, SIM_CLK, SIM_RST);
inv a24c(DM2N, na24b, SIM_CLK, SIM_RST);
and a24b(na24b_a24b, V1, DM2);
and a17a(na24b_a17a, Z8, DSS, G1VN, G2V);

and a17b(na9b_a17b, Z8, CDSV, G1VN, G2V);
and a9b(na9b_a9b, V1, DM3N);
inv #(0) a9c(DM3, na9b, SIM_CLK, SIM_RST);
inv a10c(DM3N, na10b, SIM_CLK, SIM_RST);
and a10b(na10b_a10b, V1, DM3);
and a3b(na10b_a3b, Z8, DSS, G2VN, G3V);

and a19a(na19a, V4MOD6, DM1, RED);
and a19b(na19b, na19a);
inv a19c(DMBN, na19b, SIM_CLK, SIM_RST);

and a12a(na12a, V4MOD6, DM0, RED);
and a12b(na12b, na12a);
inv a12c(DMAN, na12b, SIM_CLK, SIM_RST);

// 10-44
and a1d(na9e_a1d, W5, na8d, IM2, PBV, G4VN);
and a8d(na8d, G2V);
and a1e(na9e_a1e, W5, na8e, IS1, G4V, G6VN);
and a8e(na8e, PBV);
and a15d(na15d, W5, IS3, PBV, G1V, G6V);
and a8f(na9e_a8f, na15d);
and a15e(na15e, W5, SYLC1V, PBV, G1VN, G3V);
and a16c(na9e_a16c, na15e);
and a10d(na10d, W5, DM1, PCV, G4V, G6VN);
and a9d(na9e_a9d, na10d, DM0);
and a9e(na9e_a9e, V1, HP1);
inv a9f(HP1N_a9f, na9e, SIM_CLK, SIM_RST);
inv #(0) a2e(HP1, na2c, SIM_CLK, SIM_RST);
and a2c(na2c_a2c, V1, HP1N);
and a2d(na2c_a2d, X2, AV);

and a10e(na17d_a10e, W5, na16d, DM2, G1V, G6V);
and a16d(na16d, PCV);
and a23d(na23d, W5, DS1, PCV, G1VN, G3V);
and a16e(na17d_a16e, na23d);
and a23e(na23e, W5, DS3, PCV, G3VN, G5V);
and a24d(na17d_a24d, na23e);
and a18d(na17d_a18d, W5, na24e, PCV, G5VN, G7V);
and a24e(na24e, IM1, IM0);
and a18e(na17d_a18e, W5, na17c, PAV, G5VN, G7V);
and a17c(na17c, DS1M);
and a17d(na17d_a17d, V1, HP1);
inv a17e(HP1N_a17e, na17d, SIM_CLK, SIM_RST);

and a35a(na28b_a35a, Y7, HP1);
and a28a(na28b_a28a, Y7, OC);
and a28b(na28b_a28b, XN, HOPC1);
inv a28c(HOPC1N, na28b, SIM_CLK, SIM_RST);
inv #(0) a35c(HOPC1, na35b, SIM_CLK, SIM_RST);
and a35b(na35b, V4MOD6, HOPC1N);

and a4a(na5b_a4a, X2, na5a, G1V, G6V, AVN);
and a5a(na5a, PAV);
and a5b(na5b_a5b, V1, REI);
inv a5c(REIN, na5b, SIM_CLK, SIM_RST);
inv #(0) a3e(REI, na3c, SIM_CLK, SIM_RST);
and a3c(na3c_a3c, V1, REIN);
and a4b(na3c_a4b, X2, na3d, G5VN, AVN);
and a3d(na3d, X2);

// 10-45
and a31d(na25e_a31d, W5, na24f, IM3, G3V, G5VN);
and a24f(na24f, PBV);
and a31e(na25e_a31e, W5, na32d, IS2, G5V, G7VN);
and a32d(na32d, PBV);
and a33c(na25e_a33c, W5, na32e, PBV, G2V, G7V);
and a32e(na32e, IS4);
and a33d(na33d, W5, DM1, PCV, G5V, G7VN);
and a32f(na25e_a32f, na33d, DUPDN);
and a26d(na25e_a26d, W5, na25d, PCV, G2V, G7V);
and a25d(na25d, DM3);
and a25e(na25e_a25e, V1, OC);
inv a25f(OCN_a25f, na25e, SIM_CLK, SIM_RST);
inv #(0) a11f(OC, na11d, SIM_CLK, SIM_RST);
and a11d(na11d_a11d, V1, OCN);
and a11e(na11d_a11e, X2, AVN);

and a26e(na19e_a26e, W5, na20d, DS2, PCV, G2VN);
and a20d(na20d, G4V);
and a27d(na19e_a27d, W5, na20e, DS4, PCV, G6V);
and a20e(na20e, G4VN);
and a27e(na19e_a27e, W5, na20f, IM1, DUPIN, G1VN);
and a20f(na20f, PCV, G6VN);
and a12d(na12d, W5, DS2M, PAV, G1VN, G6VN);
and a19d(na19e_a19d, na12d);
and a19e(na19e_a19e, V1, OC);
inv a19f(OCN_a19f, na19e, SIM_CLK, SIM_RST);

and a12e(na14d_a12e, X2, na13c, OP1V, G4VN, G6V);
and a13c(na13c, REIN, AV);
and a6d(na14d_a6d, X2, na13d, PBV, G4VN, AV);
and a13d(na13d, G6V);
and a6e(na14d_a6e, X2, na14c, G5VN, G7V, AVN);
and a14c(na14c, PAV);
and a14d(na14d_a14d, V1, RED);
inv a14e(REDN, na14d, SIM_CLK, SIM_RST);
inv #(0) a7f(RED, na7d, SIM_CLK, SIM_RST);
and a7d(na7d_a7d, V1, REDN);
and a13e(na13e, X2, G4V, AVN);
and a7e(na7d_a7e, X2, na13e);

endmodule
`default_nettype wire
