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

wire na1b;
wire na1b_a1b;
wire na1b_a2a;
assign na1b = na1b_a1b | na1b_a2a;
wire na3a;
wire na3a_a2b;
wire na3a_a3a;
assign na3a = na3a_a2b | na3a_a3a;
wire na3c;
wire na4b;
wire na4b_a4a;
wire na4b_a4b;
assign na4b = na4b_a4a | na4b_a4b;
wire na5a;
wire na5a_a5a;
wire na5a_a5b;
assign na5a = na5a_a5a | na5a_a5b;
wire na5d;
wire na5f;
wire na6b;
wire na6b_a6a;
wire na6b_a6b;
assign na6b = na6b_a6a | na6b_a6b;
wire na6d;
wire na6e;
wire na8a;
wire na8b;
wire na8b_a1a;
wire na8b_a8b;
assign na8b = na8b_a1a | na8b_a8b;
wire na9a;
wire na9a_a9a;
wire na9a_a9b;
assign na9a = na9a_a9a | na9a_a9b;
wire na9d;
wire na9e;
wire na10a;
wire na10a_a10a;
wire na10a_a10b;
assign na10a = na10a_a10a | na10a_a10b;
wire na11a;
wire na11b;
wire na11c;
wire na11c_a11c;
wire na11c_a11d;
assign na11c = na11c_a11c | na11c_a11d;
wire na12a;
wire na12b;
wire na12d;
wire na12d_a12d;
wire na12d_a19c;
assign na12d = na12d_a12d & na12d_a19c;
wire na12e;
wire na13a;
wire na13a_a13a;
wire na13a_a13b;
assign na13a = na13a_a13a | na13a_a13b;
wire na13d;
wire na13e;
wire na13e_a12c;
wire na13e_a4d;
wire na13e_a13e;
assign na13e = na13e_a12c | na13e_a4d | na13e_a13e;
wire na14a;
wire na14b;
wire na14b_a5e;
wire na14b_a4e;
wire na14b_a14b;
assign na14b = na14b_a5e | na14b_a4e | na14b_a14b;
wire na15c;
wire na15d;
wire na15d_a8d;
wire na15d_a15d;
assign na15d = na15d_a8d | na15d_a15d;
wire na16a;
wire na16a_a15b;
wire na16a_a16a;
assign na16a = na16a_a15b | na16a_a16a;
wire na16c;
wire na16d;
wire na16e;
wire na16e_a8e;
wire na16e_a16e;
assign na16e = na16e_a8e | na16e_a16e;
wire na17b;
wire na17b_a17a;
wire na17b_a17b;
assign na17b = na17b_a17a | na17b_a17b;
wire na18a;
wire na18a_a18a;
wire na18a_a18b;
assign na18a = na18a_a18a | na18a_a18b;
wire na18e;
wire na18e_a18d;
wire na18e_a18e;
assign na18e = na18e_a18d | na18e_a18e;
wire na19a;
wire na19b;
wire na20a;
wire na20b;
wire na20b_a33a;
wire na20b_a34a;
wire na20b_a20b;
assign na20b = na20b_a33a | na20b_a34a | na20b_a20b;
wire na20d;
wire na20e;
wire na21a;
wire na21b;
wire na21b_a33b;
wire na21b_a34b;
wire na21b_a21b;
assign na21b = na21b_a33b | na21b_a34b | na21b_a21b;
wire na21d;
wire na22b;
wire na22b_a22b;
wire na22b_a15a;
assign na22b = na22b_a22b | na22b_a15a;
wire na22d;
wire na22e;
wire na23a;
wire na23b;
wire na23b_a22a;
wire na23b_a23b;
assign na23b = na23b_a22a | na23b_a23b;
wire na23d;
wire na23e;
wire na24a;
wire na24b;
wire na25a;
wire na25a_a25a;
wire na25a_a25b;
assign na25a = na25a_a25a | na25a_a25b;
wire na25d;
wire na25f;
wire na26b;
wire na26b_a26a;
wire na26b_a26b;
assign na26b = na26b_a26a | na26b_a26b;
wire na26d;
wire na26e;
wire na26e_a27d;
wire na26e_a26e;
assign na26e = na26e_a27d | na26e_a26e;
wire na27a;
wire na27b;
wire na27b_a27b;
wire na27b_a35a;
assign na27b = na27b_a27b | na27b_a35a;
wire na27e;
wire na27f;
wire na28a;
wire na28b;
wire na28b_a28b;
wire na28b_a35b;
assign na28b = na28b_a28b | na28b_a35b;
wire na29a;
wire na29e;
wire na29e_a29d;
wire na29e_a29e;
assign na29e = na29e_a29d | na29e_a29e;
wire na30a;
wire na30a_a30a;
wire na30a_a29c;
assign na30a = na30a_a30a | na30a_a29c;
wire na30b;
wire na30e;
wire na30e_a30d;
wire na30e_a30e;
assign na30e = na30e_a30d | na30e_a30e;
wire na31a;
wire na32a;
wire na32a_a32a;
wire na32a_a31c;
assign na32a = na32a_a32a | na32a_a31c;
wire na32b;
wire na32e;
wire na32e_a25e;
wire na32e_a32d;
wire na32e_a32e;
assign na32e = na32e_a25e | na32e_a32d | na32e_a32e;
wire na33c;
wire na33c_a33c;
wire na33c_a33d;
assign na33c = na33c_a33c | na33c_a33d;
wire na34c;
wire na34d;
wire na34d_a28f;
wire na34d_a21e;
wire na34d_a19d;
wire na34d_a34d;
assign na34d = na34d_a28f | na34d_a21e | na34d_a19d | na34d_a34d;
wire na35c;
wire na35d;
wire na35d_a28d;
wire na35d_a28e;
wire na35d_a35d;
assign na35d = na35d_a28d | na35d_a28e | na35d_a35d;

