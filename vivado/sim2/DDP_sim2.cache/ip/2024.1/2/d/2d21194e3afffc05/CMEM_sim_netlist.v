// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Mon Oct  7 17:39:00 2024
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [6:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [6:0]addra;
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
  wire [6:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [6:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "7" *) 
  (* C_ADDRB_WIDTH = "7" *) 
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
  (* C_READ_DEPTH_A = "128" *) 
  (* C_READ_DEPTH_B = "128" *) 
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
  (* C_WRITE_DEPTH_A = "128" *) 
  (* C_WRITE_DEPTH_B = "128" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_8 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[6:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[6:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19520)
`pragma protect data_block
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
pK09Bhl68BEgjNM+Oxc+bEbxmGIBgOTTfxM=
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
