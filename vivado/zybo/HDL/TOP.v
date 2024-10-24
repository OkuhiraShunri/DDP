(* dont_touch = "true" *)
module TOP(
    input CLK, RST,
    input [3:0] BIN,
    output [1:0] LED,
    output TOGLE,
    output [6:0] PIN_NUM
);
(* dont_touch = "true" *) wire Ack_out_DDP, Send_out_DDP;
(* dont_touch = "true" *) wire [3:0] BOUT;
(* dont_touch = "true" *) wire [37:0] PACKET_OUT_PF, PACKET_OUT_DDP;
(* dont_touch = "true" *) wire [4:0] PC_OUT_PF;

//BOUT[0] = 1
//BOUT[1] = 1
//BOUT[2] = 0
//BOUT[3] = 0
(* dont_touch = "true" *) BTN_IN BTN_IN(.CLK(CLK), .RST(RST), .Ack_out_DDP(Ack_out_DDP), .Send_out_DDP(Send_out_DDP), .nBIN(BIN), .BOUT(BOUT), .LED(LED));
(* dont_touch = "true" *) JOIN_DDP JOIN_DDP(.MR(RST), .Send_in(~BOUT[0]), .Ack_in(~BOUT[1]), .PACKET_IN(PACKET_OUT_PF), .Send_out(Send_out_DDP), .Ack_out(Ack_out_DDP), .PACKET_OUT(PACKET_OUT_DDP));
(* dont_touch = "true" *) PACKET_FETCH PACKET_FETCH(.Send_in(~BOUT[0]), .RST(RST), .PC_UDDATE(BOUT[2]), .PACKET_OUT(PACKET_OUT_PF), .PC_OUT(PC_OUT_PF));
(* dont_touch = "true" *) DISPLAY DISPLAY(.CLK(CLK), .RST(RST), .DISP_SWITCH(BOUT[3]), .PC(PC_OUT_PF), .PACKET_IN(PACKET_OUT_DDP), .TOGLE(TOGLE), .PIN_NUM(PIN_NUM));

endmodule