// 10-66
and a24a(na24a, Z1, PBV, G5V, HOPV);
and a17a(na17b_a17a, na24a, G6VN);
and a17b(na17b_a17b, V1, IS1N);
inv #(0) a17c(IS1, na17b);
inv a18c(IS1N, na18a);
and a18a(na18a_a18a, V1, IS1);
and a18b(na18a_a18b, na11a, PBV);
and a11a(na11a, Z1, ISS, G6V, G7VN);

and a8a(na8a, Z1, CDSV, G5V);
and a1a(na8b_a1a, na8a, G4VN);
and a8b(na8b_a8b, V1, DS3N);
inv #(0) a8c(DS3, na8b);
inv a1c(DS3N, na1b);
and a1b(na1b_a1b, V1, DS3);
and a2a(na1b_a2a, Z1, DSS, G5VN, G6V);

and a29a(na29a, V1, DSSN);
inv #(0) a29b(DSS, na29a);
inv a30c(DSSN, na30a);
and a30a(na30a_a30a, WN, DSS);
and a30b(na30b, X5, CDSV, PCV);
and a29c(na30a_a29c, na30b, TRSV);

and a31a(na31a, V1, ISSN);
inv #(0) a31b(ISS, na31a);
inv a32c(ISSN, na32a);
and a32a(na32a_a32a, WN, ISS);
and a32b(na32b, X5, HOPV);
and a31c(na32a_a31c, na32b, TRSV);

and a11b(na11b, Z1, PBV, G6V, HOPV);
and a4a(na4b_a4a, na11b, G7VN);
and a4b(na4b_a4b, V1, IS2N);
inv #(0) a4c(IS2, na4b);
inv a5c(IS2N, na5a);
and a5a(na5a_a5a, V1, IS2);
and a5b(na5a_a5b, na12a, G7V);
and a12a(na12a, Z1, PBV, G1V, ISS);

and a2b(na3a_a2b, Z1, CDSV, G5VN, G6V);
and a3a(na3a_a3a, V1, DS4N);
inv #(0) a3b(DS4, na3a);
inv a10c(DS4N, na10a);
and a10a(na10a_a10a, V1, DS4);
and a10b(na10a_a10b, Z1, na3c, DSS);
and a3c(na3c, G6VN, G7V);

and a23a(na23a, Z1, CDSV, G3V);
and a22a(na23b_a22a, na23a, G2VN);
and a23b(na23b_a23b, V1, DS1N);
inv #(0) a23c(DS1, na23b);
inv a22c(DS1N, na22b);
and a22b(na22b_a22b, V1, DS1);
and a15a(na22b_a15a, Z1, DSS, G3VN, G4V);

and a15b(na16a_a15b, Z1, CDSV, G3VN, G4V);
and a16a(na16a_a16a, V1, DS2N);
inv #(0) a16b(DS2, na16a);
inv a9c(DS2N, na9a);
and a9a(na9a_a9a, V1, DS2);
and a9b(na9a_a9b, Z1, na16c, DSS);
and a16c(na16c, G4VN, G5V);

// 10-67
and a12b(na12b, Z1, PBV, G1V, HOPV);
and a6a(na6b_a6a, na12b, G7V);
and a6b(na6b_a6b, V1, IS3N);
inv #(0) a6c(IS3, na6b);
inv a13c(IS3N, na13a);
and a13a(na13a_a13a, V1, IS3);
and a13b(na13a_a13b, na19a, G2V);
and a19a(na19a, Z1, PBV, G1VN, ISS);

and a19b(na19b, Z1, PBV, G1VN, G2V);
and a26a(na26b_a26a, na19b, HOPV);
and a26b(na26b_a26b, V1, IS4N);
inv #(0) a26c(IS4, na26b);
inv a25c(IS4N, na25a);
and a25a(na25a_a25a, V1, IS4);
and a25b(na25a_a25b, na24b, ISS);
and a24b(na24b, Z1, PBV, G2VN, G3V);

and a20a(na20a, Y5, BRA8);
and a33a(na20b_a33a, na20a, TBRV, MAOV, EXMV);
and a27a(na27a, Y5, BRB8);
and a34a(na20b_a34a, na27a, TBRV, MBOV, EXMV);
and a20b(na20b_a20b, V1, DS1M);
inv a20c(DS1MN, na20b);
inv #(0) a27c(DS1M, na27b);
and a27b(na27b_a27b, V1, DS1MN);
and a35a(na27b_a35a, Y5, TA, EXMVN);

