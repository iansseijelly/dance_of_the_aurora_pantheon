##################################################################################
##
## Project:  Aurora 64B/66B
## Company:  Xilinx
##
##
##
## (c) Copyright 2008 - 2018 Xilinx, Inc. All rights reserved.
##
## This file contains confidential and proprietary information
## of Xilinx, Inc. and is protected under U.S. and
## international copyright and other intellectual property
## laws.
##
## DISCLAIMER
## This disclaimer is not a license and does not grant any
## rights to the materials distributed herewith. Except as
## otherwise provided in a valid license issued to you by
## Xilinx, and to the maximum extent permitted by applicable
## law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
## WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
## AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
## BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
## INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
## (2) Xilinx shall not be liable (whether in contract or tort,
## including negligence, or under any other theory of
## liability) for any loss or damage of any kind or nature
## related to, arising under or in connection with these
## materials, including for any direct, or any indirect,
## special, incidental, or consequential loss or damage
## (including loss of data, profits, goodwill, or any type of
## loss or damage suffered as a result of any action brought
## by a third party) even if such damage or loss was
## reasonably foreseeable or Xilinx had been advised of the
## possibility of the same.
##
## CRITICAL APPLICATIONS
## Xilinx products are not designed or intended to be fail-
## safe, or for use in any application requiring fail-safe
## performance, such as life-support or safety devices or
## systems, Class III medical devices, nuclear facilities,
## applications related to the deployment of airbags, or any
## other applications that could lead to death, personal
## injury, or severe property or environmental damage
## (individually and collectively, "Critical
## Applications"). Customer assumes the sole risk and
## liability of any use of Xilinx products in Critical
## Applications, subject only to applicable laws and
## regulations governing limitations on product liability.
##
## THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
## PART OF THIS FILE AT ALL TIMES.
##
###################################################################################################
##
##  aurora_64b66b_0_exdes
##
##  Description: This is the example design constraints file for a 4 lane Aurora
##               core.
##               This is example design xdc.
##               Note: User need to set proper IO standards for the LOC's mentioned below.
###################################################################################################

#  # create clock constraints for init_clk
#  create_clock -name init_clk_in -period 4.000	 [get_ports INIT_CLK_P]
#  set_clock_groups -asynchronous -group [get_clocks init_clk_in -include_generated_clocks]

#  # Reference clock contraint for GTX
#  create_clock  -name gt_refclk1_in -period 6.400	 [get_ports GTYQ0_P]
#  set_clock_groups -asynchronous -group [get_clocks gt_refclk1_in -include_generated_clocks]

#  # false path constrints for example design paths
#  set_false_path -to [get_pins -hier *aurora_64b66b_0_cdc_to*/D]
#  # Reference clock location
#  set_property LOC AW9 [get_ports GTYQ0_P]
#  set_property LOC AW8 [get_ports GTYQ0_N]


################################################################################

#####################################################################################################
##Note: User should add LOC based upon the board
#       Below LOC's are place holders and need to be changed as per the device and board
#set_property LOC D17 [get_ports INIT_CLK_P]
#set_property LOC D18 [get_ports INIT_CLK_N]
#set_property LOC G19 [get_ports RESET]
#set_property LOC K18 [get_ports PMA_INIT]

#set_property LOC A20 [get_ports CHANNEL_UP]
#set_property LOC A17 [get_ports LANE_UP[0]]
#set_property LOC A16 [get_ports LANE_UP[1]]
#set_property LOC B20 [get_ports LANE_UP[2]]
#set_property LOC C20  [get_ports LANE_UP[3]]
#set_property LOC Y15 [get_ports HARD_ERR]
#set_property LOC AH10 [get_ports SOFT_ERR]
#set_property LOC AD16 [get_ports DATA_ERR_COUNT[0]]
#set_property LOC Y19 [get_ports DATA_ERR_COUNT[1]]
#set_property LOC Y18 [get_ports DATA_ERR_COUNT[2]]
#set_property LOC AA18 [get_ports DATA_ERR_COUNT[3]]
#set_property LOC AB18 [get_ports DATA_ERR_COUNT[4]]
#set_property LOC AB19 [get_ports DATA_ERR_COUNT[5]]
#set_property LOC AC19 [get_ports DATA_ERR_COUNT[6]]
#set_property LOC AB17 [get_ports DATA_ERR_COUNT[7]]


