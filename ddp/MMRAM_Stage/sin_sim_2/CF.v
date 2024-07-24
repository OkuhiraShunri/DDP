//`timescale 1ns/ 100ps
(* dont_touch = "true" *)
module CF(MR, Send_in, Ack_in, Send_out, Ack_out, cp);
    /*** port ***/
    input MR;
    input Send_in;
    input Ack_in;
    output Send_out;
    output Ack_out;
    output cp;

    (* dont_touch = "true" *) wire nand1_out, nand2_out, nand3_out, nand4_out, nand5_out;
    (* dont_touch = "true" *) wire LA_out, LB_out, LC_out, LD_out;

    assign nand1_out = ~(Send_in & nand2_out);
    assign nand2_out = ~(nand1_out & ~MR & nand3_out); 
    assign nand3_out = ~(Send_in & LA_out & Ack_in & LC_out);
    assign nand4_out = ~(nand3_out & nand5_out);
    assign nand5_out = ~(nand4_out & ~MR & Ack_in);

    Delay_4ns delay1 (.din(nand1_out), .dout(LA_out));
    Delay_4ns delay2 (.din(nand1_out), .dout(LB_out));
    Delay_4ns delay3 (.din(nand5_out), .dout(LC_out));
    Delay_2ns delay4 (.din(LC_out), .dout(LD_out));

    // assign #4 LA_out = nand1_out;
    // assign #2 LB_out = nand1_out;
    // assign #4 LC_out = nand5_out;
    // assign #2 LD_out = LC_out;

    //output
    assign Send_out = LD_out;
    assign Ack_out = ~LB_out;
    assign cp = ~nand5_out;
endmodule