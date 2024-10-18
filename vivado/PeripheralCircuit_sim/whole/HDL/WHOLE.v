//`timescale 1ns/100ps
module WHOLE(
    input Send_in, Ack_in, MR, CLK, RST,
    output TOGLE, Send_out, Ack_out, 
    output [7:0] nHEX
);
//reg Send_in, Ack_in, MR, CLK, RST;
//wire Send_out, Ack_out;
wire [37:0] PACKET_OUT_PF, PACKET_OUT_DDP;
wire [37:0] PACKET_OUT;

PACKET_FETCH pf(.Send_in(Send_in), .RST(RST), .PACKET_OUT(PACKET_OUT_PF));

JOIN_DDP ddp(.MR(MR), .Send_in(Send_in), .Ack_in(Ack_in), .PACKET_IN(PACKET_OUT_PF), 
             .Send_out(Send_out), .Ack_out(Ack_out), .PACKET_OUT(PACKET_OUT_DDP));

DISPLAY display(.CLK(CLK), .RST(RST), .PACKET_IN(PACKET_OUT_DDP), .TOGLE(TOGLE), .nHEX(nHEX));


endmodule