##Note: User should add IOSTANDARD based upon the board
#       Below IOSTANDARD's are place holders and need to be changed as per the device and board
#set_property IOSTANDARD LVDS_25 [get_ports INIT_CLK_P]
#set_property IOSTANDARD LVDS_25 [get_ports INIT_CLK_N]
#set_property IOSTANDARD LVCMOS18 [get_ports RESET]
#set_property IOSTANDARD LVCMOS18 [get_ports PMA_INIT]

#set_property IOSTANDARD LVCMOS18 [get_ports CHANNEL_UP]
#set_property IOSTANDARD LVCMOS18 [get_ports LANE_UP[0]]
#set_property IOSTANDARD LVCMOS18 [get_ports LANE_UP[1]]
#set_property IOSTANDARD LVCMOS18 [get_ports LANE_UP[2]]
#set_property IOSTANDARD LVCMOS18  [get_ports LANE_UP[3]]
#set_property IOSTANDARD LVCMOS18 [get_ports HARD_ERR]
#set_property IOSTANDARD LVCMOS18 [get_ports SOFT_ERR]
#set_property IOSTANDARD LVCMOS18 [get_ports DATA_ERR_COUNT[0]]
#set_property IOSTANDARD LVCMOS18 [get_ports DATA_ERR_COUNT[1]]
#set_property IOSTANDARD LVCMOS18 [get_ports DATA_ERR_COUNT[2]]
#set_property IOSTANDARD LVCMOS18 [get_ports DATA_ERR_COUNT[3]]
#set_property IOSTANDARD LVCMOS18 [get_ports DATA_ERR_COUNT[4]]
#set_property IOSTANDARD LVCMOS18 [get_ports DATA_ERR_COUNT[5]]
#set_property IOSTANDARD LVCMOS18 [get_ports DATA_ERR_COUNT[6]]
#set_property IOSTANDARD LVCMOS18 [get_ports DATA_ERR_COUNT[7]]



#------------------------------------------------------------------------------
#  (c) Copyright 2013 Xilinx, Inc. All rights reserved.
#
#  This file contains confidential and proprietary information
#  of Xilinx, Inc. and is protected under U.S. and
#  international copyright and other intellectual property
#  laws.
#
#  DISCLAIMER
#  This disclaimer is not a license and does not grant any
#  rights to the materials distributed herewith. Except as
#  otherwise provided in a valid license issued to you by
#  Xilinx, and to the maximum extent permitted by applicable
#  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
#  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
#  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
#  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
#  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
#  (2) Xilinx shall not be liable (whether in contract or tort,
#  including negligence, or under any other theory of
#  liability) for any loss or damage of any kind or nature
#  related to, arising under or in connection with these
#  materials, including for any direct, or any indirect,
#  special, incidental, or consequential loss or damage
#  (including loss of data, profits, goodwill, or any type of
#  loss or damage suffered as a result of any action brought
#  by a third party) even if such damage or loss was
#  reasonably foreseeable or Xilinx had been advised of the
#  possibility of the same.
#
#  CRITICAL APPLICATIONS
#  Xilinx products are not designed or intended to be fail-
#  safe, or for use in any application requiring fail-safe
#  performance, such as life-support or safety devices or
#  systems, Class III medical devices, nuclear facilities,
#  applications related to the deployment of airbags, or any
#  other applications that could lead to death, personal
#  injury, or severe property or environmental damage
#  (individually and collectively, "Critical
#  Applications"). Customer assumes the sole risk and
#  liability of any use of Xilinx products in Critical
#  Applications, subject only to applicable laws and
#  regulations governing limitations on product liability.
#
#  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
#  PART OF THIS FILE AT ALL TIMES.
#------------------------------------------------------------------------------


