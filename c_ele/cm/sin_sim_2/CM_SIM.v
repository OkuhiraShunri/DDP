`timescale 1ns / 100ps
module CM_SIM();
reg send_in_a, send_in_b, mr, c_ack_in;
wire c_ack_out, ack_out_a, ack_out_b, cp_a, cp_b, c_cp, aeb, c_send_out, cm_send_out;
CM cm(.Send_in_a(send_in_a), .Send_in_b(send_in_b), .Ack_in(c_ack_out), .MR(mr), .Ack_out_a(ack_out_a),
           .Ack_out_b(ack_out_b), .Send_out(cm_send_out), .CP_a(cp_a), .CP_b(cp_b), .aeb(aeb));

C c(.Send_in(cm_send_out), .Ack_in(c_ack_in), .MR(mr), .Ack_out(c_ack_out), .Send_out(c_send_out), .CP(c_cp));

initial begin
    // send_in_a = 1;
    c_ack_in = 1;
    
    mr = 1;
#50 mr = 0;
// #10  send_in_a = 0;
// #10  send_in_a = 1;
// #10  send_in_b = 0;
// #10  send_in_b = 1;

// #10  send_in_b = 0;
// #5  send_in_a = 0;
// #5  send_in_b = 1;
// #5  send_in_a = 1;
end


initial begin
    send_in_b = 1;
    #15  send_in_b = 0;
    #10  send_in_b = 1;
    #10  send_in_b = 0;
    #10  send_in_b = 1;

    #10  send_in_b = 0;
    #10  send_in_b = 1;
    #10  send_in_b = 0;
    #10  send_in_b = 1;
    #10  send_in_b = 0;
end

always begin
    send_in_a = 1;
#10 send_in_a = 0;
#10;    
end

// always begin
//     send_in_b = 0;
// #10 send_in_b = 1;
// #10;    
// end

endmodule