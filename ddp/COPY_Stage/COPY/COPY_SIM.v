`timescale 1ns/100ps
module COPY_SIM();
reg Send_in, Ack_in, MR;
reg [39:0] PACKET_IN;
wire Send_out, Ack_out;
wire [37:0] PACKET_OUT;
COPY_Stage copy(.Send_in(Send_in), .Ack_in(Ack_in), .MR(MR), .PACKET_IN(PACKET_IN), 
                .Send_out(Send_out), .Ack_out(Ack_out), .PACKET_OUT(PACKET_OUT));

initial begin
            Send_in = 1;
            MR = 1;
    #100    MR = 0;
    #10     Send_in = 0;
    #10     Send_in = 1;
    #10     Send_in = 0;
    #10     Send_in = 1;
    #10     Send_in = 0;
    #10     Send_in = 1;
    #10     Send_in = 0;
    #10     Send_in = 1;
    #10     Send_in = 0;
    #10     Send_in = 1;
    #10     Send_in = 0;
    #10     Send_in = 1;
end

initial begin
            Ack_in = 1;
    #130    Ack_in = 0;
    #10     Ack_in = 1;
    #10     Ack_in = 0;
    #10     Ack_in = 1;
    #10     Ack_in = 0;
    #10     Ack_in = 1;
    #10     Ack_in = 0;
    #10     Ack_in = 1;
    #10     Ack_in = 0;
    #10     Ack_in = 1;
    #10     Ack_in = 0;
    #10     Ack_in = 1;
end

initial begin
            PACKET_IN = {{11{1'b0}}, 7'd12, 2'b01, 1'b0, 1'b1, {18{1'b0}}};
    #155    PACKET_IN = {{11{1'b0}}, 7'd8, {3{1'b0}}, 1'b0, {18{1'b0}}};
end

endmodule