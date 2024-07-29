`timescale 1ns/1ns
module CE (
    input Send_in, Ack_in, MR, exb,
    output Ack_out, Send_out, CP
);

wire CFS_out, CFA_in, DL;

CF CF0 (.Send_in(Send_in), .Ack_out(Ack_out), .MR(MR), .Send_out(CFS_out), .Ack_in(CFA_in), .CP(CP));

assign Send_out = ~DL | CFS_out;
assign CFA_in = (DL | CFS_out) & Ack_in;

assign DL = (CP)? exb: DL;
    
endmodule