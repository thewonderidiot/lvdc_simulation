`timescale 1ns/1ps
`default_nettype none

module sect_reg_y_decode(
    input wire V1,
    input wire V4MOD6,
    input wire A9,
    input wire BRA7,
    input wire BRA8,
    input wire BRB7,
    input wire BRB8,
    input wire CDSV,
    input wire EXMV,
    input wire EXMVN,
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
    input wire MAOV,
    input wire MBOV,
    input wire PAV,
    input wire PBV,
    input wire PCV,
    input wire TA,
    input wire TBRV,
    input wire TRSV,
    input wire WN,
    input wire X5,
    input wire Y5,
    input wire Z1,
    output wire AY00N,
    output wire AY10N,
    output wire AY20N,
    output wire AY30N,
    output wire AY40N,
    output wire AY50N,
    output wire AY60N,
    output wire AY70N,
    output wire DS1,
    output wire DS2,
    output wire DS3,
    output wire DS4,
    output wire DS1M,
    output wire DS2M,
    output wire DSS,
    output wire DSSN,
    output wire EXMDN,
    output wire IS1,
    output wire IS2,
    output wire IS3,
    output wire IS4,
    output wire ISS,
    output wire ISSN
);

wire A9PADN;
wire DS1N;
wire DS2N;
wire DS3N;
wire DS4N;
wire DS1MN;
wire DS2MN;
wire EXMD;
wire IS1N;
wire IS2N;
wire IS3N;
wire IS4N;
wire PAD;
wire PADN;

wor na1b;
wor na3a;
wire na3c;
wor na4b;
wor na5a;
wire na5d;
wire na5f;
wor na6b;
wire na6d;
wire na6e;
wire na8a;
wor na8b;
wor na9a;
wire na9d;
wire na9e;
wor na10a;
wire na11a;
wire na11b;
wor na11c;
wire na12a;
wire na12b;
wand na12d;
wire na12e;
wor na13a;
wire na13d;
wor na13e;
wire na14a;
wor na14b;
wire na15c;
wor na15d;
wor na16a;
wire na16c;
wire na16d;
wor na16e;
wor na17b;
wor na18a;
wor na18e;
wire na19a;
wire na19b;
wire na20a;
wor na20b;
wire na20d;
wire na20e;
wire na21a;
wor na21b;
wire na21d;
wor na22b;
wire na22d;
wire na22e;
wire na23a;
wor na23b;
wire na23d;
wire na23e;
wire na24a;
wire na24b;
wor na25a;
wire na25d;
wire na25f;
wor na26b;
wire na26d;
wor na26e;
wire na27a;
wor na27b;
wire na27e;
wire na27f;
wire na28a;
wor na28b;
wire na29a;
wor na29e;
wor na30a;
wire na30b;
wor na30e;
wire na31a;
wor na32a;
wire na32b;
wor na32e;
wor na33c;
wire na34c;
wor na34d;
wire na35c;
wor na35d;

// 10-66
and a24a(na24a, Z1, PBV, G5V, HOPV);
and a17a(na17b, na24a, G6VN);
and a17b(na17b, V1, IS1N);
inv #(0) a17c(IS1, na17b);
inv a18c(IS1N, na18a);
and a18a(na18a, V1, IS1);
and a18b(na18a, na11a, PBV);
and a11a(na11a, Z1, ISS, G6V, G7VN);

and a8a(na8a, Z1, CDSV, G5V);
and a1a(na8b, na8a, G4VN);
and a8b(na8b, V1, DS3N);
inv #(0) a8c(DS3, na8b);
inv a1c(DS3N, na1b);
and a1b(na1b, V1, DS3);
and a2a(na1b, Z1, DSS, G5VN, G6V);

and a29a(na29a, V1, DSSN);
inv #(0) a29b(DSS, na29a);
inv a30c(DSSN, na30a);
and a30a(na30a, WN, DSS);
and a30b(na30b, X5, CDSV, PCV);
and a29c(na30a, na30b, TRSV);

and a31a(na31a, V1, ISSN);
inv #(0) a31b(ISS, na31a);
inv a32c(ISSN, na32a);
and a32a(na32a, WN, ISS);
and a32b(na32b, X5, HOPV);
and a31c(na32a, na32b, TRSV);

and a11b(na11b, Z1, PBV, G6V, HOPV);
and a4a(na4b, na11b, G7VN);
and a4b(na4b, V1, IS2N);
inv #(0) a4c(IS2, na4b);
inv a5c(IS2N, na5a);
and a5a(na5a, V1, IS2);
and a5b(na5a, na12a, G7V);
and a12a(na12a, Z1, PBV, G1V, ISS);

and a2b(na3a, Z1, CDSV, G5VN, G6V);
and a3a(na3a, V1, DS4N);
inv #(0) a3b(DS4, na3a);
inv a10c(DS4N, na10a);
and a10a(na10a, V1, DS4);
and a10b(na10a, Z1, na3c, DSS);
and a3c(na3c, G6VN, G7V);

and a23a(na23a, Z1, CDSV, G3V);
and a22a(na23b, na23a, G2VN);
and a23b(na23b, V1, DS1N);
inv #(0) a23c(DS1, na23b);
inv a22c(DS1N, na22b);
and a22b(na22b, V1, DS1);
and a15a(na22b, Z1, DSS, G3VN, G4V);

and a15b(na16a, Z1, CDSV, G3VN, G4V);
and a16a(na16a, V1, DS2N);
inv #(0) a16b(DS2, na16a);
inv a9c(DS2N, na9a);
and a9a(na9a, V1, DS2);
and a9b(na9a, Z1, na16c, DSS);
and a16c(na16c, G4VN, G5V);

