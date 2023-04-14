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
    output wire A9,
    output wire AX0N,
    output wire AX1N,
    output wire AX2N,
    output wire AX3N,
    output wire AX4N,
    output wire AX5N,
    output wire AX6N,
    output wire AX7N,
    output wire AX00N,
    output wire AX10N,
    output wire AX20N,
    output wire AX30N,
    output wire AX40N,
    output wire AX50N,
    output wire AX60N,
    output wire AX70N,
    output wire AY0N,
    output wire AY1N,
    output wire AY2N,
    output wire AY3N,
    output wire AY4N,
    output wire AY5N,
    output wire AY6N,
    output wire AY7N,
    output wire TA
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
wire S4;
wire S4N;
wire TAN;

wire na1a;
wire na1a_a1a;
wire na1a_a2c;
wire na1a_a1b;
assign na1a = na1a_a1a | na1a_a2c | na1a_a1b;
wire na2a;
wire na2a_a10d;
wire na2a_a2a;
assign na2a = na2a_a10d | na2a_a2a;
wire na3a;
wire na3a_a11a;
wire na3a_a3a;
assign na3a = na3a_a11a | na3a_a3a;
wire na3d;
wire na3e;
wire na4a;
wire na4b;
wire na5a;
wire na5a_a6a;
wire na5a_a5a;
assign na5a = na5a_a6a | na5a_a5a;
wire na7a;
wire na7a_a6b;
wire na7a_a7a;
assign na7a = na7a_a6b | na7a_a7a;
wire na8a;
wire na8b;
wire na8d;
wire na8e;
wire na9a;
wire na9b;
wire na9d;
wire na9e;
wire na10a;
wire na10a_a10a;
wire na10a_a3c;
wire na10a_a10b;
assign na10a = na10a_a10a | na10a_a3c | na10a_a10b;
wire na10e;
wire na10e_a11d;
wire na10e_a10e;
assign na10e = na10e_a11d | na10e_a10e;
wire na11b;
wire na12a;
wire na12a_a12a;
wire na12a_a5c;
wire na12a_a12b;
assign na12a = na12a_a12a | na12a_a5c | na12a_a12b;
wire na13a;
wire na13b;
wire na13d;
wire na13e;
wire na14a;
wire na14a_a14a;
wire na14a_a7c;
wire na14a_a14b;
assign na14a = na14a_a14a | na14a_a7c | na14a_a14b;
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
wire na17a;
wire na17a_a17a;
wire na17a_a17b;
wire na17a_a24d;
assign na17a = na17a_a17a | na17a_a17b | na17a_a24d;
wire na19a;
wire na19a_a19a;
wire na19a_a20c;
assign na19a = na19a_a19a | na19a_a20c;
wire na19d;
wire na19e;
wire na20a;
wire na20a_a21a;
wire na20a_a20a;
assign na20a = na20a_a21a | na20a_a20a;
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
wire na24a;
wire na24a_a24a;
wire na24a_a24b;
assign na24a = na24a_a24a | na24a_a24b;
wire na24e;
wire na25a;
wire na25b;
wire na25b_a31a;
wire na25b_a31b;
wire na25b_a32a;
wire na25b_a25b;
assign na25b = na25b_a31a | na25b_a31b | na25b_a32a | na25b_a25b;
wire na25e;
wire na26a;
wire na26a_a26a;
wire na26a_a19c;
assign na26a = na26a_a26a | na26a_a19c;
wire na26d;
wire na26e;
wire na26e_a33d;
wire na26e_a33e;
wire na26e_a26e;
assign na26e = na26e_a33d | na26e_a33e | na26e_a26e;
wire na27a;
wire na27a_a34a;
wire na27a_a27a;
assign na27a = na27a_a34a | na27a_a27a;
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
wire na31c;
wire na31c_a31c;
wire na31c_a31d;
assign na31c = na31c_a31c | na31c_a31d;
wire na32b;
wire na32c;
wire na32c_a25d;
wire na32c_a32c;
assign na32c = na32c_a25d | na32c_a32c;
wire na33a;
wire na33b;
wire na34b;
wire na34b_a26c;
wire na34b_a34b;
assign na34b = na34b_a26c | na34b_a34b;
wire na34d;
wire na34e;
wire na35a;
wire na35a_a35a;
wire na35a_a35b;
assign na35a = na35a_a35a | na35a_a35b;
wire na35d;
wire na35e;

