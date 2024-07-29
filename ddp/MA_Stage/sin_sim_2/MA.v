(* dont_touch = "true" *)
`include "macro.vh"
module MA(MR, Send_in, Ack_in, WRITE_EN, WRITE_DATA, PACKET_IN, LOAD_FLG, PACKET_OUT, Ack_out, Send_out);
    /*** port ***/
    input MR;
    input Send_in, Ack_in; 
    input WRITE_EN;
    input [`Data_LENGTH-1:0] WRITE_DATA;
    input [`MA_PACKET_SIZE-1:0] PACKET_IN;
    input LOAD_FLG;
    output [`COPY_PACKET_SIZE-1:0] PACKET_OUT;
    output Ack_out, Send_out;

    /*** netlist ***/
    (* dont_touch = "true" *) reg [`MA_PACKET_SIZE:0] DL;
    (* dont_touch = "true" *) wire [`Data_LENGTH-1:0] ResultData;
    (* dont_touch = "true" *) wire [`MA_MERGE_LENGTH:0] MERGE_DATA;
    (* dont_touch = "true" *) wire [`Data_LENGTH-1:0] LOAD_DATA;
    (* dont_touch = "true" *) wire [`OTHER_DATA_LENGTH-1:0] OTHER_DATA;

    (* dont_touch = "true" *) wire CP;

    /*** circuit ***/
    assign ResultData = PACKET_IN[15:0];
    assign OTHER_DATA = DL[40:17];
    assign MERGE_DATA = {OTHER_DATA, LOAD_DATA};
    assign PACKET_OUT = (DL[0])? MERGE_DATA : DL[40:1];

    always @(posedge CP, posedge MR) begin
        if (MR) begin
            DL <= 41'b0;
        end else begin
            DL <= {PACKET_IN, LOAD_FLG};
        end
    end

    /*** module ***/
    C c(.MR(MR), .Send_in(Send_in), .Ack_in(Ack_in), .Send_out(Send_out), .Ack_out(Ack_out), .cp(CP));

    //MA_DMEM IP
    MA_DMEM DMEM (
    .clka(CP),    // input wire clka
    .wea(WRITE_EN),      // input wire [0 : 0] wea
    .addra(ResultData[9:0]),  // input wire [9 : 0] addra
    .dina(WRITE_DATA),    // input wire [15 : 0] dina
    .douta(LOAD_DATA)  // output wire [15 : 0] douta
    );
endmodule