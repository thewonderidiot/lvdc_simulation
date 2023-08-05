`timescale 1ns/1ps
`default_nettype none

module telem_control(
    input wire SIM_CLK,
    input wire SIM_RST,

    input wire V1,

    input wire A4DV,
    input wire A5DV,
    input wire C1RD,
    input wire C3RN,
    input wire CODE,
    input wire CODGV,
    input wire DAINF,
    input wire DATAV,
    input wire DC1S,
    input wire DC2S,
    input wire DC3S,
    input wire DC4S,
    input wire DLS,
    input wire DOMC1,
    input wire DOMC1N,
    input wire DOMC2,
    input wire DOMC2N,
    input wire DOR,
    input wire DSD,
    input wire ETCR,
    input wire ETCRN,
    input wire G2DV,
    input wire G3DVN,
    input wire G5DVN,
    input wire G6DV,
    input wire G6DVN,
    input wire G7DV,
    input wire GCSYNC,
    input wire ICRV,
    input wire ICR1,
    input wire ICR1N,
    input wire LGAV,
    input wire MBYPD,
    input wire MCFT1,
    input wire MCFT2,
    input wire MCFT3,
    input wire OCR,
    input wire PAAV,
    input wire PABG1V,
    input wire PBAV,
    input wire PBG2V,
    input wire PCAV,
    input wire PCG2V,
    input wire RESMV,
    input wire SSDO,
    input wire SSRV,
    input wire TLM,
    input wire TSYNC,
    input wire W1,
    input wire X8,
    input wire Y8,
    input wire Z1,

    output wire TCWN,
    output wire TRP
);

wire C1GT1;
wire C1GT2;
wire C1GT3;
wire C2GT1;
wire C2GT2;
wire C2GT3;
wire C3GT1;
wire C3GT2;
wire C3GT3;
wire C4GT1;
wire C4GT2;
wire C4GT3;
wire DIN;
wire DINN;
wire DT1;
wire DT2;
wire DT3;
wire GCSYN;
wire SSEP;
wire SSEPN;
wire SYNCP;
wire SYNCPN;
wire TCW;
wire TRPN;
wire TRPC;
wire TRPCN;
wire TSYN;
wire TSYNS;

