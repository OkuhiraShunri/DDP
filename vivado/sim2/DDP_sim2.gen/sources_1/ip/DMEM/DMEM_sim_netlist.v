// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Mon Oct  7 17:13:46 2024
// Host        : DESKTOP-B2190GF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/OkuhiraShunri/Documents/verilog/DDP/vivado/sim2/DDP_sim2.gen/sources_1/ip/DMEM/DMEM_sim_netlist.v
// Design      : DMEM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "DMEM,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module DMEM
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [15:0]dina;
  wire [15:0]douta;
  wire [0:0]wea;
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
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.51805 mW" *) 
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
  (* C_INIT_FILE = "DMEM.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
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
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  DMEM_blk_mem_gen_v8_4_8 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
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
        .wea(wea),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18528)
`pragma protect data_block
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
mp5l
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
