// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Oct  9 15:16:03 2024
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
V6c8fmPQCFmBfDaDtYXLWMEX
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
