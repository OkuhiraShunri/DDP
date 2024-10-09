//`timescale 1ns/1ns
(* dont_touch = "true" *)
module CF (
    input Send_in, Ack_in, MR,
    output Ack_out, Send_out, CP
);
/* LB，LDの遅延時間がLA，LCの半分になっているという点のみがC素子と異なる */
//localparam DELAY = 4;
//localparam D_HALF = DELAY / 2;

(* dont_touch = "true" *) wire nand1_out, nand2_out, nand3_out, nand4_out, nand5_out;
(* dont_touch = "true" *) wire not1_out, LA_out, LB_out, LC_out, LD_out;

assign not1_out = ~MR;
assign nand1_out = ~(Send_in & nand2_out);
assign nand2_out = ~(nand1_out & not1_out & nand3_out);
assign nand3_out = ~(Send_in & LA_out & Ack_in & LC_out);
assign nand4_out = ~(nand3_out & nand5_out);
assign nand5_out = ~(nand4_out & not1_out & Ack_in);
// assign #DELAY  LA_out = nand1_out;
// assign #D_HALF LB_out = nand1_out;
// assign #DELAY  LC_out = nand5_out;
// assign #D_HALF LD_out = LC_out;
(* dont_touch = "true" *) Delay_4ns delay1 (.din(nand1_out), .dout(LA_out));
(* dont_touch = "true" *) Delay_4ns delay2 (.din(nand1_out), .dout(LB_out));
(* dont_touch = "true" *) Delay_4ns delay3 (.din(nand5_out), .dout(LC_out));
(* dont_touch = "true" *) Delay_2ns delay4 (.din(LC_out), .dout(LD_out));

assign Ack_out = ~LB_out;
assign Send_out = LD_out;
assign CP = ~nand5_out;
    
endmodule