// 10-62
and a4a(na4a, Z1, TR8V);
and a11a(na3a_a11a, na4a, TA);
and a3a(na3a_a3a, V1, A1);
inv a3b(A1AN, na3a);
inv #(0) a10c(A1, na10a);
and a10a(na10a_a10a, V4MOD6, A1AN);
and a3c(na10a_a3c, Y4, TA);
and a10b(na10a_a10b, Y4, EXMV);
and a4b(na4b, V1, A1);
inv a4c(A1N, na4b);

and a13a(na13a, Z1, TR2V);
and a21a(na20a_a21a, na13a, TA);
and a20a(na20a_a20a, V1, A7);
inv a20b(A7AN, na20a);
inv #(0) a19b(A7, na19a);
and a19a(na19a_a19a, V4MOD6, A7AN);
and a20c(na19a_a20c, Y4, TA);
and a21b(na21b, V1, A7);
inv a21c(A7N, na21b);

and a6a(na5a_a6a, Z1, TR7V, TA);
and a5a(na5a_a5a, V1, A2);
inv a5b(A2AN, na5a);
inv #(0) a12c(A2, na12a);
and a12a(na12a_a12a, V4MOD6, A2AN);
and a5c(na12a_a5c, Y4, TA);
and a12b(na12a_a12b, Y4, EXMV);
and a11b(na11b, V1, A2);
inv a11c(A2N, na11b);

and a33a(na33a, Z1, TR1V);
and a34a(na27a_a34a, na33a, TA);
and a27a(na27a_a27a, V1, A8);
inv a27b(A8AN, na27a);
inv #(0) a26b(A8, na26a);
and a26a(na26a_a26a, V4MOD6, A8AN);
and a19c(na26a_a19c, Y4, TA);
and a33b(na33b, V1, A8);
inv a33c(A8N, na33b);

and a31a(na25b_a31a, Z1, TR9V, TA, G6VN);
and a25a(na25a, DS4);
and a31b(na25b_a31b, Z1, na25a, EXMDN, TA, G6VN);
and a32a(na25b_a32a, Z1, IS4, TA, G1V);
and a25b(na25b_a25b, V1, S4);
inv a25c(S4N, na25b);
inv #(0) a24c(S4, na24a);
and a24a(na24a_a24a, V1, S4N);
and a24b(na24a_a24b, Y4, TA);

and a29a(na29a, V4MOD6, A1N, A2N);
and a29b(na29b, na29a, A3N);
inv a29c(AX0N, na29b);

and a30a(na30a, V4MOD6, A1V, A2N);
and a30b(na30b, na30a, A3N);
inv a30c(AX1N, na30b);

and a22a(na22a, V4MOD6, A1N, A2V);
and a22b(na22b, na22a, A3N);
inv a22c(AX2N, na22b);

and a23a(na23a, V4MOD6, A1V, A2V);
and a23b(na23b, na23a, A3N);
inv a23c(AX3N, na23b);

and a15a(na15a, V4MOD6, A1N, A2N);
and a15b(na15b, na15a, A3V);
inv a15c(AX4N, na15b);

and a16a(na16a, V4MOD6, A1V, A2N);
and a16b(na16b, na16a, A3V);
inv a16c(AX5N, na16b);

// 10-63
and a6b(na7a_a6b, Z1, TR6V, TA);
and a7a(na7a_a7a, V1, A3);
inv a7b(A3AN, na7a);
inv #(0) a14c(A3, na14a);
and a14a(na14a_a14a, V4MOD6, A3AN);
and a7c(na14a_a7c, Y4, TA);
and a14b(na14a_a14b, Y4, EXMV);
and a13b(na13b, V1, A3);
inv a13c(A3N, na13b);

and a27c(na27c, Z1, TR9V);
and a26c(na34b_a26c, na27c, TA);
and a34b(na34b_a34b, V1, A9);
inv a34c(A9N, na34b);
inv #(0) a35c(A9, na35a);
and a35a(na35a_a35a, V4MOD6, A9N);
and a35b(na35a_a35b, Y4, TA);

and a8a(na8a, V4MOD6, A1N, A2V);
and a8b(na8b, na8a, A3V);
inv a8c(AX6N, na8b);

