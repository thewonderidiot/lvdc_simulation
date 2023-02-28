`timescale 1ns/1ps
`default_nettype none

module buffer_register_12(
    input wire v1,
    input wire aNcbrvn,
    input wire aNsbryv,
    input wire aNsbrzv,
    input wire aNtr1v,
    input wire aNtr2v,
    input wire aNtr3v,
    input wire aNtr4v,
    input wire aNtr5v,
    input wire aNtr7v,
    input wire aNtr8v,
    input wire aNtr10v,
    input wire aNtr11v,
    input wire aNtr13v,
    input wire mAsa1,
    input wire mAsa2,
    input wire mAsa3,
    input wire mAsa4,
    input wire mAsa5,
    input wire mAsa7,
    input wire mAsa8,
    input wire mAsa10,
    input wire mAsa11,
    input wire mAsa13,
    input wire mBsa1,
    input wire mBsa2,
    input wire mBsa3,
    input wire mBsa4,
    input wire mBsa5,
    input wire mBsa7,
    input wire mBsa8,
    input wire mBsa10,
    input wire mBsa11,
    input wire mBsa13,
    input wire mCsa1,
    input wire mCsa2,
    input wire mCsa3,
    input wire mCsa4,
    input wire mCsa5,
    input wire mCsa7,
    input wire mCsa8,
    input wire mCsa10,
    input wire mCsa11,
    input wire mCsa13,
    input wire mDsa1,
    input wire mDsa2,
    input wire mDsa3,
    input wire mDsa4,
    input wire mDsa5,
    input wire mDsa7,
    input wire mDsa8,
    input wire mDsa10,
    input wire mDsa11,
    input wire mDsa13
);

wire brX1;
wire brX1n;
wire brX2;
wire brX2n;
wire brX3;
wire brX3n;
wire brX4;
wire brX4n;
wire brX5;
wire brX5n;
wire brX7;
wire brX7n;
wire brX8;
wire brX8n;
wire brX10;
wire brX10n;
wire brX11;
wire brX11n;
wire brX13;
wire brX13n;

wire na8a;
wire na8b;
wire na8d;
wire na8e;
wire na10a;
wor na10b;
wire na10d;
wor na10e;
wire na11c;
wire na11f;
wire na13a;
wire na13d;
wire na14b;
wire na14e;
wire na15a;
wor na15b;
wire na15d;
wor na15e;
wire na17b;
wire na17e;
wire na21a;
wor na21b;
wire na21d;
wor na21e;
wire na22b;
wire na22e;
wire na23b;
wire na23e;
wire na27b;
wire na27e;
wire na28b;
wire na28e;
wire na29a;
wor na29b;
wire na29d;
wor na29e;
wire na35a;
wor na35b;
wire na35d;
wor na35e;

// 10-128, 10-132
a a30a(.clk(mAsa1), .y(na29b));
a a30b(.clk(mBsa1), .y(na29b));
a a30c(.clk(mCsa1), .y(na29b));
a a23a(.clk(mDsa1), .y(na29b));
a a23b(.clk(v1), .a1(aNsbrzv), .y(na23b));
a a22a(.exp(na23b), .a1(aNtr1v), .y(na29b));
a a29a(.a1(aNcbrvn), .y(na29a));
a a29b(.clk(v1), .exp(na29a), .a1(brX1), .y(na29b));
i a29c(.a(na29b), .y(brX1n));
i a22c(.a(na22b), .y(brX1));
a #(1) a22b(.clk(v1), .a1(brX1n), .y(na22b));

a a23c(.clk(mAsa2), .y(na15b));
a a16a(.clk(mBsa2), .y(na15b));
a a16b(.clk(mCsa2), .y(na15b));
a a16c(.clk(mDsa2), .y(na15b));
a a9a(.clk(v1), .exp(na8a), .y(na15b));
a a8a(.a1(aNtr2v), .a2(aNsbrzv), .y(na8a));
a a15a(.a1(aNcbrvn), .y(na15a));
a a15b(.clk(v1), .exp(na15a), .a1(brX2), .y(na15b));
i a15c(.a(na15b), .y(brX2n));
i a8c(.a(na8b), .y(brX2));
a #(1) a8b(.clk(v1), .a1(brX2n), .y(na8b));

a a9b(.clk(mAsa4), .y(na10b));
a a9c(.clk(mBsa4), .y(na10b));
a a11a(.clk(mCsa4), .y(na10b));
a a11b(.clk(mDsa4), .y(na10b));
a a11c(.clk(v1), .a1(aNtr4v), .y(na11c));
a a17a(.exp(na11c), .a1(aNsbrzv), .y(na10b));
a a10a(.a1(aNcbrvn), .y(na10a));
a a10b(.clk(v1), .exp(na10a), .a1(brX4), .y(na10b));
i a10c(.a(na10b), .y(brX4n));
i a17c(.a(na17b), .y(brX4));
a #(1) a17b(.clk(v1), .a1(brX4n), .y(na17b));