# #------------------------------------------------------------------------------
# # Interlaken example design-level XDC file
# # ----------------------------------------------------------------------------------------------------------------------
# create_clock -period 10.000 [get_ports init_clk]
# set_property IOSTANDARD LVCMOS18 [get_ports init_clk]
# create_clock -period 5.120 [get_ports gt_ref_clk0_p]
# #set_property IOSTANDARD DIFF_SSTL15 [get_ports gt_ref_clk0_n]
# #set_property IOSTANDARD DIFF_SSTL15 [get_ports gt_ref_clk0_p]

# ###Constraints to fix the ILKN core Location
# #set_property LOC ILKNE4_X1Y3 [get_cells DUT/inst/i_ilkn_top_inst/ilkn_inst]
# set_false_path -to [get_pins DUT/inst/i_ilkn_top_inst/*/CTL_RX_FORCE_RESYNC]
# set_false_path -to [get_pins DUT/inst/i_ilkn_top_inst/*/CTL_TX_RLIM_ENABLE]

# set_max_delay -from [get_clocks -of_objects [get_pins i_CLK_GEN/inst/mmcme4_adv_inst/CLKOUT0]] -to [get_clocks -of_objects [get_pins DUT/inst/i_interlaken_gtwiz_userclk_tx_inst/gen_gtwiz_userclk_tx_main.bufg_gt_usrclk_inst/O]] 6.0
# set_max_delay -from [get_clocks -of_objects [get_pins DUT/inst/i_interlaken_gtwiz_userclk_tx_inst/gen_gtwiz_userclk_tx_main.bufg_gt_usrclk_inst/O]] -to [get_clocks -of_objects [get_pins i_CLK_GEN/inst/mmcme4_adv_inst/CLKOUT0]] 6.0










# set_false_path -to [get_pins -leaf -of_objects [get_cells -hier *cdc_to* -filter {is_sequential}] -filter {NAME=~*ilkn_cdc*/*/D}]

# ### These are sample constraints, please use correct constraints for your device
# ### As per GT recommendation, ref_clk should be connected to the middle quad.

#    ### User needs to uncomment the below line and based on ILKN core location and GT group selected, change the gt_ref_clk pin location accordingly.
#    #set_property PACKAGE_PIN AC9 [get_ports gt_ref_clk0_p]


#   ### For init_clk input pin assignment, If single ended clock is not available on board, user has to instantiate IBUFDS to covert differential clock to
#   ### single ended clock and make the necessary changes for the clock mapping.
# ### Change these IO Loc XDC constraints as per your board and device
#   #set_property PACKAGE_PIN AM12 [get_ports init_clk]
#   #set_property PACKAGE_PIN AG12 [get_ports sys_reset]
#   #set_property PACKAGE_PIN AJ14 [get_ports lbus_tx_rx_restart_in]
#   #set_property LOC AR12 [get_ports tx_done_led]
#   #set_property LOC AR13 [get_ports tx_busy_led]
#   #set_property LOC AM9 [get_ports tx_fail_led]
#   #set_property LOC AN8 [get_ports rx_gt_locked_led]
#   #set_property LOC AP8 [get_ports rx_aligned_led]
#   #set_property LOC AP10 [get_ports rx_done_led]
#   #set_property LOC AR10 [get_ports rx_failed_led]
#   #set_property LOC AR11 [get_ports rx_busy_led]



# ### Push Buttons
# set_property IOSTANDARD LVCMOS18 [get_ports sys_reset]
# set_property IOSTANDARD LVCMOS18 [get_ports lbus_tx_rx_restart_in]

