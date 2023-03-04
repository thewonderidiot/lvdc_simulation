`timescale 1ns/1ps
`default_nettype none

module lvdc_sim;

reg CSTN = 1;
reg HALTV = 1;
reg TER = 0;

lvdc lvdc1(
    .CSTN(CSTN),
    .HALTV(HALTV),
    .TER(TER)
);

initial begin
    $dumpfile("lvdc.fst");
    $dumpvars(0, lvdc1);
    #100000 HALTV = 0;
    #1000000 $finish;
end

endmodule
`default_nettype wire
