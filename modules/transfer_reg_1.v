`timescale 1ns/1ps
`default_nettype none

module transfer_reg_1(
    input wire V1,
    input wire V4MOD2,
    input wire AI1V,
    input wire AVN,
    input wire BRA1,
    input wire BRA2,
    input wire BRA3,
    input wire BRA4,
    input wire BRA5,
    input wire BRA6,
    input wire BRA7,
    input wire BRA8,
    input wire BRA9,
    input wire BRB1,
    input wire BRB2,
    input wire BRB3,
    input wire BRB4,
    input wire BRB5,
    input wire BRB6,
    input wire BRB7,
    input wire BRB8,
    input wire BRB9,
    input wire CLTR,
    input wire DIN,
    input wire EXMVN,
    input wire G1V,
    input wire G1VN,
    input wire G3VN,
    input wire G5V,
    input wire G6VN,
    input wire G7V,
    input wire G7VN,
    input wire INTV,
    input wire MAOV,
    input wire MBOV,
    input wire MD2V,
    input wire PAV,
    input wire PBVN,
    input wire PCV,
    input wire RUNV,
    input wire RUNVN,
    input wire SRTR,
    input wire STO,
    input wire TBR,
    input wire W6,
    input wire X5,
    input wire X8,
    input wire Y4,
    input wire Z2,
    output wire TR1,
    output wire TR1N,
    output wire TR2,
    output wire TR3,
    output wire TR4,
    output wire TR5,
    output wire TR6,
    output wire TR7,
    output wire TR8,
    output wire TR9,
    output wire TR9D,
    output wire TR9DN
);

wire SS;
wire SSN;
wire STMD;
wire STMDN;
wire TR1D;
wire TR1DN;
wire TR2N;
wire TR3N;
wire TR3D;
wire TR3DN;
wire TR4N;
wire TR5N;
wire TR6N;
wire TR6D;
wire TR6DN;
wire TR7N;
wire TR8N;
wire TR9N;

