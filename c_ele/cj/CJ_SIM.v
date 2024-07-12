`timescale 1ns / 100ps
module CB_SIM();
reg cj_send_in, mr, ga, z_1, c_ack_in;
wire cj_ack_out, cj_cp, c_cp, cj_send_out, c_send_out, c_ack_out;
CJ cj(.Send_in(cj_send_in), .Ack_in(c_ack_out), .MR(mr), .Ga(ga), .Z_1(z_1), .Ack_out(cj_ack_out), .Send_out(cj_send_out), .CP(cj_cp));
C c(.Send_in(~cj_send_out), .Ack_in(c_ack_in), .MR(mr), .Ack_out(c_ack_out), .Send_out(c_send_out), .CP(c_cp));

initial begin
    cj_send_in = 1;
    c_ack_in = 1;
    ga = 0;//Ack_outが立ち下がると同時くらいにgaは手動で立ち上げる必要あり
    z_1 = 1;
    mr = 1;
#100 mr = 0;
#11  cj_send_in = 0;
#5  ga = 1;
#11  cj_send_in = 1;
//#10 ga = 0;

end

endmodule