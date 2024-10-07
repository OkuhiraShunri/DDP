`timescale 1ns/100ps
module JOIN_DDP_SIM();
reg Send_in, Ack_in, MR;
reg [37:0] PACKET_IN;
wire Send_out, Ack_out;
wire [37:0] PACKET_OUT;
JOIN_DDP ddp(.MR(MR), .Send_in(Send_in), .Ack_in(Ack_in), .PACKET_IN(PACKET_IN), 
             .Send_out(Send_out), .Ack_out(Ack_out), .PACKET_OUT(PACKET_OUT));

initial begin
            Send_in = 1;
            MR = 1;
    #50     MR = 0;//#10だとMMCAM以降のCP上がらない
    #10     Send_in = 0;
    #10     Send_in = 1;
    // #10     Send_in = 0;
    // #10     Send_in = 1;
    // #10     Send_in = 0;
    // #10     Send_in = 1;
    // #10     Send_in = 0;
    // #10     Send_in = 1;
end


// initial begin //COPY BR 用
//             Ack_in = 1;
//     #380    Ack_in = 0;
//     #15     Ack_in = 1;
//     #100    Ack_in = 0;
//     #15     Ack_in = 1;
//     #15     Ack_in = 0;
// end

initial begin
            Ack_in = 1;
    // #670    Ack_in = 0;
    // #15     Ack_in = 1;
end

//足し算と引き算のテスト(仕様書P1)
// initial begin
//     //PACKET_IN <= {3'b111, 8'b0, 7'b1, 1'b0, 1'b0, 1'b0, 1'b0, 16'd4};//待ち合わせしないパケット
//             PACKET_IN <= {3'b111, 8'b0, 7'd1, 1'b0, 1'b1, 1'b0, 1'b0, 16'd4};//A
//     #90     PACKET_IN <= {3'b111, 8'b0, 7'd2, 1'b0, 1'b1, 1'b0, 1'b0, 16'd2};//C
//     #20     PACKET_IN <= {3'b111, 8'b0, 7'd1, 1'b1, 1'b1, 1'b0, 1'b0, 16'd8};//B
//     #20     PACKET_IN <= {3'b111, 8'b0, 7'd2, 1'b1, 1'b1, 1'b0, 1'b0, 16'd3};//D
// end

//条件分岐のテスト
// initial begin
//             PACKET_IN <= {3'b111, 8'b0, 7'd4, 1'b0, 1'b1, 1'b0, 1'b1, 16'd16};//A
//     #90     PACKET_IN <= {3'b111, 8'b0, 7'd4, 1'b1, 1'b1, 1'b0, 1'b0, 16'd8};//B
// end

//コピーのテスト
// initial begin
//             PACKET_IN <= {3'b111, 8'b0, 7'd7, 1'b0, 1'b1, 1'b0, 1'b1, 16'd10};//A
//     #90     PACKET_IN <= {3'b111, 8'b0, 7'd7, 1'b1, 1'b1, 1'b0, 1'b1, 16'd2};//B
// end

//階乗のテストaaa
initial begin
    PACKET_IN <= {3'b111, 8'b0, 7'd10, 1'b0, 1'b0, 1'b0, 1'b0, 16'd5};
end
endmodule