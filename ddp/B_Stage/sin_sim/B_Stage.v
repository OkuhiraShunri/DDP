`include "common_macro.vh"
module B_Stage (
    input Send_in, Ack_in_a, Ack_in_b, MR, 
    input [`B_PACKIN_SIZE] PACKET_IN,
    output Send_out_a, Send_out_b, Ack_out,
    output [`B_PACKOUT_SIZE] PACKET_OUT
);

wire C8S_out, C8A_in, CP_C, CP_CB, BR;
wire [`B_PACKIN_SIZE] DL_IN;
wire [`B_PACKOUT_SIZE] BRANCH_OUT, DL_OUT;

C C8 (.Send_in(Send_in), .Ack_out(Ack_out), .MR(MR), .Send_out(C8S_out), .Ack_in(C8A_in), .CP(CP_C));
CB CB9 (.Send_in(C8S_out), .Ack_out(C8A_in), .MR(MR), .Send_out_a(Send_out_a), .Send_out_b(Send_out_b),
         .Ack_in_a(Ack_in_a), .Ack_in_b(Ack_in_b), .CP(CP_CB), .br(BR));


assign DL_IN = (CP_C)? PACKET_IN: DL_IN;
assign DL_OUT = (CP_CB)? BRANCH_OUT: DL_OUT;
assign {BR, BRANCH_OUT} = {PACKET_IN[`B_PACKIN_BR], {PACKET_IN[`B_PACKIN_CGDL], PACKET_IN[`B_PACKIN_MCZD]}};
assign PACKET_OUT = DL_OUT;
    
endmodule