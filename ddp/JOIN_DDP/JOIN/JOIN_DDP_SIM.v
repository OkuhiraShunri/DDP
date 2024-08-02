`timescale 1ns/100ps
module JOIN_DDP_SIM();

JOIN_DDP ddp(.MR(MR), .Send_in(Send_in), .Ack_in(Ack_in), .PACKET_IN(PACKET_IN), 
             .Send_out(Send_out), .Ack_out(Ack_out), .PACKET_OUT(PACKET_OUT));
endmodule