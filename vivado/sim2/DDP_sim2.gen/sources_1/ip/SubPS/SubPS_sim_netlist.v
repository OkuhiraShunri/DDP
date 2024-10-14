// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Oct  9 15:16:04 2024
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
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
Bgb5Ue/ytyMwuD7iJX29OebmO1E=
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
