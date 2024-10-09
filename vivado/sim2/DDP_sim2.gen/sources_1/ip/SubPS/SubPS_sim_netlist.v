// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Oct  9 14:02:26 2024
// Host        : DESKTOP-B2190GF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/OkuhiraShunri/Documents/verilog/DDP/vivado/sim2/DDP_sim2.gen/sources_1/ip/SubPS/SubPS_sim_netlist.v
// Design      : SubPS
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "SubPS,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module SubPS
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [4:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [0:0]douta;

  wire [4:0]addra;
  wire clka;
  wire [0:0]douta;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [0:0]NLW_U0_doutb_UNCONNECTED;
  wire [4:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [4:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "5" *) 
  (* C_ADDRB_WIDTH = "5" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.903721 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "SubPS.mem" *) 
  (* C_INIT_FILE_NAME = "SubPS.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "20" *) 
  (* C_READ_DEPTH_B = "20" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "1" *) 
  (* C_READ_WIDTH_B = "1" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "20" *) 
  (* C_WRITE_DEPTH_B = "20" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "1" *) 
  (* C_WRITE_WIDTH_B = "1" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  SubPS_blk_mem_gen_v8_4_8 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(1'b0),
        .dinb(1'b0),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[4:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[4:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RSqbsRZSIb+QlYJMfFv1T7uHQ7PiCEXQkl687MHGm2LgPB15GIYcPmqKUSXgtkLsIFes91PTAyyB
9H9cyY4ZUxedcRg/9ZOB5pm3zPqAbcvGPmg1ivMhr/MlS19t5lYKM2tQo+0Yd+arJXlVZu2BMnvn
+I3G9t9tJuWUIWKjI+I=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VRSQ05ZaB6bIhFIQ823mTvlJaG9+5iW5C3+KxGjq0sq9ziCshKOLpOGPDMmOWDqA4uBaxC5IKISr
w8+A8mqbYjXo5m1g8sGjNaETS0HKJsK+l5Y++tN4IEUs+DwxgrPR/+LWtChuOzVkfC7BG3LVUEMj
zM3GAyGcXGJ3sdBItZAfsevyiy7kr4Fw+nk2hWytGteu1NZk3VzPE7KQHLkOlHBPXf6P0j8LpKcr
2oNDgQ/WaEmg6OOvFeJuaWDaee8Sn6wKP/caMyoGdSeczsPtRrJeoSRlbNHlxhCv7zg+Cn2AgwrR
PTqGsMrkhv9U0sq+waS0CmwChsk4WB7RspGYUg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
tNziOjCznlvIl4dadmB9r23Duf+HQHWOuHmupEU3PJxrazHVtZdNKspG9sRXhF9mjbpnSiKYCdFK
Jr9W/dxUid36faFIPKQazVTuOiE0hkzVQAGpYxXjT/ITB/9EFBvgvP5L3EAhHv32x6MA1vkFSI7x
HrZ09YNFEF6T7DPTZE4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QCYfxgkUHlX1cre1q9aS3sVDIOX36YBK4ZwJXAVUwA6f1OQ77XibjpWJHt5FK9F0PcYp/j21pqzO
BRdkDcFLVAjxER4J5t5iMVhoeMk+3fpiKfYrm4WFl1ygsJsfFJP0jqO1OkjC8iFBtm3n6b7CTl1o
cjBbcBp8UgW6E8rf5inXA0dRqybnyxKJSnMFYLinvpVU6QEc4OKO7mi/i/s9p/efiP+CdQf0yDRU
Fw7o7x0D7tjBv943g5L+4wGZ2JYU+ISqn4Ajxy/bWTTJDe6T/15evhngS61MC8Xjamzc4YLZBP8o
ShfSLoeZeO+Hk5n3xzJRghM0DQ6Sj7NqXFY68w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Uy8FDDy3dZQGAnMQV0HBesEs+/oZdaq35Kj1PGhy9J/+EBZm0nhhQgYtku8tWABW2jKAC1GtNTvo
uReQyr1hteMxTbD5OIuqv86eb1hXZVENlZ7ichG8auUjkeHAkaSYNbHOuDLIhSqHEL67XbcZ9zPG
1JOY3+VONSww0KYPcQbGSo/2DaC5C0Y+mZODRfJ4+b0WXjce6UaJetilBc3VtqqmodIM2d3HDawF
R0xVJfHj86rXmUkY+SNUw60zsV6raCY6G3k/rXpei1d6zn8tCThkKG5fwiWY8zA7kRdTFIlVKP9h
fb6kfzRBRT/BgVQ8d4RgEcEVV8m3u/Mf4KIlTw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Pk1GeRlkUK9lt6DVXYVdtOABlzDEWQDcBsP/p+Wo5HaglDLG5b8gk08xTP3IcJ1RKcfuARPMGO2s
/VqFbnVADV90T1rhjIuWMcBnzYQK/ALUvwv11Uju9Gn0fvPIz52l3QBnpjHI1nlsFB7WeqkzVfHZ
tg9gO9bPHjHLjVd9BzH6McrEWY5RkZ0UBy0Fmh/SownJX1b0YGE7LdwKydEMEpyvb28bwTOwfEv/
4RtsfYtEvTjo6e1ZBm66D9IQmKUu32wzTfn5bFZHdyjZg6+HcTzvHMtQX2+AggXfP6FsO2/83qkb
0bfj226fnLhr32dJxtsaJS5OR63GYtzDJ05ITA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LCfWqKmUoUSVOTKNAl5p8n1hfz7SMU2kDOUMBjsDncgSFqiu2zUy1I6GSDrVnF/2umJG5/mWcpvi
rQaFJOlrJ8DNctSuavdlopRAwTMsVi6dAlNGrAawSiDIxtI3tN3MDVdMiH5H+pJMqMt59yXneyCf
2RRSRz2sUQK/aj0lXlqKjVJzVbk8HaBQ8akBJF4iWSMK4foIzJ6iO1EupYovuW6uEiO7jQRWezlW
pbbDenOHHWbfinuX5cbkjpTKHGsEKct65q+ZXJp60m3sconSK3Y2eLQxusuJ1FHDJ4GGKO8mEzCv
3cfGdXX3pVL81OfGO/JD1aMs9H98CO5ssbHqlw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A4S1e3DHcTeWzaDVuWDRb3Yf1BjiEsR1RtAeL0BJ7J/oPWMNj96MeGsUiHtZoiYqteTZxqax2cyZ
PV0cMLoBK4Ya8CyM+BTnkFA2ablsGt5Es4TgG/nFS9VEhmeKxu8boAsqW5697aiqOATJf/LucQh5
GOnPXHAuPrDj0A/fu8N2QduqGyysWUSc1KsoJ0/0noJYvLJ2yOhFi4uIUYQfG5LOuOrca5P43pqA
iwUKW/RrFXal2acJdFeXIKffZpKanSV97urdzKyBvf9EPV/M8g9uPFJJ1z6aS+FbknhVPs0pt6eD
+J/qib4gVp/HGnRo4YlxauUMv6Yv9wxiaObY6ttDfYf5p3uzWZMlf3i7YOzZwcd4aS/6+vkD28LG
L9piBIpLx2dvQy74RdvCVdvaP1LC6RMju9RfuXJhuX4ZAmDxRi0zQyRda838ikzwYeOCSKLIvRPb
nuJ8Zx2ot8EFqSeGaaRFaEMU6Zf5SptCUuVMHvSkinBewcwrLB5uiJTJ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gj+uMxV+tK4Di7pgSOE82FOBeWmUB1A7OKFOSMUW3qrmQ4/YhryfHMlWPxfAq8avQL7tnBTnRFEg
czbErdIcNzYjrM7Qq00QC/mTqmeQX4/apbqGvN+rwK4RR5oj22wfTib/UQNEQX6fbpi6PtmAeUR9
eShsfq+YWcf7z2Zw4Q+o4+E6m4/3CzU68vglNpzNsJ8S9/8XpdIrvAA/WRAX6OEOC4wlNIKDZsq/
+zMbFgSzN1rP844I/CDmxYM0NIzBWWhYBkPfJyQyigmUoXb84lDip0/Dmnq4EHvu7D/tZNnDl5st
JpftRfEpT6S8e/5MBeKUuhbfg6etHo/oFZvPKQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aWTy3xv6SqKsldtLS2gY4KrTS8U+KtFNRHS314f6EYZy1MHE9t7oICJ8eNB8up8A+odoE23N3fJb
1alhaadeRWU2GjlIiK1LjZ5PQw+jb1u1GWtRiY+TcTlD75XUlqwykVBrCDfm565DmgZjZle9T3/t
WEfLo+m/8GfBe8trVnoftsk/XI00BMFXRzw8doPGDhNECS1NUrLebryb9iO5Hf4A/40dtslTARsR
nicN0KoIIyiQ+QzliqyXU/8VjS45inON8R0Kv9Qx46EXUp7bds5uQ7QycRhpLG0IPnMIweudU67w
eQmpHJzvZKBCZks/R0OafZx44H6Jib2+QazBCw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UGdPiChIPj1lSozqzCQx17Bi+8FWSuMUMzXUkDLH5zcP1t8tZLzh4CU4WAR8lmJxn8gH763fLp5c
RYU6zA0yxHzl2ksc5YRU1XEfQQT9ha8fQnz+18wVKcsa5UIOfMbGDwnS9yfX59ntG8CB0uF8bJKE
y1CS6U/1Stfs1w2mF94iDxI2n2GJlb1UPtWpmxMBI88hY0GktTPXP2Y7JKl8zRl/Lq0wIF8pHwXk
B4nOgKm6hfzPj0xZ6E/TuER/JE3fy8RSm24IlL/CUgpReEslEOYjQ4EKKZRG9/fxg26utQWW9p+G
fWVU53qrFGzBhKQ96Paj1ROkv6hDHyUb6n7uSw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19856)
`pragma protect data_block
mCzmcCpHbEecoVmVqKGRd5Wqb4FNEB5kvlRMWQKa2svcj/9jxNKemFnqqqy3ncmxUAkjTrp+4/Pp
5hNeIBlcG+O27yuC3zJ8QHqRUIjYNhsQwUbU3xQ98HAcYgySCPI5rQEJ/QXAw98DnGTV+4P00quK
ByXQitgf6n5N+rmHGHO9yKRrzOCaMLs1LsXao/lcEW/7ouANU0HrNpgIF852s/o7EQa0BLmmMamR
U+79UVk5jS5JkULLOo4YA2Tjv3fe8JEWHmzP1DPpNWoJkFZrJY1Ry07AydwK7dxwNCP8SjmdiyH+
TN3quPxHMbSjx2mCudFm8CXlTv5ViHWrGsUrRGrepEQh6uK9JluJ/rObb1+HSCAxour7ozB3rNKy
SMtQoK7Ygkm2Asw2MZnVYX6Ok/LnJGjjBjvJYKqTxeWDjB1jvfXbs+6BYS5lOBxtiVnRDG86c8ND
0sZ5t0WLWk3XCSKDRECV/KyGC60OKfaJynefpUFGhvFotWYXAsyHUS3mZIbx03bnRKWeuS/T6xwf
PreBmQrBUoJQfV6Ye0B/Cog44AZrbA+CB8m4awB6Gwz1I/ZRV0ALfG73zK0pg2rd8hzGjIozgq/X
zhgbeNSwJCRpGMv824VixWQcSbmmEIxRSw/Yc+T5c61VnVlKv9msatl2UYUjWl5xGLWTaZg7i7mz
/wVSjemI0Q45J+jOQpp+0HF2sn/COzSQD34yFIr2D5CvCmsKJrTG3uUalCBtd8h3WttXRGh5QDmX
cuPy3a7M7YvKD46QAOp2Piww8utaAu0RlG5saSuxH15t4WmyRU8Faszo9N9Mg0fo9WunXJqLjSXp
MeYCJONhNK+diKG5A8QiezcWy0Ucuwq9ZkvmU6sLI24Vbl/7Es91om/5GjTLevJ1NT/vl3tMp5rj
2Ufr5Lyt5CLcVDiMRJAtT+mVM1ctY+apcwb/b7lEtswJBF5Ity3Zth8QXP2/9o2jXqIJPTFPt5Mc
+L3NZdB0VoKGDuWMnBFOLr//fTHs1ZTEwDWCOfc5JN0gwXrrM8+SO/z0Eq2CdmTjMXR2jZtJjI4i
yiQY0nbwCxhjW7nEli1dwHuE55Nc8/r3jmokMqvsPvGn9AnIXL0+R3dpHv5NCk3PK5X3iZR/qKC8
sbLyp4h73MLSumZLmqKwSiT/q95k0AwS7E3vcoXfeSUg2cQTqEjBhf7C4bTCAQclpSxm9CBCW2ir
7lGEtkUDo0UdYxXuD1ewY1IFtIVBprgqN0e6OZ3GxYbYLXhelLK0vtxfB6d0GlGP1W5wKlpOlX7I
Y79EAmjBRDxENT1/91PLQQan5kEZjbYr4eO9hWaSgUBc2anMTQcn7J4rNb7tDbtF8+wX/IZd22DT
4TYtbQCbDkZGDVahYVERFODxqVSsifZpc8L64DizxHB9cUWVBLljhAgceSj7FG4KT7Z3mTLc2NXr
Hv4hHvRGVKjzHSU5MuTw2HSqWViiL2UbcJfCr7vrmKemMqxxIYbxkt2geYMhMumwOLUBNinz/owW
jvVBHwkj/gmozxbW0stV2wpt1z6To1E7PhSRsV6HRUJ4/0geb8L2O3mxhLQ4YFHIJD4kwXzJyAft
J4QSR5vNnDfxlj3CTwI+2qsB1LtAUBvbV3Ulmc6nJSlac3kvt0AL0ItLlVrYapr4EgMVk5IpJ07R
m1x+VRQbdW4N8h4EJaxfW3hjBgxRgmgVnlMukk7sRARmkqoPN7/cNkpME05NPglmWGqC+UiDeHq+
wLYzCTAI3tPlKzA0cLNKDmXM4Vmq8xaRqR73ymAxqVza55VClXQ+D5TvkExx4iPktUHfgKOCWGHC
sKB7+GjU8tyWBD0vklQGj1XSItj5ZifmFUKDArmjmlS2dIpiAZv4Xey+N7W9YNd3c7PEY8FPYzqe
ZdFS2bCefPJRJn/5ZkOnfPqZh4kTNYFxHLCdV4NwuuZCzc0dl2Q0BHB/p+AYnnGuXrNc2aWdmS5b
XWuoLRr5GxvQFpTTIiW+PL5g3qhxwKS8hwt1kYDD0zRjLc+UpBYWqQuX5XmDWF/Cc4q/AEW6WYwR
9JNcghaVOosVdArr2P/yf0fDW0Nv5VLjrGB87rbU0ndc4P6EltX/vIPNCnZCR0s6yg+ygre3qMq1
pGtMRzMu//+AvvETBdTpmDDaMxUtliJIxoVDTeXPIYkBexjHrcsfp8qgqCCgeIZxZFX8oyNmpazA
n0S3nON4nryXAIuFgTRv35LEb8K4xIFkEqPVpV8+oraxF7O9dUjrdx1iegh57qTycB8EAV4kq2lz
s58AISZecDja/V5Vv4hF5pdYWYWvoA88hJvH8IJYI4kJhdAPNwWnChQ8z1Pcpvje4oDVzvHq7lQR
3LkqR6H8pJ5lPPZuEo9rnU/H1nH4FsFHBIwGCzqrtJOwv0m7grfyz2SDOMwixS/vEWpsjjkwDdhH
w+kXaHd4AvyM34kepiY38AVU8+vZfGpPtkzM70luJCLz0f6XYS6UmJtIN7ZQ3k+r2GjVgilFxdrG
4a98msdGQJUpVqm5oulyFuBxL2Uj3xHvSHSX+bmkxOicLCVe/IrafAZnSNwXkt3TmAqn1iG02Ndx
7p0W3R8mRXYFBzWJatCAjbY2qfCTaX5o2NkzpSRkDIJ0cD4Z/LbV8ldf3gk3iQT5WXiZKpeWSfv4
2/s8VlZXUbhmDNQV78KFCOWyGjcW9Y9Q39RaIUBAeZ+lUW96pblaDgtfCjm/NVEShR9kKcQL1dhd
WjB4zMOHdDfleTrACdQhDnHmUjeFN/XWaGfEKKjRYrKM+iOCr6dJQRp9w2Zc85QVn6eAS9nDZGZH
jfcOcOiZxImRzHcaKSykmT0g0gyyKN3YRP/sFLcyIAH+JY3OPevPzChlkmF4+4azgfXqe81nb3Tf
CSa6oV83xMwvqwfKXCWiJ+YGacQeZ03H0SgCobAI+6lod90PxpJ6YgsY5SIuD5YteXWKcbpqSlWU
FKVj9323EupXNPg5BiUeS1pKN58OnCDojA4dJ3u1ar/Deci1TUSmBRh2s3/5qVggixH4xI05gL/h
eCvZu4DY2iD2RK2M7zj0NVYxZYzzEiLoJ50twb5X4f16i/wsSKri38CNUeY/0sy7Jc9WbztUMYU/
mRC1alEXX9J3/5S2J1BoHNKVzBSmtNz2ZFhWuDVHnI1oxtXxD6lF7y0IlSO5hYM7SBYKuhJyE6RH
1un3imM1ji0Ca1eI8YSee21Km5MO7L4aLPNke+ONgTfjnHN+V+xhzl1A87H6W0LgREwsLMf8a3cq
Dnp+lOKGOpB++/iXPMmcDA1tGu4YMbdqmDV/7vOeQ+PnWv0jESLBlHFk4r+iRuIcXbYZo8tZH+t9
SnhjufcQqnHdzFxuBSmtSgRbkh1xfaG7SkW6KMv00CM6TuoR7n5VS8Yr/sR2v7lJOwIgKcUd53Mp
f/uX5WUm+to8ta7vZiZIOycyLGodmhSkfiU1v9H568jaKEEcwoSqdlrNLtAa09MNtlP7uIQyJoZs
q2PSHAsf3fMIWH6gu2nWcVYh6oCQqkPA35gdRjJkEvJbJFZuRRW9ybX0IW/giSUpOPt3Qv41ZyVH
7QT+Yoqf5Xa8fc8Arm6aN3tOV8O8ChmbpO4cGx0uZHvlmZz5e+R9+601K7jgdeNeSIrx3EYDtuHV
zo9WDzAEFR9LKF8LGgeFDhy7mirFUDvXvHUaQatLgmM5tEt7cUzcKU9XUCzlQWfNHb2IbHRhBegv
Qlz8dfcYjm4tclY4S+Avo5dmilp0tY7buC9yfu0u95Zv3RPNOPsz+TPROsuqWKlpcGhnNN5WWSYQ
wRkTS5Dki6WgfE/YBgiQIIbxvuapFc4efjn7ydfDsjgNwt11/+Fed0LMCbK+AdDYsTEFQ822cCql
HmE09TSvWcCxmkwQGeNPDdnLos/9wkDV3WvWtmFp+lUkI0puVNePF0J7AgJ74CfkZXNJS5HWZcId
lHJsPYLU3v6N88E7qwTraw7zQ8j9w4e0gghIEhP5SSHXdytc2OrO2iuImQ7L1rmEtT5mMZU2qOa0
amJPiMZoXmdwi45fKPKPpqT0+2Yivmp7S6PPE1UjZLf6uhjSqWs5xNQ/6HL8bnPrvY+4OLemRqZN
b3vGRGI6b99u6zH28WbbY92ytszjoiACWWz9BfWKIjKjt8ia5zXqfmCvp5sXOgmNt/xZhWq9XFCg
vOdpib+OL8AgqFOU5Lj3KArTViZa+g8sHG9/KuNqyDhFnMggTJW2qy1rKmUOtZVLMgD+3SojHWRZ
VQDQlYQxTLWfkgA6zKf54Ao4TiAPA9gxfG20TlheUWDhS+5FxUq8WTciOQ5o6BDGsg2IlfZLOipU
nUayhYqbcCZ4EhbN8jfnXXIRVyJtU24SAByN6/txJlPj3oSztDN1cP9XmbsBbtdfR92+GtW0Ul+m
Cq/i+1pHeqOk5Meu0+Hd2pvFtxT5yHBJp0yosljeIxp5pV1vzkixlD16CMDA1MrYc3faSOHOgOsM
4/DGtkf+oQYqRLDAJB0qXvD01/Ax11mLYmNYLijKVN1IrUmHUsRIn/NCOJ4lFZIUTOBcrjNKPj6/
8p1/aOSGGwEnvcmxlMfa4VWAhrteVgfLOmatHSYrHnN8/5f+Nn4mwmaaEucsjpOrFM6bNcmK2HCS
1WYoegAjyhJU4HEcwH0lgvkajd4IMu9rgKgQeRIC4SRYvYr79dVjoZzuT6b4WMJBNfWu2MvnDGXD
iBG+bNUeNY4YKm4hUmcKZKy/9cTf6SkBZv9rL905B2TKh+KQYO4p2Q2haw9/1a7m3srJ24GS8dGX
FK8pfsV+ldcL+Go7YuJB96zQI03ppm05orEqNAl9R/Kxl1F9OpfNIRUHh6KQtpJBzy/1KqvzRqi2
i8TfLOsrG/ohMWLyWiE5XRlbXum3NWBGP3Zpohm/ucDJlDZDFvpRumVuLYRYvUKIzrHzXoo/pzh9
f9e1qJPLKPC5ito/C6g2UGjV1Q10nTp3BrnU2NPXOwHe7SsZUZcgV2UmgH8+21nX+1wITanGMt1U
jQsoz4/2DXIs7Kjr5xTEeQXlkoKMWflp/PvlZqg5EkzLBDdmC79If96UII0dENn9PCT2/wI+8/w/
4J/8v7oFZj6kgF2FsnO1IC5lRa6A4mr98L4blrD4J1j9An0uMvRCLuUyBmN81mNlGG59T6Sc3nKm
nTA1TQlYjMt2KfcUKhOHe+BhNe+1lpy1ttT+5b3bLfQMsp41XgUEoUmXgbq9BFlt14ZCtwktpduH
KD2v6R+n2UrTo8WlDZGu2o5GIoaXNZLGdwxLGgJbjD6XaZ7/Othofx6LSqrLRj1T/EphYR11B9tH
zOMNHbK3pFxH5+9clFhYwfoSHq/ahIfPCy7WhwZ4suMZblFx1sh26z7FBFSa5/ml6dhwBPuFqT36
JZiRpI/VPP4Gw/0kFw4eOSuBgM8Rfr5GuoMTAHJ4yvYzam96W0SxqFE3DM5l23LCnZ5Kyg1krfXT
aIVcI5+JgHOUKyQQbC9qGPHWqbk28rtMNJeY99sngfIg58gAiqliyUpUFcLCKf4rLvocj2V8PdUX
eKFpZWQiYRqXWNGfthqap1BwRh+69rriwzmQYjYMDkvAa6GEmRivyRdrghrvhKuwJKjGgeAwhBiY
FnBzI3vWnipSa4vTIfiiaCrRo5tfgMlLnYEr0O/sz5SogaVVQebFUwlWLjiWNAW7GSrWztuGUUzm
boDODJDTQrh9vkJQX7u0Ls5AGYXjAlPXZFimm9VQwPKMul7EJrADp5AHYM/6jgcuNtxWgJJDwL8c
TaTiCZZC1wA6Z8dXSQln3lDTyrSjEZtB6il63G/SI7zu8AA97a7sj7/hVJvspztdNiTjtM20vfqY
Y+i2/L3Ddr628HE8Ku4ouVd76n0kNa89er87js0MX6BjWKl0ZJa9Ceb6ePERajJer5MC0gGRBhfr
0mS88Jd9f/tpCGGUlMdtptjFvjRI/BZO0R5YfkVX5ewFC7tyDYYR06E64KXqaU2Kr9C3DXXHjQPm
DhWlhk6NBI31Y3pKfP6RfhDvC3n0KtlLxLA4B9D+B//EsCwogHXoCFlkvnga7xdfb8yyJQXrEBME
XXzdJ9NYiMWUefSrKaoW6lH96OUmL4pjtsT0pqdQarvI2zl+zS86mTSPC9ixryUPY2I4JkdZLZxA
PGApK3pDXxPnPZPbJQXaIE5FHFTCjaOzf69EHLdhNtMRqv5wXb62aKTFOQvR4DSXkM59BIIuUocb
kWZ/3v7Mh7G+OEgt5VDSBkGHeSOEwbFOtlrW8903tXjkoMr3OZ4MU2gSfq6vHHVseORNIp5bJ7W2
igxkzf/yNFKugrU+P+6JNTkqz/0SkqEeEs0AiNwQ/9sUbePAlQ3HBPWf8puSGmojQf63+OQHAIu3
TPQZcFhaeu0zQPqkvF1Df0pJl0LwXSG2pmEdLJCfIvOsEHYHFkvnAPzwGA1xQ98hJvhfhZqO4hE1
NKH9SunZTfvQ/fvfB4EMxjZ24l72lihrTGw5nzt0qmGcsuZTpn4JPQm2V892o6OFqTcZb6pZRKow
EjXlnhtCoB+rcIEanLmABFRMZ3kxKobavk9RXa3clNoGowjq9KgRTcuIinkn+y17us6uoXE6Pcbc
R5D8d2ZNe27C+tcpcjCmO5KAE0cODmouRfX5Fv0hLkTAJSJMVgxFGbV/i8s0+XoVfIfgSiME4spP
WVZl2prnFnPuNk+lINUsQ4JvpGsetYKBXEjLtNr1T0aluTf/SGnpjxGP9ejsljJXFdVj8QWoyevy
20i2PSPNjVAjEU+1ODfAr2CkTET1cAHXMKgqlmFQzJ8ZZpim5EkOF2LvbIgGtpTIaY03bTbGHENI
t0lehbgC4yT8vkLMEXYnb5TDXcA2HVUdhsECd1vG0+IXqA/kfYypSQTnoQexp0r63T8q7QG5TCEC
+SgzrBrVfHWJhRYU6nE4ijE6LCtaRNv/8iYgJhu7a4atGrbTk8qPZoMwrYhwI9tniXyDOWXnbt2T
ofesyDobAhAzq/wSM+w9GkHrRVSvIg7RFu4+UGee7s8syTksYK99xMxeKPJb1kbnkb8XT0jeH1zQ
YbMRh0D3Y7RqTfGjzK2fpWlSv73uFeGOWxsuvOK+pWSEB9LuSEznewOAhbpr+U8hJZ1Pg7Wlb2fK
AUj6Qe0Um5VTYc77JKYttjIUNzPSwCbCYPSErbHeFbKkeyFC0Mmq2prpBezYpWAkM9r8+ptwAfHC
4Q8/rR/ikz2+TSoU+AFKWPZQI+FGVAIXZco4sxBinK8QOFLYkgSWQ2Sf+nzaumS9rWR4HpyvTYwi
GmWm/H1Xj4BtlxS/dgqJYDpOAO6GVPdLf9Vc9pKkOzP0s+q/zo4PdX7H1+QiKi5QZ3ZaaOk6rwVd
zop2aZ1dLxaorRBxl8GM8c1CGKp1wFaqUFRGXsY3CX2yx15V65DxyDjoo1SRKWHuufiLLpfL/OhQ
217xApePMp3a4Uhlyqkcwwj43Is9zqe9ZECglw3G7sY8y8Zatxrn9YjoUrsSAsEExrKZ0ceDrqkV
g/thmk10YEpzhbw78+tPSxG1xZTOImk9j2s5J7gHZB3nd4nSREzXojtWrMoUnwEwNn0aZ0hVd5rO
AxOqt4lDsg2XHchvYUjpmH75PXHQKLI23SIqVZxMj7QUN1Ab12QEkWiYFmsFEY8LMBJ3xsjTRqAb
V8rjG4wdvrvjhGjvkt4nNPu2qRfUr1xdf+JrBWWsnvSv5IqdkRL8jZZD+wCl/cAExEHnaxiiS59V
bDtV3Y43TFcP+tjjFMGiEMtC55PXSJYRw4djyU9hwE01oGv7RrIFidnIm6r/CBuvMs4yxMxjiZ/x
eac4swjBxX9TllFQPR3PsiiM+j1uZaV5skLCrgyG+gF3uDv7SBEotyHPBDYR7Pns1OLGYWoNeVkg
X/3nAcn4K7UKI8VMgr/r9KnIm9K4d1M4b0CQUNP1Vzq4v7waVVd2KdABteuWPktyRWNg0umTt4R/
IHuI0qd3PsKLFKFyqdtntdkRL18ePaikbS82WTOpFZW1FdbbswaEnZ8aql6Kj4ljCdexOKNJ6Xba
Q1jRNw2XSu+nYJX78F0IOdXOWCFo/12ZpyCre0GofxhUZyJvXqiCr1X3A01Upk59WJDOaVH8e5b9
l0W3N/qUXHSidoFjK7f+jqAifd6SQ+M6huDB4/yxq7/E9bUhgha5yDfrnZHxrq0ucmCvkktvdwMh
t0E6g25LOeroy8o/HczuCpQ23pvn8yG3TYZTWoVD3ZPyAKH1Box+w2aKwIY0MAmuUX0k3/Uloixs
M4Qs36sXpnxdrakFGh2VEKbygBzquwHkkp3Ws6un8iuNy5LN0krHIySWA/vz4wD+CkWkETNQMD0O
s9FmGkN9IIYtDRA3sM980sTaDI5hHmc0pHKLGAAVIDXifr8C+v1iGHNcIB49bLYUie9lClsR9baH
QphKGLFDEuwvmp6TYYLRvRv/w40rmPJZwK+IZyG/AI2YRNiUwR/JYd4yhA4HrzN2EcsntisV2vCO
i3D9nNQucmHTCWf8ioq6b79cRRkXgxeE478R4/0cPxBXjA4hxQbbyvIImviKZ+eNyVDZirZVubQB
3DWJ9pVZJfabsq72RI2r4o9AU5bV7nEEfjdHbxTw3zqKc/0ceZWFwF5f77HOF7nd9E+81nkcFQ5X
5GlrfDiIs/jaQ0aY7gG1rZoq5t8C6ZpHf55Z1z5kiIsfKN5MsS3G0TjM9CFNQWS8lv2vGyZH/e0E
W2xX9eQtxZeJcqmaZLW+0qBKMBUkBUr+uK292dQhKOaWFWX9ryABZOZhv4JZeAhN68O5LkuZdIt9
YfuCVdkAXgi2HVsy+oItSmubd7ylcFa9UTk7s4XZkhit6Li79ZQ/Ot9jgKvNr7jXDBzsXyCp7bZq
n0lxntdf1We5Q71xHHl45XfItCEr74oMne05OVU27MNNw06VXxj2z41UAOz6n0qtDse3FW1wChna
8ZiSmOpPn/zrNhlGK65fkB5yGOnMoxl1HI/jM0+pcue+iZRvhdFDaTgZte9j51WxUK9qzUCALfAN
+zEXZowXcVAJ+MXNIOFyz0UUO4M3SFZPuGxYTzRyRfZmbxbZkSFXmlXQZhWggbZ9tB4D7KirCaVB
59HxLGyVhWSWHadTsjPTJ7WippsSSq6gYw7D4GXWA3v8HiTPHZcIuirvyalM8iVK1G2N2tMiDfTo
jfz6DKEso8786gbS5KznioY4qjvtE+t4pLvEn+gG1qMyEdwATfHXaqIr1jwOlEKZm6Wysn0w7gvV
mVq3NPS2NBuKTzPcekCupwN3Dmz8sUGrVgCtqGL40bxJoWuCxAoKuwKpS7a+lTGDOHImJ+Y3x1pe
HU5L6nSS5/PzJJ5IeNEGKKM4Mz7Mp7tnGOqgSyO10SMi0NqkjQxGwnh/3l9B7+wnDzfNckjbd9kH
SpiC033KxrOkk2AsskFze+LG4oDqhO5bz7RKtFIIU0bcGSuhIEpd38hFt34w983sM58baZBbetPz
9jYVcmFBL2YztzDyMnpmbSXO3qq2Ad/uueAdgX2Nxh7TJiKSQHH60X4G/aQ38F0FU6mS1dAHlbsO
DB8yGnCtmXHiXW3+TqyKsTGDmeJ1t06pR61bHnDZMLSbp1743boDkB+THcHRjArQ3tAXEHmZMD4Q
EA9obK7t4avHavw6RL7rD0BUpRUrTiTso5UNtdkKRHkwS+0Pc9HXa/w9cihNofS8sTZSsvDKTIZq
Upn/FJI2WeCh8WM6pn5IvVMDpO0GWfK2KgwJ5Qj7G1p31PaUyLhbkeAyF537k2tKGZzAMcE0AAxs
pLqu8FKgGhgg9FkwX0IO0D6CBgONweKzz8CudTzpURjsw4Yxrdzs1Y9flycjRgoEOphEwSkjq5KU
4E+ihqjPoUx11sHYaickUtRXxagW/ekN45VObEK2bHPXTLGKB9eJuatkNR78mcyu+4P94CgpsLdz
bFMJjdZFPb2C59kklXIPYoQLKIhdMUKrEX7IfWSY1c4G4freHXMxLXTAjZX1KI2qzRGh7s/KSpZI
O6zEJF68DK1LATma8sM8d9un0dIdoZl0Nz8Zc9EKHKxi6Xu/+bKUc9m1g8Xu1cBGz35mDFynSlrP
WG2z0pMLu0+0qEfuLp7QVcHW+oykJmutrVHCPg9Lwt3tqfY0UBA3t7Sm5Cq2AqZOvSv2isfeJSiY
7lQQyYqqxtq7WW8rV74+FiH4G5hL4s9bdo7QyQ2l6pAUYH9Hcjr0YNKt0tx3UCTWYkahuJImHXI1
IYSWTg9Wowlff8F0AR+eeHbO3qVw4Kyn3Fc72/atD7dYGuSUl62sciqrxRmzIhXR3c1ZuZfspBxU
wrTU8YNz8Ie6jCRK3pwQjuxvWyTkNQAJAbBN8aF1wgk+/GUS3MhegP6U1QFH3o6eHiqlfYio+LpK
VtYLak9573/pid9++8Eg1pstFEGQgRMLEOcXguExx2ERBhsik16onlInL6gYDFJP9YBNMMshEAQa
sF9zi7GYRcwl7ySltJm/Sw5lW+HB4gZHt7LsWTD+b/J0SxJ4KgQyuzL43pk9yksLsLVilV+1Jfzw
YkS1SjF5nU8qhdy3ALVUW1pNuHdE0rXvz1FsWIiastJLsFLqRXGZ0LGmAigfvrTHurl9cBTB2jAz
CGwTacC4kFJPgmRbicjcL7qjnYUzLLiI58xmwHUBGoPjiVHDQuGwf4i5S5qtCWEfKqKAEugjETbM
g63X1O7Eucnaq8shYUw2cHUYkeH2viD9SfXHowUceg+GIVkxIXQNoWaNGXlXK4XgmTj+rsm39ogG
yUvxc1s+wYqzUV0dpzwuHKDn2nmXXPZeEfDV1/i/69foyMCmLeGrnnYxn7+qz75GM/wI5hx04oWh
sFftDz24gcgMRkfgGCyrMkXJx1w4QGvfELW5P0yy809MAoWjU4vtHgQ7HQZqp4CQNMS73quWQkfW
CYK46g8h0TB7ML5ECSzepXHCGUyItz5JPYXi+53PQrQYpH61sM7iviY9bxeFtwK7dsJYWWpt8uhW
KFcLIKcKzmFNgqsL/IXBxzHNaa6Kv3lTLA6x66oJag0yEZFXnd9jRLLawMnQH78uCO/HqvPKJdu0
YrBC3Q6pbbUr/5wFsEP6KZ3mNL5XGelQzi501uurMaty5ikWXltbjCCWicRnCbJeHkAKUn2W2nWx
icmARMtj2xLpzSzYhJaCKiVtbmQ1wEffW9qOH+OeswuEWvJvFD/kFFxto+Nsk4RGq6/TouR3gbqM
QtgAbPX7fLdXJH86ZTNdSixLuIFnrgqqZWHklwuX62NTJaB0m6M8r+7swHkT4j4NdHuyusXRTQoc
C2EC33m2tuq3jUPHJiYaZ+u3AzUr6zI5oJ43bHq8sSW/YvDvRTtegjYVVqvlxeEWFwDTWhe9JX/7
5Xmz+J6oGXbIxe90bJvVRQAKV8ul3NFbksDywJ3ZHQkrqfXzaz4W6Sjv55WDM0rICpLsIN9DJq/K
BRFYRdDoJiIDsfU8s1w4oKJvjOPnPlKu5goKk2Q6H3lNzpdsFMF4tqLTUtxLWRyDuQNotp9oXyjn
p5wQag4Dtjh612MF3hvtrewGWlDynKfPadVgJnX+SDJ7WwizoAM9LpjkPhj1DNW+2PA9Hf1trPbq
mX13jvl4rzfOAhpHIAEhEbbFd9E7YXEG+KVBi+Vp12TFAumZkHcEk4InZvfBcZwy6FkplHptBMZN
hKDWoIr+GcXb8cgfyqRJhh9peE0S9PNsDg0z4gG9C3rjp/4Ie9uQtcOQIs4wQd2XKBjmK+wgfdqz
WsZNDsyngJKEtZ7/Y1+JoITL0t8t69L1SOPOE09mDKOPIE/wlF9w6GwjtxiilALlY2WBufrneTMn
LrV+7SB/+pmRPAP9mTr7mdpD1yzq8x02kuhMAU0dZ0vm5mGkfzWVb9FZ2etp40pDfRDE28O5OIuB
egoSUog9coSup0+NpqPDAVElxQ/Il1QNJnOt6Drw3CXFkxl9A4o2U8T06ubWng9p1Yz2uRPIarna
xKJPu0vXbWY5txlBO2ejZ+rmIza6XfSsXolbalFADM/2xK+/fLQSJXNxhhM8eZ0KfiQdvFTzPNp5
196YjCof+8eFJYeo6TSuXfM0rJ3eJ0ctaiBLPbuk8Me4dWa2A/P/RgTFPQWUmWlQZmhdM+wR7YZ6
D3EtmzsiYdeMnhihqh0ERmxiDk5UzmVksFkbS5mBe+FdMiJNQWI3YgwitduFsHKolZ+wxzVY4TIB
5AR9lEwZW9DBJmjSXLH/i31jLddbu+ChMaqzNHCqFKZyiFDoP6uF0saSwG/uXruWk8v8Eg+dEFTW
ACYvTu/yPeDCxvDj9rVHDyvxI1ZcP9WtnRVMfJzfC0pimw0XMoNDUoFl/eUH9p+7hdSpYO/bwYQL
5qCeozM1RS+Kbb1Y37joSMwUFYPzP8q9P7i72rcECPOZ0zcvoR5osJ2ZPqmxJ0QmNHOJMil2bIq4
/bC3I4Bpkxw/bwRGXvZL/+n0ETqESakhONXf42DfYG881z/97Rtnczv3sVGKjUVocsyTv3yEZNzR
v0/P5rGftJrHiYeIPuLj8TsvC0l2Z98nQPVWCaL8kEWO0jzV8pK7q8saqFcsnIcYsxUd0pCiv8b2
s1vtuCWKg07In4OeK/enULJ61G288ENWyVhF9OxNgZKuf6xmrw8zOomDBleA8emVs4J4eCmgcy7Q
U9PKeled8QhSg7zKOMc0sWqMv3HyO/kJu0Wkr21EkB/sd/0jzE8TtQVAbVgympzyQvRKwf0MF0C2
gecmtQS/EAXsIXQr68PtMGUWX9BYsAd9t2usn1qnf6c1Kt69XWYoawn1Ril+9Zt7/sBl0xKo9FSQ
j5/8xOnKoxhOpeTahhxI+fjexKqH0Ge6+VgwF34cBnaUB0hYuFSpfKthpLSjpqdMklCetydaO7y1
+A9qvHV+bgTs/73IP6RgS1FmdNVp1f3Z1Pc9vDnfpWfQlEhY0mHf+5evMMP2iIT+Eo0Kd9cHGlaP
j0eyKtQoIhKbOBSjZ0v/XRtfbriR1uzpqeFx3n/plncw0amB+RRRCuhxAt995p7KK1ylo45/0hv3
wgKw02GfGnlLDVfemqT6B4RiCRg/k90pkAjhmO4vpBS3H6V+316QfuYUS4dauGl1n4AMpgajnzrR
QdoyfF5+hg8u0sbCxN7GYRW+SvdwSxj6bLZJFcp5jXqh5a/mkXwqmFY6AN3Lrm5sm70pqQGJp2af
A9HtEW+FPJfHeo4hA4sp3Yyljo0PkE2UzV4XfnZ/27XkFtNCaTcxsHjkODgg08I8IdRTzhlon9ux
iuXcF+R6tO8ffK9fP8HJSyCD1+6xMk9zQ10TTEVaVKH4uDqRF3VAd7FM1BJMpQR5P4n4nZj3bO9I
Dl6AVyQldvWjD2fToTLAV/i0KOGLpYm3pV7IV9FDnNymzX3lhwuAVIAXwsWgS5ukbvGQDQS4hTs0
cpt5c79g9zdWFluj9XmT92B8+d0QbdWM+6+7KH12LPgtACCk95ymRTfYO/n1Es9LGp/I3RceousJ
egK9Jq1zPR5mihvucIg0/QIvCyKjMpEcpPUPAHfa+55G20E18vbMk6w4KEdQx0Pcse2GS8tAHlEo
/lSQZZM2AGfd31UcTvozfHIOuXShuRx30I0rd9J8MPp3o7xT4dLjCuFDD3f5h2Df99Vpu/CdOwnV
cIT4F15hBG6G1pYOQfrxuVPLYZv7Jr0DET5MByFPH6nrP0GkN5kqVdI2GckkVx1I2W1sAolBKNDD
MZwFEqeS4A/wIqkCQVyQDfX1uY8EATi7BIG06CfBI/GnlqiGOmgqHWN+qfEUr8N+1wla6dAnRo/A
1Kh2ZNKSmBt3SOVgRa1vDfUEJwxkig2XV1tSAcOEONkqhES9FpaxUHYoa1hWhdrnbkzAY8TlnENb
PvV79A1Wkn2kCGtdqBzfSGELheSsRsJ0MLin9bt1xbg4mvbMpGctsK0SKLbaX2pJsisg17i0MCyg
DPK6XkiH5f8I/fFUwl9TDgjWqtcLMBSIec/cAZ21dFSKbGnk4KEzDgYks5mttzuZbrxWvllB4LtX
J2q6l3wdz+VQxE4QedMIFveJ7/eV2u8pZOrutHQvRk3xoPWPYHwfIHkaOg8cssweRRV8iXK5ymkU
49PvGPTf+bbgsmQxmc2He04+WLQn2+fHF3xy5dd1cMMSAxdSpMo7qHQzwCAbKFGf4cujCVpLPjTl
gOcqeOHp9ztnM5NWEpa/p0IM/2Ew0c8FiZsi7Fv8Dn+zUfNsH/3jsZdk1aisjAIi/OrzRoHHhRff
Y1waCwpnO4eHM15KYmHARjUOQIvB1McperGe8FVxse7i4G9wyMYRXvotqnUQlJMFQ7A/hmJpk6dc
VNUu0lxuAzAxoOX9i9oOS9ixMy4eIWTJMW0In1otWSZPsV8ZembwIIPXhwpwUYkOhNkSJreVAqW9
7cfyIqa9I8HQ4WSwHaaz+EJin0sMdDhPLB4ElERqSMxfp7jc68eR5OUnZdk+a6dy2bNAL/TLDFXG
/6ESlzw9KE9KiNs1ouFicQDWH5L/Cuev+dEJ1N6eM6rq70AYSfJCeQJIqtxhCcy6Q9sQe4jQyZDU
VY5nzqEtG5T1PcCrUK0ccR7xnAUjiYVaka7QI2RfMgSrlsjPlMhCirluQpAmzNqwnct30XzoDpcZ
uCQvu3TgwEV3HnLMfJlKr8H0dFGL8QKntxGRk0TErQtBgp+QrUaFWN/vv/vAte/XVDQZdAyHF9Iv
9Byo2MI1BqJtkdDttbAU4FdqVzKCvBS6JBr1UkSvRJ1tYk9CGmBbTkfZz7rzGOlJogFEDmuUsMdf
NEBGcaBPkC1aidBCCTNBF73YEMFQHQPGAOl060kXWe/OdrK4ZLpB+278EsW5ZyENS+YOlPWa00pX
AXCwS7b3tOg/SpmWVJZ0bi1Khpqpg3lsdMQRtLUltsYUFeTKgUqXHk191DRcQMSkNkwSN/Xnm4X9
mWuvXoMvnrw+TQxrD97mqcZ5RTxYpa+kijiO6dL3MY/zNPwqloLmb6z3e5WrLah3gtFkcdexc/CK
O+Tt4JiRgnvUEQJVHr4ZpXxpzUWuANNyP8OGhCCz9rZDAuel1vOtv/Wk05uKVuT8usrYOGLhHECa
nA/5PMopsCPaBPpecXsSmJ+vQIm+gPSrhF788KWETBYcc4QegWjnDfjOkg35+vHmXy+jpzIzfXWm
J4ucEUYnnQ6JLPo7sylUuPw4ABoqPMxsOulPGZ378iWj3S3x/CtVJb60GtFlWZ/SRWjkzZLm7nyO
nqjxjSSY35wIKLTHBC3mqHkijiUfyhxH79Iqc+Y9dOO8yr1ASGent4jFRg/iwfBiFra0qjoub2jX
Pi4YX30gfnl3PMMKwpUtNYeovMQ5ZjRT/10UVmm25HuIJccjjwLWqb8jXgebGGSZioh3SqpIkRUY
t+PXWiQpx4OB99ASvoHv6Ml+V3TTS70FY68G52PhHviX4Ii/AK4EAtxvKgHT2GVOZljlXD8zmk6x
Ng6GkEMTmWgB+clo0lvO95AcpuP6sk3lrCnemu7bfoC+j92a03CPEph9f6zwsENlktncFksRaDev
yiKws8jYrVazCADsppRrTlVOPuAgR3NUDBXbtZMHxbLVMWVeXZhSXwZZxoAP4wO4kQIydrYDr2S2
0j85phbCuSr8mlEu4LFukAL8P4iL5G0crXwUbdIh//ZLe7naQWuYBgcAzhWth3Fp4ybyut3WoYdi
4XvbLHEUhhK8m+pIOvuFpqSlWNYW3W0ZRboFA+BV1OOh4jFYAPwIMjnXODgWv8cqI+GWiu0vwMKd
IlX8XNOeSpgEHoyUk15FZc7MYjlTCZtCa+uXckMlmkB48jAFZCgW1053AzL0KU7w6OINTvS+hMYV
jl9SMEK0uDpabgGn/50NbmTFN+k4BuxU6t3XhlHhH7FHEk9w/0jitGFpdRLcOXXZhuVSWhWQlZD7
qdhUL4cuGFdtqW2fhPNJZKdwhHNQrIgKywMTD5kWIakhnXa/Sb8HRySkyyM8UzdLpiqSN3rPC1lD
jNI3c5KlrjbDZp3r6iPJVaNhtt7a8dXILVetwwLiMu754CYL+Xc1vCzYGecRSVqGmKE3VgC7czjE
h9hezDNoPzej1GEPAHBwUjd9x+i0tGKBt02Y4lKhNwuwaE696DOF7pUKiOTQRIjZcLbuc+nrtpDn
36fygOBw7s3Z9h4hr/bhdu7qM18jJ+QnVNbxBYx4+ej//BUv8U9+5OsY2VI0Nf4aNzVL9+L52V7Y
mpiiGjowif2JoykGQDfaaz0BDSutCJIbUlLMZaVdET6PISTjrTesLYCFwj080AvaTj2ZAPW2crJh
TinXo8/6aDiTvwEfupUL/mfqhIlXCMmnMxa2yUbldf8eNbm0ksBSExB4cfYwq6/lojJdP8fbBhHj
GYomi91UWbVOBtrsfZdlcp1IH/FgLd9nG8qk4d0S77G0fZFQ7xc03twtkTcxQ1SC8PCCmQerWx80
U/KG67FpO3MTmbk1imoGz8yJPQo9QBtz0jDe4kuwj5pWpdIrjQtAX1aSJBjUCvMU22Rz51AkwZu0
DV0ui61ZvkGdcHnqhsmwTc5lcV77zm4bxvJSr/xluyzW78hF5Tuy0J5VgginKqTbmJgO26r47BzP
yTGWPCcFAJemcI2Db4lT0Q6HpuEFFQsbY1V8x0Nvf6xcJkS21uzXaO1qkmj7gX9t5l3tNazpxdlJ
0mb6Ou1SKhIdudHSCJmVHSWxku7UMtPkqKtz0bOGp9bphPpokdj7TUhTRk6DMXOtlSoYVsjIQnQW
RrTT5CyJgZdxdzqD3tJBWkb9ihQzAQZEnSBjV2rSZsb+47oOd6h9rQ4e+85cTcoN/iJJNFbZtaKz
6VFXDwUEgjpDgSMAjvKzlEEBO/ui/jlsevSuDyYGyuYdmSzNTZjwwRuqflKt8IFSs5rhbGODyWUp
etC5zVBLOLdZp14wZBIae3sxCDP+3KGcUMaHkcWBRQPkrF+SoMfawJBfVihg6E9uALlCxtHRMTuc
Ry3LDTQgit23UT9QVReb/8Uk4AnHM8c+ECCxhE4jWD4tWBsAxlZ2pa5BpUgLp6dz6bMHtu+LjuNK
DaqfEfkW8YQ8z43Ijm8a23uMUE0MUogoxT1rg8oV+qa9oR3UGP8ZNusbdWl+n6xzm35Qb8eYP5AU
a2mJdUiY3h3tyIS0TceeYsWNky2RtraSFd5dq7vczBBPfMvgz780FEXQsogco+IV55BZuH/TOG/4
8EtMsaeq7+E3ohInWePKDmaBQpn8ahu3L/17qn1cFYZk5KlH1O7yZuDFKuRXgEeh/htrQRZzrWPe
n+qvIo/h9qYFFkdnzc644EiTmH9XpMCmpYOCfXEfwlpn6L1c/9yFhQYfbheXL68hz1fRmkBhY1XY
iKKeBOiQykvx6QnF3EOMo0cGjep9NoaSBMANnVB3WbVoll35jJAvAPBBt2QEdwCDZaRMpTnTly2S
0IBiuE0wt8H9XmMJdfnou31zCXPXcMmPzK/+vAFqhvshVoKQWvd35AhX3jHdpLxqlN5U8JolbZgC
MxnQo9h+KqbXp7Xl8yBwvncO80W7p6fvMyE3XutsHzeqho2FbItQqa7Z4JcnKqz3dSPAb1lEShrp
ftTEF+tKV2FF6Onhd50Z9r55vYsVbd3gSukuF/jks0aT4Tu7leuxrF8hekIKeXlG14FexFFE4rjz
yn42KdkamwypM3DJWNm1ZtRyni8x52aLlk9Rb2mkXjqhjloZpJ+UbRVzEnftNCsmNfOznsvKWKb1
0GaVW/h1NcEicr52xXsuT872dWj0aYKlCikWsusrp3J7qaIOIo+xhS5yuWl6xqqMkKuqWqGHdX30
zvQgVVXT/yuYjhEqL68ykCe5/J6aj3xz08c46L/99rQfuMckIYTWIwjgikuc36pqzYCBdqxEwZDO
vJlbXOxl+y45U9FpyFmwTA6HPDMKOcmoKPlfnpniLGY2/dS+ap+yFoCXN2DxGg3pzHJd8DEVDz93
67vKxqo5mOxj3Owl3fZqebji9pr6P//gYSK651FyeDatk6X42UPbOEuqaUJ+fgkyrwpfoKRYL1f2
1rmkzFW71ikb3wnmV2Ge7VP4WEvPbTq6uFKtInGgha8qhcHz3SwS7XtODSyspBqKbTRJBIgeZPiS
QVCg9lDuQ3A32D8nYxv1FifPMUWHWPB+OAOrLFS3F3RFdxN1XE23ygsuAuMB65lsdg5h2RVgibM2
nMLPTym9Sx4t0MOyaDx5xaNlYP6a6eMjpH/kuTSLJr1YOn+23aTRyLdQ+oldDAn32dqxcsqwQR9w
hL/9rr4Qd5TNT3Rm5mwunC+P5xhZh44LlZI/W+VMChFHXkmKBY+CSDu8BMvyVwZLK801oq4Oqu+h
oPGg8sm7RpS2/UP94D1iHAtgb1wGnl/j3rnFJQwIq1JuAfZVK/6Reg77G/d2c6a6lyg8IhNWZ0P6
dTymgShjmc/l3DaYfTCzcXnUy1yDTra7mknens6SH+y2eUNQfnGw+4mYVJ7HNGMXZxQbr+I+MWaS
RVdC/lE0Q3rzLnD+dpT5/P6EwhCCdd3BfTsA90iyHjEr46XN8z+sEIUqDv3TvySa5rcxVEqzyquZ
47Qfs7GTelSd8seRX6AXWGUWrjTxgkFX19L4sWQyzR+/cEIftzH2OezkrpUjUp9R429KszFL1KKR
SdPhS5Q3YEBtEcaxAk8cM9oAeFZ5rskI2Ooc7ljDgtbNAmlbQvZwbxmfKUBOCQBZAl0PQpJyYxYJ
nAhqIyc5swDHax4eiE3ftQ7YJ3sdUaILHr56fGX2BfdeljcBsHcW2VlPzOeCqVTDmrwpY5jPQFIR
+SJQZ90mmiUCIPCyB/2XlXl9Ndh7GAjQXObINNxIX+5X2LvYbAtH1fSzZJ10a3LksNpnPMBltrkj
yGFi15P56XuhsmKesoXjkClbyXZRdm1HNjM153pBhKiK5k3QB4fnftSW4+6cEX7BBb7gfNar4Mjh
cWTO482qfokbSHszpzugJEpE8DFYks5YCvEoBG6TlSRG6a85s/vtjcxCeh+bK33Kl8utPx8X9iun
9Kip61/YMHjziChfubHyDHNTAPuRIVPZr0HuD2rcKnBYf9uo42nCf3nc+cqJpwgZhRX7xEG9Y6pR
0R4ZxR7sBl7cLUReRER9/KKffNcQM6JmGMDB9pDDRl0rBscgo62EBPLLiYatawZW3CNTElGd7d1h
Y7uBtfufhk6kQTooG8/s6vbRDDKuKG4ueTQzhLTZ2dmCGVfkVnx2TllZCz7OHkPB7sub9QbPQ/yS
19zVljFDZFQUwlDY1aZ9/b8XA/p/BKI2ag/UtQsvVM3xniUI2ZjqzIWPdxj+Lu0gzIcn8rQnienj
b0PA+YRxJpPixxBhVKCwqB7O3za7+UnkLHy1gWNRHr4oEdcXHAtv91zTSb+JnLo+qx62umcHzvJc
wYVSkkNJ9vi+1kZ43FCBWaHIu7JEX8hUrq1exVSytXx9bYPbkZqkrhoanIyruurTiRbKMpqMDT19
36fSwHW86dq21Hc9EvUnRWZGqWmJ9DPDNEdkLcOh+6nApEVRESjWpwBlNXiFsoxszWzPo76BQcA7
RiGRd5reJRNP1JGkdxBE7/ifG0EOmdWAE9JmVEd3+9o2j51JfDsw1SOw3Eu/BJqg0C/inNGSzp9q
0YAFmUCd2FFnQ62810/tZPFyFZuEWYTJtuAL1xAKaqs8V+C6XneGzgOq1ZiO8BGg4UkKPgMUnPni
dm42iynl3y0z0v2Qf7c3G6UCThLdbQ43sVASGkLg0scY6IJGZ2Ot7wc+De1arHfMpHpsSE1A+/Hw
X0fdXk4PFp6eAeseIBalMCYGTrN++9WBaJJAGf724EwrntBQhFTazxRHS2O5vPDxmGEVGfsGyArH
bjELGk8FgKC8Zu1jX5AvGbthpRak72VOxZe7X94rFrBtYP/OTPyfmccez62Sj+8jK6ELolnUfAz1
GyyfgCcfyT8KaDgX7pEscZWQdBOsIcc35VW2wVrcO/67NO6BgOw/mStNyGBmaZHuLRvnbROIa4oM
D0WzXzG72LjcWtUKZ0IG80xXLutVWzWkx84q4hdiNqU/nZXyfYvkvHX/xvGpiim6QMH9deydf9QY
Ov9LXUkaLFJ7Qpr90li60bXwuXv7qc5mqODCS8eML/5rFZTEyttUGK63rLvAEuKZI3fTLxJQKXhN
BOMDcSHjhkPXnRpcxaTFyDs2DQHKm1dIT52v4ffWBkWZ2ACvqqOJgAZQYgPc+HWOvkML4y/ZcmoR
U4E4np1SYxqtiGDzWOZni5/0UjIwovJO3YX89nMwN5w8The3nPfYA3gBUM9UJFXHHOZ5/8/5eOb6
BaPCmjXXzUqkTII7p8QVCDMb35ZHO0MsIAB3860EQUX+jiwt+L/HuSoqZBW+7nodoE2MfXElzXMx
MPD3zt1c/hShnPN2NEYbXWskRGi1ae39DTkF0yLLjySdvZi/smOsix0jnwkpZkqc+WVcsTmZD591
0iAKk3ZBu6KE4xdY4DJ+6rFyir1FcCZWQIhckxdarfYU5/V4i3itbiIA7YHh4h9Q+7/NnObLA/wt
Cri2fITJXUpeIPQMcxTgCj5k6ZdXA+YFGJY8VJrurgTVgCcJnViojXmN5b/B3tXrCYoFJJe+kIrs
u8xOZkCJrefb8Iq+X2lVV9T7aRxobotLOVNe2xfKjxRiMrljTyetQ5HOSaVCfNm6L7GbESlTx3lQ
SXfBnMNZ5Q4woADs4Y1RTEo+FfAyIbVHnVsp+pmdeZEZrhkLGqlDAl0GEJro05gYe4CACqIxp1ju
ViBqau37GH69MIHj0l5gKlFxEfrtgfMVbZYRjaX5j1atP0E3fxWmFe8v7RY+xizPm34cyrjLKzk5
cipulTml/uGqIp4D+EXnWymuc2o49ytT7N9mIONOFtf+Yh2IujQeo8njZGOO5PjwkXyuWHpA2EGU
88gqJJ2GcmCjIHGVnbCmGMYmgypvjQmAW+dcU96tH78+6ZBETrBXQ3ldt0WgpTGrOxrZcZmKWOvq
4Yj6yK2e9XxCYQWq9yx5ZUiPKrR6CBikAkeJXYpingqdRt6DcWafZYxk+QxoBdTubxOOtr4UhW86
F6JgThvmJheLtfAq4v9eMKjdJVnRhOYHxRLovQQdYBrtonsdvbO5Eh+VmTU8SDq+OFIYYzRkGeUw
4BekdFCPfF7c02wGGtUrVTgaGaO2Ww0dLejjEm3HboyCYxKA82hKXZRkGo1p3gCxkPalafQlnGAx
IiBl98dvpYrB3sdhz8ECQrRNgVHz+7dOwIu1/vq3DbT0tJUQhLhE+DROOxFAJL03ocdHNEKEM3Qj
9lRRBtGp3oQmzPynL0asAv730cZNgPzEqlth40858M3RQxYdiJrICJ+LIbtY3Kds8sYUtzC9uMwF
4ft8MmPjZqHkEE8u2KQQZ35LbkcLXzdC/dS0gGazWZUgldLBPaHuPoS3av3tC+JTWDEYb4LkeRxa
f2JawI8/FBswWKiOu8VYZ1TpqW0LuzjFyltda9VOG5GsrmjmWho6uZXOu8Am8tjO+zuhoRXKfDpw
YCDw/MyMAqgySMhI3LQ6/3QC3DQMdCyuXd82TCKr25kKQN0W0HuvvAl/lkSLQZF7DXazr7JuyrPZ
5DFlRt+cvB0gP9uJQlRruJCHbelNhtB4KhlubXalt8CBMtY6NplIXjim3qSfFxQwoZgX/1kLu5iA
jqKQOnnQ9uyw3l/tOrtmkeS0NrtVE1pPmniJBL/gaj/XFvlXFDhduZ11DrIprvB+uqIw6fnKVQAV
ikGNmCqBTMvUQiOC6/Zpvw6MykS3Mr+FiZUKc8I/kpQWsVBKwvVa3mGdzyKdoZ+PNQ3rP90XaLSD
vzc1ZVk4O+mLvP6+rpdTTtIdxC0zKBWG5OMpXWchOOI6XUwIYM68UBy37WVarp4jW0qvKErJdHvf
o0vYwyGpB+YVbcLNMRByRc5Na4FjSHfK+nBrr/gLxUFJ7vWCCG2h/f5yEMie3Ydx4lQ7Gu8oQeIY
kiMcAgprDiPzFIBHN+c4iiPZQ6juNJT4n91FqREsBqWGG2idILVc+KTccg5DCJk7RV+oZe7WrPNq
N7haKWVHBHSVny2LeABZLpLI/jIFmNTJWlOvgQAUwLCVP56Rg0ojvCwcTJiDdn6xy1d60B35ggkd
F/nIAJMeYePPtuMIt1DKZhRYvmonaG5FKi/JFY1d+k4EsGWDDvCu5Bvptr66R7UnAEKqcS1vwx/x
Pyh36clJBL5T2h/hzr0LoReqj31qeR1sOQbIXFo6nuC89eT+kiowvBnqfqDK9w5dUVndMiw/zBba
yyAzuqYKyTdb5BYgTQr9ELskXnHhdwc0oaDYgNRV8lgll/tATs0r6sUYW7UjWf0QxKFs5cu1DWy+
75IIgD1b1VCEvfJ4LAEhmTNcofUf0Lc7oy6xG+hhDkwVqnZAlrpUByaMLZLaIz3mBWAAbEiT4Ml7
ADVejsG4ieAsG4QNno7R6FmpHL7j3pc+OpjYqElid2Uh/wwsaoVrnnkJfeobxHKWDgrKgxBPZn/w
YeWWQIZzeklLKezrOMagmluw6QWeMvZNqTgu5CpBYUYKJS4x14G9/eM/5qfYulAXlTrKUwJ0MiVK
yb6/4HU01RMuaAyK3KxczN4jx4yKC/mwXLzDurCi630EZEVjbLHXQeARhtrO9YAlFRq2Y3RkMLIC
ZWmPxMFDTWwwcPALj76zSHJ/a1HrlxNR3vrxVt738MDRzcrj47jX+CnAdLGQCvjqhDBKKz8h5kzB
ik7pIlK0NjN528XgZwSpHFSLSifubg4Nam6kiw0O+lznth5VuEGrJBDvFBuqoXMcpx8Eov7MkQQJ
aigWSkWKFEywwNKixTXf8hebC+gob5q86z3zF0jejNJoWbjc1eCP/3uVT7VZs40zo67Wsq59Os9e
Y/+VVqtwCMGqPtqZRxUnQRSPGRBT16Qg7BIPBLXBVu592vubfBhpt2KerkA+Tq4QupxcLV4fdmOt
7wTzC6Ehm87kQc//J18+aRSGkDg8Fx1p3CZcYki8ou1/D9JTgDeTH/NH/XVmHFHcypTqJy/PpHAP
mbs8u11trOZIU5pVSciuM2IKIegmbxBQFrL9vlBWi4DnwFZaYJKf4ucHNjLd1VgyXc2e/CF2fifN
qKc1BH6mVkStN6PJzxv4OGrRavfWrVhFNbJgvIyZnG3W2t+gvGtvu2ZN/iflcV1Ve2XkT05lOjlQ
E4/1J9kcEPiSKkgggiiWv3a2Meo4mZ65YWHU2YK7F/W6/UaVGxnEBSoG1InjrYIxUSHnOizH77bJ
kxNvux+/4c7HNC+4qQd6lWyqF4RzkzOu+MH2S+pJ8KgNe3esqyeIQqsFrTqHWwVYRISd3R7Htxu2
5tDxWy2QxMkvUwN3zsQ4k1TD7andBe8SXRyEmH53UrpLTJHpkfVJ8p6/yAaPAA/QP6KGvv+KvvCV
JVVYvlkKEUWCt9tLcxiWHn2g4izXQwwLs1ThjrChClKnwiEevhj9bb4b08iFT6PPwmNnzRKQ3Qah
JfEl1efEYenhHG5lS92SJARrr//Gn3OcvPMOeOZTHsCXb59sqQ0GeISAKGs5YrVZygqbPjFQRX41
nCNthTSoqxbc/bjUsgsalbXhv6/dlzTnkkDBOMpu8BrWajIUD9onF/PQnRmO+vy4ak3hGQBjUGVB
oiDB15zBCv7En+gWTPz9P77xDRnUnYzj2NRIWJFW1rJ40KnpQzL1Flbir7/jUBV/82pXgf/4bXMp
7KbHZK+8F2+8phNlKpjW/36HnBodWY1iZT5LG0no2jnJupIz4fxnAC0Uja8vnw2BZDhlCi7JSICA
m6BDd0+OVe9uyPB7Acr3OXp4pIEsTb8XgKnJhUr9x8qA0e0o/GHvEcCcvfz27RNcKHpwR+E9gEhH
cplVCiSuyaJWrc63LOeVM110M1qRbWkP2XEM5sEPu4LaI6l5cPSpmsF0jtswcfxBO9OiCm0GdYAm
rhtL0LP3BM9+Ktn282Rg1XJbobwHgy4yE9zxedF+jmqWBEAeDYJLAe2Mukhrh+n6+AeYA+a8kxtq
6E3iAaZocY8GgmW9NhkWNvtM9rMyg5tNdnFTJsLFIL+Thk6s97m6KD9BrdQ27ozo2DwisewWTVfv
+FpA8PRsWaUMt6gx7muNvWXXgOLPkxSSsBYhfDsvrtcgmbzWYDnbk8DhCcWfyG1zlrjF0tTZO2LL
TQ4f3wfW5qBjfzqf3B9+GjaEcUTI/Jb/EszhThZ1SyULW5g4oPAKgM3yJR2vcDB2CuY5Pj3odAm9
p5NukQVG7kIN2qUqpuUq1Tz4ogxJdnIy7uQqfxqLzOHKW6lYe0Bvsf6ofhnR0qE4K28r5Tji5Jye
s/xYQ3TuENHPNmPlFkGIWcJRu2oG1xjWiJJlAcnduqfVz9S7R7odSaTxAIAtzgL859xk0aeByE2D
6uIai+DYUgihBq05O4LRlfzxYvTZKS9KCrYHhclQeG96/QayAm+y12j0kzSCG8wWsXT54OeT4mFY
BPaEHe0br2j0kgdAmQfEOwGBF1jKoSjL8C9oPdS5DUT4GFeea4b8OLx/UmNecnjhKtfGHo2umvys
HjHShZS2PHiwEbAWDTGCoh9fc23V8uzyEqoYgxSc7e0fle7adDGCJeXtM/YnVeCL4eGUWOBA8bAA
X41cfkUCPATUnoykmoMxywb9sIvDb3KX6NMP6KNj7cMUvCuSIGnHn+1KB1c9P3siTNtsbzUac+Ha
kx34vtxAPD2+WciDXlcvtKJuYgkH8oiJ7ozocIJxVtjUoe5/HQejFEWwDyY9bpuFXvmaeW34Fxul
c7OgReaObnRTywp02X6KrTFTRpBKgG1FxfqHDzFkW+w0A3TPxQVvVI5jE2CaC6D9LHUbPD4uSR5p
CKMa0jiUnvCp2ugmGdx/h4W2OlIHJ5Q5Iv/0fEU2RS8nXdCxpJQL53+vnG+YKn+iQRUjRwys+HjH
+PIlzCEzPuPfTMOymhTKuB64KA22kUg60XoEIiM+DDMlZh3/rgfYiktcIiTa19rCgGzpqfMN9VK/
UjjRPo8hGbDox6scFZXqWSXi9rlrCrWz+nugXggsicQEUTq5r3SlW28ifIeBy3+/yWH8uAIBRyBy
QWneJeXYPMV8RFYdbJ1h3+V8jqtY02rfQPE9Pxqbv5Cs4GKoJGYfiKJyVIgVQMeGhsAu28TrdDIo
e1UXbVi2MUZsP0mar+KNFFRzvLOzac+CAOZamPLdJ4CCLJ83Fm3gj3J8tu9WAWU2L6Y6/wZb1kjk
bnPookX89BvBZOdkvteQqo9WkqfehlWRBf3qIgeWDXcZzWYFqc1brU9/ge0HdN9/L083n+Utr7Wq
0DQOvyQNKkDxjTSKf4O+rZlOpggiSeAM6bC42a/ZKi1kt4kg7ZDSQn0mBYwf1K/SrTsxgrz9sYd9
Zrl4MlajiWV72CnI3WIwSs5cx8M0euoPLETrgSyNtGBDLlkm26PFqHFHKWL6q75/1M6C7wd++Ewh
F1bTcYGlIoVToNaTzlT191qAY0Iwny8MpM6iYiT4yxD7Q4TP7QWEb0Lts1Ny4CJzwhqEfz/nXxMc
N/fUGj+hJTrmgpSqyr3kxJKE2AT23IhBFT/tmZLgBSHx9/JTEIfjkAWqdYCxcu2M4Q0SE8AR+fh1
gyeq4ns2T0k22D3dX2qtsXuiADo1bnu/MniRBDHU0xJFxNuaTjuH3NnMt0Y7sEeLbBgfj/RDgiWB
OgQrCs9yGvoLzYnSOho2dPvC34XdoB2s+9SImyTZi7kErsIN/XpS2I5kRKI9A7GLEOv5ePERvSuC
l3A2buxvXJVnVBdtRInsHjQHA8fVQxWLmCTyab/HTNWNESmpeFnJmrfF8OWVXm/9ajgvIcFrinNT
nb5+SMPgmOIai5DBqI/nQHWQGNB+SCJwdLdcX7K8+hkLwgX2Lbi+gJLG4AwjM/djUPm+HWc+n/Qh
mKmo1h+GgVIo+gPD1ZHufHzF5nQmPz349A8ZtjEKS1aLXchG7DwHwDEpROmbwyohPG/Df2zL6kJi
1j4r1ujhevaL2OaF2cArVPfv2/WBqBxm5bzt87RrfFi3UHPKgKdIovWoqjGvB+DWVJYiARSt2whm
Fh1V2ZuO03jNQZQ2mWybZti72Gfp8xdfuzqukyYYgyFmN8RDyGfgC+gaksfiEXJJXL9fTl31Ffu8
KEysnGGqaqueMgR/QTE9pakE8pI+5daD0oDDeaXAyu4/TvTu0kmdZxLWFp2vYxnTFbVwmVhPLVmJ
1O51Oa81Fuaf/eibZi0Vlo6ZwBUmcZdHJGyDG/BFMkH0ASLQld2MMygB3WjfEVFDBa0SdzY/Iv5U
nwauDNpGTZbtxg1rJJnOGe5LtRB4jUJkEdq0SaYS3cV6o36cDfq2UvJ/t/97ssXODI/S96Gz3d4a
cmhcCkQLmVAXRPst1ZtTvMFJDxI=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
