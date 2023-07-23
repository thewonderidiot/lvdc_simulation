`timescale 1ns/1ps
`default_nettype none

module lvda(
    input wire SIM_CLK,
    input wire SIM_RST,
    input wire A1V,
    input wire A2V,
    input wire A3V,
    input wire A4V,
    input wire A5V,
    input wire A6V,
    input wire A7V,
    input wire A8V,
    input wire A9V,
    input wire AI3V,
    input wire BO1N,
    input wire G5VN,
    input wire PBVN,
    input wire PIOV,
    input wire TRSV,
    input wire WDA,
    input wire XDA,
    input wire YDA,
    input wire ZDA
);

// Power rails
reg V1 = 1;
reg V4 = 1;
reg V5 = 1;

// TEMPORARY UNDRIVEN
reg C4RD = 0;
reg C4RDV = 0;
reg LGAV = 0;
reg LPAG2N = 1;
reg SINTA = 0;
reg TC3A = 0;
reg TC3AN = 1;

// Backplane wires
wire A1D;
wire A1DN;
wire A1DV;
wire A1DVN;
wire A2D;
wire A2DV;
wire A3DN;
wire A3DVN;
wire A4D;
wire A4DN;
wire A4DV;
wire A4DVN;
wire A5D;
wire A5DV;
wire A6D;
wire A6DN;
wire A6DV;
wire A6DVN;
wire A7DN;
wire A7DVN;
wire A8D;
wire A8DN;
wire A8DV;
wire A8DVN;
wire AD;
wire ADN;
wire ADV;
wire ADVN;
wire C2R;
wire C2RN;
wire C2RD;
wire C2RDN;
wire C3R;
wire C3RN;
wire C3RD;
wire CCFH;
wire CCFHN;
wire CCFHV;
wire CCFHVN;
wire DINF;
wire DINFV;
wire G1D;
wire G1DN;
wire G1DV;
wire G1DVN;
wire G2D;
wire G2DN;
wire G2DV;
wire G2DVN;
wire G3D;
wire G3DN;
wire G3DV;
wire G3DVN;
wire G4D;
wire G4DN;
wire G4DV;
wire G4DVN;
wire G5D;
wire G5DN;
wire G5DV;
wire G5DVN;
wire G6D;
wire G6DN;
wire G6DV;
wire G6DVN;
wire G7D;
wire G7DN;
wire G7DV;
wire G7DVN;
wire ITS;
wire PAA;
wire PAAN;
wire PAAV;
wire PAAVN;
wire PABG1;
wire PABG1V;
wire PARS;
wire PARSV;
wire PBA;
wire PBAN;
wire PBAV;
wire PBAVN;
wire PBG2;
wire PBG2V;
wire PCA;
wire PCAN;
wire PCAV;
wire PCAVN;
wire PCG2;
wire PCG2V;
wire PIOD;
wire PIODV;
wire RECA;
wire RECAN;
wire RECAV;
wire RECAVN;
wire RECC;
wire RECCN;
wire RECCV;
wire RECCVN;
wire RESM;
wire RESMV;
wire REXC;
wire REXCN;
wire REXCV;
wire REXCVN;
wire TC2A;
wire TC2AN;
wire W3;
wire W4;
wire W7;
wire X3;
wire X4;
wire Y3;
wire Y5;
wire Y6;
wire Z1;
wire Z4;
wire Z5;
wire Z7;

