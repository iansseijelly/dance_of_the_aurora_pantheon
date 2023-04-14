`timescale 1 ps / 1 fs

module aurora_64b66b_0_fpga_top_tb ();

//*************************Parameter Declarations**************************
localparam          TIME_UNIT  = 1000; // Do not modify this parameter. 
localparam          USR_CLK_PCOUNT  = 210; // Do not modify this parameter. 
localparam       USER_CLK_PERIOD = 2.56*TIME_UNIT;
localparam       SIM_MAX_TIME  = 99999999*TIME_UNIT;//3000000000; //To quit the simulation
localparam       HALF_SIM_MAX_TIME  = SIM_MAX_TIME/2;//3000000000; //To quit the simulation
localparam       CLK_WIZ_PERIOD   = 5*TIME_UNIT; //200 MHz CLK
localparam       CLOCKPERIOD_1 = 6.400	*TIME_UNIT; // 156.25 MHz CLK
localparam       CLOCKPERIOD_2 = 6.400	*TIME_UNIT; 

localparam       INIT_CLOCKPERIOD_1 = 4.000	*TIME_UNIT; // 250 MHz CLK
localparam       INIT_CLOCKPERIOD_2 = 4.000	*TIME_UNIT; 

wire zero_to_one_1_n;
wire zero_to_one_1_p;
wire zero_to_one_2_n;
wire zero_to_one_2_p;
wire zero_to_one_3_n;
wire zero_to_one_3_p;
wire zero_to_one_4_n;
wire zero_to_one_4_p;
wire one_to_zero_1_n;
wire one_to_zero_1_p;
wire one_to_zero_2_n;
wire one_to_zero_2_p;
wire one_to_zero_3_n;
wire one_to_zero_3_p;
wire one_to_zero_4_n;
wire one_to_zero_4_p;

reg mgt_si570_clock0_n;
wire mgt_si570_clock0_p;
reg mgt_si570_clock1_n;
wire mgt_si570_clock1_p;
reg user_si570_clock_n;
wire user_si570_clock_p;

aurora_64b66b_0_fpga_top dut (
    .QSFP0_RX1_N(one_to_zero_1_n),
    .QSFP0_RX1_P(one_to_zero_1_p),
    .QSFP0_RX2_N(one_to_zero_2_n),
    .QSFP0_RX2_P(one_to_zero_2_p),
    .QSFP0_RX3_N(one_to_zero_3_n),
    .QSFP0_RX3_P(one_to_zero_3_p),
    .QSFP0_RX4_N(one_to_zero_4_n),
    .QSFP0_RX4_P(one_to_zero_4_p),
    .QSFP0_TX1_N(zero_to_one_1_n),
    .QSFP0_TX1_P(zero_to_one_1_p),
    .QSFP0_TX2_N(zero_to_one_2_n),
    .QSFP0_TX2_P(zero_to_one_2_p),
    .QSFP0_TX3_N(zero_to_one_3_n),
    .QSFP0_TX3_P(zero_to_one_3_p),
    .QSFP0_TX4_N(zero_to_one_4_n),
    .QSFP0_TX4_P(zero_to_one_4_p),
    .QSFP1_RX1_N(zero_to_one_1_n),
    .QSFP1_RX1_P(zero_to_one_1_p),
    .QSFP1_RX2_N(zero_to_one_2_n),
    .QSFP1_RX2_P(zero_to_one_2_p),
    .QSFP1_RX3_N(zero_to_one_3_n),
    .QSFP1_RX3_P(zero_to_one_3_p),
    .QSFP1_RX4_N(zero_to_one_4_n),
    .QSFP1_RX4_P(zero_to_one_4_p),
    .QSFP1_TX1_N(one_to_zero_1_n),
    .QSFP1_TX1_P(one_to_zero_1_p),
    .QSFP1_TX2_N(one_to_zero_2_n),
    .QSFP1_TX2_P(one_to_zero_2_p),
    .QSFP1_TX3_N(one_to_zero_3_n),
    .QSFP1_TX3_P(one_to_zero_3_p),
    .QSFP1_TX4_N(one_to_zero_4_n),
    .QSFP1_TX4_P(one_to_zero_4_p),

    .MGT_SI570_CLOCK0_N(mgt_si570_clock0_n),
    .MGT_SI570_CLOCK0_P(mgt_si570_clock0_p),
    .MGT_SI570_CLOCK1_N(mgt_si570_clock1_n),
    .MGT_SI570_CLOCK1_P(mgt_si570_clock1_p),
    .USER_SI570_CLOCK_N(user_si570_clock_n),
    .USER_SI570_CLOCK_P(user_si570_clock_p)
);

//*************************Clock Generation**************************

initial mgt_si570_clock0_n = 1'b0; 
always # (CLOCKPERIOD_1/2) mgt_si570_clock0_n = ~mgt_si570_clock0_n;
assign mgt_si570_clock0_p = ~mgt_si570_clock0_n;

initial mgt_si570_clock1_n = 1'b0;
always # (CLOCKPERIOD_2/2) mgt_si570_clock1_n = ~mgt_si570_clock1_n;
assign mgt_si570_clock1_p = ~mgt_si570_clock1_n;

initial user_si570_clock_n = 1'b0;
always # (CLOCKPERIOD_2/2) user_si570_clock_n = ~user_si570_clock_n;
assign user_si570_clock_p = ~user_si570_clock_n;

endmodule