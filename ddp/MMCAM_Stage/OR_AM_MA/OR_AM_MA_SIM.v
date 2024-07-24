`timescale 1ns / 100ps
module OR_AM_MA_SIM();
    reg [63:0] fire, valid;
    reg mf, cp, mr;
    wire [63:0] en;
    wire [5:0] addr;
    wire wr_e, del;
    OR_AM_MA oam(.FIRE(fire), .VALID(valid), .MF(mf), .CP(cp), .MR(mr), .EN(en), .WR_E(wr_e), .DEL(del), .ADDR(addr));

    //発火したとき
    // initial begin
    //     fire = 64'd16;//1度目の発火　4bit目が1　
    //     valid = 64'd0;//ENTRY全部空いてるとする
    //     mf = 0;
    // #100
    //     fire = 64'd1024;//二度目の発火　10bit目が1
    // end

    //W_ADDRが出るかのシミュレーション
    initial begin
        mr = 0;
        cp = 0;
        fire = 64'd0;
        valid = 64'd7;//ENTRY全部空いてるとする
        mf = 1;//待ち合わせをする
    #50 cp = 1;
    #50 cp = 0;

    //2個目パケット
    #50 fire = 64'd0;
        valid = 64'd15;
    #50 cp = 1;
    #50 cp = 0;

    //3個目パケット
    #50 fire = 64'd0;
        valid = 64'd0;
    #50 cp = 1;
    #50 cp = 0;

    //4個目パケット
    #50 fire = 64'd16;//発火
        valid = 64'd0;
    #50 cp = 1;
    #50 cp = 0;
    end
    
endmodule