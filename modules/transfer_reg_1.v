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

wand na1a;
wor na1c;
wor na2b;
wor na2d;
wor na3a;
wor na4a;
wire na5a;
wire na5c;
wor na6a;
wor na6d;
wire na6b;
wire na7a;
wor na7d;
wire na8a;
wand na8c;
wire na8e;
wor na8d;
wor na9a;
wor na9d;
wor na13a;
wor na13d;
wor na14a;
wor na14d;
wire na14e;
wire na15a;
wor na15d;
wor na16b;
wire na16d;
wor na16e;
wire na18a;
wire na18b;
wire na18c;
wire na19a;
wire na20c;
wor na20d;
wor na21b;
wor na21d;
wire na22a;
wire na24a;
wire na24b;
wire na24c;
wor na25a;
wire na27c;
wire na27d;
wire na27e;
wor na28a;
wire na28d;
wor na29b;
wor na30a;
wire na33a;
wire na33b;
wire na33c;
wor na34c;
wor na35a;
wor na35e;

// 10-58
and a1a(na1a, V1, TR1, TR2, TR3, TR4);
and a1b(na1a, TR5, TR6, TR7, TR9);
and a8a(na8a, na1a, G1VN);
inv a8b(SSN, na8a);
and a15a(na15a, V1, SSN);
inv a15b(SS, na15a);

and a34a(na35a, X8, RUNVN, DIN);
and a19a(na19a, X8, MD2V);
and a34b(na35a, na19a, STMD, SRTR, RUNV);
and a33a(na33a, X8, RUNV, AI1V);
and a27a(na35a, na33a, STO, STMDN, SRTR);
and a33b(na33b, Y4, AI1V, RUNV);
and a20a(na35a, Y4, na33b, G7VN, G1VN, PCV);
and a33c(na33c, Y4, RUNV, AI1V);
and a20b(na35a, Y4, na33c, PAV, G1V, PBVN);
and a26a(na35a, X8, BRA1, TBR, MAOV);
and a26b(na35a, X8, BRB1, TBR, MBOV);
and a35a(na35a, V1, TR1);
inv a35b(TR1N, na35a);
inv #(0) a28c(TR1, na28a);
and a28a(na28a, V4MOD2, TR1N);
and a28b(na28a, W6, SRTR);
and a35c(na28a, W6, CLTR);

and a21a(na21b, Z2, TR1N);
and a21b(na21b, V1, TR1DN);
inv #(0) a21c(TR1D, na21b);
inv a14c(TR1DN, na14a);
and a14a(na14a, V1, TR1D);
and a14b(na14a, Z2, TR1);

and a12a(na13a, Y4, BRA2, TBR, MAOV);
and a12b(na13a, Y4, BRB2, TBR, MBOV);
and a7a(na7a, SRTR);
and a7b(na13a, X8, na7a, TR1D);
and a13a(na13a, V1, TR2);
inv a13b(TR2N, na13a);
inv #(0) a6c(TR2, na6a);
and a6a(na6a, V4MOD2, TR2N);
and a6b(na6b, X8, TR1DN);
and a7c(na6a, na6b, SRTR);
and a13c(na6a, X8, CLTR);

// 10-59
and a8c(na8c, Z2, STO);
and a15c(na8c, SS, PAV);
and a16a(na16b, na8c, G7VN);
and a16b(na16b, V1, STMD);
inv a16c(STMDN, na16b);
inv #(0) a25b(STMD, na25a);
and a25a(na25a, V1, STMDN);
and a27b(na25a, Z2, PCV, G6VN, G7V);

and a2a(na2b, Y4, TR3);
and a2b(na2b, V1, TR3D);
inv a2c(TR3DN, na2b);
inv #(0) a9c(TR3D, na9a);
and a9a(na9a, V1, TR3DN);
and a9b(na9a, Y4, TR3N);

and a11a(na4a, X8, BRA3, TBR, MAOV);
and a11b(na4a, X8, BRB3, TBR, MBOV);
and a5a(na5a, W6, SRTR);
and a5b(na4a, na5a, TR2);
and a4a(na4a, V1, TR3);
inv a4b(TR3N, na4a);
inv #(0) a3c(TR3, na3a);
and a3a(na3a, V4MOD2, TR3N);
and a3b(na3a, W6, na5c, TR2N);
and a5c(na5c, SRTR);
and a4c(na3a, W6, CLTR);

