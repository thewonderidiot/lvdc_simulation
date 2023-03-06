`timescale 1ns/1ps
`default_nettype none

module add_reg_x_decode(
    input wire V1,
    input wire V4MOD6,
    input wire AVN,
    input wire A1V,
    input wire A2V,
    input wire A3V,
    input wire A4V,
    input wire A5V,
    input wire A6V,
    input wire A7V,
    input wire A8V,
    input wire DS4,
    input wire EXMV,
    input wire EXMVN,
    input wire EXMDN,
    input wire G1V,
    input wire G5VN,
    input wire G6V,
    input wire G6VN,
    input wire G7V,
    input wire IS4,
    input wire PAV,
    input wire TR1V,
    input wire TR2V,
    input wire TR3V,
    input wire TR4V,
    input wire TR5V,
    input wire TR6V,
    input wire TR7V,
    input wire TR8V,
    input wire TR9V,
    input wire WN,
    input wire X5,
    input wire Y4,
    input wire Y5,
    input wire Z1,
    input wire Z2,
    output wire A1,
    output wire A2,
    output wire A3,
    output wire A4,
    output wire A5,
    output wire A6,
    output wire A7,
    output wire A8,
    output wire A9
);

wire A1N;
wire A1AN;
wire A2N;
wire A2AN;
wire A3N;
wire A3AN;
wire A4N;
wire A4AN;
wire A5N;
wire A5AN;
wire A6N;
wire A6AN;
wire A7N;
wire A7AN;
wire A8N;
wire A8AN;
wire A9N;
wire AX0N;
wire AX1N;
wire AX2N;
wire AX3N;
wire AX4N;
wire AX5N;
wire AX6N;
wire AX7N;
wire AX00N;
wire AX10N;
wire AX20N;
wire AX30N;
wire AX40N;
wire AX50N;
wire AX60N;
wire AX70N;
wire AY0N;
wire AY1N;
wire AY2N;
wire AY3N;
wire AY4N;
wire AY5N;
wire AY6N;
wire AY7N;
wire S4;
wire S4N;
wire TA;
wire TAN;

wor na1a;
wor na2a;
wor na3a;
wire na3d;
wire na4a;
wire na4b;
wor na5a;
wor na7a;
wire na8a;
wire na8b;
wire na8d;
wire na8e;
wire na9a;
wire na9b;
wire na9d;
wire na9e;
wor na10a;
wor na10e;
wire na11b;
wor na12a;
wire na13a;
wire na13b;
wire na13d;
wire na13e;
wor na14a;
wire na14d;
wire na14e;
wire na15a;
wire na15b;
wire na15d;
wire na15e;
wire na16a;
wire na16b;
wire na16d;
wire na16e;
wor na17a;
wor na19a;
wire na19d;
wire na19e;
wor na20a;
wire na20d;
wire na20e;
wire na21b;
wire na21d;
wire na21e;
wire na22a;
wire na22b;
wire na22d;
wire na22e;
wire na23a;
wire na23b;
wire na23d;
wire na23e;
wor na24a;
wire na24e;
wire na25a;
wor na25b;
wire na25e;
wor na26a;
wire na26d;
wor na26e;
wor na27a;
wire na27c;
wire na27d;
wire na27e;
wire na28a;
wire na28b;
wire na29a;
wire na29b;
wire na29d;
wire na29e;
wire na30a;
wire na30b;
wire na30d;
wire na30e;
wor na31c;
wire na32b;
wor na32c;
wire na33a;
wire na33b;
wor na34b;
wire na34d;
wire na34e;
wor na35a;
wire na35d;
wire na35e;

// 10-62
a a4a(.clk(Z1), .a1(TR8V), .y(na4a));
a a11a(.exp(na4a), .a1(TA), .y(na3a));
a a3a(.clk(V1), .a1(A1), .y(na3a));
i a3b(.a(na3a), .y(A1AN));
i a10c(.a(na10a), .y(A1));
a #(1) a10a(.clk(V4MOD6), .a1(A1AN), .y(na10a));
a a3c(.clk(Y4), .a1(TA), .y(na10a));
a a10b(.clk(Y4), .a1(EXMV), .y(na10a));
a a4b(.clk(V1), .a1(A1), .y(na4b));
i a4c(.a(na4b), .y(A1N));