// 10-67
and a12b(na12b, Z1, PBV, G1V, HOPV);
and a6a(na6b, na12b, G7V);
and a6b(na6b, V1, IS3N);
inv #(0) a6c(IS3, na6b);
inv a13c(IS3N, na13a);
and a13a(na13a, V1, IS3);
and a13b(na13a, na19a, G2V);
and a19a(na19a, Z1, PBV, G1VN, ISS);

and a19b(na19b, Z1, PBV, G1VN, G2V);
and a26a(na26b, na19b, HOPV);
and a26b(na26b, V1, IS4N);
inv #(0) a26c(IS4, na26b);
inv a25c(IS4N, na25a);
and a25a(na25a, V1, IS4);
and a25b(na25a, na24b, ISS);
and a24b(na24b, Z1, PBV, G2VN, G3V);

and a20a(na20a, Y5, BRA8);
and a33a(na20b, na20a, TBRV, MAOV, EXMV);
and a27a(na27a, Y5, BRB8);
and a34a(na20b, na27a, TBRV, MBOV, EXMV);
and a20b(na20b, V1, DS1M);
inv a20c(DS1MN, na20b);
inv #(0) a27c(DS1M, na27b);
and a27b(na27b, V1, DS1MN);
and a35a(na27b, Y5, TA, EXMVN);

and a21a(na21a, Y5, BRA7);
and a33b(na21b, na21a, TBRV, MAOV, EXMV);
and a28a(na28a, Y5, BRB7);
and a34b(na21b, na28a, TBRV, MBOV, EXMV);
and a21b(na21b, V1, DS2M);
inv a21c(DS2MN, na21b);
inv #(0) a28c(DS2M, na28b);
and a28b(na28b, V1, DS2MN);
and a35b(na28b, Y5, TA, EXMVN);

// 10-68
and a22d(na22d, V4MOD6, A9PADN, DS1N, DS2N, DS3N);
and a29d(na29e, na22d);
and a23d(na23d, V4MOD6, PAD, IS1N, IS2N, IS3N);
and a29e(na29e, na23d);
inv a29f(AY00N, na29e);

and a6d(na6d, V4MOD6, A9PADN, DS1N, DS2N, DS3);
and a12c(na13e, na6d);
and a4d(na13e, V4MOD6, na5d, IS1N, IS2N, IS3);
and a5d(na5d, PAD);
and a13d(na13d, V4MOD6, EXMD, DS1MN);
and a13e(na13e, na13d, DS2MN);
inv a13f(AY40N, na13e);

and a12d(na12d, Z1);
and a19c(na12d, Z1, PAV, EXMVN, G1V, G7V);
and a18d(na18e, na12d);
and a18e(na18e, V1, PAD);
inv a18f(PADN, na18e);
inv #(0) a11e(PAD, na11c);
and a11c(na11c, V1, PADN);
and a11d(na11c, Y5, na12e, G6VN);
and a12e(na12e, Y5);

and a22e(na22e, V4MOD6, A9PADN, DS1, DS2N, DS3N);
and a30d(na30e, na22e);
and a23e(na23e, V4MOD6, PAD, IS1, IS2N, IS3N);
and a30e(na30e, na23e);
inv a30f(AY10N, na30e);

and a6e(na6e, V4MOD6, A9PADN, DS1, DS2N, DS3);
and a5e(na14b, na6e);
and a4e(na14b, V4MOD6, na5f, IS1, IS2N, IS3);
and a5f(na5f, PAD);
and a14a(na14a, V4MOD6, EXMD, DS1M);
and a14b(na14b, na14a, DS2MN);
inv a14c(AY50N, na14b);

and a25d(na25d, V1);
and a25e(na32e, V1, na25d, EXMD);
and a25f(na25f, V1);
and a32d(na32e, V1, na25f, PAD);
and a32e(na32e, V1, A9);
inv a32f(A9PADN, na32e);

// 10-69
and a8d(na15d, V4MOD6, na15c, DS1N, DS2, DS3N);
and a15c(na15c, A9PADN);
and a9d(na9d, V4MOD6, PAD, IS1N, IS2, IS3N);
and a15d(na15d, na9d);
inv a15e(AY20N, na15d);

and a20d(na20d, V4MOD6, A9PADN, DS1N, DS2, DS3);
and a28d(na35d, na20d);
and a21d(na21d, V4MOD6, PAD, IS1N, IS2, IS3);
and a28e(na35d, na21d);
and a35c(na35c, V4MOD6, EXMD, DS1MN);
and a35d(na35d, na35c, DS2M);
inv a35e(AY60N, na35d);

and a26d(na26d, Y5, TA);
and a27d(na26e, Y5, na26d, EXMVN);
and a26e(na26e, V1, EXMDN);
inv #(0) a26f(EXMD, na26e);
inv a33e(EXMDN, na33c);
and a33c(na33c, V1, EXMD);
and a33d(na33c, Y5, na27e, EXMV);
and a27e(na27e, TA);

and a8e(na16e, V4MOD6, na16d, DS1, DS2, DS3N);
and a16d(na16d, A9PADN);
and a9e(na9e, V4MOD6, PAD, IS1, IS2, IS3N);
and a16e(na16e, na9e);
inv a16f(AY30N, na16e);

and a20e(na20e, V4MOD6, A9PADN, DS1, DS2, DS3);
and a28f(na34d, na20e);
and a21e(na34d, V4MOD6, na27f, IS1, IS2, IS3);
and a27f(na27f, PAD);
and a19d(na34d, V4MOD6, EXMDN, A9, PADN);
and a34c(na34c, V4MOD6, EXMD, DS1M);
and a34d(na34d, na34c, DS2M);
inv a34e(AY70N, na34d);

endmodule
`default_nettype wire
