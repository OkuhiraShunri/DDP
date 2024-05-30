module C_JOIN(
    input Send_in, MR, 
    output CP1, CP2, CP3, CP4, CP5, CP6, CP7, CP8
);

//wire send_in, ack_in, mr, ack_out, send_out, cp;
wire send_out1, send_out2, send_out3, send_out4, send_out5, send_out6, send_out7, send_out8, send_out8_and;
wire ack_out1, ack_out2, ack_out3, ack_out4, ack_out5, ack_out6, ack_out7, ack_out8;
assign send_out8_and = Send_in & send_out8;

C c1(.Send_in(send_out8_and), .Ack_in(ack_out2), .MR(MR), .Ack_out(ack_out1), .Send_out(send_out1), .CP(CP1));
C c2(.Send_in(send_out1), .Ack_in(ack_out3), .MR(MR), .Ack_out(ack_out2), .Send_out(send_out2), .CP(CP2));
C c3(.Send_in(send_out2), .Ack_in(ack_out4), .MR(MR), .Ack_out(ack_out3), .Send_out(send_out3), .CP(CP3));
C c4(.Send_in(send_out3), .Ack_in(ack_out5), .MR(MR), .Ack_out(ack_out4), .Send_out(send_out4), .CP(CP4));
C c5(.Send_in(send_out4), .Ack_in(ack_out6), .MR(MR), .Ack_out(ack_out5), .Send_out(send_out5), .CP(CP5));
C c6(.Send_in(send_out5), .Ack_in(ack_out7), .MR(MR), .Ack_out(ack_out6), .Send_out(send_out6), .CP(CP6));
C c7(.Send_in(send_out6), .Ack_in(ack_out8), .MR(MR), .Ack_out(ack_out7), .Send_out(send_out7), .CP(CP7));
C c8(.Send_in(send_out7), .Ack_in(ack_out1), .MR(MR), .Ack_out(ack_out8), .Send_out(send_out8), .CP(CP8));



endmodule