and a9a(na9a, V4MOD6, A1V, A2V);
and a9b(na9b, na9a, A3V);
inv a9c(AX7N, na9b);

// 10-64
and a3d(na3d, Z2, TR5V);
and a10d(na2a_a10d, na3d, TA);
and a2a(na2a_a2a, V1, A4);
inv a2b(A4AN, na2a);
inv #(0) a1c(A4, na1a);
and a1a(na1a_a1a, V4MOD6, A4AN);
and a2c(na1a_a2c, Y5, TA);
and a1b(na1a_a1b, Y5, EXMV);
and a3e(na3e, V1, A4);
inv a3f(A4N, na3e);

and a11d(na10e_a11d, Z2, TR4V, TA);
and a10e(na10e_a10e, V1, A5);
inv a10f(A5AN, na10e);
inv #(0) a17c(A5, na17a);
and a17a(na17a_a17a, V4MOD6, A5AN);
and a17b(na17a_a17b, Y5, TA);
and a24d(na17a_a24d, Y5, EXMV);
and a24e(na24e, V1, A5);
inv a24f(A5N, na24e);

and a26d(na26d, X5, PAV);
and a33d(na26e_a33d, na26d, G5VN, G7V, AVN);
and a19d(na19d, X5, EXMVN, PAV);
and a33e(na26e_a33e, na19d, G1V, G6V, AVN);
and a26e(na26e_a26e, WN, TA);
inv a26f(TAN, na26e);
inv #(0) a19f(TA, na19e);
and a19e(na19e, V1, TAN);

and a34d(na34d, V4MOD6, A7N, A8N);
and a34e(na34e, na34d, S4N);
inv a34f(AX00N, na34e);

and a28a(na28a, V4MOD6, A7V, A8V);
and a28b(na28b, na28a, S4N);
inv a28c(AX30N, na28b);

and a13d(na13d, V4MOD6, A7N, A8V);
and a13e(na13e, na13d, S4);
inv a13f(AX60N, na13e);

and a29d(na29d, V4MOD6, A4N, A5N);
and a29e(na29e, na29d, A6N);
inv a29f(AY0N, na29e);

and a23d(na23d, V4MOD6, A4V, A5V);
and a23e(na23e, na23d, A6N);
inv a23f(AY3N, na23e);

and a8d(na8d, V4MOD6, A4N, A5V);
and a8e(na8e, na8d, A6V);
inv a8f(AY6N, na8e);

and a35d(na35d, V4MOD6, A7V, A8N);
and a35e(na35e, na35d, S4N);
inv a35f(AX10N, na35e);

and a20d(na20d, V4MOD6, A7N, A8N);
and a20e(na20e, na20d, S4);
inv a20f(AX40N, na20e);

and a14d(na14d, V4MOD6, A7V, A8V);
and a14e(na14e, na14d, S4);
inv a14f(AX70N, na14e);

// 10-65
and a32b(na32b, Z2, TR3V);
and a25d(na32c_a25d, na32b, TA);
and a32c(na32c_a32c, V1, A6);
inv a32d(A6AN, na32c);
inv #(0) a31e(A6, na31c);
and a31c(na31c_a31c, V4MOD6, A6AN);
and a31d(na31c_a31d, Y5, TA);
and a25e(na25e, V1, A6);
inv a25f(A6N, na25e);

and a30d(na30d, V4MOD6, A4V, A5N);
and a30e(na30e, na30d, A6N);
inv a30f(AY1N, na30e);

and a15d(na15d, V4MOD6, A4N, A5N);
and a15e(na15e, na15d, A6V);
inv a15f(AY4N, na15e);

and a9d(na9d, V4MOD6, A4V, A5V);
and a9e(na9e, na9d, A6V);
inv a9f(AY7N, na9e);

and a27d(na27d, V4MOD6, A7N, A8V);
and a27e(na27e, na27d, S4N);
inv a27f(AX20N, na27e);

and a21d(na21d, V4MOD6, A7V, A8N);
and a21e(na21e, na21d, S4);
inv a21f(AX50N, na21e);

and a22d(na22d, V4MOD6, A4N, A5V);
and a22e(na22e, na22d, A6N);
inv a22f(AY2N, na22e);

and a16d(na16d, V4MOD6, A4V, A5N);
and a16e(na16e, na16d, A6V);
inv a16f(AY5N, na16e);

endmodule
`default_nettype wire