// TMR bypass for breadboard LVDA
assign A1DV = A1D;
assign A1DVN = A1DN;
assign A2DV = A2D;
assign A3DVN = A3DN;
assign A4DV = A4D;
assign A4DVN = A4DN;
assign A5DV = A5D;
assign A6DV = A6D;
assign A6DVN = A6DN;
assign A7DVN = A7DN;
assign A8DV = A8D;
assign A8DVN = A8DN;
assign ADV = AD;
assign ADVN = ADN;
assign CCFHV = CCFH;
assign CCFHVN = CCFHN;
assign DINFV = DINF;
assign G1DV = G1D;
assign G1DVN = G1DN;
assign G2DV = G2D;
assign G2DVN = G2DN;
assign G3DV = G3D;
assign G3DVN = G3DN;
assign G4DV = G4D;
assign G4DVN = G4DN;
assign G5DV = G5D;
assign G5DVN = G5DN;
assign G6DV = G6D;
assign G6DVN = G6DN;
assign G7DV = G7D;
assign G7DVN = G7DN;
assign PAAV = PAA;
assign PABG1V = PABG1;
assign PARSV = PARS;
assign PBAV = PBA;
assign PBAVN = PBAN;
assign PBG2V = PBG2;
assign PCAV = PCA;
assign PCAVN = PCAN;
assign PCG2V = PCG2;
assign PIODV = PIOD;
assign RECAV = RECA;
assign RECAVN = RECAN;
assign RECCV = RECC;
assign RECCVN = RECCN;
assign RESMV = RESM;
assign REXCV = REXC;
assign REXCVN = REXCN;

// Modules
address_decode_1 a3a5(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),
    .V1(V1),
    .V4(V4),
    .A1V(A1V),
    .A1DV(A1DV),
    .A2V(A2V),
    .A2DV(A2DV),
    .A3V(A3V),
    .A4V(A4V),
    .A5V(A5V),
    .A6V(A6V),
    .A7V(A7V),
    .A8V(A8V),
    .A8DV(A8DV),
    .A8DVN(A8DVN),
    .A9V(A9V),
    .ADV(ADV),
    .ADVN(ADVN),
    .AI3V(AI3V),
    .G1DVN(G1DVN),
    .G3DVN(G3DVN),
    .G6DV(G6DV),
    .G6DVN(G6DVN),
    .PAAV(PAAV),
    .PABG1V(PABG1V),
    .PARSV(PARSV),
    .PIOV(PIOV),
    .PIODV(PIODV),
    .TRSV(TRSV),
    .W7(W7),
    .X3(X3),
    .Y3(Y3),
    .Z7(Z7),

    .A1D(A1D),
    .A1DN(A1DN),
    .A2D(A2D),
    .A3DN(A3DN),
    .A4D(A4D),
    .A4DN(A4DN),
    .A5D(A5D),
    .A6D(A6D),
    .A6DN(A6DN),
    .A7DN(A7DN),
    .A8D(A8D),
    .A8DN(A8DN),
    .DINF(DINF),
    .PARS(PARS),
    .PIOD(PIOD)
);

timing_2 a3a8(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),
    .V1(V1),
    .V4(V4),
    .ADV(ADV),
    .ADVN(ADVN),
    .CCFHV(CCFHV),
    .CCFHVN(CCFHVN),
    .G1DV(G1DV),
    .G1DVN(G1DVN),
    .G2DV(G2DV),
    .G2DVN(G2DVN),
    .G3DV(G3DV),
    .G3DVN(G3DVN),
    .G4DV(G4DV),
    .G4DVN(G4DVN),
    .G5VN(G5VN),
    .G5DV(G5DV),
    .G5DVN(G5DVN),
    .G6DV(G6DV),
    .G6DVN(G6DVN),
    .G7DV(G7DV),
    .G7DVN(G7DVN),
    .PAAV(PAAV),
    .PAAVN(PAAVN),
    .PBVN(PBVN),
    .PBAV(PBAV),
    .PBAVN(PBAVN),
    .PCAV(PCAV),
    .PCAVN(PCAVN),
    .PCG2V(PCG2V),
    .RECAV(RECAV),
    .RECAVN(RECAVN),
    .RECCV(RECCV),
    .RECCVN(RECCVN),
    .RESMV(RESMV),
    .REXCV(REXCV),
    .REXCVN(REXCVN),
    .W3(W3),
    .X3(X3),
    .Y3(Y3),
    .Z1(Z1),

    .AD(AD),
    .ADN(ADN),
    .CCFH(CCFH),
    .CCFHN(CCFHN),
    .G1D(G1D),
    .G1DN(G1DN),
    .G2D(G2D),
    .G2DN(G2DN),
    .G3D(G3D),
    .G3DN(G3DN),
    .G4D(G4D),
    .G4DN(G4DN),
    .G5D(G5D),
    .G5DN(G5DN),
    .G6D(G6D),
    .G6DN(G6DN),
    .G7D(G7D),
    .G7DN(G7DN),
    .PAA(PAA),
    .PABG1(PABG1),
    .PBA(PBA),
    .PBAN(PBAN),
    .PBG2(PBG2),
    .PCA(PCA),
    .PCAN(PCAN),
    .PCG2(PCG2),
    .RECA(RECA),
    .RECAN(RECAN),
    .RECC(RECC),
    .RECCN(RECCN),
    .RESM(RESM),
    .REXC(REXC),
    .REXCN(REXCN)
);

