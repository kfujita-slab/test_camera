`default_nettype none
`timescale 1ns/1ns

module system_top
    (
        input  wire       sysclk,
        input  wire [3:0] btn,
        input  wire       dphy_clk_lp_n,
        input  wire       dphy_clk_lp_p,
        input  wire [1:0] dphy_data_hs_n,
        input  wire [1:0] dphy_data_hs_p,
        input  wire [1:0] dphy_data_lp_n,
        input  wire [1:0] dphy_data_lp_p,
        input  wire       dphy_hs_clock_clk_n,
        input  wire       dphy_hs_clock_clk_p,
        inout  wire [0:0] cam_gpio_tri_io,
        inout  wire       cam_iic_scl_io,
        inout  wire       cam_iic_sda_io,
        output wire       hdmi_tx_clk_n,
        output wire       hdmi_tx_clk_p,
        output wire [2:0] hdmi_tx_data_n,
        output wire [2:0] hdmi_tx_data_p
    );

    wire        PixelClk;
    wire        SerialClk;
    wire        locked;
    wire        vid_active_video;
    wire [23:0] vid_data;
    wire        vid_hsync;
    wire        vid_vsync;

    system_wrapper bd_inst0
    (
        // input (MIPI)
        .dphy_hs_clock_clk_p(dphy_hs_clock_clk_p),
        .dphy_hs_clock_clk_n(dphy_hs_clock_clk_n),
        .dphy_clk_lp_p(dphy_clk_lp_p),
        .dphy_clk_lp_n(dphy_clk_lp_n),
        .dphy_data_hs_p(dphy_data_hs_p),
        .dphy_data_hs_n(dphy_data_hs_n),
        .dphy_data_lp_p(dphy_data_lp_p),
        .dphy_data_lp_n(dphy_data_lp_n),
        // inout (MIPI)
        .cam_gpio_tri_io(cam_gpio_tri_io),
        .cam_iic_scl_io(cam_iic_scl_io),
        .cam_iic_sda_io(cam_iic_sda_io),
        // output (RGB)
        .PixelClk(PixelClk),
        .SerialClk(SerialClk),
        .locked(locked),
        .vid_active_video(vid_active_video),
        .vid_data(vid_data),
        .vid_hsync(vid_hsync),
        .vid_vsync(vid_vsync)
    );

    rgb2dvi_0 rgb2dvi_inst0
    (
        .TMDS_Clk_p(hdmi_tx_clk_p),
        .TMDS_Clk_n(hdmi_tx_clk_n),
        .TMDS_Data_p(hdmi_tx_data_p),
        .TMDS_Data_n(hdmi_tx_data_n),
        .aRst_n(locked),
        .vid_pData(vid_data),
        .vid_pVDE(vid_active_video),
        .vid_pHSync(vid_hsync),
        .vid_pVSync(vid_vsync),
        .PixelClk(PixelClk),
        .SerialClk(SerialClk)
    );
endmodule
`default_nettype wire
