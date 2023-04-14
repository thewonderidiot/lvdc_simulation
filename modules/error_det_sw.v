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
and a31a(na24b, W3, COC, FSAN, DMA);
and a31b(na24b, W3, CNC, FSA, DMA);
and a24a(na24a, EDAC);
and a24b(na24b, V1, na24a, RECN);
inv a24c(EDACN, na24b);
inv #(0) a17b(EDAC, na17a);
and a17a(na17a, V1, EDACN);
and a16a(na17a, Y3, SYNC, DMA);
and a16b(na17a, V1, HOPV, RUNVN);

and a6a(na13a, W3, EADM, DMA);
and a6b(na13a, W3, EAIM, IMA);
and a13a(na13a, V4MOD7, BRAON);
inv #(0) a13b(BRAO, na13a);
inv a14c(BRAON, na14a);
and a14a(na14a, V4MOD7, BRAO);
and a14b(na14a, W3, na13c, EADMN);
and a13c(na13c, DMA);
and a20a(na14a, W3, na21a, IMA);
and a21a(na21a, EAIMN);

and a34a(na26b, V4MOD7, DMAVN, IMAVN);
and a26a(na26b, V4MOD7, SYNCN);
and a26b(na26b, V4MOD7, MZOVN);
inv #(0) a26c(M0SYNC, na26b);

and a32a(na25b, W3, COC, FSAN, IMA);
and a32b(na25b, W3, CNC, FSA, IMA);
and a25a(na25a, EIAC);
and a25b(na25b, V1, na25a, RECN);
inv a25c(EIACN, na25b);
inv #(0) a18b(EIAC, na18a);
and a18a(na18a, V1, EIACN);
and a19a(na18a, Y3, SYNC, IMA);
and a19b(na18a, V1, HOPV, RUNVN);

and a29a(na22a, Z7, ED0X, ED0Y, MZO);
and a29b(na22a, Z7, ED2X, ED2Y, MTT);
and a30a(na22a, Z7, ED4X, ED4Y, MFF);
and a30b(na22a, Z7, ED6X, ED6Y, MSS);
and a22a(na22a, YN, FSA);
inv a22b(FSAN, na22a);
inv #(0) a23b(FSA, na23a);
and a23a(na23a, V1, FSAN);

and a34b(na33b, V4MOD7, DMAVN, IMAVN);
and a33a(na33b, V4MOD7, SYNCN);
and a33b(na33b, V4MOD7, MTTVN);
inv #(0) a33c(M2SYNC, na33b);

// 10-51
and a9a(na10b, Z7, EAP, DMA, TIME);
and a17c(na10b, V1, EDAC);
and a10a(na10a, EADM);
and a10b(na10b, V1, na10a, RECN);
inv a10c(EADMN, na10b);
inv #(0) a2c(EADM, na2a);
and a2a(na2a, V1, EADMN);
and a2b(na2a, na9b, EAPN);
and a9b(na9b, Z7, EDACN, TIME, DMA);

and a22c(na22c, V1, IMAVN);
and a23c(na15b, na22c, EDACN);
and a15a(na15a, V1, EIACN);
and a15b(na15b, na15a, DMAVN);
inv #(0) a15c(EAC, na15b);

and a27a(na28b, V4MOD7, DMAVN, IMAVN);
and a28a(na28b, V4MOD7, SYNCN);
and a28b(na28b, V4MOD7, MFFVN);
inv #(0) a28c(M4SYNC, na28b);

and a27b(na35b, V4MOD7, DMAVN, IMAVN);
and a35a(na35b, V4MOD7, SYNCN);
and a35b(na35b, V4MOD7, MSSVN);
inv #(0) a35c(M6SYNC, na35b);

and a12a(na11b, Z7, EAP, IMA, TIME);
and a18c(na11b, V1, EIAC);
and a11a(na11a, EAIM);
and a11b(na11b, V1, na11a, RECN);
inv a11c(EAIMN, na11b);
inv #(0) a5c(EAIM, na5a);
and a5a(na5a, V1, EAIMN);
and a5b(na5a, na12b, EAPN);
and a12b(na12b, Z7, EIACN, TIME, IMA);

and a20b(na20b, V1, DMAVN);
inv a20c(DMA, na20b);

and a21b(na21b, V1, IMAVN);
inv a21c(IMA, na21b);

and a3a(na3a, V1, EAP);
inv a3b(EAPN, na3a);

and a4a(na4a, EADMN, EAIMN);
and a4b(na4b, V4MOD7, na4a);
inv a4c(EAM, na4b);

