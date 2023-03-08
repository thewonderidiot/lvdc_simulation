`timescale 1ns/1ps
`default_nettype none

module lvdc_sim;

reg CSTN = 1;
reg DATAV = 0;
reg DIN = 0;
reg HALTV = 0;
reg INTCV = 0;
reg TER = 0;

lvdc lvdc1(
    .CSTN(CSTN),
    .DATAV(DATAV),
    .DIN(DIN),
    .HALTV(HALTV),
    .INTCV(INTCV),
    .TER(TER)
);

initial begin
    $dumpfile("lvdc.fst");
    $dumpvars(2, lvdc1);
    #50000 HALTV = 0;
    #1000000 $finish;
end

endmodule
`default_nettype wire
