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
wire AY00N;
wire AY10N;
wire AY20N;
wire AY30N;
wire AY40N;
wire AY50N;
wire AY60N;
wire AY70N;
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
a a24a(.clk(Z1), .a1(PBV), .a2(G5V), .a3(HOPV), .y(na24a));
a a17a(.exp(na24a), .a1(G6VN), .y(na17b));
a #(1) a17b(.clk(V1), .a1(IS1N), .y(na17b));
i a17c(.a(na17b), .y(IS1));
i a18c(.a(na18a), .y(IS1N));
a a18a(.clk(V1), .a1(IS1), .y(na18a));
a a18b(.exp(na11a), .a1(PBV), .y(na18a));
a a11a(.clk(Z1), .a1(ISS), .a2(G6V), .a3(G7VN), .y(na11a));

a a8a(.clk(Z1), .a1(CDSV), .a2(G5V), .y(na8a));
a a1a(.exp(na8a), .a1(G4VN), .y(na8b));
a #(1) a8b(.clk(V1), .a1(DS3N), .y(na8b));
i a8c(.a(na8b), .y(DS3));
i a1c(.a(na1b), .y(DS3N));
a a1b(.clk(V1), .a1(DS3), .y(na1b));
a a2a(.clk(Z1), .a1(DSS), .a2(G5VN), .a3(G6V), .y(na1b));

a #(1) a29a(.clk(V1), .a1(DSSN), .y(na29a));
i a29b(.a(na29a), .y(DSS));
i a30c(.a(na30a), .y(DSSN));
a a30a(.clk(WN), .a1(DSS), .y(na30a));
a a30b(.clk(X5), .a1(CDSV), .a2(PCV), .y(na30b));
a a29c(.exp(na30b), .a1(TRSV), .y(na30a));

a #(1) a31a(.clk(V1), .a1(ISSN), .y(na31a));
i a31b(.a(na31a), .y(ISS));
i a32c(.a(na32a), .y(ISSN));
a a32a(.clk(WN), .a1(ISS), .y(na32a));
a a32b(.clk(X5), .a1(HOPV), .y(na32b));
a a31c(.exp(na32b), .a1(TRSV), .y(na32a));

a a11b(.clk(Z1), .a1(PBV), .a2(G6V), .a3(HOPV), .y(na11b));
a a4a(.exp(na11b), .a1(G7VN), .y(na4b));
a #(1) a4b(.clk(V1), .a1(IS2N), .y(na4b));
i a4c(.a(na4b), .y(IS2));
i a5c(.a(na5a), .y(IS2N));
a a5a(.clk(V1), .a1(IS2), .y(na5a));
a a5b(.exp(na12a), .a1(G7V), .y(na5a));
a a12a(.clk(Z1), .a1(PBV), .a2(G1V), .a3(ISS), .y(na12a));

a a2b(.clk(Z1), .a1(CDSV), .a2(G5VN), .a3(G6V), .y(na3a));
a #(1) a3a(.clk(V1), .a1(DS4N), .y(na3a));
i a3b(.a(na3a), .y(DS4));
i a10c(.a(na10a), .y(DS4N));
a a10a(.clk(V1), .a1(DS4), .y(na10a));
a a10b(.clk(Z1), .exp(na3c), .a1(DSS), .y(na10a));
a a3c(.a1(G6VN), .a2(G7V), .y(na3c));

a a23a(.clk(Z1), .a1(CDSV), .a2(G3V), .y(na23a));
a a22a(.exp(na23a), .a1(G2VN), .y(na23b));
a #(1) a23b(.clk(V1), .a1(DS1N), .y(na23b));
i a23c(.a(na23b), .y(DS1));
i a22c(.a(na22b), .y(DS1N));
a a22b(.clk(V1), .a1(DS1), .y(na22b));
a a15a(.clk(Z1), .a1(DSS), .a2(G3VN), .a3(G4V), .y(na22b));

a a15b(.clk(Z1), .a1(CDSV), .a2(G3VN), .a3(G4V), .y(na16a));
a #(1) a16a(.clk(V1), .a1(DS2N), .y(na16a));
i a16b(.a(na16a), .y(DS2));
i a9c(.a(na9a), .y(DS2N));
a a9a(.clk(V1), .a1(DS2), .y(na9a));
a a9b(.clk(Z1), .exp(na16c), .a1(DSS), .y(na9a));
a a16c(.a1(G4VN), .a2(G5V), .y(na16c));