wire na1a;
wire na1b;
wire na1b_a1b;
wire na1b_a2a;
wire na1b_a2b;
assign na1b = na1b_a1b | na1b_a2a | na1b_a2b;
wire na1e;
wire na1e_a1d;
wire na1e_a1e;
assign na1e = na1e_a1d | na1e_a1e;
wire na2c;
wire na2c_a2c;
wire na2c_a2d;
assign na2c = na2c_a2c | na2c_a2d;
wire na3a;
wire na3b;
wire na3b_a3b;
wire na3b_a10b;
assign na3b = na3b_a3b | na3b_a10b;
wire na3d;
wire na3e;
wire na3e_a3e;
wire na3e_a4c;
assign na3e = na3e_a3e | na3e_a4c;
wire na4a;
wire na4d;
wire na4d_a4d;
wire na4d_a11d;
assign na4d = na4d_a4d | na4d_a11d;
wire na5a;
wire na5b;
wire na5b_a4b;
wire na5b_a5b;
assign na5b = na5b_a4b | na5b_a5b;
wire na5e;
wire na5e_a5d;
wire na5e_a5e;
assign na5e = na5e_a5d | na5e_a5e;
wire na7a;
wire na7b;
wire na7b_a6a;
wire na7b_a6b;
wire na7b_a7b;
wire na7b_a14a;
wire na7b_a14b;
assign na7b = na7b_a6a | na7b_a6b | na7b_a7b | na7b_a14a | na7b_a14b;
wire na7d;
wire na7e;
wire na7e_a6c;
wire na7e_a6d;
wire na7e_a7e;
wire na7e_a14c;
wire na7e_a14d;
assign na7e = na7e_a6c | na7e_a6d | na7e_a7e | na7e_a14c | na7e_a14d;
wire na8a;
wire na8b;
wire na9c;
wire na10a;
wire na11a;
wire na11b;
wire na11b_a11b;
wire na11b_a18b;
assign na11b = na11b_a11b | na11b_a18b;
wire na12a;
wire na12b;
wire na12b_a12b;
wire na12b_a13a;
assign na12b = na12b_a12b | na12b_a13a;
wire na12d;
wire na12d_a12d;
wire na12d_a12e;
assign na12d = na12d_a12d & na12d_a12e;
wire na13b;
wire na13c;
wire na13c_a13c;
wire na13c_a13d;
assign na13c = na13c_a13c | na13c_a13d;
wire na15a;
wire na15b;
wire na15b_a9a;
wire na15b_a9b;
wire na15b_a15b;
wire na15b_a16b;
wire na15b_a23a;
assign na15b = na15b_a9a | na15b_a9b | na15b_a15b | na15b_a16b | na15b_a23a;
wire na16a;
wire na17a;
wire na17b;
wire na17b_a17b;
wire na17b_a23b;
wire na17b_a24a;
wire na17b_a30b;
wire na17b_a31a;
assign na17b = na17b_a17b | na17b_a23b | na17b_a24a | na17b_a30b | na17b_a31a;
wire na17d;
wire na17d_a17d;
wire na17d_a24e;
assign na17d = na17d_a17d | na17d_a24e;
wire na17e;
wire na18a;
wire na18c;
wire na18d;
wire na18d_a11e;
wire na18d_a18d;
wire na18d_a19c;
wire na18d_a19d;
wire na18d_a25c;
wire na18d_a25d;
assign na18d = na18d_a11e | na18d_a18d | na18d_a19c | na18d_a19d | na18d_a25c | na18d_a25d;
wire na19b;
wire na20b;
wire na20c;
wire na20d;
wire na20d_a20d;
wire na20d_a21d;
wire na20d_a21e;
wire na20d_a27d;
assign na20d = na20d_a20d | na20d_a21d | na20d_a21e | na20d_a27d;
wire na21a;
wire na21b;
wire na21c;
wire na22a;
wire na22b;
wire na22b_a22b;
wire na22b_a29a;
wire na22b_a29b;
assign na22b = na22b_a22b | na22b_a29a | na22b_a29b;
wire na24b;
wire na24c;
wire na24d;
wire na26a;
wire na26c;
wire na26d;
wire na28a;
wire na28b;
wire na28b_a20a;
wire na28b_a27b;
wire na28b_a28b;
assign na28b = na28b_a20a | na28b_a27b | na28b_a28b;
wire na28d;
wire na28d_a28d;
wire na28d_a28e;
assign na28d = na28d_a28d | na28d_a28e;
wire na30a;
wire na30c;
wire na31b;
wire na32a;
wire na32b;
wire na32b_a25a;
wire na32b_a25b;
wire na32b_a32b;
assign na32b = na32b_a25a | na32b_a25b | na32b_a32b;
wire na32d;
wire na33a;
wire na33b;
wire na33b_a19a;
wire na33b_a26b;
wire na33b_a27a;
wire na33b_a33b;
wire na33b_a34a;
assign na33b = na33b_a19a | na33b_a26b | na33b_a27a | na33b_a33b | na33b_a34a;
wire na33d;
wire na33d_a33d;
wire na33d_a33e;
assign na33d = na33d_a33d | na33d_a33e;
wire na34b;
wire na34c;
wire na34c_a27c;
wire na34c_a34c;
assign na34c = na34c_a27c | na34c_a34c;
wire na35b;
wire na35b_a34e;
wire na35b_a35a;
wire na35b_a35b;
assign na35b = na35b_a34e | na35b_a35a | na35b_a35b;

// 10-192
and a23a(na15b_a23a, W1, na16a, MCFT2, MCFT3, SSEP);
and a16a(na16a, DC2S, PAAV, RESMV);
and a16b(na15b_a16b, W1, DC2S, PCG2V, LGAV);
and a8a(na8a, W1, C2GT1, PAAV, MCFT3, RESMV);
and a9a(na15b_a9a, na8a, MCFT2);
and a8b(na8b, W1, RESMV, ETCR, PAAV, DC2S);
and a9b(na15b_a9b, na8b);
and a15a(na15a, C2GT2);
and a15b(na15b_a15b, V1, na15a, C2GT1);
inv a15c(C2GT3, na15b, SIM_CLK, SIM_RST);

and a2a(na1b_a2a, Y8, DLS, DC2S);
and a2b(na1b_a2b, Y8, na9c, TCWN, DOMC2, DOMC1N);
and a9c(na9c, TRP);
and a1a(na1a, C2GT3);
and a1b(na1b_a1b, V1, na1a, C2GT2);
inv #(0) a1c(C2GT1, na1b, SIM_CLK, SIM_RST);

and a10a(na10a, W1, DC2S, CODGV, MCFT1);
and a10b(na3b_a10b, na10a, PAAV, RESMV, ETCRN);
and a3a(na3a, C2GT3);
and a3b(na3b_a3b, V1, na3a, C2GT1);
inv a3c(C2GT2, na3b, SIM_CLK, SIM_RST);

