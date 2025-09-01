// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================

`timescale 1 ns / 1 ps

`define TV_OUT_m_axis_TDATA "../tv/rtldatafile/rtl.bit_reverse_accel.autotvout_m_axis_V_data_V.dat"
`define EGRESS_STATUS_m_axis_TDATA "../tv/stream_size/stream_egress_status_m_axis_V_data_V.dat"
`define TV_OUT_m_axis_TKEEP "../tv/rtldatafile/rtl.bit_reverse_accel.autotvout_m_axis_V_keep_V.dat"
`define EGRESS_STATUS_m_axis_TKEEP "../tv/stream_size/stream_egress_status_m_axis_V_keep_V.dat"
`define TV_OUT_m_axis_TSTRB "../tv/rtldatafile/rtl.bit_reverse_accel.autotvout_m_axis_V_strb_V.dat"
`define EGRESS_STATUS_m_axis_TSTRB "../tv/stream_size/stream_egress_status_m_axis_V_strb_V.dat"
`define TV_OUT_m_axis_TLAST "../tv/rtldatafile/rtl.bit_reverse_accel.autotvout_m_axis_V_last_V.dat"
`define EGRESS_STATUS_m_axis_TLAST "../tv/stream_size/stream_egress_status_m_axis_V_last_V.dat"

`define AUTOTB_TRANSACTION_NUM 1

