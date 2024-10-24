(* dont_touch = "true" *)
module PACKET_FETCH(
    input Send_in, RST, PC_UDDATE,
    output [37:0] PACKET_OUT,
    output [4:0] PC_OUT    
);

(* dont_touch = "true" *) reg [37:0] PACKET [0:19];
integer i;
initial begin
    for (i = 0; i < 20; i = i + 1) begin
          PACKET[i] = 38'd0;
    end
    PACKET[0] = {3'b111, 8'b0, 7'd0, 1'b0, 1'b0, 1'b0, 1'b0, 16'd4};
    PACKET[1] = {3'b111, 8'b1, 7'd0, 1'b0, 1'b0, 1'b0, 1'b0, 16'd5};
    PACKET[2] = {3'b111, 8'b0, 7'd7, 1'b1, 1'b1, 1'b0, 1'b1, 16'd2};
    PACKET[3] = {3'b111, 8'b0, 7'd1, 1'b0, 1'b1, 1'b0, 1'b0, 16'd3};
    PACKET[4] = {3'b111, 8'b0, 7'd0, 1'b0, 1'b0, 1'b0, 1'b0, 16'd4};
    PACKET[5] = {3'b111, 8'b0, 7'd7, 1'b0, 1'b1, 1'b0, 1'b1, 16'd5};
    PACKET[6] = {3'b111, 8'b0, 7'd7, 1'b1, 1'b1, 1'b0, 1'b1, 16'd6};
    PACKET[7] = {3'b111, 8'b0, 7'd1, 1'b0, 1'b1, 1'b0, 1'b0, 16'd7};
end


(* dont_touch = "true" *) reg [4:0] PC = 5'd0;
always @(posedge RST or posedge PC_UDDATE) begin
    if(RST)begin
        PC <= 5'd0;
    end
    else begin
        PC <= PC + 5'd1;
    end
end

// reg [4:0] PC_2 = 5'd0;
// always @(posedge Send_in or posedge RST) begin
//     if(RST)begin
//         PC_2 <= 5'd0;
//     end
//     else begin
//         PC_2 <= PC;
//     end
// end
assign PACKET_OUT = PACKET[PC]; 
assign PC_OUT = PC;
endmodule