a a13a(.clk(Z1), .a1(TR2V), .y(na13a));
a a21a(.exp(na13a), .a1(TA), .y(na20a));
a a20a(.clk(V1), .a1(A7), .y(na20a));
i a20b(.a(na20a), .y(A7AN));
i a19b(.a(na19a), .y(A7));
a #(1) a19a(.clk(V4MOD6), .a1(A7AN), .y(na19a));
a a20c(.clk(Y4), .a1(TA), .y(na19a));
a a21b(.clk(V1), .a1(A7), .y(na21b));
i a21c(.a(na21b), .y(A7N));

a a6a(.clk(Z1), .a1(TR7V), .a2(TA), .y(na5a));
a a5a(.clk(V1), .a1(A2), .y(na5a));
i a5b(.a(na5a), .y(A2AN));
i a12c(.a(na12a), .y(A2));
a #(1) a12a(.clk(V4MOD6), .a1(A2AN), .y(na12a));
a a5c(.clk(Y4), .a1(TA), .y(na12a));
a a12b(.clk(Y4), .a1(EXMV), .y(na12a));
a a11b(.clk(V1), .a1(A2), .y(na11b));
i a11c(.a(na11b), .y(A2N));

a a33a(.clk(Z1), .a1(TR1V), .y(na33a));
a a34a(.exp(na33a), .a1(TA), .y(na27a));
a a27a(.clk(V1), .a1(A8), .y(na27a));
i a27b(.a(na27a), .y(A8AN));
i a26b(.a(na26a), .y(A8));
a #(1) a26a(.clk(V4MOD6), .a1(A8AN), .y(na26a));
a a19c(.clk(Y4), .a1(TA), .y(na26a));
a a33b(.clk(V1), .a1(A8), .y(na33b));
i a33c(.a(na33b), .y(A8N));

a a31a(.clk(Z1), .a1(TR9V), .a2(TA), .a3(G6VN), .y(na25b));
a a25a(.a1(DS4), .y(na25a));
a a31b(.clk(Z1), .exp(na25a), .a1(EXMDN), .a2(TA), .a3(G6VN), .y(na25b));
a a32a(.clk(Z1), .a1(IS4), .a2(TA), .a3(G1V), .y(na25b));
a a25b(.clk(V1), .a1(S4), .y(na25b));
i a25c(.a(na25b), .y(S4N));
i a24c(.a(na24a), .y(S4));
a #(1) a24a(.clk(V1), .a1(S4N), .y(na24a));
a a24b(.clk(Y4), .a1(TA), .y(na24a));

a a29a(.clk(V4MOD6), .a1(A1N), .a2(A2N), .y(na29a));
a a29b(.exp(na29a), .a1(A3N), .y(na29b));
i a29c(.a(na29a), .y(AX0N));

a a30a(.clk(V4MOD6), .a1(A1V), .a2(A2N), .y(na30a));
a a30b(.exp(na30a), .a1(A3N), .y(na30b));
i a30c(.a(na30b), .y(AX1N));

a a22a(.clk(V4MOD6), .a1(A1N), .a2(A2V), .y(na22a));
a a22b(.exp(na22a), .a1(A3N), .y(na22b));
i a22c(.a(na22b), .y(AX2N));

a a23a(.clk(V4MOD6), .a1(A1V), .a2(A2V), .y(na23a));
a a23b(.exp(na23a), .a1(A3N), .y(na23b));
i a23c(.a(na23b), .y(AX3N));

a a15a(.clk(V4MOD6), .a1(A1N), .a2(A2N), .y(na15a));
a a15b(.exp(na15a), .a1(A3V), .y(na15b));
i a15c(.a(na15b), .y(AX4N));

