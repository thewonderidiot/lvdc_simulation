`timescale 1ns/1ps
`default_nettype none

module gse(
    input wire SIM_CLK,
    input wire SIM_RST,
    input wire [39:0] SIM_TLM,
    input wire SIM_TLM_SYNC,
    output wire SIM_UART_TX,

    // RCA-110A
    input wire BR1X,   // Buffer reg latch 1 GSE output
    input wire BR2X,   // Buffer reg latch 2 GSE output
    input wire BR3X,   // Buffer reg latch 3 GSE output
    input wire BR4X,   // Buffer reg latch 4 GSE output
    input wire BR5X,   // Buffer reg latch 5 GSE output
    input wire BR6X,   // Buffer reg latch 6 GSE output
    input wire BR7X,   // Buffer reg latch 7 GSE output
    input wire BR8X,   // Buffer reg latch 8 GSE output
    input wire BR9X,   // Buffer reg latch 9 GSE output
    input wire BR10X,  // Buffer reg latch 10 GSE output
    input wire BR11X,  // Buffer reg latch 11 GSE output
    input wire BR12X,  // Buffer reg latch 12 GSE output
    input wire BR13X,  // Buffer reg latch 13 GSE output
    input wire BR14X,  // Buffer reg latch 14 GSE output
    input wire BR15X,  // Buffer reg latch 15 GSE output
    input wire BR16X,  // Buffer reg latch 16 GSE output
    input wire BR17X,  // Buffer reg latch 17 GSE output
    input wire BR18X,  // Buffer reg latch 18 GSE output
    input wire BR19X,  // Buffer reg latch 19 GSE output
    input wire BR20X,  // Buffer reg latch 20 GSE output
    input wire BR21X,  // Buffer reg latch 21 GSE output
    input wire BR22X,  // Buffer reg latch 22 GSE output
    input wire BR23X,  // Buffer reg latch 23 GSE output
    input wire BR24X,  // Buffer reg latch 24 GSE output
    input wire BR25X,  // Buffer reg latch 25 GSE output
    input wire BR26X,  // Buffer reg latch 26 GSE output
    input wire MOD1,   // Mode reg latch 1
    input wire MOD2,   // Mode reg latch 2
    input wire MOD3,   // Mode reg latch 3
    input wire MOD4,   // Mode reg latch 4
    input wire MOD5,   // Mode reg latch 5
    input wire MOD6,   // Mode reg latch 6
    input wire RT1X,   // Real time latch 1 GSE output
    input wire TAG1X,  // Tag reg latch 1 GSE output
    input wire TAG2X,  // Tag reg latch 2 GSE output
    input wire TAG3X,  // Tag reg latch 3 GSE output
    input wire TAG4X,  // Tag reg latch 4 GSE output
    input wire TAG5X,  // Tag reg latch 5 GSE output
    input wire TAG6X,  // Tag reg latch 6 GSE output
    input wire TAG7X,  // Tag reg latch 7 GSE output
    input wire TAG8X,  // Tag reg latch 8 GSE output

    output reg DIN1X,   // RCA-110A sync
    output reg DIN7X,   // Spare (Wired to ESE)
    output reg DIN8X,   // Spare (Wired to ESE)
    output reg GC1,     // GSE input line 1
    output reg GC2,     // GSE input line 2
    output reg GC3,     // GSE input line 3
    output reg GC4,     // GSE input line 4
    output reg GC5,     // GSE input line 5
    output reg GC6,     // GSE input line 6
    output reg GC7,     // GSE input line 7
    output reg GC8,     // GSE input line 8
    output reg GC9,     // GSE input line 9
    output reg GC10,    // GSE input line 10
    output reg GC11,    // GSE input line 11
    output reg GC12,    // GSE input line 12
    output reg GC13,    // GSE input line 13
    output reg GC14,    // GSE input line 14
    output reg GCSYNCX, // GSE sync
    output reg HLTX,    // Halt
    output reg ICSN,    // Block CR inputs
    output reg INTR1X,  // Spare (Wired to ESE)
    output reg INTR3X,  // RCA-110A Interrupt

    // Laboratory Test Equipment
    input wire A1V,    // Address reg latch 1
    input wire A2V,    // Address reg latch 2
    input wire A3V,    // Address reg latch 3
    input wire A4V,    // Address reg latch 4
    input wire A5V,    // Address reg latch 5
    input wire A6V,    // Address reg latch 6
    input wire A7V,    // Address reg latch 7
    input wire A8V,    // Address reg latch 8
    input wire A9V,    // Address reg latch 9
    input wire ADV,    // Bit gate gen latch
    input wire AI3V,   // Interface signal, LVDC to LVDA
    input wire BRA14P, // Buffer register A parity bit
    input wire BRB14P, // Buffer register B parity bit
    input wire C1RDN,  // Ch 1 read delay latch not
    input wire C2RDN,  // Ch 2 read delay latch not
    input wire C3RD,   // Ch 3 read delay
    input wire C4RDV,  // Ch 4 read delay
    input wire DATAV,  // Serializer latch
    input wire DDC1R,  // Delay DC1R
    input wire DDC2R,  // Delay DC2R
    input wire DDC3R,  // Delay DC3R
    input wire DDC4R,  // Delay DC4R
    input wire DINN,   // DOM delay line input latch
    input wire DO1RCA, // Discrete output reg latch 1 GSE output
    input wire DO2RCA, // Discrete output reg latch 2 GSE output
    input wire DOMD,   // Data output multiplexer delayed
    input wire ECSB,   // Error clock signal latch B
    input wire G5DVN,  // DA bit gate 5
    input wire HOPC1V, // Hop constant
    input wire INFOV,  // Computer info delayed
    input wire INTCV,  // Interface output latch
    input wire MD7V,   // Multiplicand divisor register latch 7
    input wire MR1V,   // Multiplier register latch
    input wire OP1V,   // Operation code register latch 1
    input wire OP2V,   // Operation code register latch 2
    input wire OP3V,   // Operation code register latch 3
    input wire OP4V,   // Operation code register latch 4
    input wire PBAVN,  // DA phase B
    input wire PCINFV, // Phase C info transfer latch
    input wire PIODV,  // PIO driver
    input wire PR0V,   // Product remainder latch
    input wire TAGS,   // Tag serializer latch
    input wire TRSV,   // Transfer reg
    input wire W6,     // W clock pulse driver output 6

    output reg CST, // Single step
    output reg DIN, // Data injection
    output reg TE1, // LTE input line 1
    output reg TE2, // LTE input line 2
    output reg TE3, // LTE input line 3
    output reg TER  // Reset memory error indication
);

