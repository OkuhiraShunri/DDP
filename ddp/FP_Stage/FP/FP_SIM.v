`timescale 1ns/100ps
`include "macro.vh"
module FP_SIM();
reg [61:0] PACKET_IN;
reg DEL, Send_in, Ack_in, MR;
wire WRITE_EN, LOAD_FLG, Send_out, Ack_out;
wire [15:0] WRITE_DATA;
wire [39:0] PACKET_OUT;

FP_Stage FP(.PACKET_IN(PACKET_IN), .DEL(DEL), .Send_in(Send_in), .Ack_in(Ack_in), .MR(MR), .Send_out(Send_out),
            .Ack_out(Ack_out), .WRITE_DATA(WRITE_DATA), .PACKET_OUT(PACKET_OUT), .WRITE_EN(WRITE_EN), .LOAD_FLG(LOAD_FLG));

initial begin
            Send_in = 1;
            DEL = 1;
            MR = 1;
    #10     MR = 0;
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
    #40     Ack_in = 0;
    #10     Ack_in = 1;
    #10     Ack_in = 0;
    #10     Ack_in = 1;
    #10     Ack_in = 0;
    #10     Ack_in = 1;
    #10     Ack_in = 0;
    #10     Ack_in = 1;
    #10     Ack_in = 0;
end

initial begin
            PACKET_IN <= {22'b0, `STM, 1'b0, 1'b0, 16'd10, 16'd5};
    #35     PACKET_IN <= {22'b0, `LDM, 1'b0, 1'b0, 16'd2, 16'd7};
    #35     PACKET_IN <= {22'b0, `ADD, 1'b0, 1'b0, 16'd3, 16'd5};
end
endmodule