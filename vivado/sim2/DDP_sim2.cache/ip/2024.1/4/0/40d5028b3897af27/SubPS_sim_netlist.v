// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Oct  9 14:02:25 2024
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_8 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19968)
`pragma protect data_block
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
qvraGbes3otoCV3P1Hz9wq5V
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