and a25a(na32b_a25a, Y8, DC3S, DLS);
and a25b(na32b_a25b, Y8, na26a, TRP, TCWN, DOMC1);
and a26a(na26a, DOMC2);
and a32a(na32a, C3GT3);
and a32b(na32b_a32b, V1, na32a, C3GT2);
inv #(0) a32c(C3GT1, na32b, SIM_CLK, SIM_RST);

and a4a(na4a, W1, DC3S, CODGV, MCFT1);
and a4b(na5b_a4b, na4a, PAAV, RESMV, ETCRN);
and a5a(na5a, C3GT3);
and a5b(na5b_a5b, V1, na5a, C3GT1);
inv a5c(C3GT2, na5b, SIM_CLK, SIM_RST);

and a34a(na33b_a34a, W1, na34b, RESMV, PAAV, SSEP);
and a34b(na34b, MCFT3, MCFT2, DC3S);
and a19a(na33b_a19a, W1, LGAV, DC3S, PCG2V);
and a19b(na19b, W1, C3GT1, PAAV, MCFT3, RESMV);
and a26b(na33b_a26b, na19b, MCFT2);
and a27a(na33b_a27a, W1, na26c, ETCR, RESMV, PAAV);
and a26c(na26c, DC3S);
and a33a(na33a, C3GT2);
and a33b(na33b_a33b, V1, na33a, C3GT1);
inv a33c(C3GT3, na33b, SIM_CLK, SIM_RST);

and a27b(na28b_a27b, Y8, DLS, DC4S);
and a20a(na28b_a20a, Y8, na21a, DOMC2N, TCWN, DOMC1N);
and a21a(na21a, TRP);
and a28a(na28a, C4GT3);
and a28b(na28b_a28b, V1, na28a, C4GT2);
inv #(0) a28c(C4GT1, na28b, SIM_CLK, SIM_RST);

and a20b(na20b, W1, ETCRN, CODGV, MCFT1);
and a13a(na12b_a13a, na20b, DC4S, RESMV, PAAV);
and a12a(na12a, C4GT3);
and a12b(na12b_a12b, V1, na12a, C4GT1);
inv a12c(C4GT2, na12b, SIM_CLK, SIM_RST);

and a13b(na13b, W1, PAAV, MCFT3, MCFT2, SSEP);
and a6a(na7b_a6a, na13b, DC4S, RESMV);
and a6b(na7b_a6b, W1, PCG2V, LGAV, DC4S);
and a14a(na7b_a14a, W1, na21b, C4GT1, PAAV, RESMV);
and a21b(na21b, MCFT2, MCFT3);
and a14b(na7b_a14b, W1, na21c, RESMV, PAAV, DC4S);
and a21c(na21c, ETCR);
and a7a(na7a, C4GT2);
and a7b(na7b_a7b, V1, na7a, C4GT1);
inv a7c(C4GT3, na7b, SIM_CLK, SIM_RST);

// 10-193
and a29a(na22b_a29a, Y8, DLS, DC1S);
and a29b(na22b_a29b, Y8, na30a, DOMC2N, TCWN, DOMC1);
and a30a(na30a, TRP);
and a22a(na22a, C1GT3);
and a22b(na22b_a22b, V1, na22a, C1GT2);
inv #(0) a22c(C1GT1, na22b, SIM_CLK, SIM_RST);

and a24a(na17b_a24a, W1, na24b, RESMV, PAAV, SSEP);
and a24b(na24b, MCFT3, MCFT2, DC1S);
and a31a(na17b_a31a, W1, LGAV, DC1S, PCG2V);
and a31b(na31b, W1, C1GT1, PAAV, MCFT3, RESMV);
and a30b(na17b_a30b, na31b, MCFT2);
and a23b(na17b_a23b, W1, na30c, RESMV, ETCR, PAAV);
and a30c(na30c, DC1S);
and a17a(na17a, C1GT2);
and a17b(na17b_a17b, V1, na17a, C1GT1);
inv a17c(C1GT3, na17b, SIM_CLK, SIM_RST);

and a18a(na18a, W1, DC1S, CODGV, MCFT1);
and a18b(na11b_a18b, na18a, PAAV, RESMV, ETCRN);
and a11a(na11a, C1GT3);
and a11b(na11b_a11b, V1, na11a, C1GT1);
inv a11c(C1GT2, na11b, SIM_CLK, SIM_RST);

