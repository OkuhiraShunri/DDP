// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Oct  9 14:01:10 2024
// Host        : DESKTOP-B2190GF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ PS_sim_netlist.v
// Design      : PS
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "PS,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [4:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [16:0]douta;

  wire [4:0]addra;
  wire clka;
  wire [16:0]douta;
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
  wire [16:0]NLW_U0_doutb_UNCONNECTED;
  wire [4:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [4:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [16:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.751199 mW" *) 
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
  (* C_INIT_FILE = "PS.mem" *) 
  (* C_INIT_FILE_NAME = "PS.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "20" *) 
  (* C_READ_DEPTH_B = "20" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "17" *) 
  (* C_READ_WIDTH_B = "17" *) 
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
  (* C_WRITE_WIDTH_A = "17" *) 
  (* C_WRITE_WIDTH_B = "17" *) 
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
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[16:0]),
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[16:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19344)
`pragma protect data_block
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
zilxIklTic71r+tnCn8XMtYgkGQ8
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
