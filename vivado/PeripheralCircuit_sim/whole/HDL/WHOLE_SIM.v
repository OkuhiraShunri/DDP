`timescale 1ns/100ps
module WHOLE_SIM();
reg CLK, RST, Send_in, Ack_in, PC_UDDATE, DISP_SWITCH;
wire Ack_out, Send_out, TOGLE;
wire [7:0] nHEX;
//CNT50HZ CNT50HZ(.CLK(clk), .RST(rst), .EN50HZ(en50hz));
WHOLE whole(.Send_in(Send_in), .Ack_in(Ack_in), .CLK(CLK), .RST(RST), .PC_UDDATE(PC_UDDATE), .DISP_SWITCH(DISP_SWITCH),
            .TOGLE(TOGLE), .Send_out(Send_out), .Ack_out(Ack_out), .nHEX(nHEX));
initial begin
            RST = 1;
    #200    RST = 0;
    //#200    RST = 0;
end
always begin
            CLK = 0;
    #50     CLK = 1;
    #50;
end
initial begin
            Send_in = 1;
    #300     Send_in = 0;
    #50     Send_in = 1;
    #50     Send_in = 0;
    #50     Send_in = 1;
    // #10     Send_in = 0;
    // #10     Send_in = 1;
    // #10     Send_in = 0;
    // #10     Send_in = 1;
end

initial begin
        Ack_in = 1;
#2450   Ack_in = 0;
#50     Ack_in = 1;
end

initial begin
    PC_UDDATE = 0;
end

initial begin
        DISP_SWITCH = 0;
#1000   DISP_SWITCH = 1;
#100    DISP_SWITCH = 0;
end
endmodule