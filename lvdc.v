`timescale 1ns/1ps
`default_nettype none

module lvdc(
);

// Power rails
reg V1 = 1;
reg V4MOD1 = 1;
reg V5 = 1;

// Backplane wires
wire A;
wire AN;
wire AV;
wire AVN;
wire BO1;
wire BO1N;
wire BO2;
wire BO2N;
wire BO3;
wire BO3N;
wire BOP;
wire CGPP;
wire CGPPN;
wire CGQP;
wire CGQPN;
wire CGRP;
wire CGRPN;
wire DL31;
wire DL44;
wire G1;
wire G1N;
wire G1V;
wire G1VN;
wire G2;
wire G2N;
wire G2V;
wire G2VN;
wire G3;
wire G3N;
wire G3V;
wire G3VN;
wire G4;
wire G4N;
wire G4V;
wire G4VN;
wire G5;
wire G5N;
wire G5V;
wire G5VN;
wire G6;
wire G6N;
wire G6V;
wire G6VN;
wire G7;
wire G7N;
wire G7V;
wire G7VN;
wire PA;
wire PAN;
wire PAV;
wire PAVN;
wire PB;
wire PBN;
wire PBV;
wire PBVN;
wire PC;
wire PCN;
wire PCV;
wire PCVN;
wire TBC;
wire TBCN;
wire TBCV;
wire TBCVN;
wire W1;
wire W7;
wire WN;
wire X3;
wire XN;
wire Y5;
wire Y7;
wire Y8;
wire YN;
wire Z2;
wire Z3;
wire ZN;

// TMR bypass for breadboard computer
assign AV = A;
assign AVN = AN;
assign G1V = G1;
assign G1VN = G1N;
assign G2V = G2;
assign G2VN = G2N;
assign G3V = G3;
assign G3VN = G3N;
assign G4V = G4;
assign G4VN = G4N;
assign G5V = G5;
assign G5VN = G5N;
assign G6V = G6;
assign G6VN = G6N;
assign G7V = G7;
assign G7VN = G7N;
assign PAV = PA;
assign PAVN = PAN;
assign PBV = PB;
assign PBVN = PBN;
assign PCV = PC;
assign PCVN = PCN;
assign TBCV = TBC;
assign TBCVN = TBCN;

// Modules
clock_drivers a1a3(
    .BOP(BOP),
    .CGPP(CGPP),
    .CGPPN(CGPPN),
    .CGQP(CGQP),
    .CGQPN(CGQPN),
    .CGRP(CGRP),
    .CGRPN(CGRPN),
    .W1(W1),
    .W7(W7),
    .WN(WN),
    .X3(X3),
    .XN(XN),
    .Y5(Y5),
    .Y7(Y7),
    .Y8(Y8),
    .YN(YN),
    .Z2(Z2),
    .Z3(Z3),
    .ZN(ZN)
);

delay_line a1a5(
    .V1(V1),
    .V5(V5),
    .BON(BO1N),
    .DL31(DL31),
    .DL44(DL44),
    .W7(W7),
    .WN(WN),
    .X3(X3),
    .XN(XN),
    .Y8(Y8),
    .YN(YN),
    .Z2(Z2),
    .ZN(ZN)
);

