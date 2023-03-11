`timescale 1ns/1ps
`default_nettype none

module error_det_sw(
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

wor na2a;
wor na2d;
wire na3a;
wire na3c;
wire na4a;
wire na4b;
wire na4d;
wire na4e;
wor na5a;
wor na5d;
wire na9b;
wire na9d;
wire na10a;
wor na10b;
wire na10d;
wor na10e;
wire na11a;
wor na11b;
wire na11d;
wor na11e;
wire na12b;
wire na12d;
wor na13a;
wire na13c;
wor na13d;
wire na13f;
wor na14a;
wor na14d;
wire na15a;
wor na15b;
wire na15d;
wor na15e;
wor na17a;
wor na17d;
wor na18a;
wor na18d;
wire na20b;
wire na20e;
wire na21a;
wire na21b;
wire na21d;
wire na21e;
wor na22a;
wire na22c;
wor na22d;
wire na22f;
wire na23a;
wire na23d;
wire na24a;
wor na24b;
wire na24d;
wor na24e;
wire na25a;
wor na25b;
wire na25d;
wor na25e;
wor na26b;
wor na26e;
wor na28b;
wor na28e;
wor na33b;
wor na33e;
wor na35b;
wor na35e;

// 10-50
a a31a(.clk(W3), .a1(COC), .a2(FSAN), .a3(DMA), .y(na24b));
a a31b(.clk(W3), .a1(CNC), .a2(FSA), .a3(DMA), .y(na24b));
a a24a(.a1(EDAC), .y(na24a));
a a24b(.clk(V1), .exp(na24a), .a1(RECN), .y(na24b));
i a24c(.a(na24b), .y(EDACN));
i a17b(.a(na17a), .y(EDAC));
a #(1) a17a(.clk(V1), .a1(EDACN), .y(na17a));
a a16a(.clk(Y3), .a1(SYNC), .a2(DMA), .y(na17a));
a a16b(.clk(V1), .a1(HOPV), .a2(RUNVN), .y(na17a));

a a6a(.clk(W3), .a1(EADM), .a2(DMA), .y(na13a));
a a6b(.clk(W3), .a1(EAIM), .a2(IMA), .y(na13a));
a #(1) a13a(.clk(V4MOD7), .a1(BRAON), .y(na13a));
i a13b(.a(na13a), .y(BRAO));
i a14c(.a(na14a), .y(BRAON));
a a14a(.clk(V4MOD7), .a1(BRAO), .y(na14a));
a a14b(.clk(W3), .exp(na13c), .a1(EADMN), .y(na14a));
a a13c(.a1(DMA), .y(na13c));
a a20a(.clk(W3), .exp(na21a), .a1(IMA), .y(na14a));
a a21a(.a1(EAIMN), .y(na21a));

a a34a(.clk(V4MOD7), .a1(DMAVN), .a2(IMAVN), .y(na26b));
a a26a(.clk(V4MOD7), .a1(SYNCN), .y(na26b));
a #(1) a26b(.clk(V4MOD7), .a1(MZOVN), .y(na26b));
i a26c(.a(na26b), .y(M0SYNC));

a a32a(.clk(W3), .a1(COC), .a2(FSAN), .a3(IMA), .y(na25b));
a a32b(.clk(W3), .a1(CNC), .a2(FSA), .a3(IMA), .y(na25b));
a a25a(.a1(EIAC), .y(na25a));
a a25b(.clk(V1), .exp(na25a), .a1(RECN), .y(na25b));
i a25c(.a(na25b), .y(EIACN));
i a18b(.a(na18a), .y(EIAC));
a #(1) a18a(.clk(V1), .a1(EIACN), .y(na18a));
a a19a(.clk(Y3), .a1(SYNC), .a2(IMA), .y(na18a));
a a19b(.clk(V1), .a1(HOPV), .a2(RUNVN), .y(na18a));

a a29a(.clk(Z7), .a1(ED0X), .a2(ED0Y), .a3(MZO), .y(na22a));
a a29b(.clk(Z7), .a1(ED2X), .a2(ED2Y), .a3(MTT), .y(na22a));
a a30a(.clk(Z7), .a1(ED4X), .a2(ED4Y), .a3(MFF), .y(na22a));
a a30b(.clk(Z7), .a1(ED6X), .a2(ED6Y), .a3(MSS), .y(na22a));
a a22a(.clk(YN), .a1(FSA), .y(na22a));
i a22b(.a(na22a), .y(FSAN));
i a23b(.a(na23a), .y(FSA));
a #(1) a23a(.clk(V1), .a1(FSAN), .y(na23a));

a a34b(.clk(V4MOD7), .a1(DMAVN), .a2(IMAVN), .y(na33b));
a a33a(.clk(V4MOD7), .a1(SYNCN), .y(na33b));
a #(1) a33b(.clk(V4MOD7), .a1(MTTVN), .y(na33b));
i a33c(.a(na33b), .y(M2SYNC));

// 10-51
a a9a(.clk(Z7), .a1(EAP), .a2(DMA), .a3(TIME), .y(na10b));
a a17c(.clk(V1), .a1(EDAC), .y(na10b));
a a10a(.a1(EADM), .y(na10a));
a a10b(.clk(V1), .exp(na10a), .a1(RECN), .y(na10b));
i a10c(.a(na10b), .y(EADMN));
i a2c(.a(na2a), .y(EADM));
a #(1) a2a(.clk(V1), .a1(EADMN), .y(na2a));
a a2b(.exp(na9b), .a1(EAPN), .y(na2a));
a a9b(.clk(Z7), .a1(EDACN), .a2(TIME), .a3(DMA), .y(na9b));

a a22c(.clk(V1), .a1(IMAVN), .y(na22c));
a a23c(.exp(na22c), .a1(EDACN), .y(na15b));
a a15a(.clk(V1), .a1(EIACN), .y(na15a));
a #(1) a15b(.exp(na15a), .a1(DMAVN), .y(na15b));
i a15c(.a(na15b), .y(EAC));

a a27a(.clk(V4MOD7), .a1(DMAVN), .a2(IMAVN), .y(na28b));
a a28a(.clk(V4MOD7), .a1(SYNCN), .y(na28b));
a #(1) a28b(.clk(V4MOD7), .a1(MFFVN), .y(na28b));
i a28c(.a(na28b), .y(M4SYNC));

a a27b(.clk(V4MOD7), .a1(DMAVN), .a2(IMAVN), .y(na35b));
a a35a(.clk(V4MOD7), .a1(SYNCN), .y(na35b));
a #(1) a35b(.clk(V4MOD7), .a1(MSSVN), .y(na35b));
i a35c(.a(na35b), .y(M6SYNC));

a a12a(.clk(Z7), .a1(EAP), .a2(IMA), .a3(TIME), .y(na11b));
a a18c(.clk(V1), .a1(EIAC), .y(na11b));
a a11a(.a1(EAIM), .y(na11a));
a a11b(.clk(V1), .exp(na11a), .a1(RECN), .y(na11b));
i a11c(.a(na11b), .y(EAIMN));
i a5c(.a(na5a), .y(EAIM));
a #(1) a5a(.clk(V1), .a1(EAIMN), .y(na5a));
a a5b(.exp(na12b), .a1(EAPN), .y(na5a));
a a12b(.clk(Z7), .a1(EIACN), .a2(TIME), .a3(IMA), .y(na12b));

a a20b(.clk(V1), .a1(DMAVN), .y(na20b));
i a20c(.a(na20b), .y(DMA));

a a21b(.clk(V1), .a1(IMAVN), .y(na21b));
i a21c(.a(na21b), .y(IMA));

a a3a(.clk(V1), .a1(EAP), .y(na3a));
i a3b(.a(na3a), .y(EAPN));

a a4a(.a1(EADMN), .a2(EAIMN), .y(na4a));
a a4b(.clk(V4MOD7), .exp(na4a), .y(na4b));
i a4c(.a(na4b), .y(EAM));

// 10-52
a a31c(.clk(W3), .a1(COC), .a2(FSBN), .a3(DMB), .y(na24e));
a a31d(.clk(W3), .a1(CNC), .a2(FSB), .a3(DMB), .y(na24e));
a a24d(.a1(EDBC), .y(na24d));
a a24e(.clk(V1), .exp(na24d), .a1(RECN), .y(na24e));
i a24f(.a(na24e), .y(EDBCN));
i a17e(.a(na17d), .y(EDBC));
a #(1) a17d(.clk(V1), .a1(EDBCN), .y(na17d));
a a16c(.clk(Y3), .a1(SYNC), .a2(DMB), .y(na17d));
a a16d(.clk(V1), .a1(HOPV), .a2(RUNVN), .y(na17d));

a a6c(.clk(W3), .a1(EBDM), .a2(DMB), .y(na13d));
a a6d(.clk(W3), .a1(EBIM), .a2(IMB), .y(na13d));
a #(1) a13d(.clk(V4MOD7), .a1(BRBON), .y(na13d));
i a13e(.a(na13d), .y(BRBO));
i a14f(.a(na14d), .y(BRBON));
a a14d(.clk(V4MOD7), .a1(BRBO), .y(na14d));
a a14e(.clk(W3), .exp(na13f), .a1(EBDMN), .y(na14d));
a a13f(.a1(DMB), .y(na13f));
a a20d(.clk(W3), .exp(na21d), .a1(IMB), .y(na14d));
a a21d(.a1(EBIMN), .y(na21d));

a a34c(.clk(V4MOD7), .a1(DMBVN), .a2(IMBVN), .y(na26e));
a a26d(.clk(V4MOD7), .a1(SYNCN), .y(na26e));
a #(1) a26e(.clk(V4MOD7), .a1(MZOVN), .y(na26e));
i a26f(.a(na26e), .y(M1SYNC));

a a32c(.clk(W3), .a1(COC), .a2(FSBN), .a3(IMB), .y(na25e));
a a32d(.clk(W3), .a1(CNC), .a2(FSB), .a3(IMB), .y(na25e));
a a25d(.a1(EIBC), .y(na25d));
a a25e(.clk(V1), .exp(na25d), .a1(RECN), .y(na25e));
i a25f(.a(na25e), .y(EIBCN));
i a18e(.a(na18d), .y(EIBC));
a #(1) a18d(.clk(V1), .a1(EIBCN), .y(na18d));
a a19c(.clk(Y3), .a1(SYNC), .a2(IMB), .y(na18d));
a a19d(.clk(V1), .a1(HOPV), .a2(RUNVN), .y(na18d));

a a29c(.clk(Z7), .a1(ED1X), .a2(ED1Y), .a3(MZO), .y(na22d));
a a29d(.clk(Z7), .a1(ED3X), .a2(ED3Y), .a3(MTT), .y(na22d));
a a30c(.clk(Z7), .a1(ED5X), .a2(ED5Y), .a3(MFF), .y(na22d));
a a30d(.clk(Z7), .a1(ED7X), .a2(ED7Y), .a3(MSS), .y(na22d));
a a22d(.clk(YN), .a1(FSB), .y(na22d));
i a22e(.a(na22d), .y(FSBN));
i a23e(.a(na23d), .y(FSB));
a #(1) a23d(.clk(V1), .a1(FSBN), .y(na23d));

a a34d(.clk(V4MOD7), .a1(DMBVN), .a2(IMBVN), .y(na33e));
a a33d(.clk(V4MOD7), .a1(SYNCN), .y(na33e));
a #(1) a33e(.clk(V4MOD7), .a1(MTTVN), .y(na33e));
i a33f(.a(na33e), .y(M3SYNC));

// 10-53
a a9c(.clk(Z7), .a1(EBP), .a2(DMB), .a3(TIME), .y(na10e));
a a17f(.clk(V1), .a1(EDBC), .y(na10e));
a a10d(.a1(EBDM), .y(na10d));
a a10e(.clk(V1), .exp(na10d), .a1(RECN), .y(na10e));
i a10f(.a(na10e), .y(EBDMN));
i a2f(.a(na2d), .y(EBDM));
a #(1) a2d(.clk(V1), .a1(EBDMN), .y(na2d));
a a2e(.exp(na9d), .a1(EBPN), .y(na2d));
a a9d(.clk(Z7), .a1(EDBCN), .a2(TIME), .a3(DMB), .y(na9d));

a a22f(.clk(V1), .a1(IMBVN), .y(na22f));
a a23f(.exp(na22f), .a1(EDBCN), .y(na15e));
a a15d(.clk(V1), .a1(EIBCN), .y(na15d));
a a15e(.exp(na15d), .a1(DMBVN), .y(na15e));
i a15f(.a(na15e), .y(EBC));

a a27c(.clk(V4MOD7), .a1(DMBVN), .a2(IMBVN), .y(na28e));
a a28d(.clk(V4MOD7), .a1(SYNCN), .y(na28e));
a #(1) a28e(.clk(V4MOD7), .a1(MFFVN), .y(na28e));
i a28f(.a(na28e), .y(M5SYNC));

a a27d(.clk(V4MOD7), .a1(DMBVN), .a2(IMBVN), .y(na35e));
a a35d(.clk(V4MOD7), .a1(SYNCN), .y(na35e));
a #(1) a35e(.clk(V4MOD7), .a1(MSSVN), .y(na35e));
i a35f(.a(na35e), .y(M7SYNC));

a a12c(.clk(Z7), .a1(EBP), .a2(IMB), .a3(TIME), .y(na11e));
a a18f(.clk(V1), .a1(EIBC), .y(na11e));
a a11d(.a1(EBIM), .y(na11d));
a a11e(.clk(V1), .exp(na11d), .a1(RECN), .y(na11e));
i a11f(.a(na11e), .y(EBIMN));
i a5f(.a(na5d), .y(EBIM));
a #(1) a5d(.clk(V1), .a1(EBIMN), .y(na5d));
a a5e(.exp(na12d), .a1(EBPN), .y(na5d));
a a12d(.clk(Z7), .a1(EIBCN), .a2(TIME), .a3(IMB), .y(na12d));

a a20e(.clk(V1), .a1(DMBVN), .y(na20e));
i a20f(.a(na20e), .y(DMB));

a a21e(.clk(V1), .a1(IMBVN), .y(na21e));
i a21f(.a(na21e), .y(IMB));

a a3c(.clk(V1), .a1(EBP), .y(na3c));
i a3d(.a(na3c), .y(EBPN));

a a4d(.a1(EBDMN), .a2(EBIMN), .y(na4d));
a a4e(.clk(V4MOD7), .exp(na4d), .y(na4e));
i a4f(.a(na4e), .y(EBM));

endmodule
`default_nettype wire
