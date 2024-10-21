//`timescale 1ns/100ps
module WHOLE(
    input Send_in, Ack_in, CLK, RST, PC_UDDATE, DISP_SWITCH,
    output TOGLE, Send_out, Ack_out, 
    output [7:0] nHEX
);
//reg Send_in, Ack_in, MR, CLK, RST;
//wire Send_out, Ack_out;
wire [37:0] PACKET_OUT_PF, PACKET_OUT_DDP;
//wire [37:0] PACKET_OUT;
wire [4:0] PC_OUT;

PACKET_FETCH pf(.Send_in(Send_in), .RST(RST), .PC_UDDATE(PC_UDDATE), .PACKET_OUT(PACKET_OUT_PF), .PC_OUT(PC_OUT));

JOIN_DDP ddp(.MR(RST), .Send_in(Send_in), .Ack_in(Ack_in), .PACKET_IN(PACKET_OUT_PF), 
             .Send_out(Send_out), .Ack_out(Ack_out), .PACKET_OUT(PACKET_OUT_DDP));

DISPLAY display(.CLK(CLK), .RST(RST), .DISP_SWITCH(DISP_SWITCH), .PACKET_IN(PACKET_OUT_DDP), .PC(PC_OUT),  
                .TOGLE(TOGLE), .nHEX(nHEX));


endmodule