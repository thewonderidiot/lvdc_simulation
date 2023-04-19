`timescale 1ns/1ps
`default_nettype none

module error_det_sw(
    input wire SIM_CLK,
    input wire SIM_RST,
    input wire V1,
    input wire V4MOD7,
    input wire CNC,
    input wire COC,
    input wire DMAVN,
    input wire DMBVN,
    input wire EAP,
    input wire EBP,
    input wire ED0X,
    input wire ED0Y,
    input wire ED1X,
    input wire ED1Y,
    input wire ED2X,
    input wire ED2Y,
    input wire ED3X,
    input wire ED3Y,
    input wire ED4X,
    input wire ED4Y,
    input wire ED5X,
    input wire ED5Y,
    input wire ED6X,
    input wire ED6Y,
    input wire ED7X,
    input wire ED7Y,
    input wire HOPV,
    input wire IMAVN,
    input wire IMBVN,
    input wire MZO,
    input wire MZOVN,
    input wire MTT,
    input wire MTTVN,
    input wire MFF,
    input wire MFFVN,
    input wire MSS,
    input wire MSSVN,
    input wire RECN,
    input wire RUNVN,
    input wire SYNC,
    input wire SYNCN,
    input wire TIME,
    input wire W3,
    input wire Y3,
    input wire YN,
    input wire Z7,
    output wire BRAO,
    output wire BRAON,
    output wire BRBO,
    output wire BRBON,
    output wire DMA,
    output wire DMB,
    output wire EAC,
    output wire EBC,
    output wire IMA,
    output wire IMB,
    output wire M0SYNC,
    output wire M1SYNC,
    output wire M2SYNC,
    output wire M3SYNC,
    output wire M4SYNC,
    output wire M5SYNC,
    output wire M6SYNC,
    output wire M7SYNC
);

wire EADM;
wire EADMN;
wire EAIM;
wire EAIMN;
wire EAM;
wire EAPN;
wire EBDM;
wire EBDMN;
wire EBIM;
wire EBIMN;
wire EBM;
wire EBPN;
wire EDAC;
wire EDACN;
wire EDBC;
wire EDBCN;
wire EIAC;
wire EIACN;
wire EIBC;
wire EIBCN;
wire FSA;
wire FSAN;
wire FSB;
wire FSBN;

