`timescale 1ns/1ns
module C (
    input Send_in, Ack_in, MR,
    output Ack_out, Send_out, CP
);

wire nand1_out, nand2_out, nand3_out, nand4_out, nand5_out;
wire not1_out, LA_out, LB_out, LC_out, LD_out;

assign not1_out = ~MR;
assign nand1_out = ~(Send_in & nand2_out);
assign nand2_out = ~(nand1_out & not1_out & nand3_out);
assign nand3_out = ~(Send_in & LA_out & Ack_in & LC_out);
assign nand4_out = ~(nand3_out & nand5_out);
assign nand5_out = ~(nand4_out & not1_out & Ack_in);
assign #4 LA_out = nand1_out;
assign #4 LB_out = nand1_out;
assign #4 LC_out = nand5_out;
assign #4 LD_out = LC_out;
// Delay_4ns delay1 (.din(nand1_out), .dout(LA_out));
// Delay_4ns delay2 (.din(nand1_out), .dout(LB_out));
// Delay_4ns delay3 (.din(nand5_out), .dout(LC_out));
// Delay_4ns delay4 (.din(LC_out), .dout(LD_out));

assign Ack_out = ~LB_out;
assign Send_out = LD_out;
assign CP = ~nand5_out;
    
endmodule