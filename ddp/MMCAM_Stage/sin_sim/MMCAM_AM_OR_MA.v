`include "common_macro.vh"
module MMCAM_AM_OR_MA (
    input MR, CP, MachingFlag,
    input [`MMCAM_EFV_SIZE] FIRE, VALID,
    output reg WR_E, DEL,
    output reg [`MMRAM_ADDR_SIZE] ADDR,
    output [`MMCAM_EFV_SIZE] EN
);
wire FIRE_OR;
wire [`MMRAM_ADDR_SIZE] W_ADDR, R_ADDR;

assign FIRE_OR = |FIRE;
assign R_ADDR = RADDR_LUT(FIRE);
assign {W_ADDR, EN} = AM(MachingFlag, FIRE_OR, VALID);

// MMCAM_MAの処理を行うalways文
// DEL = 1'b0の場合，消去する．DEL = 1'b1の場合，消去しない．
always @(posedge MR or posedge CP) begin
    if (MR) begin
        {WR_E, DEL, ADDR} = {1'b0, 1'b1, `MMRAM_ADDR_WIDTH'd0};
    end 
    else if (CP) begin
        if (~MachingFlag) begin
            {WR_E, DEL} = {1'b0, 1'b1};                 // 待ち合わせしない
        end
        else if (FIRE_OR) begin
            {WR_E, DEL, ADDR} = {1'b0, 1'b1, R_ADDR};   // 待ち合わせするパケットで，かつ発火
        end else begin
            {WR_E, DEL, ADDR} = {1'b1, 1'b0, W_ADDR};   // 待ち合わせするパケットで，かつ発火していない
        end
    end
end

//////////////************VALIDの初期化は必要．VALIDとENのお互いがお互いを頼っていて不定値のデッドロック状態...?************////////////////
// ただし，wireにinitial文を適用することはできない．そのため，MMCAM_AM_OR_MAのAMにて，EN[0]をdefaultで（VALID==1'bxのとき）1にしておく必要がある．
// そのため，function AMのif文先頭から2つ目部分のみ条件文が(VALID[0] !== 1'b1) ...で，VALID[0]が不定値だったら，つまり初期の状態での処理を記述している．
// (不定値も含めた比較は==ではできず，===で行う必要がある．)　...と思ったが...，実際にはこれによりループが発生してしまい，simulationがうまくいかない....
// ※ 一番最初は不定値であり，この時にどこか1つでもEN信号に1を立ててしまうと，無限ループが発生してしまう．
// 最終的に，VALIDはレジスタとして処理を記述する必要があるということでMMCAM_ENTRY_FD内の処理を修正することで解決．
// （また，別部分のミスに関しては，MMCAM_AM_OR_MA内のMAに関しても，各出力をレジスタで定義してalways文で記述することで上手くいった．）
// これにより，VALIDもENも両方初期値が不定値となるデッドロックを防ぐことができる．

// case文で書いたが，if文を何行も続けても書ける? その場合，時間は変わる? 待ち合わせパケットが多い場合に場所探に時間がかかる?
function [`MMCAM_AM_SIZE] AM (input MachingFlag, FIRE_OR, input [`MMCAM_EFV_SIZE] VALID);
    if (FIRE_OR | ~MachingFlag) begin
        AM = `MMCAM_EFV_WIDTH'h0;       // 書き込みを許可しないため，W_ADDRは指定しない
    end /*else if (MR) begin
        AM = {`MMRAM_ADDR_WIDTH'd0,  `MMCAM_EFV_WIDTH'h0};
    end */else begin
        if (~VALID[0])          AM = {`MMRAM_ADDR_WIDTH'd0,  `MMCAM_EFV_WIDTH'h1};
        else if (~VALID[1])     AM = {`MMRAM_ADDR_WIDTH'd1,  `MMCAM_EFV_WIDTH'h2};
        else if (~VALID[2])     AM = {`MMRAM_ADDR_WIDTH'd2,  `MMCAM_EFV_WIDTH'h4};
        else if (~VALID[3])     AM = {`MMRAM_ADDR_WIDTH'd3,  `MMCAM_EFV_WIDTH'h8};
        else if (~VALID[4])     AM = {`MMRAM_ADDR_WIDTH'd4,  `MMCAM_EFV_WIDTH'h10};
        else if (~VALID[5])     AM = {`MMRAM_ADDR_WIDTH'd5,  `MMCAM_EFV_WIDTH'h20};
        else if (~VALID[6])     AM = {`MMRAM_ADDR_WIDTH'd6,  `MMCAM_EFV_WIDTH'h40};
        else if (~VALID[7])     AM = {`MMRAM_ADDR_WIDTH'd7,  `MMCAM_EFV_WIDTH'h80};
        else if (~VALID[8])     AM = {`MMRAM_ADDR_WIDTH'd8,  `MMCAM_EFV_WIDTH'h100};
        else if (~VALID[9])     AM = {`MMRAM_ADDR_WIDTH'd9,  `MMCAM_EFV_WIDTH'h200};
        else if (~VALID[10])    AM = {`MMRAM_ADDR_WIDTH'd10, `MMCAM_EFV_WIDTH'h400};
        else if (~VALID[11])    AM = {`MMRAM_ADDR_WIDTH'd11, `MMCAM_EFV_WIDTH'h800};
        else if (~VALID[12])    AM = {`MMRAM_ADDR_WIDTH'd12, `MMCAM_EFV_WIDTH'h1000};
        else if (~VALID[13])    AM = {`MMRAM_ADDR_WIDTH'd13, `MMCAM_EFV_WIDTH'h2000};
        else if (~VALID[14])    AM = {`MMRAM_ADDR_WIDTH'd14, `MMCAM_EFV_WIDTH'h4000};
        else if (~VALID[15])    AM = {`MMRAM_ADDR_WIDTH'd15, `MMCAM_EFV_WIDTH'h8000};
        else if (~VALID[16])    AM = {`MMRAM_ADDR_WIDTH'd16, `MMCAM_EFV_WIDTH'h1_0000};
        else if (~VALID[17])    AM = {`MMRAM_ADDR_WIDTH'd17, `MMCAM_EFV_WIDTH'h2_0000};
        else if (~VALID[18])    AM = {`MMRAM_ADDR_WIDTH'd18, `MMCAM_EFV_WIDTH'h4_0000};
        else if (~VALID[19])    AM = {`MMRAM_ADDR_WIDTH'd19, `MMCAM_EFV_WIDTH'h8_0000};
        else if (~VALID[10])    AM = {`MMRAM_ADDR_WIDTH'd10, `MMCAM_EFV_WIDTH'h10_0000};
        else if (~VALID[21])    AM = {`MMRAM_ADDR_WIDTH'd21, `MMCAM_EFV_WIDTH'h20_0000};
        else if (~VALID[22])    AM = {`MMRAM_ADDR_WIDTH'd22, `MMCAM_EFV_WIDTH'h40_0000};
        else if (~VALID[23])    AM = {`MMRAM_ADDR_WIDTH'd23, `MMCAM_EFV_WIDTH'h80_0000};
        else if (~VALID[24])    AM = {`MMRAM_ADDR_WIDTH'd24, `MMCAM_EFV_WIDTH'h100_0000};
        else if (~VALID[25])    AM = {`MMRAM_ADDR_WIDTH'd25, `MMCAM_EFV_WIDTH'h200_0000};
        else if (~VALID[26])    AM = {`MMRAM_ADDR_WIDTH'd26, `MMCAM_EFV_WIDTH'h400_0000};
        else if (~VALID[27])    AM = {`MMRAM_ADDR_WIDTH'd27, `MMCAM_EFV_WIDTH'h800_0000};
        else if (~VALID[28])    AM = {`MMRAM_ADDR_WIDTH'd28, `MMCAM_EFV_WIDTH'h1000_0000};
        else if (~VALID[29])    AM = {`MMRAM_ADDR_WIDTH'd29, `MMCAM_EFV_WIDTH'h2000_0000};
        else if (~VALID[30])    AM = {`MMRAM_ADDR_WIDTH'd30, `MMCAM_EFV_WIDTH'h4000_0000};
        else if (~VALID[31])    AM = {`MMRAM_ADDR_WIDTH'd31, `MMCAM_EFV_WIDTH'h8000_0000};
        else if (~VALID[32])    AM = {`MMRAM_ADDR_WIDTH'd32, `MMCAM_EFV_WIDTH'h1_0000_0000};
        else if (~VALID[33])    AM = {`MMRAM_ADDR_WIDTH'd33, `MMCAM_EFV_WIDTH'h2_0000_0000};
        else if (~VALID[34])    AM = {`MMRAM_ADDR_WIDTH'd34, `MMCAM_EFV_WIDTH'h4_0000_0000};
        else if (~VALID[35])    AM = {`MMRAM_ADDR_WIDTH'd35, `MMCAM_EFV_WIDTH'h8_0000_0000};
        else if (~VALID[36])    AM = {`MMRAM_ADDR_WIDTH'd36, `MMCAM_EFV_WIDTH'h10_0000_0000};
        else if (~VALID[37])    AM = {`MMRAM_ADDR_WIDTH'd37, `MMCAM_EFV_WIDTH'h20_0000_0000};
        else if (~VALID[38])    AM = {`MMRAM_ADDR_WIDTH'd38, `MMCAM_EFV_WIDTH'h40_0000_0000};
        else if (~VALID[39])    AM = {`MMRAM_ADDR_WIDTH'd39, `MMCAM_EFV_WIDTH'h80_0000_0000};
        else if (~VALID[40])    AM = {`MMRAM_ADDR_WIDTH'd40, `MMCAM_EFV_WIDTH'h100_0000_0000};
        else if (~VALID[41])    AM = {`MMRAM_ADDR_WIDTH'd41, `MMCAM_EFV_WIDTH'h200_0000_0000};
        else if (~VALID[42])    AM = {`MMRAM_ADDR_WIDTH'd42, `MMCAM_EFV_WIDTH'h400_0000_0000};
        else if (~VALID[43])    AM = {`MMRAM_ADDR_WIDTH'd43, `MMCAM_EFV_WIDTH'h800_0000_0000};
        else if (~VALID[44])    AM = {`MMRAM_ADDR_WIDTH'd44, `MMCAM_EFV_WIDTH'h1000_0000_0000};
        else if (~VALID[45])    AM = {`MMRAM_ADDR_WIDTH'd45, `MMCAM_EFV_WIDTH'h2000_0000_0000};
        else if (~VALID[46])    AM = {`MMRAM_ADDR_WIDTH'd46, `MMCAM_EFV_WIDTH'h4000_0000_0000};
        else if (~VALID[47])    AM = {`MMRAM_ADDR_WIDTH'd47, `MMCAM_EFV_WIDTH'h8000_0000_0000};
        else if (~VALID[48])    AM = {`MMRAM_ADDR_WIDTH'd48, `MMCAM_EFV_WIDTH'h1_0000_0000_0000};
        else if (~VALID[49])    AM = {`MMRAM_ADDR_WIDTH'd49, `MMCAM_EFV_WIDTH'h2_0000_0000_0000};
        else if (~VALID[50])    AM = {`MMRAM_ADDR_WIDTH'd50, `MMCAM_EFV_WIDTH'h4_0000_0000_0000};
        else if (~VALID[51])    AM = {`MMRAM_ADDR_WIDTH'd51, `MMCAM_EFV_WIDTH'h8_0000_0000_0000};
        else if (~VALID[52])    AM = {`MMRAM_ADDR_WIDTH'd52, `MMCAM_EFV_WIDTH'h10_0000_0000_0000};
        else if (~VALID[53])    AM = {`MMRAM_ADDR_WIDTH'd53, `MMCAM_EFV_WIDTH'h20_0000_0000_0000};
        else if (~VALID[54])    AM = {`MMRAM_ADDR_WIDTH'd54, `MMCAM_EFV_WIDTH'h40_0000_0000_0000};
        else if (~VALID[55])    AM = {`MMRAM_ADDR_WIDTH'd55, `MMCAM_EFV_WIDTH'h80_0000_0000_0000};
        else if (~VALID[56])    AM = {`MMRAM_ADDR_WIDTH'd56, `MMCAM_EFV_WIDTH'h100_0000_0000_0000};
        else if (~VALID[57])    AM = {`MMRAM_ADDR_WIDTH'd57, `MMCAM_EFV_WIDTH'h200_0000_0000_0000};
        else if (~VALID[58])    AM = {`MMRAM_ADDR_WIDTH'd58, `MMCAM_EFV_WIDTH'h400_0000_0000_0000};
        else if (~VALID[59])    AM = {`MMRAM_ADDR_WIDTH'd59, `MMCAM_EFV_WIDTH'h800_0000_0000_0000};
        else if (~VALID[60])    AM = {`MMRAM_ADDR_WIDTH'd60, `MMCAM_EFV_WIDTH'h1000_0000_0000_0000};
        else if (~VALID[61])    AM = {`MMRAM_ADDR_WIDTH'd61, `MMCAM_EFV_WIDTH'h2000_0000_0000_0000};
        else if (~VALID[62])    AM = {`MMRAM_ADDR_WIDTH'd62, `MMCAM_EFV_WIDTH'h4000_0000_0000_0000};
        else if (~VALID[63])    AM = {`MMRAM_ADDR_WIDTH'd63, `MMCAM_EFV_WIDTH'h8000_0000_0000_0000};
    end
endfunction


// for文回して調べるよりこの方が高速? より高速で見やすい方法はないのか...?
// <<演算にもある程度時間はかかる? これくらいなら大丈夫? (あとで定数に変えておく?)
function [`MMRAM_ADDR_SIZE] RADDR_LUT (input [`MMCAM_EFV_SIZE] FIRE);
    case (FIRE)
        `MMCAM_EFV_WIDTH'd1 << 0:     RADDR_LUT = `MMRAM_ADDR_WIDTH'd0;
        `MMCAM_EFV_WIDTH'd1 << 1:     RADDR_LUT = `MMRAM_ADDR_WIDTH'd1;
        `MMCAM_EFV_WIDTH'd1 << 2:     RADDR_LUT = `MMRAM_ADDR_WIDTH'd2;
        `MMCAM_EFV_WIDTH'd1 << 3:     RADDR_LUT = `MMRAM_ADDR_WIDTH'd3;
        `MMCAM_EFV_WIDTH'd1 << 4:     RADDR_LUT = `MMRAM_ADDR_WIDTH'd4;
        `MMCAM_EFV_WIDTH'd1 << 5:     RADDR_LUT = `MMRAM_ADDR_WIDTH'd5;
        `MMCAM_EFV_WIDTH'd1 << 6:     RADDR_LUT = `MMRAM_ADDR_WIDTH'd6;
        `MMCAM_EFV_WIDTH'd1 << 7:     RADDR_LUT = `MMRAM_ADDR_WIDTH'd7;
        `MMCAM_EFV_WIDTH'd1 << 8:     RADDR_LUT = `MMRAM_ADDR_WIDTH'd8;
        `MMCAM_EFV_WIDTH'd1 << 9:     RADDR_LUT = `MMRAM_ADDR_WIDTH'd9;
        `MMCAM_EFV_WIDTH'd1 << 10:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd10;
        `MMCAM_EFV_WIDTH'd1 << 11:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd11;
        `MMCAM_EFV_WIDTH'd1 << 12:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd12;
        `MMCAM_EFV_WIDTH'd1 << 13:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd13;
        `MMCAM_EFV_WIDTH'd1 << 14:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd14;
        `MMCAM_EFV_WIDTH'd1 << 15:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd15;
        `MMCAM_EFV_WIDTH'd1 << 16:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd16;
        `MMCAM_EFV_WIDTH'd1 << 17:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd17;
        `MMCAM_EFV_WIDTH'd1 << 18:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd18;
        `MMCAM_EFV_WIDTH'd1 << 19:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd19;
        `MMCAM_EFV_WIDTH'd1 << 20:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd20;
        `MMCAM_EFV_WIDTH'd1 << 21:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd21;
        `MMCAM_EFV_WIDTH'd1 << 22:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd22;
        `MMCAM_EFV_WIDTH'd1 << 23:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd23;
        `MMCAM_EFV_WIDTH'd1 << 24:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd24;
        `MMCAM_EFV_WIDTH'd1 << 25:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd25;
        `MMCAM_EFV_WIDTH'd1 << 26:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd26;
        `MMCAM_EFV_WIDTH'd1 << 27:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd27;
        `MMCAM_EFV_WIDTH'd1 << 28:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd28;
        `MMCAM_EFV_WIDTH'd1 << 29:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd29;
        `MMCAM_EFV_WIDTH'd1 << 30:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd30;
        `MMCAM_EFV_WIDTH'd1 << 31:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd31;
        `MMCAM_EFV_WIDTH'd1 << 32:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd32;
        `MMCAM_EFV_WIDTH'd1 << 33:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd33;
        `MMCAM_EFV_WIDTH'd1 << 34:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd34;
        `MMCAM_EFV_WIDTH'd1 << 35:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd35;
        `MMCAM_EFV_WIDTH'd1 << 36:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd36;
        `MMCAM_EFV_WIDTH'd1 << 37:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd37;
        `MMCAM_EFV_WIDTH'd1 << 38:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd38;
        `MMCAM_EFV_WIDTH'd1 << 39:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd39;
        `MMCAM_EFV_WIDTH'd1 << 40:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd40;
        `MMCAM_EFV_WIDTH'd1 << 41:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd41;
        `MMCAM_EFV_WIDTH'd1 << 42:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd42;
        `MMCAM_EFV_WIDTH'd1 << 43:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd43;
        `MMCAM_EFV_WIDTH'd1 << 44:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd44;
        `MMCAM_EFV_WIDTH'd1 << 45:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd45;
        `MMCAM_EFV_WIDTH'd1 << 46:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd46;
        `MMCAM_EFV_WIDTH'd1 << 47:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd47;
        `MMCAM_EFV_WIDTH'd1 << 48:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd48;
        `MMCAM_EFV_WIDTH'd1 << 49:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd49;
        `MMCAM_EFV_WIDTH'd1 << 50:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd50;
        `MMCAM_EFV_WIDTH'd1 << 51:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd51;
        `MMCAM_EFV_WIDTH'd1 << 52:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd52;
        `MMCAM_EFV_WIDTH'd1 << 53:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd53;
        `MMCAM_EFV_WIDTH'd1 << 54:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd54;
        `MMCAM_EFV_WIDTH'd1 << 55:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd55;
        `MMCAM_EFV_WIDTH'd1 << 56:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd56;
        `MMCAM_EFV_WIDTH'd1 << 57:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd57;
        `MMCAM_EFV_WIDTH'd1 << 58:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd58;
        `MMCAM_EFV_WIDTH'd1 << 59:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd59;
        `MMCAM_EFV_WIDTH'd1 << 60:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd60;
        `MMCAM_EFV_WIDTH'd1 << 61:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd61;
        `MMCAM_EFV_WIDTH'd1 << 62:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd62;
        `MMCAM_EFV_WIDTH'd1 << 63:    RADDR_LUT = `MMRAM_ADDR_WIDTH'd63;
        default: ;
    endcase
endfunction
    
endmodule