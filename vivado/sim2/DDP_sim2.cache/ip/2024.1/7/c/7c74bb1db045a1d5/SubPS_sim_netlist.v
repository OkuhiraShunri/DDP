// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Mon Oct  7 17:44:48 2024
// Host        : DESKTOP-B2190GF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SubPS_sim_netlist.v
// Design      : SubPS
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "SubPS,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_8 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20032)
`pragma protect data_block
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
GNoy7aBGt32RILtah3EjQAt+mAPgZFFPAw==
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