// 10-186
and a1d(na1e_a1d, Z1, TRP);
and a1e(na1e_a1e, V1, TRPC);
inv a1f(TRPCN, na1e, SIM_CLK, SIM_RST);
inv #(0) a2e(TRPC, na2c, SIM_CLK, SIM_RST);
and a2c(na2c_a2c, V1, TRPCN);
and a2d(na2c_a2d, Y8, SYNCPN);

and a27c(na34c_a27c, X8, SYNCP, TRPCN);
and a34c(na34c_a34c, V1, TRP);
inv a34d(TRPN, na34c, SIM_CLK, SIM_RST);
inv #(0) a33f(TRP, na33d, SIM_CLK, SIM_RST);
and a33d(na33d_a33d, V1, TRPN);
and a33e(na33d_a33e, X8, TRPC);

and a34e(na35b_a34e, X8, OCR);
and a35a(na35b_a35a, X8, TLM);
and a35b(na35b_a35b, V1, TCW);
inv a35c(TCWN, na35b, SIM_CLK, SIM_RST);
inv #(0) a28f(TCW, na28d, SIM_CLK, SIM_RST);
and a28d(na28d_a28d, V1, TCWN);
and a28e(na28d_a28e, W1, TRP);

and a4c(na3e_a4c, Y8, PABG1V);
and a3d(na3d, DT3);
and a3e(na3e_a3e, V1, na3d, DT2);
inv #(0) a3f(DT1, na3e, SIM_CLK, SIM_RST);

and a14c(na7e_a14c, Z1, LGAV, PBG2V, ETCRN);
and a14d(na7e_a14d, Z1, PBG2V, ETCRN, ICRV);
and a6c(na7e_a6c, Z1, DOR, PBG2V, ETCRN);
and a6d(na7e_a6d, Z1, PBG2V, ETCRN, SSRV);
and a7d(na7d, DT3);
and a7e(na7e_a7e, V1, na7d, DT1);
inv a7f(DT2, na7e, SIM_CLK, SIM_RST);

and a12d(na12d_a12d, Z1, G7DV, A5DV, A4DV, MBYPD);
and a12e(na12d_a12e, PCAV, G6DVN, C1RD, C3RN);
and a5d(na5e_a5d, na12d);
and a5e(na5e_a5e, V1, SSEPN);
inv #(0) a5f(SSEP, na5e, SIM_CLK, SIM_RST);
inv a4e(SSEPN, na4d, SIM_CLK, SIM_RST);
and a4d(na4d_a4d, V1, SSEP);
and a11d(na4d_a11d, Z1, PAAV, G3DVN, G2DV);

and a11e(na18d_a11e, Z1, PBG2V, CODE);
and a19c(na18d_a19c, Z1, ETCR, PBG2V);
and a20c(na20c, Y8, PCAV);
and a19d(na18d_a19d, na20c, G2DV, G3DVN, ICRV);
and a24c(na24c, Y8, G6DV);
and a25c(na18d_a25c, na24c, PBAV, G5DVN, LGAV);
and a25d(na18d_a25d, Z1, SSDO, PBG2V);
and a18c(na18c, DT2);
and a18d(na18d_a18d, V1, na18c, DT1);
inv a18e(DT3, na18d, SIM_CLK, SIM_RST);

// 10-187
and a21d(na20d_a21d, W1, DSD, DT2, DT1);
and a21e(na20d_a21e, X8, DT3, DT1, DAINF);
and a27d(na20d_a27d, W1, DATAV, DT3, DT2);
and a20d(na20d_a20d, V1, DIN);
inv a20e(DINN, na20d, SIM_CLK, SIM_RST);
inv #(0) a13e(DIN, na13c, SIM_CLK, SIM_RST);
and a13c(na13c_a13c, V1, DINN);
and a13d(na13c_a13d, Z1);

ib ib1(TSYNS, TSYNC);

and a26d(na26d, V1, TSYNS);
inv a26e(TSYN, na26d, SIM_CLK, SIM_RST);

and a24d(na24d, V1, ICR1N);
and a24e(na17d_a24e, na24d, TSYN);
and a17d(na17d_a17d, V1, na17e, GCSYN);
and a17e(na17e, ICR1);
inv #(0) a17f(SYNCP, na17d, SIM_CLK, SIM_RST);

dia a8c(GCSYN, GCSYNC, SIM_CLK, SIM_RST);

and a32d(na32d, V1, SYNCP);
inv a32e(SYNCPN, na32d, SIM_CLK, SIM_RST);

endmodule
`default_nettype wire
