`timescale 1ns / 100ps
module CX2_SIM();
    reg send_in, cpy, exb, mr, c_ack_in;
    wire c_send_out, c_ack_out, cx2_ack_out, cx2_send_out, cx2_cp, c_cp, feb;
    CX2 cx2(.Send_in(send_in), .Ack_in(c_ack_out), .cpy(cpy), .exb(exb), .MR(mr), 
            .Ack_out(cx2_ack_out), .Send_out(cx2_send_out), .CP(cx2_cp), .feb(feb));
    C c(.Send_in(cx2_send_out), .Ack_in(c_ack_in), .MR(mr), .Ack_out(c_ack_out), .Send_out(c_send_out), .CP(c_cp));

    initial begin
        send_in = 1;
        c_ack_in = 1;
        exb = 1;
        cpy = 1;
        mr = 1;
    #50 mr = 0;
    #10 send_in = 0;   
    #10 send_in = 1; 

    #10 send_in = 0;
        exb = 0;   
    #10 send_in = 1;

    #10 send_in = 0;   
    #10 send_in = 1;
    end

    initial begin
        #105 c_ack_in = 0;
        #15 c_ack_in = 1;
        #15 c_ack_in = 0;

        //ついか
        #15 c_ack_in = 1;
        #15 c_ack_in = 0;
    end

endmodule