# ### Output as LEDs
# set_property IOSTANDARD LVCMOS18 [get_ports tx_done_led]
# ##
# set_property IOSTANDARD LVCMOS18 [get_ports tx_busy_led]
# ##
# set_property IOSTANDARD LVCMOS18 [get_ports tx_fail_led]
# ##
# set_property IOSTANDARD LVCMOS18 [get_ports rx_gt_locked_led]
# ##
# set_property IOSTANDARD LVCMOS18 [get_ports rx_aligned_led]
# ##
# set_property IOSTANDARD LVCMOS18 [get_ports rx_done_led]
# ##
# set_property IOSTANDARD LVCMOS18 [get_ports rx_failed_led]
# ##
# set_property IOSTANDARD LVCMOS18 [get_ports rx_busy_led]

# Bitstream Generation for QSPI
set_property CONFIG_VOLTAGE 1.8 [current_design]
# set_property BITSTREAM.CONFIG.CONFIGFALLBACK Enable    [current_design]                  ;# Golden image is the fall back image if  new bitstream is corrupted.
# set_property BITSTREAM.CONFIG.EXTMASTERCCLK_EN disable [current_design]
# set_property BITSTREAM.CONFIG.CONFIGRATE 63.8          [current_design]
#set_property BITSTREAM.CONFIG.CONFIGRATE 85.0          [current_design]                 ;# Customer can try but may not be reliable over all conditions.
# set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4           [current_design]
# set_property BITSTREAM.GENERAL.COMPRESS TRUE           [current_design]
# set_property BITSTREAM.CONFIG.SPI_FALL_EDGE YES        [current_design]
# set_property BITSTREAM.CONFIG.SPI_32BIT_ADDR Yes       [current_design]
# set_property BITSTREAM.CONFIG.UNUSEDPIN Pullup         [current_design]

#
# Power Constraint to warn User if Design will possibly be over cards power limit, this assume the 2x4 PCIe AUX power is connected to the board.
#

set_property -dict {PACKAGE_PIN AV19 IOSTANDARD LVDS} [get_ports USER_SI570_CLOCK_N]
set_property -dict {PACKAGE_PIN AU19 IOSTANDARD LVDS} [get_ports USER_SI570_CLOCK_P]

#
set_property PACKAGE_PIN M10 [get_ports MGT_SI570_CLOCK0_N]
set_property PACKAGE_PIN M11 [get_ports MGT_SI570_CLOCK0_P]

set_property PACKAGE_PIN T10 [get_ports MGT_SI570_CLOCK1_N]
set_property PACKAGE_PIN T11 [get_ports MGT_SI570_CLOCK1_P]

# set_property PACKAGE_PIN K10 [get_ports QSFP0_CLOCK_N     ]; # Bank 231 Net "QSFP0_CLOCK_N"        - MGTREFCLK1N_231
# set_property PACKAGE_PIN K11 [get_ports QSFP0_CLOCK_P     ]; # Bank 231 Net "QSFP0_CLOCK_P"        - MGTREFCLK1P_231

# set_property -dict {PACKAGE_PIN AT20 IOSTANDARD LVCMOS12       } [get_ports QSFP0_FS[0]       ]; # Bank 64 VCCO - VCC1V2 Net "QSFP0_FS0"           - IO_L10P_T1U_N6_QBC_AD4P_64
# set_property -dict {PACKAGE_PIN AU22 IOSTANDARD LVCMOS12       } [get_ports QSFP0_FS[1]       ]; # Bank 64 VCCO - VCC1V2 Net "QSFP0_FS1"           - IO_L9N_T1L_N5_AD12N_64
# set_property -dict {PACKAGE_PIN AT22 IOSTANDARD LVCMOS12       } [get_ports QSFP0_REFCLK_RESET]; # Bank 64 VCCO - VCC1V2 Net "QSFP0_REFCLK_RESET"  - IO_L9P_T1L_N4_AD12P_64