// 10-67
a a12b(.clk(Z1), .a1(PBV), .a2(G1V), .a3(HOPV), .y(na12b));
a a6a(.exp(na12b), .a1(G7V), .y(na6b));
a #(1) a6b(.clk(V1), .a1(IS3N), .y(na6b));
i a6c(.a(na6b), .y(IS3));
i a13c(.a(na13a), .y(IS3N));
a a13a(.clk(V1), .a1(IS3), .y(na13a));
a a13b(.exp(na19a), .a1(G2V), .y(na13a));
a a19a(.clk(Z1), .a1(PBV), .a2(G1VN), .a3(ISS), .y(na19a));

a a19b(.clk(Z1), .a1(PBV), .a2(G1VN), .a3(G2V), .y(na19b));
a a26a(.exp(na19b), .a1(HOPV), .y(na26b));
a #(1) a26b(.clk(V1), .a1(IS4N), .y(na26b));
i a26c(.a(na26b), .y(IS4));
i a25c(.a(na25a), .y(IS4N));
a a25a(.clk(V1), .a1(IS4), .y(na25a));
a a25b(.exp(na24b), .a1(ISS), .y(na25a));
a a24b(.clk(Z1), .a1(PBV), .a2(G2VN), .a3(G3V), .y(na24b));

a a20a(.clk(Y5), .a1(BRA8), .y(na20a));
a a33a(.exp(na20a), .a1(TBRV), .a2(MAOV), .a3(EXMV), .y(na20b));
a a27a(.clk(Y5), .a1(BRB8), .y(na27a));
a a34a(.exp(na27a), .a1(TBRV), .a2(MBOV), .a3(EXMV), .y(na20b));
a a20b(.clk(V1), .a1(DS1M), .y(na20b));
i a20c(.a(na20b), .y(DS1MN));
i a27c(.a(na27b), .y(DS1M));
a #(1) a27b(.clk(V1), .a1(DS1MN), .y(na27b));
a a35a(.clk(Y5), .a1(TA), .a2(EXMVN), .y(na27b));

a a21a(.clk(Y5), .a1(BRA7), .y(na21a));
a a33b(.exp(na21a), .a1(TBRV), .a2(MAOV), .a3(EXMV), .y(na21b));
a a28a(.clk(Y5), .a1(BRB7), .y(na28a));
a a34b(.exp(na28a), .a1(TBRV), .a2(MBOV), .a3(EXMV), .y(na21b));
a a21b(.clk(V1), .a1(DS2M), .y(na21b));
i a21c(.a(na21b), .y(DS2MN));
i a28c(.a(na28b), .y(DS2M));
a #(1) a28b(.clk(V1), .a1(DS2MN), .y(na28b));
a a35b(.clk(Y5), .a1(TA), .a2(EXMVN), .y(na28b));

// 10-68
a a22d(.clk(V4MOD6), .a1(A9PADN), .a2(DS1N), .a3(DS2N), .a4(DS3N), .y(na22d));
a a29d(.exp(na22d), .y(na29e));
a a23d(.clk(V4MOD6), .a1(PAD), .a2(IS1N), .a3(IS2N), .a4(IS3N), .y(na23d));
a a29e(.exp(na23d), .y(na29e));
i a29f(.a(na29e), .y(AY00N));

a a6d(.clk(V4MOD6), .a1(A9PADN), .a2(DS1N), .a3(DS2N), .a4(DS3), .y(na6d));
a a12c(.exp(na6d), .y(na13e));
a a4d(.clk(V4MOD6), .exp(na5d), .a1(IS1N), .a2(IS2N), .a3(IS3), .y(na13e));
a a5d(.a1(PAD), .y(na5d));
a a13d(.clk(V4MOD6), .a1(EXMD), .a2(DS1MN), .y(na13d));
a a13e(.exp(na13d), .a1(DS2MN), .y(na13e));
i a13f(.a(na13e), .y(AY40N));

a a12d(.clk(Z1), .y(na12d));
a a19c(.clk(Z1), .a1(PAV), .a2(EXMVN), .a3(G1V), .a4(G7V), .y(na12d));
a a18d(.exp(na12d), .y(na18e));
a a18e(.clk(V1), .a1(PAD), .y(na18e));
i a18f(.a(na18e), .y(PADN));
i a11e(.a(na11c), .y(PAD));
a #(1) a11c(.clk(V1), .a1(PADN), .y(na11c));
a a11d(.clk(Y5), .exp(na12e), .a1(G6VN), .y(na11c));
a a12e(.clk(Y5), .y(na12e));