// 10-60
and a5d(na6d, Y4, BRA4, TBR, MAOV);
and a5e(na6d, Y4, BRB4, TBR, MBOV);
and a4d(na6d, X8, SRTR, TR3D);
and a6d(na6d, V1, TR4);
inv a6e(TR4N, na6d);
inv #(0) a7f(TR4, na7d);
and a7d(na7d, V4MOD2, TR4N);
and a7e(na7d, X8, na28d, TR3DN);
and a28d(na28d, SRTR);
and a6f(na7d, X8, CLTR);

and a12c(na13d, X8, BRA5, TBR, MAOV);
and a12d(na13d, X8, BRB5, TBR, MBOV);
and a4e(na13d, W6, SRTR, TR4);
and a13d(na13d, V1, TR5);
inv a13e(TR5N, na13d);
inv #(0) a14f(TR5, na14d);
and a14d(na14d, V4MOD2, TR5N);
and a14e(na14e, W6, TR4N, SRTR);
and a28e(na14d, na14e);
and a27c(na27c, EXMVN);
and a13f(na14d, X8, na27c, CLTR);

and a19b(na20d, X8, BRA6, TBR, MAOV);
and a19c(na20d, X8, BRB6, TBR, MBOV);
and a28f(na20d, Z2, na20c);
and a20c(na20c, Z2, SRTR, TR5);
and a20d(na20d, V1, TR6);
inv a20e(TR6N, na20d);
inv #(0) a21f(TR6, na21d);
and a21d(na21d, V4MOD2, TR6N);
and a11c(na21d, Z2, SRTR, TR5N);
and a21e(na21d, X8, na27d, CLTR);
and a27d(na27d, EXMVN);

and a18a(na18a, EXMVN);
and a3d(na2d, Y4, na18a, BRA7, TBR, MAOV);
and a24a(na24a, EXMVN);
and a3e(na2d, Y4, na24a, BRB7, TBR, MBOV);
and a11d(na2d, X8, SRTR, TR6D);
and a2d(na2d, V1, TR7);
inv a2e(TR7N, na2d);
inv #(0) a1e(TR7, na1c);
and a1c(na1c, V4MOD2, TR7N);
and a1d(na1c, X8, na22a, TR6DN);
and a22a(na22a, SRTR);
and a2f(na1c, X8, na18b, CLTR);
and a18b(na18b, EXMVN);

and a24b(na24b, EXMVN);
and a10a(na9d, X8, na24b, BRA8, TBR, MAOV);
and a10b(na9d, X8, na24c, BRB8, TBR, MBOV);
and a24c(na24c, EXMVN);
and a23a(na9d, W6, SRTR, TR7);
and a9d(na9d, V1, TR8);
inv a9e(TR8N, na9d);
inv #(0) a8f(TR8, na8d);
and a8d(na8d, V4MOD2, TR8N);
and a8e(na8e, W6, TR7N, SRTR);
and a22b(na8d, na8e);
and a9f(na8d, X8, na18c, CLTR);
and a18c(na18c, EXMVN);

and a27e(na27e, G5V);
and a25c(na16e, X5, na27e, INTV, G3VN, AVN);
and a17a(na16e, X8, BRA9, TBR, MAOV);
and a17b(na16e, X8, BRB9, TBR, MBOV);
and a22c(na16e, Z2, na16d);
and a16d(na16d, Z2, SRTR, TR8);
and a16e(na16e, V1, TR9);
inv a16f(TR9N, na16e);
inv #(0) a15f(TR9, na15d);
and a15d(na15d, V4MOD2, TR9N);
and a23b(na15d, Z2, TR8N, SRTR);
and a15e(na15d, X5, CLTR);

// 10-61
and a35d(na35e, Y4, TR6);
and a35e(na35e, V1, TR6D);
inv a35f(TR6DN, na35e);
inv #(0) a34e(TR6D, na34c);
and a34c(na34c, V1, TR6DN);
and a34d(na34c, Y4, TR6N);

and a29a(na29b, Y4, TR9);
and a29b(na29b, V1, TR9D);
inv a29c(TR9DN, na29b);
inv #(0) a30c(TR9D, na30a);
and a30a(na30a, V1, TR9DN);
and a30b(na30a, Y4, TR9N);

endmodule
`default_nettype wire
