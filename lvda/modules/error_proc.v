`timescale 1ns/1ps
`default_nettype none

module error_proc(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire V1,

    input wire BDI,
    input wire DDI1A,
    input wire DDI1B,
    input wire DDI1C,
    input wire DDI2A,
    input wire DDI2B,
    input wire DDI3B,
    input wire DDI4,
    input wire EAMV,
    input wire EBMV,
    input wire EMA,
    input wire G3DV,
    input wire G4DVN,
    input wire PBAV,
    input wire SCB,
    input wire TLCV,

    output wire EM1N,
    output wire EM2N,
    output wire EM3N,
    output wire EM4N,
    output wire EM5N,
    output wire EM6N,
    output wire EM7N,
    output wire EM8N,
    output wire EM9N,
    output wire EM10N,
    output wire EM11N,
    output wire EM12N,
    output wire EM15N,
    output wire EM16N,
    output wire EM17N,
    output wire EM18N,
    output wire EM19N,
    output wire EM20N,
    output wire EM21N,
    output wire EM22N,
    output wire EM23N,
    output wire EM24N,
    output wire EM25N,
    output wire EM26N,
    output wire EMRG1,
    output wire EMRG2,
    output wire EMRG3,
    output wire EMRG4
);

wire EM1;
wire EM2;
wire EM3;
wire EM4;
wire EM5;
wire EM6;
wire EM7;
wire EM8;
wire EM9;
wire EM10;
wire EM11;
wire EM12;
wire EM13;
wire EM13N;
wire EM14;
wire EM14N;
wire EM15;
wire EM16;
wire EM17;
wire EM18;
wire EM19;
wire EM20;
wire EM21;
wire EM22;
wire EM23;
wire EM24;
wire EM25;
wire EM26;
wire EMRS1;
wire EMRS2;

wire na2a;
wire na2d;
wire na3a;
wire na3c;
wire na4b;
wire na4d;
wire na5a;
wire na5d;
wire na6a;
wire na6b;
wire na6d;
wire na6e;
wire na6e_a6e;
wire na6e_a7c;
assign na6e = na6e_a6e | na6e_a7c;
wire na7a;
wire na7d;
wire na8b;
wire na8c;
wire na9a;
wire na9b;
wire na9d;
wire na9e;
wire na9e_a2c;
wire na9e_a9e;
assign na9e = na9e_a2c | na9e_a9e;
wire na10a;
wire na10b;
wire na10d;
wire na10e;
wire na11a;
wire na11b;
wire na11b_a4a;
wire na11b_a11b;
assign na11b = na11b_a4a | na11b_a11b;
wire na11d;
wire na11e;
wire na12a;
wire na12b;
wire na12d;
wire na12e;
wire na12e_a5c;
wire na12e_a12e;
assign na12e = na12e_a5c | na12e_a12e;
wire na13a;
wire na13b;
wire na13b_a8a;
wire na13b_a13b;
wire na13b_a32b;
assign na13b = na13b_a8a | na13b_a13b | na13b_a32b;
wire na13d;
wire na13e;
wire na14a;
wire na14c;
wire na14d;
wire na14f;
wire na16a;
wire na16c;
wire na17a;
wire na17b;
wire na17d;
wire na17e;
wire na19a;
wire na19a_a18a;
wire na19a_a19a;
assign na19a = na19a_a18a & na19a_a19a;
wire na19b;
wire na19d;
wire na19d_a18c;
wire na19d_a19d;
assign na19d = na19d_a18c & na19d_a19d;
wire na19e;
wire na20a;
wire na20b;
wire na20d;
wire na20e;
wire na21a;
wire na21c;
wire na23a;
wire na23b;
wire na23b_a1a;
wire na23b_a1b;
wire na23b_a23b;
wire na23b_a30a;
assign na23b = na23b_a1a | na23b_a1b | na23b_a23b | na23b_a30a;
wire na23d;
wire na23e;
wire na24a;
wire na24b;
wire na24b_a24b;
wire na24b_a32a;
assign na24b = na24b_a24b | na24b_a32a;
wire na24d;
wire na24e;
wire na25a;
wire na25a_a18b;
wire na25a_a25a;
assign na25a = na25a_a18b | na25a_a25a;
wire na25b;
wire na25d;
wire na25d_a18d;
wire na25d_a25d;
assign na25d = na25d_a18d & na25d_a25d;
wire na25e;
wire na26a;
wire na26b;
wire na26d;
wire na26e;
wire na27a;
wire na27b;
wire na27b_a27b;
wire na27b_a29a;
wire na27b_a29b;
assign na27b = na27b_a27b | na27b_a29a | na27b_a29b;
wire na27d;
wire na27e;
wire na28a;
wire na28c;
wire na30b;
wire na30d;
wire na31b;
wire na31d;
wire na33a;
wire na33c;
wire na34a;
wire na34b;
wire na34b_a31a;
wire na34b_a34b;
assign na34b = na34b_a31a | na34b_a34b;
wire na34d;
wire na34e;
wire na35a;
wire na35c;