wire na1a;
wire na1a_a1a;
wire na1a_a1b;
assign na1a = na1a_a1a & na1a_a1b;
wire na1c;
wire na1c_a1c;
wire na1c_a1d;
wire na1c_a2f;
assign na1c = na1c_a1c | na1c_a1d | na1c_a2f;
wire na2b;
wire na2b_a2a;
wire na2b_a2b;
assign na2b = na2b_a2a | na2b_a2b;
wire na2d;
wire na2d_a3d;
wire na2d_a3e;
wire na2d_a11d;
wire na2d_a2d;
assign na2d = na2d_a3d | na2d_a3e | na2d_a11d | na2d_a2d;
wire na3a;
wire na3a_a3a;
wire na3a_a3b;
wire na3a_a4c;
assign na3a = na3a_a3a | na3a_a3b | na3a_a4c;
wire na4a;
wire na4a_a11a;
wire na4a_a11b;
wire na4a_a5b;
wire na4a_a4a;
assign na4a = na4a_a11a | na4a_a11b | na4a_a5b | na4a_a4a;
wire na5a;
wire na5c;
wire na6a;
wire na6a_a6a;
wire na6a_a7c;
wire na6a_a13c;
assign na6a = na6a_a6a | na6a_a7c | na6a_a13c;
wire na6d;
wire na6d_a5d;
wire na6d_a5e;
wire na6d_a4d;
wire na6d_a6d;
assign na6d = na6d_a5d | na6d_a5e | na6d_a4d | na6d_a6d;
wire na6b;
wire na7a;
wire na7d;
wire na7d_a7d;
wire na7d_a7e;
wire na7d_a6f;
assign na7d = na7d_a7d | na7d_a7e | na7d_a6f;
wire na8a;
wire na8c;
wire na8c_a8c;
wire na8c_a15c;
assign na8c = na8c_a8c & na8c_a15c;
wire na8e;
wire na8d;
wire na8d_a8d;
wire na8d_a22b;
wire na8d_a9f;
assign na8d = na8d_a8d | na8d_a22b | na8d_a9f;
wire na9a;
wire na9a_a9a;
wire na9a_a9b;
assign na9a = na9a_a9a | na9a_a9b;
wire na9d;
wire na9d_a10a;
wire na9d_a10b;
wire na9d_a23a;
wire na9d_a9d;
assign na9d = na9d_a10a | na9d_a10b | na9d_a23a | na9d_a9d;
wire na13a;
wire na13a_a12a;
wire na13a_a12b;
wire na13a_a7b;
wire na13a_a13a;
assign na13a = na13a_a12a | na13a_a12b | na13a_a7b | na13a_a13a;
wire na13d;
wire na13d_a12c;
wire na13d_a12d;
wire na13d_a4e;
wire na13d_a13d;
assign na13d = na13d_a12c | na13d_a12d | na13d_a4e | na13d_a13d;
wire na14a;
wire na14a_a14a;
wire na14a_a14b;
assign na14a = na14a_a14a | na14a_a14b;
wire na14d;
wire na14d_a14d;
wire na14d_a28e;
wire na14d_a13f;
assign na14d = na14d_a14d | na14d_a28e | na14d_a13f;
wire na14e;
wire na15a;
wire na15d;
wire na15d_a15d;
wire na15d_a23b;
wire na15d_a15e;
assign na15d = na15d_a15d | na15d_a23b | na15d_a15e;
wire na16b;
wire na16b_a16a;
wire na16b_a16b;
assign na16b = na16b_a16a | na16b_a16b;
wire na16d;
wire na16e;
wire na16e_a25c;
wire na16e_a17a;
wire na16e_a17b;
wire na16e_a22c;
wire na16e_a16e;
assign na16e = na16e_a25c | na16e_a17a | na16e_a17b | na16e_a22c | na16e_a16e;
wire na18a;
wire na18b;
wire na18c;
wire na19a;
wire na20c;
wire na20d;
wire na20d_a19b;
wire na20d_a19c;
wire na20d_a28f;
wire na20d_a20d;
assign na20d = na20d_a19b | na20d_a19c | na20d_a28f | na20d_a20d;
wire na21b;
wire na21b_a21a;
wire na21b_a21b;
assign na21b = na21b_a21a | na21b_a21b;
wire na21d;
wire na21d_a21d;
wire na21d_a11c;
wire na21d_a21e;
assign na21d = na21d_a21d | na21d_a11c | na21d_a21e;
wire na22a;
wire na24a;
wire na24b;
wire na24c;
wire na25a;
wire na25a_a25a;
wire na25a_a27b;
assign na25a = na25a_a25a | na25a_a27b;
wire na27c;
wire na27d;
wire na27e;
wire na28a;
wire na28a_a28a;
wire na28a_a28b;
wire na28a_a35c;
assign na28a = na28a_a28a | na28a_a28b | na28a_a35c;
wire na28d;
wire na29b;
wire na29b_a29a;
wire na29b_a29b;
assign na29b = na29b_a29a | na29b_a29b;
wire na30a;
wire na30a_a30a;
wire na30a_a30b;
assign na30a = na30a_a30a | na30a_a30b;
wire na33a;
wire na33b;
wire na33c;
wire na34c;
wire na34c_a34c;
wire na34c_a34d;
assign na34c = na34c_a34c | na34c_a34d;
wire na35a;
wire na35a_a34a;
wire na35a_a34b;
wire na35a_a27a;
wire na35a_a20a;
wire na35a_a20b;
wire na35a_a26a;
wire na35a_a26b;
wire na35a_a35a;
assign na35a = na35a_a34a | na35a_a34b | na35a_a27a | na35a_a20a | na35a_a20b | na35a_a26a | na35a_a26b | na35a_a35a;
wire na35e;
wire na35e_a35d;
wire na35e_a35e;
assign na35e = na35e_a35d | na35e_a35e;

// 10-58
and a1a(na1a_a1a, V1, TR1, TR2, TR3, TR4);
and a1b(na1a_a1b, TR5, TR6, TR7, TR9);
and a8a(na8a, na1a, G1VN);
inv a8b(SSN, na8a);
and a15a(na15a, V1, SSN);
inv a15b(SS, na15a);

