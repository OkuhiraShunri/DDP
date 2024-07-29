`timescale 1ns/100ps
module MA_SIM();

    reg Send_in, Ack_in, MR, WRITE_EN, LOAD_FLG;
    reg [15:0] WRITE_DATA;
    reg [39:0] PACKET_IN;
    wire Send_out, Ack_out;
    wire [39:0] PACKET_OUT;

    MA_Stage MA(.WRITE_EN(WRITE_EN), .LOAD_FLG(LOAD_FLG), .Send_in(Send_in), .Ack_in(Ack_in), .MR(MR), 
                .WRITE_DATA(WRITE_DATA), .PACKET_IN(PACKET_IN), .Send_out(Send_out), .Ack_out(Ack_out), .PACKET_OUT(PACKET_OUT));

//Send_in生成
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

//Ack_out生成
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
end

initial begin
            {WRITE_EN, WRITE_DATA, PACKET_IN, LOAD_FLG} = {1'b1, 16'd10, {{24{1'b0}}, 16'd3}, 1'b0};//stor
    #125    {WRITE_EN, WRITE_DATA, PACKET_IN, LOAD_FLG} = {1'b1, 16'd12, {{24{1'b1}}, 16'd2}, 1'b0};//stor
    #20     {WRITE_EN, WRITE_DATA, PACKET_IN, LOAD_FLG} = {1'b1, 16'd15, {{24{1'b0}}, 16'd1}, 1'b0};//stor
    #20     {WRITE_EN, WRITE_DATA, PACKET_IN, LOAD_FLG} = {1'b0, 16'd15, {{24{1'b1}}, 16'd3}, 1'b1};//load
end
endmodule