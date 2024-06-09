`timescale 1ns / 100ps
module SIM();
reg ce_send_in, mr, exb, c_ack_in;
wire ce_cp, ce_send_out, ce_ack_out, ce_ack_in, c_send_out, c_cp;

CE ce(.CE_Send_in(ce_send_in), .CE_Ack_in(ce_ack_in), .MR(mr), .Exb(exb), .CE_Ack_out(ce_ack_out), .CE_Send_out(ce_send_out), .CE_CP(ce_cp));
C c(.Send_in(ce_send_out), .Ack_in(c_ack_in), .MR(mr), .Ack_out(ce_ack_in), .Send_out(c_send_out), .CP(c_cp));

initial begin
    ce_send_in = 1;
    c_ack_in = 1;
    //ce_ack_in = 1;
    exb = 0;
    mr = 1;
#100 mr = 0;
#11  ce_send_in = 0;
#11  ce_send_in = 1;
//#11   ce_ack_in = 0;
end

endmodule