// 10-12
and a1a(na23b_a1a, V1, DDI1C);
and a1b(na23b_a1b, V1, DDI1B);
and a30a(na23b_a30a, V1, DDI1A);
and a23a(na23a, EM1);
and a23b(na23b_a23b, V1, na23a, EMRS1);
inv a23c(EM1N, na23b, SIM_CLK, SIM_RST);
inv #(0) a30c(EM1, na30b, SIM_CLK, SIM_RST);
and a30b(na30b, V1, EM1N);

and a29a(na27b_a29a, V1, DDI2A);
and a29b(na27b_a29b, V1, DDI2B);
and a27a(na27a, EM2);
and a27b(na27b_a27b, V1, na27a, EMRS1);
inv a27c(EM2N, na27b, SIM_CLK, SIM_RST);
inv #(0) a28b(EM2, na28a, SIM_CLK, SIM_RST);
and a28a(na28a, V1, EM2N);

and a31a(na34b_a31a, V1, DDI3B);
and a34a(na34a, EM3);
and a34b(na34b_a34b, V1, na34a, EMRS1);
inv a34c(EM3N, na34b, SIM_CLK, SIM_RST);
inv #(0) a35b(EM3, na35a, SIM_CLK, SIM_RST);
and a35a(na35a, V1, EM3N);

and a32a(na24b_a32a, V1, DDI4);
and a24a(na24a, EM4);
and a24b(na24b_a24b, V1, na24a, EMRS1);
inv a24c(EM4N, na24b, SIM_CLK, SIM_RST);
inv #(0) a31c(EM4, na31b, SIM_CLK, SIM_RST);
and a31b(na31b, V1, EM4N);

and a26a(na26a, EM5);
and a26b(na26b, V1, na26a, EMRS1);
inv a26c(EM5N, na26b, SIM_CLK, SIM_RST);
inv #(0) a33b(EM5, na33a, SIM_CLK, SIM_RST);
and a33a(na33a, V1, EM5N);

and a17a(na17a, EM6);
and a17b(na17b, V1, na17a, EMRS1);
inv a17c(EM6N, na17b, SIM_CLK, SIM_RST);
inv #(0) a16b(EM6, na16a, SIM_CLK, SIM_RST);
and a16a(na16a, V1, EM6N);

and a20a(na20a, EM7);
and a20b(na20b, V1, na20a, EMRS1);
inv a20c(EM7N, na20b, SIM_CLK, SIM_RST);
inv #(0) a21b(EM7, na21a, SIM_CLK, SIM_RST);
and a21a(na21a, V1, EM7N);

and a10a(na10a, EM8);
and a10b(na10b, V1, na10a, EMRS1);
inv a10c(EM8N, na10b, SIM_CLK, SIM_RST);
inv #(0) a3b(EM8, na3a, SIM_CLK, SIM_RST);
and a3a(na3a, V1, EM8N);

and a4a(na11b_a4a, V1, SCB);
and a11a(na11a, EM9);
and a11b(na11b_a11b, V1, na11a, EMRS1);
inv a11c(EM9N, na11b, SIM_CLK, SIM_RST);
inv #(0) a4c(EM9, na4b, SIM_CLK, SIM_RST);
and a4b(na4b, V1, EM9N);

// 10-13
and a32b(na13b_a32b, V1, BDI);
and a8a(na13b_a8a, V1, BDI);
and a13a(na13a, EM10);
and a13b(na13b_a13b, V1, na13a, EMRS1);
inv a13c(EM10N, na13b, SIM_CLK, SIM_RST);
inv #(0) a14b(EM10, na14a, SIM_CLK, SIM_RST);
and a14a(na14a, V1, EM10N);

and a12a(na12a, EM11);
and a12b(na12b, V1, na12a, EMRS1);
inv a12c(EM11N, na12b, SIM_CLK, SIM_RST);
inv #(0) a5b(EM11, na5a, SIM_CLK, SIM_RST);
and a5a(na5a, V1, EM11N);

and a9a(na9a, EM12);
and a9b(na9b, V1, na9a, EMRS1);
inv a9c(EM12N, na9b, SIM_CLK, SIM_RST);
inv #(0) a2b(EM12, na2a, SIM_CLK, SIM_RST);
and a2a(na2a, V1, EM12N);

and a6a(na6a, EM13);
and a6b(na6b, V1, na6a, EMRS1);
inv a6c(EM13N, na6b, SIM_CLK, SIM_RST);
inv #(0) a7b(EM13, na7a, SIM_CLK, SIM_RST);
and a7a(na7a, V1, EM13N);

and a19a(na19a_a19a, EM1N, EM2N);
and a18a(na19a_a18a, EM7N, EM4N, EM5N, EM6N);
and a19b(na19b, V1, na19a, EM3N);
inv #(0) a19c(EMRG1, na19b, SIM_CLK, SIM_RST);

and a25a(na25a_a25a, EM9N);
and a18b(na25a_a18b, EM13N, EM10N, EM11N, EM12N);
and a25b(na25b, V1, na25a, EM8N);
inv #(0) a25c(EMRG2, na25b, SIM_CLK, SIM_RST);