a a16a(.clk(V4MOD6), .a1(A1V), .a2(A2N), .y(na16a));
a a16b(.exp(na16a), .a1(A3V), .y(na16b));
i a16c(.a(na16b), .y(AX5N));

// 10-63
a a6b(.clk(Z1), .a1(TR6V), .a2(TA), .y(na7a));
a a7a(.clk(V1), .a1(A3), .y(na7a));
i a7b(.a(na7a), .y(A3AN));
i a14c(.a(na14a), .y(A3));
a #(1) a14a(.clk(V4MOD6), .a1(A3AN), .y(na14a));
a a7c(.clk(Y4), .a1(TA), .y(na14a));
a a14b(.clk(Y4), .a1(EXMV), .y(na14a));
a a13b(.clk(V1), .a1(A3), .y(na13b));
i a13c(.a(na13b), .y(A3N));

a a27c(.clk(Z1), .a1(TR9V), .y(na27c));
a a26c(.exp(na27c), .a1(TA), .y(na34b));
a a34b(.clk(V1), .a1(A9), .y(na34b));
i a34c(.a(na34b), .y(A9N));
i a35c(.a(na35a), .y(A9));
a #(1) a35a(.clk(V4MOD6), .a1(A9N), .y(na35a));
a a35b(.clk(Y4), .a1(TA), .y(na35a));

a a8a(.clk(V4MOD6), .a1(A1N), .a2(A2V), .y(na8a));
a a8b(.exp(na8a), .a1(A3V), .y(na8b));
i a8c(.a(na8b), .y(AX6N));

a a9a(.clk(V4MOD6), .a1(A1V), .a2(A2V), .y(na9a));
a a9b(.exp(na9a), .a1(A3V), .y(na9b));
i a9c(.a(na9b), .y(AX7N));

// 10-64
a a3d(.clk(Z2), .a1(TR5V), .y(na3d));
a a10d(.exp(na3d), .a1(TA), .y(na2a));
a a2a(.clk(V1), .a1(A4), .y(na2a));
i a2b(.a(na2a), .y(A4AN));
i a1c(.a(na1a), .y(A4));
a #(1) a1a(.clk(V4MOD6), .a1(A4AN), .y(na1a));
a a2c(.clk(Y5), .a1(TA), .y(na1a));
a a1b(.clk(Y5), .a1(EXMV), .y(na1a));

a a11d(.clk(Z2), .a1(TR4V), .a2(TA), .y(na10e));
a a10e(.clk(V1), .a1(A5), .y(na10e));
i a10f(.a(na10e), .y(A5AN));
i a17c(.a(na17a), .y(A5));
a #(1) a17a(.clk(V4MOD6), .a1(A5AN), .y(na17a));
a a17b(.clk(Y5), .a1(TA), .y(na17a));
a a24d(.clk(Y5), .a1(EXMV), .y(na17a));
a a24e(.clk(V1), .a1(A5), .y(na24e));
i a24f(.a(na24e), .y(A5N));

a a26d(.clk(X5), .a1(PAV), .y(na26d));
a a33d(.exp(na26d), .a1(G5VN), .a2(G7V), .a3(AVN), .y(na26e));
a a19d(.clk(X5), .a1(EXMVN), .a2(PAV), .y(na19d));
a a33e(.exp(na19d), .a1(G1V), .a2(G6V), .a3(AVN), .y(na26e));
a a26e(.clk(WN), .a1(TA), .y(na26e));
i a26f(.a(na26e), .y(TAN));
i a19f(.a(na19e), .y(TA));
a #(1) a19e(.clk(V1), .a1(TAN), .y(na19e));

a a34d(.clk(V4MOD6), .a1(A7N), .a2(A8N), .y(na34d));
a a34e(.exp(na34d), .a1(S4N), .y(na34e));
i a34f(.a(na34e), .y(AX00N));