and a34a(na35a_a34a, X8, RUNVN, DIN);
and a19a(na19a, X8, MD2V);
and a34b(na35a_a34b, na19a, STMD, SRTR, RUNV);
and a33a(na33a, X8, RUNV, AI1V);
and a27a(na35a_a27a, na33a, STO, STMDN, SRTR);
and a33b(na33b, Y4, AI1V, RUNV);
and a20a(na35a_a20a, Y4, na33b, G7VN, G1VN, PCV);
and a33c(na33c, Y4, RUNV, AI1V);
and a20b(na35a_a20b, Y4, na33c, PAV, G1V, PBVN);
and a26a(na35a_a26a, X8, BRA1, TBR, MAOV);
and a26b(na35a_a26b, X8, BRB1, TBR, MBOV);
and a35a(na35a_a35a, V1, TR1);
inv a35b(TR1N, na35a);
inv #(0) a28c(TR1, na28a);
and a28a(na28a_a28a, V4MOD2, TR1N);
and a28b(na28a_a28b, W6, SRTR);
and a35c(na28a_a35c, W6, CLTR);

and a21a(na21b_a21a, Z2, TR1N);
and a21b(na21b_a21b, V1, TR1DN);
inv #(0) a21c(TR1D, na21b);
inv a14c(TR1DN, na14a);
and a14a(na14a_a14a, V1, TR1D);
and a14b(na14a_a14b, Z2, TR1);

and a12a(na13a_a12a, Y4, BRA2, TBR, MAOV);
and a12b(na13a_a12b, Y4, BRB2, TBR, MBOV);
and a7a(na7a, SRTR);
and a7b(na13a_a7b, X8, na7a, TR1D);
and a13a(na13a_a13a, V1, TR2);
inv a13b(TR2N, na13a);
inv #(0) a6c(TR2, na6a);
and a6a(na6a_a6a, V4MOD2, TR2N);
and a6b(na6b, X8, TR1DN);
and a7c(na6a_a7c, na6b, SRTR);
and a13c(na6a_a13c, X8, CLTR);

// 10-59
and a8c(na8c_a8c, Z2, STO);
and a15c(na8c_a15c, SS, PAV);
and a16a(na16b_a16a, na8c, G7VN);
and a16b(na16b_a16b, V1, STMD);
inv a16c(STMDN, na16b);
inv #(0) a25b(STMD, na25a);
and a25a(na25a_a25a, V1, STMDN);
and a27b(na25a_a27b, Z2, PCV, G6VN, G7V);

and a2a(na2b_a2a, Y4, TR3);
and a2b(na2b_a2b, V1, TR3D);
inv a2c(TR3DN, na2b);
inv #(0) a9c(TR3D, na9a);
and a9a(na9a_a9a, V1, TR3DN);
and a9b(na9a_a9b, Y4, TR3N);

and a11a(na4a_a11a, X8, BRA3, TBR, MAOV);
and a11b(na4a_a11b, X8, BRB3, TBR, MBOV);
and a5a(na5a, W6, SRTR);
and a5b(na4a_a5b, na5a, TR2);
and a4a(na4a_a4a, V1, TR3);
inv a4b(TR3N, na4a);
inv #(0) a3c(TR3, na3a);
and a3a(na3a_a3a, V4MOD2, TR3N);
and a3b(na3a_a3b, W6, na5c, TR2N);
and a5c(na5c, SRTR);
and a4c(na3a_a4c, W6, CLTR);

// 10-60
and a5d(na6d_a5d, Y4, BRA4, TBR, MAOV);
and a5e(na6d_a5e, Y4, BRB4, TBR, MBOV);
and a4d(na6d_a4d, X8, SRTR, TR3D);
and a6d(na6d_a6d, V1, TR4);
inv a6e(TR4N, na6d);
inv #(0) a7f(TR4, na7d);
and a7d(na7d_a7d, V4MOD2, TR4N);
and a7e(na7d_a7e, X8, na28d, TR3DN);
and a28d(na28d, SRTR);
and a6f(na7d_a6f, X8, CLTR);

