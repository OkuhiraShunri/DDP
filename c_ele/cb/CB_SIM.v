`timescale 1ns / 100ps
module CB_SIM();
reg cb_send_in, mr, br, c_ack_in_a, c_ack_in_b;
wire cb_send_out_a, cb_send_out_b, cb_ack_in_a, cb_ack_in_b, cb_ack_out, c_send_out_a, c_send_out_b, cp_a, cp_b, cb_cp;
C c_a(.Send_in(cb_send_out_a), .Ack_in(c_ack_in_a), .MR(mr), .Ack_out(cb_ack_in_a), .Send_out(c_send_out_a), .CP(cp_a));
C c_b(.Send_in(cb_send_out_b), .Ack_in(c_ack_in_b), .MR(mr), .Ack_out(cb_ack_in_b), .Send_out(c_send_out_b), .CP(cp_b));
CB cb0(.CB_Send_in(cb_send_in), .CB_Ack_in_a(cb_ack_in_a), .CB_Ack_in_b(cb_ack_in_b), .MR(mr), .Br(br),
       .CB_Ack_out(cb_ack_out), .CB_Send_out_a(cb_send_out_a), .CB_Send_out_b(cb_send_out_b), .CB_CP(cb_cp));

initial begin
    cb_send_in = 1;
    c_ack_in_a = 1;
    c_ack_in_b = 1;
    //ce_ack_in = 1;
    br = 0;
    mr = 1;
#100 mr = 0;
#11  cb_send_in = 0;
#11  cb_send_in = 1;
//#11   ce_ack_in = 0;
end

endmodule