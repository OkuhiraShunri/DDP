`timescale 1ns/100ps
module WHOLE_SIM();
reg CLK, RST, MR, Send_in, Ack_in;
wire Ack_out, Send_out, TOGLE;
wire [7:0] nHEX;
//CNT50HZ CNT50HZ(.CLK(clk), .RST(rst), .EN50HZ(en50hz));
WHOLE whole(.Send_in(Send_in), .Ack_in(Ack_in), .MR(MR), .CLK(CLK), .RST(RST), .TOGLE(TOGLE), .Send_out(Send_out), .Ack_out(Ack_out), .nHEX(nHEX));
initial begin
            RST = 0;
    #50    RST = 1;
    #50    RST = 0;
end
always begin
             CLK = 0;
    #10     CLK = 1;
    #10;
end
initial begin
            Send_in = 1;
            MR = 1;
    #50     MR = 0;//#10だとMMCAM以降のCP上がらない
    #10     Send_in = 0;
    #10     Send_in = 1;
    // #10     Send_in = 0;
    // #10     Send_in = 1;
    // #10     Send_in = 0;
    // #10     Send_in = 1;
    // #10     Send_in = 0;
    // #10     Send_in = 1;
end

initial begin
    Ack_in = 1;
end
endmodule