wire na2a;
wire na2a_a2a;
wire na2a_a2b;
assign na2a = na2a_a2a | na2a_a2b;
wire na2d;
wire na2d_a2d;
wire na2d_a2e;
assign na2d = na2d_a2d | na2d_a2e;
wire na3a;
wire na3c;
wire na4a;
wire na4b;
wire na4d;
wire na4e;
wire na5a;
wire na5a_a5a;
wire na5a_a5b;
assign na5a = na5a_a5a | na5a_a5b;
wire na5d;
wire na5d_a5d;
wire na5d_a5e;
assign na5d = na5d_a5d | na5d_a5e;
wire na9b;
wire na9d;
wire na10a;
wire na10b;
wire na10b_a9a;
wire na10b_a17c;
wire na10b_a10b;
assign na10b = na10b_a9a | na10b_a17c | na10b_a10b;
wire na10d;
wire na10e;
wire na10e_a9c;
wire na10e_a17f;
wire na10e_a10e;
assign na10e = na10e_a9c | na10e_a17f | na10e_a10e;
wire na11a;
wire na11b;
wire na11b_a12a;
wire na11b_a18c;
wire na11b_a11b;
assign na11b = na11b_a12a | na11b_a18c | na11b_a11b;
wire na11d;
wire na11e;
wire na11e_a12c;
wire na11e_a18f;
wire na11e_a11e;
assign na11e = na11e_a12c | na11e_a18f | na11e_a11e;
wire na12b;
wire na12d;
wire na13a;
wire na13a_a6a;
wire na13a_a6b;
wire na13a_a13a;
assign na13a = na13a_a6a | na13a_a6b | na13a_a13a;
wire na13c;
wire na13d;
wire na13d_a6c;
wire na13d_a6d;
wire na13d_a13d;
assign na13d = na13d_a6c | na13d_a6d | na13d_a13d;
wire na13f;
wire na14a;
wire na14a_a14a;
wire na14a_a14b;
wire na14a_a20a;
assign na14a = na14a_a14a | na14a_a14b | na14a_a20a;
wire na14d;
wire na14d_a14d;
wire na14d_a14e;
wire na14d_a20d;
assign na14d = na14d_a14d | na14d_a14e | na14d_a20d;
wire na15a;
wire na15b;
wire na15b_a23c;
wire na15b_a15b;
assign na15b = na15b_a23c | na15b_a15b;
wire na15d;
wire na15e;
wire na15e_a23f;
wire na15e_a15e;
assign na15e = na15e_a23f | na15e_a15e;
wire na17a;
wire na17a_a17a;
wire na17a_a16a;
wire na17a_a16b;
assign na17a = na17a_a17a | na17a_a16a | na17a_a16b;
wire na17d;
wire na17d_a17d;
wire na17d_a16c;
wire na17d_a16d;
assign na17d = na17d_a17d | na17d_a16c | na17d_a16d;
wire na18a;
wire na18a_a18a;
wire na18a_a19a;
wire na18a_a19b;
assign na18a = na18a_a18a | na18a_a19a | na18a_a19b;
wire na18d;
wire na18d_a18d;
wire na18d_a19c;
wire na18d_a19d;
assign na18d = na18d_a18d | na18d_a19c | na18d_a19d;
wire na20b;
wire na20e;
wire na21a;
wire na21b;
wire na21d;
wire na21e;
wire na22a;
wire na22a_a29a;
wire na22a_a29b;
wire na22a_a30a;
wire na22a_a30b;
wire na22a_a22a;
assign na22a = na22a_a29a | na22a_a29b | na22a_a30a | na22a_a30b | na22a_a22a;
wire na22c;
wire na22d;
wire na22d_a29c;
wire na22d_a29d;
wire na22d_a30c;
wire na22d_a30d;
wire na22d_a22d;
assign na22d = na22d_a29c | na22d_a29d | na22d_a30c | na22d_a30d | na22d_a22d;
wire na22f;
wire na23a;
wire na23d;
wire na24a;
wire na24b;
wire na24b_a31a;
wire na24b_a31b;
wire na24b_a24b;
assign na24b = na24b_a31a | na24b_a31b | na24b_a24b;
wire na24d;
wire na24e;
wire na24e_a31c;
wire na24e_a31d;
wire na24e_a24e;
assign na24e = na24e_a31c | na24e_a31d | na24e_a24e;
wire na25a;
wire na25b;
wire na25b_a32a;
wire na25b_a32b;
wire na25b_a25b;
assign na25b = na25b_a32a | na25b_a32b | na25b_a25b;
wire na25d;
wire na25e;
wire na25e_a32c;
wire na25e_a32d;
wire na25e_a25e;
assign na25e = na25e_a32c | na25e_a32d | na25e_a25e;
wire na26b;
wire na26b_a34a;
wire na26b_a26a;
wire na26b_a26b;
assign na26b = na26b_a34a | na26b_a26a | na26b_a26b;
wire na26e;
wire na26e_a34c;
wire na26e_a26d;
wire na26e_a26e;
assign na26e = na26e_a34c | na26e_a26d | na26e_a26e;
wire na28b;
wire na28b_a27a;
wire na28b_a28a;
wire na28b_a28b;
assign na28b = na28b_a27a | na28b_a28a | na28b_a28b;
wire na28e;
wire na28e_a27c;
wire na28e_a28d;
wire na28e_a28e;
assign na28e = na28e_a27c | na28e_a28d | na28e_a28e;
wire na33b;
wire na33b_a34b;
wire na33b_a33a;
wire na33b_a33b;
assign na33b = na33b_a34b | na33b_a33a | na33b_a33b;
wire na33e;
wire na33e_a34d;
wire na33e_a33d;
wire na33e_a33e;
assign na33e = na33e_a34d | na33e_a33d | na33e_a33e;
wire na35b;
wire na35b_a27b;
wire na35b_a35a;
wire na35b_a35b;
assign na35b = na35b_a27b | na35b_a35a | na35b_a35b;
wire na35e;
wire na35e_a27d;
wire na35e_a35d;
wire na35e_a35e;
assign na35e = na35e_a27d | na35e_a35d | na35e_a35e;