a a22e(.clk(V4MOD6), .a1(A9PADN), .a2(DS1), .a3(DS2N), .a4(DS3N), .y(na22e));
a a30d(.exp(na22e), .y(na30e));
a a23e(.clk(V4MOD6), .a1(PAD), .a2(IS1), .a3(IS2N), .a4(IS3N), .y(na23e));
a a30e(.exp(na23e), .y(na30e));
i a30f(.a(na30e), .y(AY10N));

a a6e(.clk(V4MOD6), .a1(A9PADN), .a2(DS1), .a3(DS2N), .a4(DS3), .y(na6e));
a a5e(.exp(na6e), .y(na14b));
a a4e(.clk(V4MOD6), .exp(na5f), .a1(IS1), .a2(IS2N), .a3(IS3), .y(na14b));
a a5f(.a1(PAD), .y(na5f));
a a14a(.clk(V4MOD6), .a1(EXMD), .a2(DS1M), .y(na14a));
a a14b(.exp(na14a), .a1(DS2MN), .y(na14b));
i a14c(.a(na14b), .y(AY50N));

a a25d(.clk(V1), .y(na25d));
a a25e(.clk(V1), .exp(na25d), .a1(EXMD), .y(na32e));
a a25f(.clk(V1), .y(na25f));
a a32d(.clk(V1), .exp(na25f), .a1(PAD), .y(na32e));
a a32e(.clk(V1), .a1(A9), .y(na32e));
i a32f(.a(na32e), .y(A9PADN));

// 10-69
a a8d(.clk(V4MOD6), .exp(na15c), .a1(DS1N), .a2(DS2), .a3(DS3N), .y(na15d));
a a15c(.a1(A9PADN), .y(na15c));
a a9d(.clk(V4MOD6), .a1(PAD), .a2(IS1N), .a3(IS2), .a4(IS3N), .y(na9d));
a a15d(.exp(na9d), .y(na15d));
i a15e(.a(na15d), .y(AY20N));

a a20d(.clk(V4MOD6), .a1(A9PADN), .a2(DS1N), .a3(DS2), .a4(DS3), .y(na20d));
a a28d(.exp(na20d), .y(na35d));
a a21d(.clk(V4MOD6), .a1(PAD), .a2(IS1N), .a3(IS2), .a4(IS3), .y(na21d));
a a28e(.exp(na21d), .y(na35d));
a a35c(.clk(V4MOD6), .a1(EXMD), .a2(DS1MN), .y(na35c));
a a35d(.exp(na35c), .a1(DS2M), .y(na35d));
i a35e(.a(na35d), .y(AY60N));

a a26d(.clk(Y5), .a1(TA), .y(na26d));
a a27d(.clk(Y5), .exp(na26d), .a1(EXMVN), .y(na26e));
a #(1) a26e(.clk(V1), .a1(EXMDN), .y(na26e));
i a26f(.a(na26e), .y(EXMD));
i a33e(.a(na33c), .y(EXMDN));
a a33c(.clk(V1), .a1(EXMD), .y(na33c));
a a33d(.clk(Y5), .exp(na27e), .a1(EXMV), .y(na33c));
a a27e(.a1(TA), .y(na27e));

a a8e(.clk(V4MOD6), .exp(na16d), .a1(DS1), .a2(DS2), .a3(DS3N), .y(na16e));
a a16d(.a1(A9PADN), .y(na16d));
a a9e(.clk(V4MOD6), .a1(PAD), .a2(IS1), .a3(IS2), .a4(IS3N), .y(na9e));
a a16e(.exp(na9e), .y(na16e));
i a16f(.a(na16e), .y(AY30N));

a a20e(.clk(V4MOD6), .a1(A9PADN), .a2(DS1), .a3(DS2), .a4(DS3), .y(na20e));
a a28f(.exp(na20e), .y(na34d));
a a21e(.clk(V4MOD6), .exp(na27f), .a1(IS1), .a2(IS2), .a3(IS3), .y(na34d));
a a27f(.a1(PAD), .y(na27f));
a a19d(.clk(V4MOD6), .a1(EXMDN), .a2(A9), .a3(PADN), .y(na34d));
a a34c(.clk(V4MOD6), .a1(EXMD), .a2(DS1M), .y(na34c));
a a34d(.exp(na34c), .a1(DS2M), .y(na34d));
i a34e(.a(na34d), .y(AY70N));

endmodule
`default_nettype wire
