// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Oct  9 13:56:47 2024
// Host        : DESKTOP-B2190GF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ CMEM_sim_netlist.v
// Design      : CMEM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "CMEM,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [4:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [4:0]addra;
  wire clka;
  wire [15:0]douta;
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
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [4:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [4:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.7096 mW" *) 
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
  (* C_INIT_FILE = "CMEM.mem" *) 
  (* C_INIT_FILE_NAME = "CMEM.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "20" *) 
  (* C_READ_DEPTH_B = "20" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
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
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
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
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19392)
`pragma protect data_block
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
fDROXoXGfzqjmCUY
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