arithmetic a1a10(
    .V1(V1),
    .A1V(1'b0),
    .A2V(1'b0),
    .A5V(1'b0),
    .A6V(1'b0),
    .AV(AV),
    .AVN(AVN),
    .AI1V(1'b0),
    .AI3V(1'b0),
    .CSTV(1'b0),
    .EXMVN(1'b1),
    .G1V(G1V),
    .G1VN(G1VN),
    .G3VN(G3VN),
    .G4V(G4V),
    .G5V(G5V),
    .G5VN(G5VN),
    .G6VN(G6VN),
    .G7V(G7V),
    .G7VN(G7VN),
    .INTV(1'b0),
    .HOYV(1'b0),
    .OP1V(1'b0),
    .OP1VN(1'b1),
    .OP2V(1'b0),
    .OP2VN(1'b1),
    .OP3V(1'b0),
    .OP3VN(1'b1),
    .OP4V(1'b0),
    .OP4VN(1'b1),
    .P3VN(1'b1),
    .PAV(PAV),
    .PAVN(PAVN),
    .PBV(PBV),
    .PCV(PCV),
    .Q8V(1'b0),
    .SHFV(1'b0),
    .TBCV(TBCV),
    .VOYVN(1'b0),
    .W1(W1),
    .X3(X3),
    .Y7(Y7),
    .Z3(Z3),
    .ZN(ZN)
);

timing a1a13(
    .V1(V1),
    .V4MOD1(V4MOD1),

    .AV(AV),
    .AVN(AVN),
    .G1V(G1V),
    .G1VN(G1VN),
    .G2V(G2V),
    .G2VN(G2VN),
    .G3V(G3V),
    .G3VN(G3VN),
    .G4V(G4V),
    .G4VN(G4VN),
    .G5V(G5V),
    .G5VN(G5VN),
    .G6V(G6V),
    .G6VN(G6VN),
    .G7V(G7V),
    .G7VN(G7VN),
    .PAV(PAV),
    .PAVN(PAVN),
    .PBV(PBV),
    .PBVN(PBVN),
    .PCV(PCV),
    .PCVN(PCVN),
    .W7(W7),
    .Y5(Y5),

    .A(A),
    .AN(AN),
    .G1(G1),
    .G1N(G1N),
    .G2(G2),
    .G2N(G2N),
    .G3(G3),
    .G3N(G3N),
    .G4(G4),
    .G4N(G4N),
    .G5(G5),
    .G5N(G5N),
    .G6(G6),
    .G6N(G6N),
    .G7(G7),
    .G7N(G7N),
    .PA(PA),
    .PAN(PAN),
    .PB(PB),
    .PBN(PBN),
    .PC(PC),
    .PCN(PCN),
    .TBC(TBC),
    .TBCN(TBCN)
);

osc_buf a4a11(
    .BO1(BO1),
    .BO1N(BO1N),
    .BO2(BO2),
    .BO2N(BO2N),
    .BO3(BO3),
    .BO3N(BO3N)
);

clock_logic a4a12(
    .V1(V1),
    .V5(V5),
    .BO1(BO1),
    .BO2(BO2),
    .BO3(BO3),

    .A1PP(CGPP),
    .A1PPN(CGPPN),
    .A1QP(CGQP),
    .A1QPN(CGQPN),
    .A1RP(CGRP),
    .A1RPN(CGRPN),
    .BO1P(BOP)
);

buffer_register_12 a5a9(
    .V1(V1),
    .AnCBRVN(1'b0),
    .AnSBRYV(1'b0),
    .AnSBRZV(1'b0),
    .AnTR1V(1'b0),
    .AnTR2V(1'b0),
    .AnTR3V(1'b0),
    .AnTR4V(1'b0),
    .AnTR5V(1'b0),
    .AnTR7V(1'b0),
    .AnTR8V(1'b0),
    .AnTR10V(1'b0),
    .AnTR11V(1'b0),
    .AnTR13V(1'b0),
    .MaSA1(1'b0),
    .MaSA2(1'b0),
    .MaSA3(1'b0),
    .MaSA4(1'b0),
    .MaSA5(1'b0),
    .MaSA7(1'b0),
    .MaSA8(1'b0),
    .MaSA10(1'b0),
    .MaSA11(1'b0),
    .MaSA13(1'b0),
    .MbSA1(1'b0),
    .MbSA2(1'b0),
    .MbSA3(1'b0),
    .MbSA4(1'b0),
    .MbSA5(1'b0),
    .MbSA7(1'b0),
    .MbSA8(1'b0),
    .MbSA10(1'b0),
    .MbSA11(1'b0),
    .MbSA13(1'b0),
    .McSA1(1'b0),
    .McSA2(1'b0),
    .McSA3(1'b0),
    .McSA4(1'b0),
    .McSA5(1'b0),
    .McSA7(1'b0),
    .McSA8(1'b0),
    .McSA10(1'b0),
    .McSA11(1'b0),
    .McSA13(1'b0),
    .MdSA1(1'b0),
    .MdSA2(1'b0),
    .MdSA3(1'b0),
    .MdSA4(1'b0),
    .MdSA5(1'b0),
    .MdSA7(1'b0),
    .MdSA8(1'b0),
    .MdSA10(1'b0),
    .MdSA11(1'b0),
    .MdSA13(1'b0)
);

buffer_register_12 a5a10(
    .V1(V1),
    .AnCBRVN(1'b0),
    .AnSBRYV(1'b0),
    .AnSBRZV(1'b0),
    .AnTR1V(1'b0),
    .AnTR2V(1'b0),
    .AnTR3V(1'b0),
    .AnTR4V(1'b0),
    .AnTR5V(1'b0),
    .AnTR7V(1'b0),
    .AnTR8V(1'b0),
    .AnTR10V(1'b0),
    .AnTR11V(1'b0),
    .AnTR13V(1'b0),
    .MaSA1(1'b0),
    .MaSA2(1'b0),
    .MaSA3(1'b0),
    .MaSA4(1'b0),
    .MaSA5(1'b0),
    .MaSA7(1'b0),
    .MaSA8(1'b0),
    .MaSA10(1'b0),
    .MaSA11(1'b0),
    .MaSA13(1'b0),
    .MbSA1(1'b0),
    .MbSA2(1'b0),
    .MbSA3(1'b0),
    .MbSA4(1'b0),
    .MbSA5(1'b0),
    .MbSA7(1'b0),
    .MbSA8(1'b0),
    .MbSA10(1'b0),
    .MbSA11(1'b0),
    .MbSA13(1'b0),
    .McSA1(1'b0),
    .McSA2(1'b0),
    .McSA3(1'b0),
    .McSA4(1'b0),
    .McSA5(1'b0),
    .McSA7(1'b0),
    .McSA8(1'b0),
    .McSA10(1'b0),
    .McSA11(1'b0),
    .McSA13(1'b0),
    .MdSA1(1'b0),
    .MdSA2(1'b0),
    .MdSA3(1'b0),
    .MdSA4(1'b0),
    .MdSA5(1'b0),
    .MdSA7(1'b0),
    .MdSA8(1'b0),
    .MdSA10(1'b0),
    .MdSA11(1'b0),
    .MdSA13(1'b0)
);

buffer_register_3 a5a11(
    .V1(V1),
    .A1CBRVN(1'b0),
    .A2CBRVN(1'b0),
    .A1PARV(1'b0),
    .A2PARV(1'b0),
    .A1SBRXV(1'b0),
    .A2SBRXV(1'b0),
    .A1TR6V(1'b0),
    .A2TR6V(1'b0),
    .A1TR9V(1'b0),
    .A2TR9V(1'b0),
    .A1TR12V(1'b0),
    .A2TR12V(1'b0),
    .A1TR14V(1'b0),
    .A2TR14V(1'b0),
    .M0SA6(1'b0),
    .M0SA9(1'b0),
    .M0SA12(1'b0),
    .M0SA14(1'b0),
    .M1SA6(1'b0),
    .M1SA9(1'b0),
    .M1SA12(1'b0),
    .M1SA14(1'b0),
    .M2SA6(1'b0),
    .M2SA9(1'b0),
    .M2SA12(1'b0),
    .M2SA14(1'b0),
    .M3SA6(1'b0),
    .M3SA9(1'b0),
    .M3SA12(1'b0),
    .M3SA14(1'b0),
    .M4SA6(1'b0),
    .M4SA9(1'b0),
    .M4SA12(1'b0),
    .M4SA14(1'b0),
    .M5SA6(1'b0),
    .M5SA9(1'b0),
    .M5SA12(1'b0),
    .M5SA14(1'b0),
    .M6SA6(1'b0),
    .M6SA9(1'b0),
    .M6SA12(1'b0),
    .M6SA14(1'b0),
    .M7SA6(1'b0),
    .M7SA9(1'b0),
    .M7SA12(1'b0),
    .M7SA14(1'b0)
);

// TEMP TESTING
wire STP0;
assign STP0 = PAV & G2V;
assign DL31 = 0; // ~(Y8 & STP0);
assign DL44 = ~(W7 & STP0); // 0;

endmodule
`default_nettype wire