and a8b(na8b, V1, G4DVN, EMA, PBAV);
and a14c(na14c, V1, na8b, G3DV);
hci a15a(EMRS1, na14c, SIM_CLK, SIM_RST);

// 10-14
and a23d(na23d, EM14);
and a23e(na23e, V1, na23d, EMRS2);
inv a23f(EM14N, na23e, SIM_CLK, SIM_RST);
inv #(0) a30e(EM14, na30d, SIM_CLK, SIM_RST);
and a30d(na30d, V1, EM14N);

and a27d(na27d, EM15);
and a27e(na27e, V1, na27d, EMRS2);
inv a27f(EM15N, na27e, SIM_CLK, SIM_RST);
inv #(0) a28d(EM15, na28c, SIM_CLK, SIM_RST);
and a28c(na28c, V1, EM15N);

and a34d(na34d, EM16);
and a34e(na34e, V1, na34d, EMRS2);
inv a34f(EM16N, na34e, SIM_CLK, SIM_RST);
inv #(0) a35d(EM16, na35c, SIM_CLK, SIM_RST);
and a35c(na35c, V1, EM16N);

and a24d(na24d, EM17);
and a24e(na24e, V1, na24d, EMRS2);
inv a24f(EM17N, na24e, SIM_CLK, SIM_RST);
inv #(0) a31e(EM17, na31d, SIM_CLK, SIM_RST);
and a31d(na31d, V1, EM17N);

and a26d(na26d, EM18);
and a26e(na26e, V1, na26d, EMRS2);
inv a26f(EM18N, na26e, SIM_CLK, SIM_RST);
inv #(0) a33d(EM18, na33c, SIM_CLK, SIM_RST);
and a33c(na33c, V1, EM18N);

and a17d(na17d, EM19);
and a17e(na17e, V1, na17d, EMRS2);
inv a17f(EM19N, na17e, SIM_CLK, SIM_RST);
inv #(0) a16d(EM19, na16c, SIM_CLK, SIM_RST);
and a16c(na16c, V1, EM19N);

and a20d(na20d, EM20);
and a20e(na20e, V1, na20d, EMRS2);
inv a20f(EM20N, na20e, SIM_CLK, SIM_RST);
inv #(0) a21d(EM20, na21c, SIM_CLK, SIM_RST);
and a21c(na21c, V1, EM20N);

// 10-15
and a10d(na10d, EM21);
and a10e(na10e, V1, na10d, EMRS2);
inv a10f(EM21N, na10e, SIM_CLK, SIM_RST);
inv #(0) a3d(EM21, na3c, SIM_CLK, SIM_RST);
and a3c(na3c, V1, EM21N);

and a11d(na11d, EM22);
and a11e(na11e, V1, na11d, EMRS2);
inv a11f(EM22N, na11e, SIM_CLK, SIM_RST);
inv #(0) a4e(EM22, na4d, SIM_CLK, SIM_RST);
and a4d(na4d, V1, EM22N);

and a13d(na13d, EM23);
and a13e(na13e, V1, na13d, EMRS2);
inv a13f(EM23N, na13e, SIM_CLK, SIM_RST);
inv #(0) a14e(EM23, na14d, SIM_CLK, SIM_RST);
and a14d(na14d, V1, EM23N);

and a5c(na12e_a5c, V1, EAMV);
and a12d(na12d, EM24);
and a12e(na12e_a12e, V1, na12d, EMRS2);
inv a12f(EM24N, na12e, SIM_CLK, SIM_RST);
inv #(0) a5e(EM24, na5d, SIM_CLK, SIM_RST);
and a5d(na5d, V1, EM24N);

and a2c(na9e_a2c, V1, EBMV);
and a9d(na9d, EM25);
and a9e(na9e_a9e, V1, na9d, EMRS2);
inv a9f(EM25N, na9e, SIM_CLK, SIM_RST);
inv #(0) a2e(EM25, na2d, SIM_CLK, SIM_RST);
and a2d(na2d, V1, EM25N);

and a7c(na6e_a7c, V1, TLCV);
and a6d(na6d, EM26);
and a6e(na6e_a6e, V1, na6d, EMRS2);
inv a6f(EM26N, na6e, SIM_CLK, SIM_RST);
inv #(0) a7e(EM26, na7d, SIM_CLK, SIM_RST);
and a7d(na7d, V1, EM26N);

and a19d(na19d_a19d, EM14N, EM15N);
and a18c(na19d_a18c, EM20N, EM17N, EM18N, EM19N);
and a19e(na19e, V1, na19d, EM16N);
inv #(0) a19f(EMRG3, na19e, SIM_CLK, SIM_RST);

and a25d(na25d_a25d, EM22N);
and a18d(na25d_a18d, EM26N, EM23N, EM24N, EM25N);
and a25e(na25e, V1, na25d, EM21N);
inv #(0) a25f(EMRG4, na25e, SIM_CLK, SIM_RST);

and a8c(na8c, V1, G4DVN, EMA, PBAV);
and a14f(na14f, V1, na8c, G3DV);
hci a15b(EMRS2, na14f, SIM_CLK, SIM_RST);

endmodule
`default_nettype wire
