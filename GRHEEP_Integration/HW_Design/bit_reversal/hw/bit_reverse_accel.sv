
module bit_reverse_accel (
	ap_clk,
	ap_rst_n,
	s_axis_TDATA,
	s_axis_TVALID,
	s_axis_TREADY,
	s_axis_TKEEP,
	s_axis_TSTRB,
	s_axis_TLAST,
	m_axis_TDATA,
	m_axis_TVALID,
	m_axis_TREADY,
	m_axis_TKEEP,
	m_axis_TSTRB,
	m_axis_TLAST
);

	parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
	parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
	parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
	parameter    ap_ST_fsm_pp0_stage3 = 4'd8;
	/* verilator lint_off UNUSED */
	input   ap_clk;
	input   ap_rst_n;
	input  [31:0] s_axis_TDATA;
	input   s_axis_TVALID;
	output   s_axis_TREADY;
	input  [3:0] s_axis_TKEEP;
	input  [3:0] s_axis_TSTRB;
	input  [0:0] s_axis_TLAST;
	output  [31:0] m_axis_TDATA;
	output   m_axis_TVALID;
	input   m_axis_TREADY;
	output  [3:0] m_axis_TKEEP;
	output  [3:0] m_axis_TSTRB;
	output  [0:0] m_axis_TLAST;

	reg    ap_rst_n_inv;
	reg    s_axis_TDATA_blk_n;
	(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
	wire    ap_CS_fsm_pp0_stage0;
	wire    ap_block_pp0_stage0;
	wire    ap_CS_fsm_pp0_stage1;
	wire    ap_block_pp0_stage1;
	wire    ap_CS_fsm_pp0_stage2;
	wire    ap_block_pp0_stage2;
	wire    ap_CS_fsm_pp0_stage3;
	wire    ap_block_pp0_stage3;
	reg    m_axis_TDATA_blk_n;
	reg    ap_enable_reg_pp0_iter1;
	reg    ap_block_state1_pp0_stage0_iter0;
	wire    regslice_both_m_axis_V_data_V_U_apdone_blk;
	reg    ap_block_state5_pp0_stage0_iter1;
	reg    ap_block_pp0_stage0_11001;
	reg    ap_block_state2_pp0_stage1_iter0;
	reg    ap_block_pp0_stage1_11001;
	reg    ap_block_state3_pp0_stage2_iter0;
	reg    ap_block_pp0_stage2_11001;
	reg    ap_block_state4_pp0_stage3_iter0;
	reg    ap_block_pp0_stage3_11001;
	reg    ap_block_pp0_stage3_subdone;
	reg    ap_block_pp0_stage0_subdone;
	reg    ap_block_pp0_stage0_01001;
	reg    ap_block_pp0_stage1_01001;
	reg    ap_block_pp0_stage2_01001;
	reg    ap_block_pp0_stage3_01001;
	reg   [3:0] ap_NS_fsm;
	wire    ap_reset_idle_pp0;
	reg    ap_block_pp0_stage1_subdone;
	reg    ap_block_pp0_stage2_subdone;
	reg    ap_idle_pp0;
	wire    ap_enable_pp0;
	wire    regslice_both_s_axis_V_data_V_U_apdone_blk;
	wire   [31:0] s_axis_TDATA_int_regslice;
	wire    s_axis_TVALID_int_regslice;
	reg    s_axis_TREADY_int_regslice;
	wire    regslice_both_s_axis_V_data_V_U_ack_in;
	wire    regslice_both_s_axis_V_keep_V_U_apdone_blk;
	wire   [3:0] s_axis_TKEEP_int_regslice;
	wire    regslice_both_s_axis_V_keep_V_U_vld_out;
	wire    regslice_both_s_axis_V_keep_V_U_ack_in;
	wire    regslice_both_s_axis_V_strb_V_U_apdone_blk;
	wire   [3:0] s_axis_TSTRB_int_regslice;
	wire    regslice_both_s_axis_V_strb_V_U_vld_out;
	wire    regslice_both_s_axis_V_strb_V_U_ack_in;
	wire    regslice_both_s_axis_V_last_V_U_apdone_blk;
	wire   [0:0] s_axis_TLAST_int_regslice;
	wire    regslice_both_s_axis_V_last_V_U_vld_out;
	wire    regslice_both_s_axis_V_last_V_U_ack_in;
	reg   [31:0] m_axis_TDATA_int_regslice;
	reg    m_axis_TVALID_int_regslice;
	wire    m_axis_TREADY_int_regslice;
	wire    regslice_both_m_axis_V_data_V_U_vld_out;
	wire    regslice_both_m_axis_V_keep_V_U_apdone_blk;
	wire   [3:0] m_axis_TKEEP_int_regslice;
	wire    regslice_both_m_axis_V_keep_V_U_ack_in_dummy;
	wire    regslice_both_m_axis_V_keep_V_U_vld_out;
	wire    regslice_both_m_axis_V_strb_V_U_apdone_blk;
	wire   [3:0] m_axis_TSTRB_int_regslice;
	wire    regslice_both_m_axis_V_strb_V_U_ack_in_dummy;
	wire    regslice_both_m_axis_V_strb_V_U_vld_out;
	wire    regslice_both_m_axis_V_last_V_U_apdone_blk;
	reg   [0:0] m_axis_TLAST_int_regslice;
	wire    regslice_both_m_axis_V_last_V_U_ack_in_dummy;
	wire    regslice_both_m_axis_V_last_V_U_vld_out;
	wire    ap_ce_reg;

	// power-on initialization
	/* verilator lint_off STMTDLY */
	initial begin
	#0 ap_CS_fsm = 4'd1;
	#0 ap_enable_reg_pp0_iter1 = 1'b0;
	end

	bit_reverse_accel_regslice_both #(
			.DataWidth( 32 ))
	regslice_both_s_axis_V_data_V_U(
			.ap_clk(ap_clk),
			.ap_rst(ap_rst_n_inv),
			.data_in(s_axis_TDATA),
			.vld_in(s_axis_TVALID),
			.ack_in(regslice_both_s_axis_V_data_V_U_ack_in),
			.data_out(s_axis_TDATA_int_regslice),
			.vld_out(s_axis_TVALID_int_regslice),
			.ack_out(s_axis_TREADY_int_regslice),
			.apdone_blk(regslice_both_s_axis_V_data_V_U_apdone_blk)
	);

	bit_reverse_accel_regslice_both #(
			.DataWidth( 4 ))
	regslice_both_s_axis_V_keep_V_U(
			.ap_clk(ap_clk),
			.ap_rst(ap_rst_n_inv),
			.data_in(s_axis_TKEEP),
			.vld_in(s_axis_TVALID),
			.ack_in(regslice_both_s_axis_V_keep_V_U_ack_in),
			.data_out(s_axis_TKEEP_int_regslice),
			.vld_out(regslice_both_s_axis_V_keep_V_U_vld_out),
			.ack_out(s_axis_TREADY_int_regslice),
			.apdone_blk(regslice_both_s_axis_V_keep_V_U_apdone_blk)
	);

	bit_reverse_accel_regslice_both #(
			.DataWidth( 4 ))
	regslice_both_s_axis_V_strb_V_U(
			.ap_clk(ap_clk),
			.ap_rst(ap_rst_n_inv),
			.data_in(s_axis_TSTRB),
			.vld_in(s_axis_TVALID),
			.ack_in(regslice_both_s_axis_V_strb_V_U_ack_in),
			.data_out(s_axis_TSTRB_int_regslice),
			.vld_out(regslice_both_s_axis_V_strb_V_U_vld_out),
			.ack_out(s_axis_TREADY_int_regslice),
			.apdone_blk(regslice_both_s_axis_V_strb_V_U_apdone_blk)
	);

	bit_reverse_accel_regslice_both #(
			.DataWidth( 1 ))
	regslice_both_s_axis_V_last_V_U(
			.ap_clk(ap_clk),
			.ap_rst(ap_rst_n_inv),
			.data_in(s_axis_TLAST),
			.vld_in(s_axis_TVALID),
			.ack_in(regslice_both_s_axis_V_last_V_U_ack_in),
			.data_out(s_axis_TLAST_int_regslice),
			.vld_out(regslice_both_s_axis_V_last_V_U_vld_out),
			.ack_out(s_axis_TREADY_int_regslice),
			.apdone_blk(regslice_both_s_axis_V_last_V_U_apdone_blk)
	);

	bit_reverse_accel_regslice_both #(
			.DataWidth( 32 ))
	regslice_both_m_axis_V_data_V_U(
			.ap_clk(ap_clk),
			.ap_rst(ap_rst_n_inv),
			.data_in(m_axis_TDATA_int_regslice),
			.vld_in(m_axis_TVALID_int_regslice),
			.ack_in(m_axis_TREADY_int_regslice),
			.data_out(m_axis_TDATA),
			.vld_out(regslice_both_m_axis_V_data_V_U_vld_out),
			.ack_out(m_axis_TREADY),
			.apdone_blk(regslice_both_m_axis_V_data_V_U_apdone_blk)
	);

	bit_reverse_accel_regslice_both #(
			.DataWidth( 4 ))
	regslice_both_m_axis_V_keep_V_U(
			.ap_clk(ap_clk),
			.ap_rst(ap_rst_n_inv),
			.data_in(m_axis_TKEEP_int_regslice),
			.vld_in(m_axis_TVALID_int_regslice),
			.ack_in(regslice_both_m_axis_V_keep_V_U_ack_in_dummy),
			.data_out(m_axis_TKEEP),
			.vld_out(regslice_both_m_axis_V_keep_V_U_vld_out),
			.ack_out(m_axis_TREADY),
			.apdone_blk(regslice_both_m_axis_V_keep_V_U_apdone_blk)
	);

	bit_reverse_accel_regslice_both #(
			.DataWidth( 4 ))
	regslice_both_m_axis_V_strb_V_U(
			.ap_clk(ap_clk),
			.ap_rst(ap_rst_n_inv),
			.data_in(m_axis_TSTRB_int_regslice),
			.vld_in(m_axis_TVALID_int_regslice),
			.ack_in(regslice_both_m_axis_V_strb_V_U_ack_in_dummy),
			.data_out(m_axis_TSTRB),
			.vld_out(regslice_both_m_axis_V_strb_V_U_vld_out),
			.ack_out(m_axis_TREADY),
			.apdone_blk(regslice_both_m_axis_V_strb_V_U_apdone_blk)
	);

	bit_reverse_accel_regslice_both #(
			.DataWidth( 1 ))
	regslice_both_m_axis_V_last_V_U(
			.ap_clk(ap_clk),
			.ap_rst(ap_rst_n_inv),
			.data_in(m_axis_TLAST_int_regslice),
			.vld_in(m_axis_TVALID_int_regslice),
			.ack_in(regslice_both_m_axis_V_last_V_U_ack_in_dummy),
			.data_out(m_axis_TLAST),
			.vld_out(regslice_both_m_axis_V_last_V_U_vld_out),
			.ack_out(m_axis_TREADY),
			.apdone_blk(regslice_both_m_axis_V_last_V_U_apdone_blk)
	);

	always @ (posedge ap_clk) begin
			if (ap_rst_n_inv == 1'b1) begin
					ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
			end else begin
					ap_CS_fsm <= ap_NS_fsm;
			end
	end

	always @ (posedge ap_clk) begin
			if (ap_rst_n_inv == 1'b1) begin
					ap_enable_reg_pp0_iter1 <= 1'b0;
			end else begin
					if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
							ap_enable_reg_pp0_iter1 <= 1'b0;
					end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
							ap_enable_reg_pp0_iter1 <= 1'b1;
					end
			end
	end

	always @ (*) begin
			if (((ap_enable_reg_pp0_iter1 == 1'b0) & (1'b1 == 1'b0))) begin
					ap_idle_pp0 = 1'b1;
			end else begin
					ap_idle_pp0 = 1'b0;
			end
	end

	assign ap_reset_idle_pp0 = 1'b0;

	always @ (*) begin
			if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
					m_axis_TDATA_blk_n = m_axis_TREADY_int_regslice;
			end else begin
					m_axis_TDATA_blk_n = 1'b1;
			end
	end

	always @ (*) begin
			if (((1'b0 == ap_block_pp0_stage3_01001) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
					m_axis_TLAST_int_regslice = 1'd1;
			end else if ((((1'b0 == ap_block_pp0_stage2_01001) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_01001) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_01001) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
					m_axis_TLAST_int_regslice = 1'd0;
			end else begin
					/* verilator lint_off WIDTH */
					m_axis_TLAST_int_regslice = 'bx;
			end
	end

	always @ (*) begin
			if ((((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
					m_axis_TVALID_int_regslice = 1'b1;
			end else begin
					m_axis_TVALID_int_regslice = 1'b0;
			end
	end

	always @ (*) begin
			if ((((1'b0 == ap_block_pp0_stage3) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
					s_axis_TDATA_blk_n = s_axis_TVALID_int_regslice;
			end else begin
					s_axis_TDATA_blk_n = 1'b1;
			end
	end

	always @ (*) begin
			if ((((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
					s_axis_TREADY_int_regslice = 1'b1;
			end else begin
					s_axis_TREADY_int_regslice = 1'b0;
			end
	end

	always @ (*) begin
			case (ap_CS_fsm)
					ap_ST_fsm_pp0_stage0 : begin
							if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_reset_idle_pp0 == 1'b0))) begin
									ap_NS_fsm = ap_ST_fsm_pp0_stage1;
							end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_reset_idle_pp0 == 1'b1))) begin
									ap_NS_fsm = ap_ST_fsm_pp0_stage0;
							end else begin
									ap_NS_fsm = ap_ST_fsm_pp0_stage0;
							end
					end
					ap_ST_fsm_pp0_stage1 : begin
							if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
									ap_NS_fsm = ap_ST_fsm_pp0_stage2;
							end else begin
									ap_NS_fsm = ap_ST_fsm_pp0_stage1;
							end
					end
					ap_ST_fsm_pp0_stage2 : begin
							if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
									ap_NS_fsm = ap_ST_fsm_pp0_stage3;
							end else begin
									ap_NS_fsm = ap_ST_fsm_pp0_stage2;
							end
					end
					ap_ST_fsm_pp0_stage3 : begin
							if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
									ap_NS_fsm = ap_ST_fsm_pp0_stage0;
							end else begin
									ap_NS_fsm = ap_ST_fsm_pp0_stage3;
							end
					end
					default : begin
							/* verilator lint_off WIDTH */
							ap_NS_fsm = 'bx;
					end
			endcase
	end

	assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

	assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

	assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];

	assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];

	assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

	always @ (*) begin
			ap_block_pp0_stage0_01001 = (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state5_pp0_stage0_iter1)) | ((1'b1 == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0)));
	end

	always @ (*) begin
			ap_block_pp0_stage0_11001 = (((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state5_pp0_stage0_iter1) | (m_axis_TREADY_int_regslice == 1'b0))) | ((1'b1 == 1'b1) & ((1'b1 == ap_block_state1_pp0_stage0_iter0) | (m_axis_TREADY_int_regslice == 1'b0))));
	end

	always @ (*) begin
			ap_block_pp0_stage0_subdone = (((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state5_pp0_stage0_iter1) | (m_axis_TREADY_int_regslice == 1'b0))) | ((1'b1 == 1'b1) & ((1'b1 == ap_block_state1_pp0_stage0_iter0) | (m_axis_TREADY_int_regslice == 1'b0))));
	end

	assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

	always @ (*) begin
			ap_block_pp0_stage1_01001 = ((1'b1 == 1'b1) & (1'b1 == ap_block_state2_pp0_stage1_iter0));
	end

	always @ (*) begin
			ap_block_pp0_stage1_11001 = ((1'b1 == 1'b1) & ((1'b1 == ap_block_state2_pp0_stage1_iter0) | (m_axis_TREADY_int_regslice == 1'b0)));
	end

	always @ (*) begin
			ap_block_pp0_stage1_subdone = ((1'b1 == 1'b1) & ((1'b1 == ap_block_state2_pp0_stage1_iter0) | (m_axis_TREADY_int_regslice == 1'b0)));
	end

	assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);

	always @ (*) begin
			ap_block_pp0_stage2_01001 = ((1'b1 == 1'b1) & (1'b1 == ap_block_state3_pp0_stage2_iter0));
	end

	always @ (*) begin
			ap_block_pp0_stage2_11001 = ((1'b1 == 1'b1) & ((1'b1 == ap_block_state3_pp0_stage2_iter0) | (m_axis_TREADY_int_regslice == 1'b0)));
	end

	always @ (*) begin
			ap_block_pp0_stage2_subdone = ((1'b1 == 1'b1) & ((1'b1 == ap_block_state3_pp0_stage2_iter0) | (m_axis_TREADY_int_regslice == 1'b0)));
	end

	assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);

	always @ (*) begin
			ap_block_pp0_stage3_01001 = ((1'b1 == 1'b1) & (1'b1 == ap_block_state4_pp0_stage3_iter0));
	end

	always @ (*) begin
			ap_block_pp0_stage3_11001 = ((1'b1 == 1'b1) & ((1'b1 == ap_block_state4_pp0_stage3_iter0) | (m_axis_TREADY_int_regslice == 1'b0)));
	end

	always @ (*) begin
			ap_block_pp0_stage3_subdone = ((1'b1 == 1'b1) & ((1'b1 == ap_block_state4_pp0_stage3_iter0) | (m_axis_TREADY_int_regslice == 1'b0)));
	end

	always @ (*) begin
			ap_block_state1_pp0_stage0_iter0 = ((m_axis_TREADY_int_regslice == 1'b0) | (s_axis_TVALID_int_regslice == 1'b0));
	end

	always @ (*) begin
			ap_block_state2_pp0_stage1_iter0 = ((m_axis_TREADY_int_regslice == 1'b0) | (s_axis_TVALID_int_regslice == 1'b0));
	end

	always @ (*) begin
			ap_block_state3_pp0_stage2_iter0 = ((m_axis_TREADY_int_regslice == 1'b0) | (s_axis_TVALID_int_regslice == 1'b0));
	end

	always @ (*) begin
			ap_block_state4_pp0_stage3_iter0 = ((m_axis_TREADY_int_regslice == 1'b0) | (s_axis_TVALID_int_regslice == 1'b0));
	end

	always @ (*) begin
			ap_block_state5_pp0_stage0_iter1 = ((regslice_both_m_axis_V_data_V_U_apdone_blk == 1'b1) | (m_axis_TREADY_int_regslice == 1'b0));
	end

	assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

	always @ (*) begin
			ap_rst_n_inv = ~ap_rst_n;
	end

	integer ap_tvar_int_0;

	always @ (s_axis_TDATA_int_regslice) begin
			for (ap_tvar_int_0 = 32 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
					if (ap_tvar_int_0 > 31 - 0) begin
							m_axis_TDATA_int_regslice[ap_tvar_int_0] = 1'b0;
					end else begin
							m_axis_TDATA_int_regslice[ap_tvar_int_0] = s_axis_TDATA_int_regslice[31 - ap_tvar_int_0];
					end
			end
	end

	/* verilator lint_off WIDTH */
	assign m_axis_TKEEP_int_regslice = 'bx;

	assign m_axis_TSTRB_int_regslice = 'bx;
	/* verilator lint_on WIDTH */

	assign m_axis_TVALID = regslice_both_m_axis_V_data_V_U_vld_out;

	assign s_axis_TREADY = regslice_both_s_axis_V_data_V_U_ack_in;


	reg find_kernel_block = 0;

	// synthesis translate_off
	//`include "bit_reverse_accel_hls_deadlock_kernel_monitor_top.vh"
	// synthesis translate_on
	/* verilator lint_on UNUSED */
	endmodule