// 10-50
and a31a(na24b_a31a, W3, COC, FSAN, DMA);
and a31b(na24b_a31b, W3, CNC, FSA, DMA);
and a24a(na24a, EDAC);
and a24b(na24b_a24b, V1, na24a, RECN);
inv a24c(EDACN, na24b, SIM_CLK, SIM_RST);
inv #(0) a17b(EDAC, na17a, SIM_CLK, SIM_RST);
and a17a(na17a_a17a, V1, EDACN);
and a16a(na17a_a16a, Y3, SYNC, DMA);
and a16b(na17a_a16b, V1, HOPV, RUNVN);

and a6a(na13a_a6a, W3, EADM, DMA);
and a6b(na13a_a6b, W3, EAIM, IMA);
and a13a(na13a_a13a, V4MOD7, BRAON);
inv #(0) a13b(BRAO, na13a, SIM_CLK, SIM_RST);
inv a14c(BRAON, na14a, SIM_CLK, SIM_RST);
and a14a(na14a_a14a, V4MOD7, BRAO);
and a14b(na14a_a14b, W3, na13c, EADMN);
and a13c(na13c, DMA);
and a20a(na14a_a20a, W3, na21a, IMA);
and a21a(na21a, EAIMN);

and a34a(na26b_a34a, V4MOD7, DMAVN, IMAVN);
and a26a(na26b_a26a, V4MOD7, SYNCN);
and a26b(na26b_a26b, V4MOD7, MZOVN);
inv #(0) a26c(M0SYNC, na26b, SIM_CLK, SIM_RST);

and a32a(na25b_a32a, W3, COC, FSAN, IMA);
and a32b(na25b_a32b, W3, CNC, FSA, IMA);
and a25a(na25a, EIAC);
and a25b(na25b_a25b, V1, na25a, RECN);
inv a25c(EIACN, na25b, SIM_CLK, SIM_RST);
inv #(0) a18b(EIAC, na18a, SIM_CLK, SIM_RST);
and a18a(na18a_a18a, V1, EIACN);
and a19a(na18a_a19a, Y3, SYNC, IMA);
and a19b(na18a_a19b, V1, HOPV, RUNVN);

and a29a(na22a_a29a, Z7, ED0X, ED0Y, MZO);
and a29b(na22a_a29b, Z7, ED2X, ED2Y, MTT);
and a30a(na22a_a30a, Z7, ED4X, ED4Y, MFF);
and a30b(na22a_a30b, Z7, ED6X, ED6Y, MSS);
and a22a(na22a_a22a, YN, FSA);
inv a22b(FSAN, na22a, SIM_CLK, SIM_RST);
inv #(0) a23b(FSA, na23a, SIM_CLK, SIM_RST);
and a23a(na23a, V1, FSAN);

and a34b(na33b_a34b, V4MOD7, DMAVN, IMAVN);
and a33a(na33b_a33a, V4MOD7, SYNCN);
and a33b(na33b_a33b, V4MOD7, MTTVN);
inv #(0) a33c(M2SYNC, na33b, SIM_CLK, SIM_RST);

// 10-51
and a9a(na10b_a9a, Z7, EAP, DMA, TIME);
and a17c(na10b_a17c, V1, EDAC);
and a10a(na10a, EADM);
and a10b(na10b_a10b, V1, na10a, RECN);
inv a10c(EADMN, na10b, SIM_CLK, SIM_RST);
inv #(0) a2c(EADM, na2a, SIM_CLK, SIM_RST);
and a2a(na2a_a2a, V1, EADMN);
and a2b(na2a_a2b, na9b, EAPN);
and a9b(na9b, Z7, EDACN, TIME, DMA);

