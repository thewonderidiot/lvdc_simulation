`timescale 1ns/1ps
`default_nettype none

module clock_gen(
    input wire SIM_CLK,

    input wire PBAVN,
    input wire W6,

    output reg pa,
    output reg pb,
    output reg pc,

    output reg [14:1] bt,

    output reg w,
    output reg x,
    output reg y,
    output reg z
);

initial pa = 0;
initial pb = 0;
initial pc = 0;
initial bt = 'o20000;
initial w = 0;
initial x = 0;
initial y = 0;
initial z = 0;

`ifdef CLOCKED

localparam BIT_CLOCKS = 20;
localparam BIT_CTR_LEN = $clog2(4 * BIT_CLOCKS);

reg pbavn_r = 0;
reg w6_r = 0;
reg [BIT_CTR_LEN-1:0] bit_ctr = 0;

always @(posedge SIM_CLK) begin
    pbavn_r <= PBAVN;
    w6_r <= W6;
end

always @(posedge SIM_CLK) begin
    if (~w6_r & W6) begin
        bit_ctr <= 0;
        bt <= {bt[13:1], bt[14]};
        if (bt[14]) begin
            {pa, pb, pc} <= {pc, pa, pb};
        end
    end else begin
        bit_ctr <= bit_ctr + 1;
    end

    if (pbavn_r & ~PBAVN) begin
        bt <= 'b1;
        {pa, pb, pc} <= 3'b010;
    end
end

always @(*) begin
    w = bit_ctr < (BIT_CLOCKS - 1);
    x = (bit_ctr >= BIT_CLOCKS) && (bit_ctr < (2*BIT_CLOCKS - 1));
    y = (bit_ctr >= 2*BIT_CLOCKS) && (bit_ctr < (3*BIT_CLOCKS - 1));
    z = (bit_ctr >= 3*BIT_CLOCKS) && (bit_ctr < (4*BIT_CLOCKS - 1));
end


`else

localparam clock_delay = 388.28125;

always @(posedge W6) begin
    #50 w <= 1;
    #clock_delay w <= 0;
    #100 x <= 1;
    #clock_delay x <= 0;
    #100 y <= 1;
    #clock_delay y <= 0;
    #100 z <= 1;
    #clock_delay z <= 0;
end

always @(posedge W6) begin
    bt <= {bt[13:1], bt[14]};
    if (bt[14]) begin
        {pa, pb, pc} <= {pc, pa, pb};
    end
end

always @(negedge PBAVN) begin
    bt <= 'b1;
    {pa, pb, pc} <= 3'b010;
end

`endif

endmodule
`default_nettype wire
