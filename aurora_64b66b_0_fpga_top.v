module aurora_64b66b_0_fpga_top (

    // QSFP Ports
    input          QSFP0_RX1_N,
    input          QSFP0_RX1_P,
    input          QSFP0_RX2_N,
    input          QSFP0_RX2_P,
    input          QSFP0_RX3_N,
    input          QSFP0_RX3_P,
    input          QSFP0_RX4_N,
    input          QSFP0_RX4_P,

    output         QSFP0_TX1_N,
    output         QSFP0_TX1_P,
    output         QSFP0_TX2_N,
    output         QSFP0_TX2_P,
    output         QSFP0_TX3_N,
    output         QSFP0_TX3_P,
    output         QSFP0_TX4_N,
    output         QSFP0_TX4_P,

    input          QSFP1_RX1_N,
    input          QSFP1_RX1_P,
    input          QSFP1_RX2_N,
    input          QSFP1_RX2_P,
    input          QSFP1_RX3_N,
    input          QSFP1_RX3_P,
    input          QSFP1_RX4_N,
    input          QSFP1_RX4_P,

    output         QSFP1_TX1_N,
    output         QSFP1_TX1_P,
    output         QSFP1_TX2_N,
    output         QSFP1_TX2_P,
    output         QSFP1_TX3_N,
    output         QSFP1_TX3_P,
    output         QSFP1_TX4_N,
    output         QSFP1_TX4_P, 

    // QSFP0 GT_REF 156Hz clock
    input   MGT_SI570_CLOCK0_N,
    input   MGT_SI570_CLOCK0_P,
    // QSFP1 GT_REF 156Hz clock
    input   MGT_SI570_CLOCK1_N,
    input   MGT_SI570_CLOCK1_P,

    // Global sysclock
    input  USER_SI570_CLOCK_N,
    input  USER_SI570_CLOCK_P
);

localparam GSR = 2'b00;
localparam RST = 2'b01;
localparam WUP = 2'b10;
localparam RUN = 2'b11;

// Generating the 250MHz clock for the Aurora core
// TODO: make it differential output in vivado
clk_wiz_0 i_CLK_GEN_TOP (
    .clk_in1_p    (USER_SI570_CLOCK_P), 
    .clk_in1_n    (USER_SI570_CLOCK_N),
    .clk_out1_p  (init_clk),
    .locked     (locked)
);

// No differential output in clk wiz?

// global signals
reg exdes_reset; 
reg pma_init_r; 
//DUT0 Wires

wire hard_err_0;
wire soft_err_0;

wire [3:0] lane_up_0;
wire channel_up_0;

wire [7:0] data_err_count_0;

//DUT1 Wires

wire hard_err_1;
wire soft_err_1;

wire [3:0] lane_up_1;
wire channel_up_1;

wire [7:0] data_err_count_1;

//_______________________Instantiate Dut 0 ________________
 
aurora_64b66b_0_exdes aurora_example_0 (
    // User IO
    .RESET(exdes_reset),
    // Error signals from Aurora    
    .HARD_ERR		(hard_err_0),
    .SOFT_ERR		(soft_err_0),

    // Status Signals
    .LANE_UP        (lane_up_0),
    .CHANNEL_UP		(channel_up_0),

    // clock and reset
    .INIT_CLK_IN		(init_clk),
    .PMA_INIT			(pma_init_r),

    // Clock Signals
    .GTYQ0_P		(MGT_SI570_CLOCK0_P),
    .GTYQ0_N		(MGT_SI570_CLOCK0_N),

    // GT I/O
    .RXP			({QSFP0_RX4_P, QSFP0_RX3_P, QSFP0_RX2_P, QSFP0_RX1_P}),
    .RXN			({QSFP0_RX4_N, QSFP0_RX3_N, QSFP0_RX2_N, QSFP0_RX1_N}),

    .TXP			({QSFP0_TX4_P, QSFP0_TX3_P, QSFP0_TX2_P, QSFP0_TX1_P}),
    .TXN			({QSFP0_TX4_N, QSFP0_TX3_N, QSFP0_TX2_N, QSFP0_TX1_N}),

    // Error signals from the frame checker
    .DATA_ERR_COUNT		(data_err_count_0)
 );

