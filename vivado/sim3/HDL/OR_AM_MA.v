`include "common_macro.vh"
module OR_AM_MA(
    input [`MMCAM_EFV_SIZE] FIRE, 
    input [`MMCAM_EFV_SIZE] VALID,
    input MF, CP, MR, 
    output [`MMCAM_EFV_SIZE] EN,
    output reg WR_E, DEL,
    output reg [`MMCAM_ADDR_SIZE] ADDR
);

//OR
wire[`MMCAM_ADDR_SIZE] R_ADDR;
wire FIRE_OR;
assign FIRE_OR = |FIRE;//発火検出
assign R_ADDR = DECODE(FIRE);//発火場所を探索
function [`MMCAM_ADDR_SIZE] DECODE;
    input [`MMCAM_EFV_SIZE] FIRE;
    integer i;
    reg f;
    begin
        DECODE = `MMCAM_ADDR_WIDTH'd0;
        f = 0;//ループ抜けるフラグ
        for(i = 0; i < `MMCAM_EFV_WIDTH; i = i + 1)begin
            if(FIRE[i] && !f)begin
                DECODE = i[`MMCAM_ADDR_SIZE];
                f = 1;
            end
        end
    end
endfunction

//AM
wire [`MMCAM_ADDR_SIZE] W_ADDR;
assign {W_ADDR, EN} = AM(VALID, MF, FIRE_OR);
function[`MMCAM_AM_SIZE] AM;
    input [`MMCAM_EFV_SIZE] VALID;
    input MF;
    input FIRE_OR;
    integer i;
    reg f;
    begin
        AM = `MMCAM_AM_WIDTH'd0;
        f = 0;
        for(i = 0; i < `MMCAM_EFV_WIDTH; i = i + 1)begin
            if((FIRE_OR || ~MF) && !f)begin//発火の検出または待ち合わせしないパケットの検出
                AM = {`MMCAM_ADDR_WIDTH'd0, `MMCAM_EFV_WIDTH'b0};//ENが64'b0ということは、ENTRYのどこにも書き込めない、すなわち待ち合わせできないということを示す
                f = 1;
            end
            else if((!VALID[i]) && !f && MF)begin//ENTRYに空きがあるiはどこか探索 VALID[i]=0で空きがあることを示す. VALIDは全体で64bitでENTRYのどこにパケットが書き込まれているかがわかる
                AM = {i[`MMCAM_ADDR_SIZE], `MMCAM_EFV_WIDTH'b1 << i[`MMCAM_ADDR_SIZE]};//bit幅を正確に指定しないとW_ADDRが永遠に0となります.特に、64'b1のところ。　ENTRYに空きがあるところはENが1になる
                f = 1;
            end
        end
    end
endfunction


//MA
always @(posedge CP or posedge MR) begin
    if(MR)begin
        WR_E <= 0;
        DEL <= 1;  //DELの初期値は1   
        ADDR <= `MMCAM_ADDR_WIDTH'b0;   
    end
    else if(MF)begin
        if(FIRE_OR)begin//発火している
            WR_E <= 0;
            ADDR <= R_ADDR;
            DEL <= 1;
        end
        else if(!FIRE_OR)begin//発火していない
            WR_E <= 1;
            ADDR <= W_ADDR;
            DEL <= 0;
        end
    end
    else if(!MF)begin//待ち合わせ行わない
        WR_E <= 0;
        ADDR <= ADDR;
        DEL <= 1;
    end
end

// assign ADDR = FIRE_OR ? R_ADDR : W_ADDR;
// assign WR_E = ~FIRE_OR ? 1 : 0;
// assign DEL = ~FIRE_OR ? 1 : 0;

//↓↓genarate_for文で試したソースコード。なぜかエラーでうまくいかない
// //---OR---
// wire[5:0] R_ADDR;
// wire FIRE_OR;
// assign FIRE_OR = |FIRE;
// genvar i;
// generate
//     for(i = 0; i < 64; i = i + 1)begin :entry_fd_loop
//         // if(FIRE[i] == 1'b1)begin
//         //     assign R_ADDR = i;
//         // end
//         assign R_ADDR = (FIRE[i]) ? i[5:0] : 6'd120;
//     end
// endgenerate
// //---

// //---AM---
// wire [5:0] W_ADDR;
// genvar j;
// generate
//     for(j = 0; j< 64; j = j + 1)begin :entry_fd_loop2
//         // if(FIRE_OR || ~MF)begin//発火が検出された、または待ち合わせを行わないパケットが検出された
//         //     assign W_ADDR = 0;
//         //     assign EN = 0;
//         // end
//         // else if(VALID[j] == 1'b0)begin//ENTRYが待ち合わせ状態でない
//         //     assign W_ADDR = j;//書きこみアドレス
//         //     assign EN = 1 << j;//ENTRY[i]へのパケット書き込みを許可
//         // end
//         assign W_ADDR = (FIRE_OR || ~MF) ? 0 :
//                         (VALID[j] == 1'b0) ? j[5:0] : 0;

//         assign EN = (FIRE_OR || ~MF) ? 0 :
//                     (VALID[j] == 1'b0) ? 150 : 0;
//     end
// endgenerate
// //---
endmodule