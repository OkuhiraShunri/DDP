`timescale 1ns/100ps
module B_SIM();

reg Send_in, Ack_in_a, Ack_in_b, MR;
reg [37:0] PACKET_IN;
wire Send_out_a, Send_out_b, Ack_out;
wire [37:0] PACKET_OUT;
B_Stage b_stage(.PACKET_IN(PACKET_IN), .Send_in(Send_in), .Ack_in_a(Ack_in_a), .Ack_in_b(Ack_in_b), .MR(MR),
                .Send_out_a(Send_out_a), .Send_out_b(Send_out_b), .Ack_out(Ack_out), .PACKET_OUT(PACKET_OUT));

initial begin
            Send_in = 1;
            MR = 1;
    #10    MR = 0;
    #10     Send_in = 0;
    #10     Send_in = 1;
    #10     Send_in = 0;
    #10     Send_in = 1;
    #10     Send_in = 0;
    #10     Send_in = 1;
end

initial begin
            Ack_in_a = 1;
    #40    Ack_in_a = 0;
    #10     Ack_in_a = 1;
    #10     Ack_in_a = 0;
    #10     Ack_in_a = 1;
    #10     Ack_in_a = 0;
end

initial begin
            Ack_in_b = 1;
    #40    Ack_in_b = 0;
    #10     Ack_in_b = 1;
    #10     Ack_in_b = 0;
    #10     Ack_in_b = 1;
    #10     Ack_in_b = 0;
end

initial begin
            PACKET_IN = {11'b0, 7'd1, 1'b0, 1'b0, 18'b0};//BR=0ならSend_out_a, BR=1ならSend_out_b
    #35    PACKET_IN = {11'b0, 7'd2, 1'b0, 1'b1, 18'd133};
end
endmodule