//_______________________Instantiate Dut 1 ________________
 
aurora_64b66b_0_exdes aurora_example_1 (
    // User IO
    .RESET(exdes_reset),
    // Error signals from Aurora    
    .HARD_ERR			(hard_err_1),
    .SOFT_ERR			(soft_err_1),

    // Status Signals
    .LANE_UP        (lane_up_1),
    .CHANNEL_UP		(channel_up_1),

    // clock and reset
    .INIT_CLK_IN	(init_clk),
    .PMA_INIT			(pma_init_r),

    // Clock Signals
    .GTYQ0_P		(MGT_SI570_CLOCK1_P),
    .GTYQ0_N		(MGT_SI570_CLOCK1_N),

    // GT I/O
    .RXP			({QSFP1_RX4_P, QSFP1_RX3_P, QSFP1_RX2_P, QSFP1_RX1_P}),
    .RXN			({QSFP1_RX4_N, QSFP1_RX3_N, QSFP1_RX2_N, QSFP1_RX1_N}),

    .TXP			({QSFP1_TX4_P, QSFP1_TX3_P, QSFP1_TX2_P, QSFP1_TX1_P}),
    .TXN			({QSFP1_TX4_N, QSFP1_TX3_N, QSFP1_TX2_N, QSFP1_TX1_N}),

    // Error signals from the frame checker
    .DATA_ERR_COUNT		(data_err_count_1)
 );
 
// counter logic
(* mark_debug = "true", keep = "true"*) reg [31:0] counter;   
wire counter_en;

assign counter_en =  flag_txtvalid1 && ~flag_rxtvalid2;

reg [7:0] gsr_counter;
reg gsr_counter_en;
 
(* mark_debug = "true", keep = "true"*) reg [1:0] state;
reg [1:0] next_state;
wire reset = ~locked; 

reg flag_rxtvalid1 = 1'b0;
reg flag_rxtvalid2 = 1'b0;
reg flag_txtvalid1 = 1'b0;   

// TODO: confirm which clock domain to use
always @(posedge init_clk) begin
	// global reset asserted by clk_wiz unlocked
	if (reset) begin
		counter <= 0;
		gsr_counter <= 0;
		state <= GSR;
	end else begin
		state <= next_state;
		gsr_counter <= gsr_counter + gsr_counter_en;
		counter <= counter + counter_en;
	end
end

always @(*) begin
	case (state)
		GSR: begin
			gsr_counter_en = 1'b1;
			pma_init_r = 1'b1;
			exdes_reset = 1'b1;
			if (gsr_counter >= 160) begin
				next_state = RST;
			end else begin
				next_state = GSR;
			end
		end 
		RST: begin
			pma_init_r = 1'b0;
			exdes_reset = 1'b1;
            //Verify this here
            if (gsr_counter >= 200) begin
                next_state = WUP;
            end else begin
                next_state = RST;
            end
		end
        WUP: begin
            exdes_reset = 1'b0;
            gsr_counter_en = 1'b0;
            if (channel_up_1 && channel_up_0) begin
                next_state = RUN;
            end else begin
                next_state = WUP;
            end
        end
        RUN: begin
            next_state = RUN;
        end
		default: begin
			gsr_counter_en = 1'b0;
			pma_init_r = 1'b0;
			exdes_reset = 1'b0;
			next_state = GSR;
		end
	endcase
end

// asserting flags
always @(posedge aurora_example_0.rx_tvalid_r)
begin
	flag_rxtvalid1 = 1'b1;
end

always @(posedge aurora_example_1.rx_tvalid_r)
begin
	flag_rxtvalid2 = 1'b1;
end

always @(posedge aurora_example_0.tx_tvalid_r)
begin
	flag_txtvalid1 = 1'b1;
end

endmodule