timing_1 a3a11(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),
    .WDA(WDA),
    .XDA(XDA),
    .YDA(YDA),
    .ZDA(ZDA),

    .W3(W3),
    .W4(W4),
    .W7(W7),
    .X3(X3),
    .X4(X4),
    .Y3(Y3),
    .Y5(Y5),
    .Y6(Y6),
    .Z1(Z1),
    .Z4(Z4),
    .Z5(Z5),
    .Z7(Z7)
);

int_countdn_proc a4a5(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),

    .V1(V1),

    .A1DVN(A1DVN),
    .A2DV(A2DV),
    .A3DVN(A3DVN),
    .A4DV(A4DV),
    .A4DVN(A4DVN),
    .A5DV(A5DV),
    .A6DV(A6DV),
    .A6DVN(A6DVN),
    .A7DVN(A7DVN),
    .ADV(ADV),
    .ADVN(ADVN),
    .C2R(C2R),
    .C2RN(C2RN),
    .C3R(C3R),
    .C3RN(C3RN),
    .G1DV(G1DV),
    .G1DVN(G1DVN),
    .G2DV(G2DV),
    .G3DV(G3DV),
    .G3DVN(G3DVN),
    .G4DV(G4DV),
    .G4DVN(G4DVN),
    .G5DV(G5DV),
    .G5DVN(G5DVN),
    .G6DVN(G6DVN),
    .LGAV(LGAV),
    .LPAG2N(LPAG2N),
    .PABG1V(PABG1V),
    .PAAV(PAAV),
    .PBAV(PBAV),
    .PBG2V(PBG2V),
    .PCAV(PCAV),
    .RECAV(RECAV),
    .RECCV(RECCV),
    .W4(W4),
    .X4(X4),
    .Y5(Y5),
    .Z5(Z5),

    .C2RD(C2RD),
    .C2RDN(C2RDN),
    .C3RD(C3RD),
    .ITS(ITS),
    .PAAVN(PAAVN),
    .TC2A(TC2A),
    .TC2AN(TC2AN)
);

processor_store a4a12(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),

    .V1(V1),
    .V5(V5),

    .BON(BO1N),
    .C2RD(C2RD),
    .C2RDN(C2RDN),
    .C3RD(C3RD),
    .C4RD(C4RD),
    .C4RDV(C4RDV),
    .DINFV(DINFV),
    .ITS(ITS),
    .PAAV(PAAV),
    .PAAVN(PAAVN),
    .SINTA(SINTA),
    .TC2A(TC2A),
    .TC2AN(TC2AN),
    .TC3A(TC3A),
    .TC3AN(TC3AN),
    .W4(W4),
    .X4(X4),
    .Y5(Y5),
    .Y6(Y6),
    .Z4(Z4),

    .C2R(C2R),
    .C2RN(C2RN),
    .C3R(C3R),
    .C3RN(C3RN)
);

endmodule
`default_nettype wire
