`timescale 1ns / 100ps
module M_Stage_SIM();
    reg [37:0] packet_in_external, packet_in_internal;
    reg send_in_ex, send_in_in, ack_in, mr;
    wire [37:0] packet_out;
    wire ack_out_ex, ack_out_in, send_out; 
    M_Stage m_s(.MR(mr), .Send_in_EX(send_in_ex), .Send_in_IN(send_in_in), .Ack_in(ack_in), .PACKET_IN_EXTERNAL(packet_in_external), .PACKET_IN_INTERNAL(packet_in_internal), 
                .Ack_out_EX(ack_out_ex), .Ack_out_IN(ack_out_in), .Send_out(send_out), .PACKET_OUT(packet_out));
    
    initial begin
        packet_in_external = 38'd100;
        packet_in_internal = 38'd120;
        send_in_ex = 1;
        send_in_in = 1;
        ack_in = 1;
        mr = 1;
    #50 mr = 0;
    #10 send_in_ex = 0;
    #10 send_in_ex = 1;
    end
endmodule