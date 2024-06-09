`timescale 1ns / 100ps
module SIM();
reg send_in, ack_in, mr, exb;
wire cp, send_out, ack_out;

CE ce(.Send_in(send_in), .Ack_in(ack_in), .MR(mr), .Exb(exb), .Ack_out(ack_out), .Send_out(send_out), .CP(cp));
// initial begin
//     send_in = 1;
// #11
//     send_in = 0;
// 
initial begin
    send_in = 1;
     mr = 1;
#100 mr = 0;
#11  send_in = 0;
#11  send_in = 1;

#11 send_in = 0;
#11 send_in = 1;

//#50 mr = 1;
// #30  send_in = 0;
// #30  send_in = 1;

// #5  send_in = 0;
// #5  send_in = 1;


end
// always begin
//         send_in = 1;
//   #11   send_in = 0;
//   #11;
// end

endmodule