`timescale 1ns / 100ps
module SIM();
reg ce_send_in, ce_ack_in, mr, exb;
wire ce_cp, ce_send_out, ce_ack_out;

CE ce(.CE_Send_in(ce_send_in), .CE_Ack_in(ce_ack_in), .MR(mr), .Exb(exb), .CE_Ack_out(ce_ack_out), .CE_Send_out(ce_send_out), .CE_CP(ce_cp));
// initial begin
//     send_in = 1;
// #11
//     send_in = 0;
// 
initial begin
    ce_send_in = 1;
    ce_ack_in = 1;
    exb = 1;
    mr = 1;
#100 mr = 0;
#11  ce_send_in = 0;
#11  ce_send_in = 1;
#11   ce_ack_in = 0;



// #11 send_in = 0;
// #11 send_in = 1;

//#50 mr = 1;
// #30  send_in = 0;
// #30  send_in = 1;

// #5  send_in = 0;
// #5  send_in = 1;


end
endmodule