and a22c(na22c, V1, IMAVN);
and a23c(na15b_a23c, na22c, EDACN);
and a15a(na15a, V1, EIACN);
and a15b(na15b_a15b, na15a, DMAVN);
inv #(0) a15c(EAC, na15b, SIM_CLK, SIM_RST);

and a27a(na28b_a27a, V4MOD7, DMAVN, IMAVN);
and a28a(na28b_a28a, V4MOD7, SYNCN);
and a28b(na28b_a28b, V4MOD7, MFFVN);
inv #(0) a28c(M4SYNC, na28b, SIM_CLK, SIM_RST);

and a27b(na35b_a27b, V4MOD7, DMAVN, IMAVN);
and a35a(na35b_a35a, V4MOD7, SYNCN);
and a35b(na35b_a35b, V4MOD7, MSSVN);
inv #(0) a35c(M6SYNC, na35b, SIM_CLK, SIM_RST);

and a12a(na11b_a12a, Z7, EAP, IMA, TIME);
and a18c(na11b_a18c, V1, EIAC);
and a11a(na11a, EAIM);
and a11b(na11b_a11b, V1, na11a, RECN);
inv a11c(EAIMN, na11b, SIM_CLK, SIM_RST);
inv #(0) a5c(EAIM, na5a, SIM_CLK, SIM_RST);
and a5a(na5a_a5a, V1, EAIMN);
and a5b(na5a_a5b, na12b, EAPN);
and a12b(na12b, Z7, EIACN, TIME, IMA);

and a20b(na20b, V1, DMAVN);
inv a20c(DMA, na20b, SIM_CLK, SIM_RST);

and a21b(na21b, V1, IMAVN);
inv a21c(IMA, na21b, SIM_CLK, SIM_RST);

and a3a(na3a, V1, EAP);
inv a3b(EAPN, na3a, SIM_CLK, SIM_RST);

and a4a(na4a, EADMN, EAIMN);
and a4b(na4b, V4MOD7, na4a);
inv a4c(EAM, na4b, SIM_CLK, SIM_RST);

// 10-52
and a31c(na24e_a31c, W3, COC, FSBN, DMB);
and a31d(na24e_a31d, W3, CNC, FSB, DMB);
and a24d(na24d, EDBC);
and a24e(na24e_a24e, V1, na24d, RECN);
inv a24f(EDBCN, na24e, SIM_CLK, SIM_RST);
inv #(0) a17e(EDBC, na17d, SIM_CLK, SIM_RST);
and a17d(na17d_a17d, V1, EDBCN);
and a16c(na17d_a16c, Y3, SYNC, DMB);
and a16d(na17d_a16d, V1, HOPV, RUNVN);

and a6c(na13d_a6c, W3, EBDM, DMB);
and a6d(na13d_a6d, W3, EBIM, IMB);
and a13d(na13d_a13d, V4MOD7, BRBON);
inv #(0) a13e(BRBO, na13d, SIM_CLK, SIM_RST);
inv a14f(BRBON, na14d, SIM_CLK, SIM_RST);
and a14d(na14d_a14d, V4MOD7, BRBO);
and a14e(na14d_a14e, W3, na13f, EBDMN);
and a13f(na13f, DMB);
and a20d(na14d_a20d, W3, na21d, IMB);
and a21d(na21d, EBIMN);

and a34c(na26e_a34c, V4MOD7, DMBVN, IMBVN);
and a26d(na26e_a26d, V4MOD7, SYNCN);
and a26e(na26e_a26e, V4MOD7, MZOVN);
inv #(0) a26f(M1SYNC, na26e, SIM_CLK, SIM_RST);