module AESL_axi_s_m_axis (
    input clk,
    input reset,
    input [32 - 1:0] TRAN_m_axis_TDATA,
    input [4 - 1:0] TRAN_m_axis_TKEEP,
    input [4 - 1:0] TRAN_m_axis_TSTRB,
    input TRAN_m_axis_TLAST,
    input TRAN_m_axis_TVALID,
    output TRAN_m_axis_TREADY,
    input ready,
    input done,
    output [31:0] transaction);

    wire TRAN_m_axis_TVALID_temp;
    wire m_axis_TDATA_full;
    wire m_axis_TDATA_empty;
    reg m_axis_TDATA_write_en;
    reg [32 - 1:0] m_axis_TDATA_write_data;
    reg m_axis_TDATA_read_en;
    wire [32 - 1:0] m_axis_TDATA_read_data;
    
    fifo #(4, 32) fifo_m_axis_TDATA (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(m_axis_TDATA_write_en),
        .write_data(m_axis_TDATA_write_data),
        .read_clock(clk),
        .read_en(m_axis_TDATA_read_en),
        .read_data(m_axis_TDATA_read_data),
        .full(m_axis_TDATA_full),
        .empty(m_axis_TDATA_empty));
    
    always @ (*) begin
        m_axis_TDATA_write_en <= TRAN_m_axis_TVALID;
        m_axis_TDATA_write_data <= TRAN_m_axis_TDATA;
        m_axis_TDATA_read_en <= 0;
    end
    wire m_axis_TKEEP_full;
    wire m_axis_TKEEP_empty;
    reg m_axis_TKEEP_write_en;
    reg [4 - 1:0] m_axis_TKEEP_write_data;
    reg m_axis_TKEEP_read_en;
    wire [4 - 1:0] m_axis_TKEEP_read_data;
    
    fifo #(4, 4) fifo_m_axis_TKEEP (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(m_axis_TKEEP_write_en),
        .write_data(m_axis_TKEEP_write_data),
        .read_clock(clk),
        .read_en(m_axis_TKEEP_read_en),
        .read_data(m_axis_TKEEP_read_data),
        .full(m_axis_TKEEP_full),
        .empty(m_axis_TKEEP_empty));
    
    always @ (*) begin
        m_axis_TKEEP_write_en <= TRAN_m_axis_TVALID;
        m_axis_TKEEP_write_data <= TRAN_m_axis_TKEEP;
        m_axis_TKEEP_read_en <= 0;
    end
    wire m_axis_TSTRB_full;
    wire m_axis_TSTRB_empty;
    reg m_axis_TSTRB_write_en;
    reg [4 - 1:0] m_axis_TSTRB_write_data;
    reg m_axis_TSTRB_read_en;
    wire [4 - 1:0] m_axis_TSTRB_read_data;
    
    fifo #(4, 4) fifo_m_axis_TSTRB (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(m_axis_TSTRB_write_en),
        .write_data(m_axis_TSTRB_write_data),
        .read_clock(clk),
        .read_en(m_axis_TSTRB_read_en),
        .read_data(m_axis_TSTRB_read_data),
        .full(m_axis_TSTRB_full),
        .empty(m_axis_TSTRB_empty));
    
    always @ (*) begin
        m_axis_TSTRB_write_en <= TRAN_m_axis_TVALID;
        m_axis_TSTRB_write_data <= TRAN_m_axis_TSTRB;
        m_axis_TSTRB_read_en <= 0;
    end
    wire m_axis_TLAST_full;
    wire m_axis_TLAST_empty;
    reg m_axis_TLAST_write_en;
    reg [1 - 1:0] m_axis_TLAST_write_data;
    reg m_axis_TLAST_read_en;
    wire [1 - 1:0] m_axis_TLAST_read_data;
    
    fifo #(4, 1) fifo_m_axis_TLAST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(m_axis_TLAST_write_en),
        .write_data(m_axis_TLAST_write_data),
        .read_clock(clk),
        .read_en(m_axis_TLAST_read_en),
        .read_data(m_axis_TLAST_read_data),
        .full(m_axis_TLAST_full),
        .empty(m_axis_TLAST_empty));
    
    always @ (*) begin
        m_axis_TLAST_write_en <= TRAN_m_axis_TVALID;
        m_axis_TLAST_write_data <= TRAN_m_axis_TLAST;
        m_axis_TLAST_read_en <= 0;
    end
    assign TRAN_m_axis_TVALID = TRAN_m_axis_TVALID_temp;

    
    assign TRAN_m_axis_TREADY = ~(m_axis_TDATA_full || m_axis_TKEEP_full || m_axis_TSTRB_full || m_axis_TLAST_full);
    
    function is_blank_char(input [7:0] in_char);
        if (in_char == " " || in_char == "\011" || in_char == "\012" || in_char == "\015") begin
            is_blank_char = 1;
        end else begin
            is_blank_char = 0;
        end
    endfunction
    
    function [127:0] read_token(input integer fp);
        integer ret;
        begin
            read_token = "";
                    ret = 0;
                    ret = $fscanf(fp,"%s",read_token);
        end
    endfunction
    
    function [127:0] rm_0x(input [127:0] token);
        reg [127:0] token_tmp;
        integer i;
        begin
            token_tmp = "";
            for (i = 0; token[15:0] != "0x"; token = token >> 8) begin
                token_tmp = (token[7:0] << (8 * i)) | token_tmp;
                i = i + 1;
            end
            rm_0x = token_tmp;
        end
    endfunction
    
    reg done_1;
    
    always @ (posedge clk or reset) begin
        if (~reset) begin
            done_1 <= 0;
        end else begin
            done_1 <= done;
        end
    end
    
    reg [31:0] transaction_save_m_axis_TDATA;
    
    assign transaction = transaction_save_m_axis_TDATA;
    
    initial begin : AXI_stream_receiver_m_axis_TDATA
        integer fp;
        reg [32 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_m_axis_TDATA = 0;
        fifo_m_axis_TDATA.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_m_axis_TDATA, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_m_axis_TDATA);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_m_axis_TDATA);
                while (~fifo_m_axis_TDATA.empty) begin
                    fifo_m_axis_TDATA.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_m_axis_TDATA = transaction_save_m_axis_TDATA + 1;
                fifo_m_axis_TDATA.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_m_axis_TKEEP;
    
    initial begin : AXI_stream_receiver_m_axis_TKEEP
        integer fp;
        reg [4 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_m_axis_TKEEP = 0;
        fifo_m_axis_TKEEP.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_m_axis_TKEEP, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_m_axis_TKEEP);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_m_axis_TKEEP);
                while (~fifo_m_axis_TKEEP.empty) begin
                    fifo_m_axis_TKEEP.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_m_axis_TKEEP = transaction_save_m_axis_TKEEP + 1;
                fifo_m_axis_TKEEP.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_m_axis_TSTRB;
    
    initial begin : AXI_stream_receiver_m_axis_TSTRB
        integer fp;
        reg [4 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_m_axis_TSTRB = 0;
        fifo_m_axis_TSTRB.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_m_axis_TSTRB, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_m_axis_TSTRB);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_m_axis_TSTRB);
                while (~fifo_m_axis_TSTRB.empty) begin
                    fifo_m_axis_TSTRB.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_m_axis_TSTRB = transaction_save_m_axis_TSTRB + 1;
                fifo_m_axis_TSTRB.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_m_axis_TLAST;
    
    initial begin : AXI_stream_receiver_m_axis_TLAST
        integer fp;
        reg [1 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_m_axis_TLAST = 0;
        fifo_m_axis_TLAST.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_m_axis_TLAST, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_m_axis_TLAST);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_m_axis_TLAST);
                while (~fifo_m_axis_TLAST.empty) begin
                    fifo_m_axis_TLAST.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_m_axis_TLAST = transaction_save_m_axis_TLAST + 1;
                fifo_m_axis_TLAST.clear();
                $fclose(fp);
            end
        end
    end

endmodule
