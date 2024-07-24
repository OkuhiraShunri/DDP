(* dont_touch = "true" *)
`include "macro.vh"
module MMRAM(MR, Send_in, Ack_in, WR_E, ADDR, DEL, PACKET_IN, Ack_out, Send_out, PACKET_OUT);
  /*** port ***/
  input MR;
  input Send_in, Ack_in;
  input WR_E;
  input[`ADDR_LENGTH-1:0] ADDR;
  input DEL;
  input [`MMRAM_PACKET_SIZE-1:0] PACKET_IN;
  output Ack_out, Send_out;
  output [`PS_PACKET_SIZE-1:0] PACKET_OUT;

  /*** netlist ***/
  (* dont_touch = "true" *) wire [`RAM_DATA_LENGTH-1:0] DATA_IN;
  (* dont_touch = "true" *) wire [`dest_LENGTH-1:0] dest;
  (* dont_touch = "true" *) wire CP;
  (* dont_touch = "true" *) reg [`MMRAM_PACKET_SIZE-1:0] DL;
  (* dont_touch = "true" *) wire [`RAM_DATA_LENGTH-1:0] DATA_OUT;
  (* dont_touch = "true" *) wire [`Data_LENGTH-1:0] CST_DATA;
  (* dont_touch = "true" *) wire [`MMRAM_MERGE_LENGTH-1:0] MERGE1_OUT;
  (* dont_touch = "true" *) wire [`MMRAM_MERGE_LENGTH-1:0] MERGE2_OUT;
  (* dont_touch = "true" *) wire [`MMRAM_MERGE_LENGTH-1:0] MUX_OUT;

  /*** circuit ***/
  assign dest = PACKET_IN[26:20];
  assign DATA_IN = PACKET_IN[`RAM_DATA_LENGTH-1:0];

  //Update DL value
  always @(posedge CP, posedge MR) begin
    if (MR) begin
        DL <= `MMRAM_PACKET_SIZE'b0;
    end else begin
        DL <= PACKET_IN;
    end
  end

  //Merge1
  assign MERGE1_OUT[31:0] = {DL[15:0], DATA_OUT[15:0]};    //DATA
  assign MERGE1_OUT[34:32] = (DL[19])? DL[18:16] : DATA_OUT[18:16];
  assign MERGE1_OUT[35] = DL[19];  //LR
  assign MERGE1_OUT[53:36] = DL[37:20];

  //Merge2
  assign MERGE2_OUT = {DL, CST_DATA};

  //MUX
  assign MUX_OUT = (DL[18])? MERGE1_OUT : MERGE2_OUT;

  //PACKET CONVERSION
  assign PACKET_OUT[31:0] = (MUX_OUT[35])? {MUX_OUT[15:0], MUX_OUT[31:16]} : {MUX_OUT[31:16], MUX_OUT[15:0]};
  assign PACKET_OUT [51:32] = {MUX_OUT[53:36], MUX_OUT[33:32]};

  /*** module ***/
  CE ce(.MR(MR), .exb(DEL), .Send_in(Send_in), .Ack_in(Ack_in), .Send_out(Send_out), .Ack_out(Ack_out), .cp(CP));

  // MMRAM_RAM IP 
  MMRAM_RAM RAM (
  .clka(CP),    // input wire clka
  .wea(WR_E),      // input wire [0 : 0] wea
  .addra(ADDR),  // input wire [5 : 0] addra
  .dina(DATA_IN),    // input wire [19 : 0] dina
  .douta(DATA_OUT)  // output wire [19 : 0] douta
  );

  MMRAM_CMEM CMEM (
  .clka(CP),    // input wire clka
  .addra(dest[5:0]),  // input wire [5 : 0] addra
  .douta(CST_DATA)  // output wire [15 : 0] douta
  );
endmodule