and a21a(na21a, Y5, BRA7);
and a33b(na21b_a33b, na21a, TBRV, MAOV, EXMV);
and a28a(na28a, Y5, BRB7);
and a34b(na21b_a34b, na28a, TBRV, MBOV, EXMV);
and a21b(na21b_a21b, V1, DS2M);
inv a21c(DS2MN, na21b);
inv #(0) a28c(DS2M, na28b);
and a28b(na28b_a28b, V1, DS2MN);
and a35b(na28b_a35b, Y5, TA, EXMVN);

// 10-68
and a22d(na22d, V4MOD6, A9PADN, DS1N, DS2N, DS3N);
and a29d(na29e_a29d, na22d);
and a23d(na23d, V4MOD6, PAD, IS1N, IS2N, IS3N);
and a29e(na29e_a29e, na23d);
inv a29f(AY00N, na29e);

and a6d(na6d, V4MOD6, A9PADN, DS1N, DS2N, DS3);
and a12c(na13e_a12c, na6d);
and a4d(na13e_a4d, V4MOD6, na5d, IS1N, IS2N, IS3);
and a5d(na5d, PAD);
and a13d(na13d, V4MOD6, EXMD, DS1MN);
and a13e(na13e_a13e, na13d, DS2MN);
inv a13f(AY40N, na13e);

and a12d(na12d_a12d, Z1);
and a19c(na12d_a19c, Z1, PAV, EXMVN, G1V, G7V);
and a18d(na18e_a18d, na12d);
and a18e(na18e_a18e, V1, PAD);
inv a18f(PADN, na18e);
inv #(0) a11e(PAD, na11c);
and a11c(na11c_a11c, V1, PADN);
and a11d(na11c_a11d, Y5, na12e, G6VN);
and a12e(na12e, Y5);

and a22e(na22e, V4MOD6, A9PADN, DS1, DS2N, DS3N);
and a30d(na30e_a30d, na22e);
and a23e(na23e, V4MOD6, PAD, IS1, IS2N, IS3N);
and a30e(na30e_a30e, na23e);
inv a30f(AY10N, na30e);

and a6e(na6e, V4MOD6, A9PADN, DS1, DS2N, DS3);
and a5e(na14b_a5e, na6e);
and a4e(na14b_a4e, V4MOD6, na5f, IS1, IS2N, IS3);
and a5f(na5f, PAD);
and a14a(na14a, V4MOD6, EXMD, DS1M);
and a14b(na14b_a14b, na14a, DS2MN);
inv a14c(AY50N, na14b);

and a25d(na25d, V1);
and a25e(na32e_a25e, V1, na25d, EXMD);
and a25f(na25f, V1);
and a32d(na32e_a32d, V1, na25f, PAD);
and a32e(na32e_a32e, V1, A9);
inv a32f(A9PADN, na32e);

// 10-69
and a8d(na15d_a8d, V4MOD6, na15c, DS1N, DS2, DS3N);
and a15c(na15c, A9PADN);
and a9d(na9d, V4MOD6, PAD, IS1N, IS2, IS3N);
and a15d(na15d_a15d, na9d);
inv a15e(AY20N, na15d);

and a20d(na20d, V4MOD6, A9PADN, DS1N, DS2, DS3);
and a28d(na35d_a28d, na20d);
and a21d(na21d, V4MOD6, PAD, IS1N, IS2, IS3);
and a28e(na35d_a28e, na21d);
and a35c(na35c, V4MOD6, EXMD, DS1MN);
and a35d(na35d_a35d, na35c, DS2M);
inv a35e(AY60N, na35d);

and a26d(na26d, Y5, TA);
and a27d(na26e_a27d, Y5, na26d, EXMVN);
and a26e(na26e_a26e, V1, EXMDN);
inv #(0) a26f(EXMD, na26e);
inv a33e(EXMDN, na33c);
and a33c(na33c_a33c, V1, EXMD);
and a33d(na33c_a33d, Y5, na27e, EXMV);
and a27e(na27e, TA);

and a8e(na16e_a8e, V4MOD6, na16d, DS1, DS2, DS3N);
and a16d(na16d, A9PADN);
and a9e(na9e, V4MOD6, PAD, IS1, IS2, IS3N);
and a16e(na16e_a16e, na9e);
inv a16f(AY30N, na16e);

and a20e(na20e, V4MOD6, A9PADN, DS1, DS2, DS3);
and a28f(na34d_a28f, na20e);
and a21e(na34d_a21e, V4MOD6, na27f, IS1, IS2, IS3);
and a27f(na27f, PAD);
and a19d(na34d_a19d, V4MOD6, EXMDN, A9, PADN);
and a34c(na34c, V4MOD6, EXMD, DS1M);
and a34d(na34d_a34d, na34c, DS2M);
inv a34e(AY70N, na34d);

endmodule
`default_nettype wire