a a28a(.clk(V4MOD6), .a1(A7V), .a2(A8V), .y(na28a));
a a28b(.exp(na28a), .a1(S4N), .y(na28b));
i a28c(.a(na28b), .y(AX30N));

a a13d(.clk(V4MOD6), .a1(A7N), .a2(A8V), .y(na13d));
a a13e(.exp(na13d), .a1(S4), .y(na13e));
i a13f(.a(na13e), .y(AX60N));

a a29d(.clk(V4MOD6), .a1(A4N), .a2(A5N), .y(na29d));
a a29e(.exp(na29d), .a1(A6N), .y(na29e));
i a29f(.a(na29e), .y(AY0N));

a a23d(.clk(V4MOD6), .a1(A4V), .a2(A5V), .y(na23d));
a a23e(.exp(na23d), .a1(A6N), .y(na23e));
i a23f(.a(na23e), .y(AY3N));

a a8d(.clk(V4MOD6), .a1(A4N), .a2(A5V), .y(na8d));
a a8e(.clk(V4MOD6), .a1(A6V), .y(na8e));
i a8f(.a(na8e), .y(AY6N));

a a35d(.clk(V4MOD6), .a1(A7V), .a2(A8N), .y(na35d));
a a35e(.exp(na35d), .a1(S4N), .y(na35e));
i a35f(.a(na35e), .y(AX10N));

a a20d(.clk(V4MOD6), .a1(A7N), .a2(A8N), .y(na20d));
a a20e(.exp(na20d), .a1(S4), .y(na20e));
i a20f(.a(na20e), .y(AX40N));

a a14d(.clk(V4MOD6), .a1(A7V), .a2(A8V), .y(na14d));
a a14e(.exp(na14d), .a1(S4), .y(na14e));
i a14f(.a(na14e), .y(AX70N));

// 10-65
a a32b(.clk(Z2), .a1(TR3V), .y(na32b));
a a25d(.exp(na32b), .a1(TA), .y(na32c));
a a32c(.clk(V1), .a1(A6), .y(na32c));
i a32d(.a(na32c), .y(A6AN));
i a31e(.a(na31c), .y(A6));
a a31c(.clk(V4MOD6), .a1(A6AN), .y(na31c));
a a31d(.clk(Y5), .a1(TA), .y(na31c));
a a25e(.clk(V1), .a1(A6), .y(na25e));
i a25f(.a(na25e), .y(A6N));

a a30d(.clk(V4MOD6), .a1(A4V), .a2(A5N), .y(na30d));
a a30e(.exp(na30e), .a1(A6N), .y(na30e));
i a30f(.a(na30e), .y(AY1N));

a a15d(.clk(V4MOD6), .a1(A4N), .a2(A5N), .y(na15d));
a a15e(.exp(na15d), .a1(A6V), .y(na15e));
i a15f(.a(na15e), .y(AY4N));

a a9d(.clk(V4MOD6), .a1(A4V), .a2(A5V), .y(na9d));
a a9e(.exp(na9d), .a1(A6V), .y(na9e));
i a9f(.a(na9e), .y(AY7N));

a a27d(.clk(V4MOD6), .a1(A7N), .a2(A8V), .y(na27d));
a a27e(.exp(na27d), .a1(S4N), .y(na27e));
i a27f(.a(na27e), .y(AX20N));

a a21d(.clk(V4MOD6), .a1(A7V), .a2(A8N), .y(na21d));
a a21e(.exp(na21d), .a1(S4), .y(na21e));
i a21f(.a(na21e), .y(AX50N));

a a22d(.clk(V4MOD6), .a1(A4N), .a2(A5V), .y(na22d));
a a22e(.exp(na22d), .a1(A6N), .y(na22e));
i a22f(.a(na22e), .y(AY2N));

a a16d(.clk(V4MOD6), .a1(A4V), .a2(A5N), .y(na16d));
a a16e(.exp(na16d), .a1(A6V), .y(na16e));
i a16f(.a(na16e), .y(AY5N));

endmodule
`default_nettype wire