// 10-52
and a31c(na24e, W3, COC, FSBN, DMB);
and a31d(na24e, W3, CNC, FSB, DMB);
and a24d(na24d, EDBC);
and a24e(na24e, V1, na24d, RECN);
inv a24f(EDBCN, na24e);
inv #(0) a17e(EDBC, na17d);
and a17d(na17d, V1, EDBCN);
and a16c(na17d, Y3, SYNC, DMB);
and a16d(na17d, V1, HOPV, RUNVN);

and a6c(na13d, W3, EBDM, DMB);
and a6d(na13d, W3, EBIM, IMB);
and a13d(na13d, V4MOD7, BRBON);
inv #(0) a13e(BRBO, na13d);
inv a14f(BRBON, na14d);
and a14d(na14d, V4MOD7, BRBO);
and a14e(na14d, W3, na13f, EBDMN);
and a13f(na13f, DMB);
and a20d(na14d, W3, na21d, IMB);
and a21d(na21d, EBIMN);

and a34c(na26e, V4MOD7, DMBVN, IMBVN);
and a26d(na26e, V4MOD7, SYNCN);
and a26e(na26e, V4MOD7, MZOVN);
inv #(0) a26f(M1SYNC, na26e);

and a32c(na25e, W3, COC, FSBN, IMB);
and a32d(na25e, W3, CNC, FSB, IMB);
and a25d(na25d, EIBC);
and a25e(na25e, V1, na25d, RECN);
inv a25f(EIBCN, na25e);
inv #(0) a18e(EIBC, na18d);
and a18d(na18d, V1, EIBCN);
and a19c(na18d, Y3, SYNC, IMB);
and a19d(na18d, V1, HOPV, RUNVN);

and a29c(na22d, Z7, ED1X, ED1Y, MZO);
and a29d(na22d, Z7, ED3X, ED3Y, MTT);
and a30c(na22d, Z7, ED5X, ED5Y, MFF);
and a30d(na22d, Z7, ED7X, ED7Y, MSS);
and a22d(na22d, YN, FSB);
inv a22e(FSBN, na22d);
inv #(0) a23e(FSB, na23d);
and a23d(na23d, V1, FSBN);

and a34d(na33e, V4MOD7, DMBVN, IMBVN);
and a33d(na33e, V4MOD7, SYNCN);
and a33e(na33e, V4MOD7, MTTVN);
inv #(0) a33f(M3SYNC, na33e);

// 10-53
and a9c(na10e, Z7, EBP, DMB, TIME);
and a17f(na10e, V1, EDBC);
and a10d(na10d, EBDM);
and a10e(na10e, V1, na10d, RECN);
inv a10f(EBDMN, na10e);
inv #(0) a2f(EBDM, na2d);
and a2d(na2d, V1, EBDMN);
and a2e(na2d, na9d, EBPN);
and a9d(na9d, Z7, EDBCN, TIME, DMB);

and a22f(na22f, V1, IMBVN);
and a23f(na15e, na22f, EDBCN);
and a15d(na15d, V1, EIBCN);
and a15e(na15e, na15d, DMBVN);
inv a15f(EBC, na15e);

and a27c(na28e, V4MOD7, DMBVN, IMBVN);
and a28d(na28e, V4MOD7, SYNCN);
and a28e(na28e, V4MOD7, MFFVN);
inv #(0) a28f(M5SYNC, na28e);

and a27d(na35e, V4MOD7, DMBVN, IMBVN);
and a35d(na35e, V4MOD7, SYNCN);
and a35e(na35e, V4MOD7, MSSVN);
inv #(0) a35f(M7SYNC, na35e);

and a12c(na11e, Z7, EBP, IMB, TIME);
and a18f(na11e, V1, EIBC);
and a11d(na11d, EBIM);
and a11e(na11e, V1, na11d, RECN);
inv a11f(EBIMN, na11e);
inv #(0) a5f(EBIM, na5d);
and a5d(na5d, V1, EBIMN);
and a5e(na5d, na12d, EBPN);
and a12d(na12d, Z7, EIBCN, TIME, IMB);

and a20e(na20e, V1, DMBVN);
inv a20f(DMB, na20e);

and a21e(na21e, V1, IMBVN);
inv a21f(IMB, na21e);

and a3c(na3c, V1, EBP);
inv a3d(EBPN, na3c);

and a4d(na4d, EBDMN, EBIMN);
and a4e(na4e, V4MOD7, na4d);
inv a4f(EBM, na4e);

endmodule
`default_nettype wire