and a32c(na25e_a32c, W3, COC, FSBN, IMB);
and a32d(na25e_a32d, W3, CNC, FSB, IMB);
and a25d(na25d, EIBC);
and a25e(na25e_a25e, V1, na25d, RECN);
inv a25f(EIBCN, na25e, SIM_CLK, SIM_RST);
inv #(0) a18e(EIBC, na18d, SIM_CLK, SIM_RST);
and a18d(na18d_a18d, V1, EIBCN);
and a19c(na18d_a19c, Y3, SYNC, IMB);
and a19d(na18d_a19d, V1, HOPV, RUNVN);

and a29c(na22d_a29c, Z7, ED1X, ED1Y, MZO);
and a29d(na22d_a29d, Z7, ED3X, ED3Y, MTT);
and a30c(na22d_a30c, Z7, ED5X, ED5Y, MFF);
and a30d(na22d_a30d, Z7, ED7X, ED7Y, MSS);
and a22d(na22d_a22d, YN, FSB);
inv a22e(FSBN, na22d, SIM_CLK, SIM_RST);
inv #(0) a23e(FSB, na23d, SIM_CLK, SIM_RST);
and a23d(na23d, V1, FSBN);

and a34d(na33e_a34d, V4MOD7, DMBVN, IMBVN);
and a33d(na33e_a33d, V4MOD7, SYNCN);
and a33e(na33e_a33e, V4MOD7, MTTVN);
inv #(0) a33f(M3SYNC, na33e, SIM_CLK, SIM_RST);

// 10-53
and a9c(na10e_a9c, Z7, EBP, DMB, TIME);
and a17f(na10e_a17f, V1, EDBC);
and a10d(na10d, EBDM);
and a10e(na10e_a10e, V1, na10d, RECN);
inv a10f(EBDMN, na10e, SIM_CLK, SIM_RST);
inv #(0) a2f(EBDM, na2d, SIM_CLK, SIM_RST);
and a2d(na2d_a2d, V1, EBDMN);
and a2e(na2d_a2e, na9d, EBPN);
and a9d(na9d, Z7, EDBCN, TIME, DMB);

and a22f(na22f, V1, IMBVN);
and a23f(na15e_a23f, na22f, EDBCN);
and a15d(na15d, V1, EIBCN);
and a15e(na15e_a15e, na15d, DMBVN);
inv a15f(EBC, na15e, SIM_CLK, SIM_RST);

and a27c(na28e_a27c, V4MOD7, DMBVN, IMBVN);
and a28d(na28e_a28d, V4MOD7, SYNCN);
and a28e(na28e_a28e, V4MOD7, MFFVN);
inv #(0) a28f(M5SYNC, na28e, SIM_CLK, SIM_RST);

and a27d(na35e_a27d, V4MOD7, DMBVN, IMBVN);
and a35d(na35e_a35d, V4MOD7, SYNCN);
and a35e(na35e_a35e, V4MOD7, MSSVN);
inv #(0) a35f(M7SYNC, na35e, SIM_CLK, SIM_RST);

and a12c(na11e_a12c, Z7, EBP, IMB, TIME);
and a18f(na11e_a18f, V1, EIBC);
and a11d(na11d, EBIM);
and a11e(na11e_a11e, V1, na11d, RECN);
inv a11f(EBIMN, na11e, SIM_CLK, SIM_RST);
inv #(0) a5f(EBIM, na5d, SIM_CLK, SIM_RST);
and a5d(na5d_a5d, V1, EBIMN);
and a5e(na5d_a5e, na12d, EBPN);
and a12d(na12d, Z7, EIBCN, TIME, IMB);

and a20e(na20e, V1, DMBVN);
inv a20f(DMB, na20e, SIM_CLK, SIM_RST);

and a21e(na21e, V1, IMBVN);
inv a21f(IMB, na21e, SIM_CLK, SIM_RST);

and a3c(na3c, V1, EBP);
inv a3d(EBPN, na3c, SIM_CLK, SIM_RST);

and a4d(na4d, EBDMN, EBIMN);
and a4e(na4e, V4MOD7, na4d);
inv a4f(EBM, na4e, SIM_CLK, SIM_RST);

endmodule
`default_nettype wire
