-makelib xcelium_lib/xilinx_vip -sv \
  "/home/cad/xilinx-vivado-2019.1/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "/home/cad/xilinx-vivado-2019.1/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "/home/cad/xilinx-vivado-2019.1/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "/home/cad/xilinx-vivado-2019.1/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "/home/cad/xilinx-vivado-2019.1/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "/home/cad/xilinx-vivado-2019.1/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "/home/cad/xilinx-vivado-2019.1/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "/home/cad/xilinx-vivado-2019.1/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "/home/cad/xilinx-vivado-2019.1/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "/home/cad/xilinx-vivado-2019.1/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/home/cad/xilinx-vivado-2019.1/Vivado/2019.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "/home/cad/xilinx-vivado-2019.1/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/home/cad/xilinx-vivado-2019.1/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../ipstatic/src/ClockGen.vhd" \
  "../../../ipstatic/src/SyncAsync.vhd" \
  "../../../ipstatic/src/SyncAsyncReset.vhd" \
  "../../../ipstatic/src/DVI_Constants.vhd" \
  "../../../ipstatic/src/OutputSERDES.vhd" \
  "../../../ipstatic/src/TMDS_Encoder.vhd" \
  "../../../ipstatic/src/rgb2dvi.vhd" \
  "../../../../Zybo-Z7-20-pcam-5c.srcs/sources_1/ip/rgb2dvi_0/sim/rgb2dvi_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

