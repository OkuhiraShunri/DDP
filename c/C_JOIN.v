module C_JOIN(
    input Send_in,
    output CP1, CP2, CP3, CP4, CP5, CP6, CP7, CP8
);

//wire send_in, ack_in, mr, ack_out, send_out, cp;
wire send_0, send_1, send_2, send_3, send_4, send_5, send_6, send_7;
wire ack_0, ack_1, ack_2, ack_3, ack_4, ack_5, ack_6, ack_7;


C c1(.Send_in(send_0), .Ack_in(ack_1), .MR(), .Ack_out(ack_0), .Send_out(send_1), .CP(CP1));
C c2(.Send_in(send_1), .Ack_in(ack_2), .MR(), .Ack_out(ack_1), .Send_out(send_2), .CP(CP2));
C c3(.Send_in(send_2), .Ack_in(ack_3), .MR(), .Ack_out(ack_2), .Send_out(send_3), .CP(CP3));
C c4(.Send_in(send_3), .Ack_in(ack_4), .MR(), .Ack_out(ack_3), .Send_out(send_4), .CP(CP4));
C c5(.Send_in(send_4), .Ack_in(ack_5), .MR(), .Ack_out(ack_4), .Send_out(send_5), .CP(CP5));
C c6(.Send_in(send_5), .Ack_in(ack_6), .MR(), .Ack_out(ack_5), .Send_out(send_6), .CP(CP6));
C c7(.Send_in(send_6), .Ack_in(ack_7), .MR(), .Ack_out(ack_6), .Send_out(send_7), .CP(CP7));
C c8(.Send_in(send_7), .Ack_in(ack_0), .MR(), .Ack_out(ack_7), .Send_out(send_0), .CP(CP8));



endmodule