# set_property PACKAGE_PIN P10 [get_ports QSFP1_CLOCK_N      ]; # Bank 230 Net "QSFP1_CLOCK_N"        - MGTREFCLK1N_230
# set_property PACKAGE_PIN P11 [get_ports QSFP1_CLOCK_P      ]; # Bank 230 Net "QSFP1_CLOCK_P"        - MGTREFCLK1P_230

# set_property -dict {PACKAGE_PIN AR22 IOSTANDARD LVCMOS12       } [get_ports QSFP1_FS[0]       ]; # Bank 64 VCCO - VCC1V2 Net "QSFP1_FS0"           - IO_L8P_T1L_N2_AD5P_64
# set_property -dict {PACKAGE_PIN AU20 IOSTANDARD LVCMOS12       } [get_ports QSFP1_FS[1]       ]; # Bank 64 VCCO - VCC1V2 Net "QSFP1_FS1"           - IO_L7N_T1L_N1_QBC_AD13N_64
# set_property -dict {PACKAGE_PIN AR21 IOSTANDARD LVCMOS12       } [get_ports QSFP1_REFCLK_RESET]; # Bank 64 VCCO - VCC1V2 Net "QSFP1_REFCLK_RESET"  - IO_L8N_T1L_N3_AD5N_64

set_property PACKAGE_PIN N4 [get_ports QSFP0_RX1_P]
set_property PACKAGE_PIN N3 [get_ports QSFP0_RX1_N]
set_property PACKAGE_PIN N9 [get_ports QSFP0_TX1_P]
set_property PACKAGE_PIN N8 [get_ports QSFP0_TX1_N]
set_property PACKAGE_PIN M2 [get_ports QSFP0_RX2_P]
set_property PACKAGE_PIN M1 [get_ports QSFP0_RX2_N]
set_property PACKAGE_PIN M7 [get_ports QSFP0_TX2_P]
set_property PACKAGE_PIN M6 [get_ports QSFP0_TX2_N]
set_property PACKAGE_PIN L4 [get_ports QSFP0_RX3_P]
set_property PACKAGE_PIN L3 [get_ports QSFP0_RX3_N]
set_property PACKAGE_PIN L9 [get_ports QSFP0_TX3_P]
set_property PACKAGE_PIN L8 [get_ports QSFP0_TX3_N]
set_property PACKAGE_PIN K2 [get_ports QSFP0_RX4_P]
set_property PACKAGE_PIN K1 [get_ports QSFP0_RX4_N]
set_property PACKAGE_PIN K7 [get_ports QSFP0_TX4_P]
set_property PACKAGE_PIN K6 [get_ports QSFP0_TX4_N]
set_property PACKAGE_PIN U4 [get_ports QSFP1_RX1_P]
set_property PACKAGE_PIN U3 [get_ports QSFP1_RX1_N]
set_property PACKAGE_PIN U9 [get_ports QSFP1_TX1_P]
set_property PACKAGE_PIN U8 [get_ports QSFP1_TX1_N]
set_property PACKAGE_PIN T2 [get_ports QSFP1_RX2_P]
set_property PACKAGE_PIN T1 [get_ports QSFP1_RX2_N]
set_property PACKAGE_PIN T7 [get_ports QSFP1_TX2_P]
set_property PACKAGE_PIN T6 [get_ports QSFP1_TX2_N]
set_property PACKAGE_PIN R4 [get_ports QSFP1_RX3_P]
set_property PACKAGE_PIN R3 [get_ports QSFP1_RX3_N]
set_property PACKAGE_PIN R9 [get_ports QSFP1_TX3_P]
set_property PACKAGE_PIN R8 [get_ports QSFP1_TX3_N]
set_property PACKAGE_PIN P2 [get_ports QSFP1_RX4_P]
set_property PACKAGE_PIN P1 [get_ports QSFP1_RX4_N]
set_property PACKAGE_PIN P7 [get_ports QSFP1_TX4_P]
set_property PACKAGE_PIN P6 [get_ports QSFP1_TX4_N]