and a12c(na13d_a12c, X8, BRA5, TBR, MAOV);
and a12d(na13d_a12d, X8, BRB5, TBR, MBOV);
and a4e(na13d_a4e, W6, SRTR, TR4);
and a13d(na13d_a13d, V1, TR5);
inv a13e(TR5N, na13d);
inv #(0) a14f(TR5, na14d);
and a14d(na14d_a14d, V4MOD2, TR5N);
and a14e(na14e, W6, TR4N, SRTR);
and a28e(na14d_a28e, na14e);
and a27c(na27c, EXMVN);
and a13f(na14d_a13f, X8, na27c, CLTR);

and a19b(na20d_a19b, X8, BRA6, TBR, MAOV);
and a19c(na20d_a19c, X8, BRB6, TBR, MBOV);
and a28f(na20d_a28f, Z2, na20c);
and a20c(na20c, Z2, SRTR, TR5);
and a20d(na20d_a20d, V1, TR6);
inv a20e(TR6N, na20d);
inv #(0) a21f(TR6, na21d);
and a21d(na21d_a21d, V4MOD2, TR6N);
and a11c(na21d_a11c, Z2, SRTR, TR5N);
and a21e(na21d_a21e, X8, na27d, CLTR);
and a27d(na27d, EXMVN);

and a18a(na18a, EXMVN);
and a3d(na2d_a3d, Y4, na18a, BRA7, TBR, MAOV);
and a24a(na24a, EXMVN);
and a3e(na2d_a3e, Y4, na24a, BRB7, TBR, MBOV);
and a11d(na2d_a11d, X8, SRTR, TR6D);
and a2d(na2d_a2d, V1, TR7);
inv a2e(TR7N, na2d);
inv #(0) a1e(TR7, na1c);
and a1c(na1c_a1c, V4MOD2, TR7N);
and a1d(na1c_a1d, X8, na22a, TR6DN);
and a22a(na22a, SRTR);
and a2f(na1c_a2f, X8, na18b, CLTR);
and a18b(na18b, EXMVN);

and a24b(na24b, EXMVN);
and a10a(na9d_a10a, X8, na24b, BRA8, TBR, MAOV);
and a10b(na9d_a10b, X8, na24c, BRB8, TBR, MBOV);
and a24c(na24c, EXMVN);
and a23a(na9d_a23a, W6, SRTR, TR7);
and a9d(na9d_a9d, V1, TR8);
inv a9e(TR8N, na9d);
inv #(0) a8f(TR8, na8d);
and a8d(na8d_a8d, V4MOD2, TR8N);
and a8e(na8e, W6, TR7N, SRTR);
and a22b(na8d_a22b, na8e);
and a9f(na8d_a9f, X8, na18c, CLTR);
and a18c(na18c, EXMVN);

and a27e(na27e, G5V);
and a25c(na16e_a25c, X5, na27e, INTV, G3VN, AVN);
and a17a(na16e_a17a, X8, BRA9, TBR, MAOV);
and a17b(na16e_a17b, X8, BRB9, TBR, MBOV);
and a22c(na16e_a22c, Z2, na16d);
and a16d(na16d, Z2, SRTR, TR8);
and a16e(na16e_a16e, V1, TR9);
inv a16f(TR9N, na16e);
inv #(0) a15f(TR9, na15d);
and a15d(na15d_a15d, V4MOD2, TR9N);
and a23b(na15d_a23b, Z2, TR8N, SRTR);
and a15e(na15d_a15e, X5, CLTR);

// 10-61
and a35d(na35e_a35d, Y4, TR6);
and a35e(na35e_a35e, V1, TR6D);
inv a35f(TR6DN, na35e);
inv #(0) a34e(TR6D, na34c);
and a34c(na34c_a34c, V1, TR6DN);
and a34d(na34c_a34d, Y4, TR6N);

and a29a(na29b_a29a, Y4, TR9);
and a29b(na29b_a29b, V1, TR9D);
inv a29c(TR9DN, na29b);
inv #(0) a30c(TR9D, na30a);
and a30a(na30a_a30a, V1, TR9DN);
and a30b(na30a_a30b, Y4, TR9N);

endmodule
`default_nettype wire
