(* dont_touch = "true" *)
module M_Stage(
    input MR, Send_in_EX, Send_in_IN, Ack_in,
    input [37:0] PACKET_IN_EXTERNAL, PACKET_IN_INTERNAL,
    output Ack_out_EX, Ack_out_IN, Send_out,
    output [37:0] PACKET_OUT
);

(* dont_touch = "true" *) reg [37:0] DL_EX; 
(* dont_touch = "true" *) reg [37:0] DL_IN;
(* dont_touch = "true" *) wire CP_EXTERNAL, CP_INTERNAL;
always @(posedge CP_EXTERNAL or posedge MR) begin
    if(MR)begin
        DL_EX <= 38'b0;
    end
    else begin
        DL_EX <= PACKET_IN_EXTERNAL;
    end
end 

always @(posedge CP_INTERNAL or posedge MR) begin
    if(MR)begin
        DL_IN <= 38'b0;
    end
    else begin
        DL_IN <= PACKET_IN_INTERNAL;
    end
end

(* dont_touch = "true" *) CM cm(.Send_in_a(Send_in_EX), .Send_in_b(Send_in_IN), .Ack_in(Ack_in), .MR(MR), .Ack_out_a(Ack_out_EX), .Ack_out_b(Ack_out_IN),
      .Send_out(Send_out), .CP_a(CP_EXTERNAL), .CP_b(CP_INTERNAL), .AEB(AEB));

// function [37:0] MUX1;
//     input [37:0] DL_EX;
//     input [37:0] DL_IN;
//     input  AEB;
    
//     if (AEB) begin
//         MUX1 = DL_EX;
//     end 
//     else begin
//         MUX1 = DL_IN;
//     end
// endfunction

//output
//PACKET_OUT = MUX1(DL_EX, DL_IN, AEB);
//assign PACKET_OUT = AEB ? DL_EX : DL_IN;//まえ
assign PACKET_OUT = AEB ? DL_IN : DL_EX;//あと
endmodule