// 10-129, 10-133
a a34a(.clk(mAsa7), .y(na35b));
a a34b(.clk(mBsa7), .y(na35b));
a a34c(.clk(mCsa7), .y(na35b));
a a27a(.clk(mDsa7), .y(na35b));
a a27b(.clk(v1), .a1(aNtr7v), .y(na27b));
a a28a(.exp(na27b), .a1(aNsbrzv), .y(na35b));
a a35a(.a1(aNcbrvn), .y(na35a));
a a35b(.clk(v1), .exp(na35a), .a1(brX7), .y(na35b));
i a35c(.a(na35b), .y(brX7n));
i a28c(.a(na28b), .y(brX7));
a #(1) a28b(.clk(v1), .a1(brX7n), .y(na28b));

a a27c(.clk(mAsa10), .y(na21b));
a a20a(.clk(mBsa10), .y(na21b));
a a20b(.clk(mCsa10), .y(na21b));
a a20c(.clk(mDsa10), .y(na21b));
a a13a(.clk(v1), .a1(aNtr10v), .y(na13a));
a a14a(.exp(na13a), .a1(aNsbrzv), .y(na21b));
a a21a(.a1(aNcbrvn), .y(na21a));
a a21b(.clk(v1), .exp(na21a), .a1(brX10), .y(na21b));
i a21c(.a(na21b), .y(brX10n));
i a14c(.a(na14b), .y(brX10));
a #(1) a14b(.clk(v1), .a1(brX10n), .y(na14b));

// 10-130, 10-134
a a30d(.clk(mAsa3), .y(na29e));
a a30e(.clk(mBsa3), .y(na29e));
a a30f(.clk(mCsa3), .y(na29e));
a a23d(.clk(mDsa3), .y(na29e));
a a23e(.clk(v1), .a1(aNsbryv), .y(na23e));
a a22d(.exp(na23e), .a1(aNtr3v), .y(na29e));
a a29d(.a1(aNcbrvn), .y(na29d));
a a29e(.clk(v1), .exp(na29d), .a1(brX3), .y(na29e));
i a29f(.a(na29e), .y(brX3n));
i a22f(.a(na22e), .y(brX3));
a #(1) a22e(.clk(v1), .a1(brX3n), .y(na22e));

a a23f(.clk(mAsa5), .y(na15e));
a a16d(.clk(mBsa5), .y(na15e));
a a16e(.clk(mCsa5), .y(na15e));
a a16f(.clk(mDsa5), .y(na15e));
a a9d(.clk(v1), .exp(na8d), .y(na15e));
a a8d(.a1(aNtr5v), .a2(aNsbryv), .y(na8d));
a a15d(.a1(aNcbrvn), .y(na15d));
a a15e(.clk(v1), .exp(na15d), .a1(brX5), .y(na15e));
i a15f(.a(na15e), .y(brX5n));
i a8f(.a(na8e), .y(brX5));
a #(1) a8e(.clk(v1), .a1(brX5n), .y(na8e));

a a9e(.clk(mAsa8), .y(na10e));
a afe(.clk(mBsa8), .y(na10e));
a a11d(.clk(mCsa8), .y(na10e));
a a11e(.clk(mDsa8), .y(na10e));
a a11f(.clk(v1), .a1(aNtr8v), .y(na11f));
a a17d(.exp(na11f), .a1(aNsbryv), .y(na10e));
a a10d(.a1(aNcbrvn), .y(na10d));
a a10e(.clk(v1), .exp(na10d), .a1(brX8), .y(na10e));
i a10f(.a(na10e), .y(brX8n));
i a17f(.a(na17e), .y(brX8));
a #(1) a17e(.clk(v1), .a1(brX8n), .y(na17e));

// 10-131, 10-135
a a34d(.clk(mAsa11), .y(na35e));
a a34e(.clk(mBsa11), .y(na35e));
a a34f(.clk(mCsa11), .y(na35e));
a a27d(.clk(mDsa11), .y(na35e));
a a27e(.clk(v1), .a1(aNtr11v), .y(na27e));
a a28d(.exp(na27e), .a1(aNsbryv), .y(na35e));
a a35d(.a1(aNcbrvn), .y(na35d));
a a35e(.clk(v1), .exp(na35d), .a1(brX11), .y(na35e));
i a35f(.a(na35e), .y(brX11n));
i a28f(.a(na28e), .y(brX11));
a #(1) a28e(.clk(v1), .a1(brX11n), .y(na28e));

a a27f(.clk(mAsa13), .y(na21e));
a a20d(.clk(mBsa13), .y(na21e));
a a20e(.clk(mCsa13), .y(na21e));
a a20f(.clk(mDsa13), .y(na21e));
a a13d(.clk(v1), .a1(aNtr13v), .y(na13d));
a a14d(.exp(na13d), .a1(aNsbryv), .y(na21e));
a a21d(.a1(aNcbrvn), .y(na21d));
a a21e(.clk(v1), .exp(na21d), .a1(brX13), .y(na21e));
i a21f(.a(na21e), .y(brX13n));
i a14f(.a(na14e), .y(brX13));
a #(1) a14e(.clk(v1), .a1(brX13n), .y(na14e));

endmodule
`default_nettype wire