create_clock -period 6.400 -name MGT_SI570_CLOCK0_P -waveform {0.000 3.200} [get_ports MGT_SI570_CLOCK0_P]
create_clock -period 6.400 -name MGT_SI570_CLOCK1_P -waveform {0.000 3.200} [get_ports MGT_SI570_CLOCK1_P]

create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 4096 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list i_CLK_GEN_TOP/inst/clk_out1_p]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 2 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {state[0]} {state[1]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA [get_debug_ports u_ila_0/probe1]
set_property port_width 32 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {counter[0]} {counter[1]} {counter[2]} {counter[3]} {counter[4]} {counter[5]} {counter[6]} {counter[7]} {counter[8]} {counter[9]} {counter[10]} {counter[11]} {counter[12]} {counter[13]} {counter[14]} {counter[15]} {counter[16]} {counter[17]} {counter[18]} {counter[19]} {counter[20]} {counter[21]} {counter[22]} {counter[23]} {counter[24]} {counter[25]} {counter[26]} {counter[27]} {counter[28]} {counter[29]} {counter[30]} {counter[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 1 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list exdes_reset]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 1 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list locked]]
create_debug_core u_ila_1 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_1]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_1]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_1]
set_property C_DATA_DEPTH 4096 [get_debug_cores u_ila_1]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_1]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_1]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_1]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_1]
set_property port_width 1 [get_debug_ports u_ila_1/clk]
connect_debug_port u_ila_1/clk [get_nets [list aurora_example_0/aurora_64b66b_0_block_i/clock_module_i/ultrascale_tx_userclk_1/gen_gtwiz_userclk_tx_main.bufg_gt_usrclk_inst_0]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe0]
set_property port_width 4 [get_debug_ports u_ila_1/probe0]
connect_debug_port u_ila_1/probe0 [get_nets [list {aurora_example_0/aurora_64b66b_0_block_i/lane_up_i[3]} {aurora_example_0/aurora_64b66b_0_block_i/lane_up_i[2]} {aurora_example_0/aurora_64b66b_0_block_i/lane_up_i[1]} {aurora_example_0/aurora_64b66b_0_block_i/lane_up_i[0]}]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe1]
set_property port_width 1 [get_debug_ports u_ila_1/probe1]
connect_debug_port u_ila_1/probe1 [get_nets [list channel_up_0]]
create_debug_core u_ila_2 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_2]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_2]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_2]
set_property C_DATA_DEPTH 4096 [get_debug_cores u_ila_2]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_2]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_2]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_2]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_2]
set_property port_width 1 [get_debug_ports u_ila_2/clk]
connect_debug_port u_ila_2/clk [get_nets [list aurora_example_1/aurora_64b66b_0_block_i/clock_module_i/ultrascale_tx_userclk_1/gen_gtwiz_userclk_tx_main.bufg_gt_usrclk_inst_0]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_2/probe0]
set_property port_width 4 [get_debug_ports u_ila_2/probe0]
connect_debug_port u_ila_2/probe0 [get_nets [list {aurora_example_1/aurora_64b66b_0_block_i/lane_up_i[3]} {aurora_example_1/aurora_64b66b_0_block_i/lane_up_i[2]} {aurora_example_1/aurora_64b66b_0_block_i/lane_up_i[1]} {aurora_example_1/aurora_64b66b_0_block_i/lane_up_i[0]}]]
create_debug_port u_ila_2 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_2/probe1]
set_property port_width 1 [get_debug_ports u_ila_2/probe1]
connect_debug_port u_ila_2/probe1 [get_nets [list channel_up_1]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_2_gen_gtwiz_userclk_tx_main.bufg_gt_usrclk_inst_0]
