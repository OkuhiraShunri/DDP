// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Mon Oct  7 17:44:48 2024
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [5:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [0:0]douta;

  wire [5:0]addra;
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
  wire [5:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [5:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "6" *) 
  (* C_ADDRB_WIDTH = "6" *) 
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
  (* C_READ_DEPTH_A = "64" *) 
  (* C_READ_DEPTH_B = "64" *) 
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
  (* C_WRITE_DEPTH_A = "64" *) 
  (* C_WRITE_DEPTH_B = "64" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "1" *) 
  (* C_WRITE_WIDTH_B = "1" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  SubPS_blk_mem_gen_v8_4_8 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[5:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[5:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19936)
`pragma protect data_block
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
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