initial CST = 0;
initial DIN1X = 0;
initial DIN7X = 0;
initial DIN8X = 0;
initial DIN = 0;
initial GC10 = 0;
initial GC11 = 0;
initial GC12 = 0;
initial GC13 = 0;
initial GC14 = 0;
initial GC1 = 0;
initial GC2 = 0;
initial GC3 = 0;
initial GC4 = 0;
initial GC5 = 0;
initial GC6 = 0;
initial GC7 = 0;
initial GC8 = 0;
initial GC9 = 0;
initial GCSYNCX = 0;
initial HLTX = 1;
initial ICSN = 1;
initial INTR1X = 0;
initial INTR3X = 0;
initial TE1 = 0;
initial TE2 = 0;
initial TE3 = 0;
initial TER = 0;

wire pa;
wire pb;
wire pc;
wire [14:1] bt;
wire w;
wire x;
wire y;
wire z;

clock_gen clock_gen1(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),

    .PBAVN(PBAVN),
    .W6(W6),

    .pa(pa),
    .pb(pb),
    .pc(pc),
    .bt(bt),
    .w(w),
    .x(x),
    .y(y),
    .z(z)
);

wire [1:26] trs;
wire [8:1] ai3_ia;
wire [1:26] ai3_data;
wire [1:26] md7;
wire [1:26] mr1;
wire [1:26] pr0;
wire [1:26] hopc1;
wire [1:13] rtc;
wire [1:13] mlc;
wire [1:13] ssc;
wire [1:26] ssmsr;

wire [39:0] reg_stream;
wire reg_stream_sync;

lvdc_registers lvdc_registers1(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),

    .CST(CST),

    .OP1V(OP1V),
    .OP2V(OP2V),
    .OP3V(OP3V),
    .OP4V(OP4V),

    .A1V(A1V),
    .A2V(A2V),
    .A3V(A3V),
    .A4V(A4V),
    .A5V(A5V),
    .A6V(A6V),
    .A7V(A7V),
    .A8V(A8V),
    .A9V(A9V),

    .AI3V(AI3V),
    .HOPC1V(HOPC1V),
    .MD7V(MD7V),
    .MR1V(MR1V),
    .PR0V(PR0V),
    .TRSV(TRSV),
    .C1RDN(C1RDN),
    .C2RDN(C2RDN),
    .C3RD(C3RD),
    .C4RDV(C4RDV),

    .ADV(ADV),
    .pa(pa),
    .pb(pb),
    .pc(pc),
    .bt(bt),
    .w(w),
    .x(x),
    .y(y),
    .z(z),

    .trs(trs),
    .ai3_ia(ai3_ia),
    .ai3_data(ai3_data),
    .md7(md7),
    .mr1(mr1),
    .pr0(pr0),
    .hopc1(hopc1),
    .rtc(rtc),
    .mlc(mlc),
    .ssc(ssc),
    .ssmsr(ssmsr),

    .reg_stream(reg_stream),
    .reg_stream_sync(reg_stream_sync)
);

`ifdef TARGET_FPGA
streamer streamer1(
    .SIM_CLK(SIM_CLK),
    .SIM_RST(SIM_RST),
    .SIM_TLM(SIM_TLM),
    .SIM_TLM_SYNC(SIM_TLM_SYNC),
    .SIM_UART_TX(SIM_UART_TX),

    .reg_stream(reg_stream),
    .reg_stream_sync(reg_stream_sync)
);
`endif

// OLD BOOT STUFF
`ifdef CLOCKED
reg [13:0] boot_count;
reg [13:0] next_boot_count;
initial boot_count = 14'o37777;

always @(*) begin
    if (boot_count > 14'o0) begin
        next_boot_count = boot_count - 14'o1;
    end else begin
        next_boot_count = 14'o0;
    end
end

always @(posedge SIM_CLK) begin
    if (~SIM_RST) begin
        boot_count <= 14'o37777;
    end else begin
        boot_count <= next_boot_count;
    end
end

always @(*) begin
    HLTX = (boot_count > 14'o0);
end

`else
initial begin
    #100000 HLTX = 0;
    // #1000000 CST = 1;
    // TE1 = 1;
    // #1000000 CST = 0;
    // #2000000 HLTX = 1;
end
`endif

endmodule
`default_nettype wire
