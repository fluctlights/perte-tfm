// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================

`timescale 1 ns / 1 ps

`define TV_IN_s_axis_TDATA "../tv/cdatafile/c.bit_reverse_accel.autotvin_s_axis_V_data_V.dat"
`define INGRESS_STATUS_s_axis_TDATA "../tv/stream_size/stream_ingress_status_s_axis_V_data_V.dat"
`define TV_IN_s_axis_TKEEP "../tv/cdatafile/c.bit_reverse_accel.autotvin_s_axis_V_keep_V.dat"
`define INGRESS_STATUS_s_axis_TKEEP "../tv/stream_size/stream_ingress_status_s_axis_V_keep_V.dat"
`define TV_IN_s_axis_TSTRB "../tv/cdatafile/c.bit_reverse_accel.autotvin_s_axis_V_strb_V.dat"
`define INGRESS_STATUS_s_axis_TSTRB "../tv/stream_size/stream_ingress_status_s_axis_V_strb_V.dat"
`define TV_IN_s_axis_TLAST "../tv/cdatafile/c.bit_reverse_accel.autotvin_s_axis_V_last_V.dat"
`define INGRESS_STATUS_s_axis_TLAST "../tv/stream_size/stream_ingress_status_s_axis_V_last_V.dat"

`define AUTOTB_TRANSACTION_NUM 1

module AESL_axi_s_s_axis (
    input clk,
    input reset,
    output [32 - 1:0] TRAN_s_axis_TDATA,
    output [4 - 1:0] TRAN_s_axis_TKEEP,
    output [4 - 1:0] TRAN_s_axis_TSTRB,
    output TRAN_s_axis_TLAST,
    output TRAN_s_axis_TVALID,
    input TRAN_s_axis_TREADY,
    input ready,
    input done,
    output [31:0] transaction);

    wire TRAN_s_axis_TVALID_temp;
    wire s_axis_TDATA_full;
    wire s_axis_TDATA_empty;
    reg s_axis_TDATA_write_en;
    reg [32 - 1:0] s_axis_TDATA_write_data;
    reg s_axis_TDATA_read_en;
    wire [32 - 1:0] s_axis_TDATA_read_data;
    
    fifo #(4, 32) fifo_s_axis_TDATA (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(s_axis_TDATA_write_en),
        .write_data(s_axis_TDATA_write_data),
        .read_clock(clk),
        .read_en(s_axis_TDATA_read_en),
        .read_data(s_axis_TDATA_read_data),
        .full(s_axis_TDATA_full),
        .empty(s_axis_TDATA_empty));
    
    always @ (*) begin
        s_axis_TDATA_write_en <= 0;
        s_axis_TDATA_read_en <= TRAN_s_axis_TREADY & TRAN_s_axis_TVALID;
    end
    
    assign TRAN_s_axis_TDATA = s_axis_TDATA_read_data;
    wire s_axis_TKEEP_full;
    wire s_axis_TKEEP_empty;
    reg s_axis_TKEEP_write_en;
    reg [4 - 1:0] s_axis_TKEEP_write_data;
    reg s_axis_TKEEP_read_en;
    wire [4 - 1:0] s_axis_TKEEP_read_data;
    
    fifo #(4, 4) fifo_s_axis_TKEEP (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(s_axis_TKEEP_write_en),
        .write_data(s_axis_TKEEP_write_data),
        .read_clock(clk),
        .read_en(s_axis_TKEEP_read_en),
        .read_data(s_axis_TKEEP_read_data),
        .full(s_axis_TKEEP_full),
        .empty(s_axis_TKEEP_empty));
    
    always @ (*) begin
        s_axis_TKEEP_write_en <= 0;
        s_axis_TKEEP_read_en <= TRAN_s_axis_TREADY & TRAN_s_axis_TVALID;
    end
    
    assign TRAN_s_axis_TKEEP = s_axis_TKEEP_read_data;
    wire s_axis_TSTRB_full;
    wire s_axis_TSTRB_empty;
    reg s_axis_TSTRB_write_en;
    reg [4 - 1:0] s_axis_TSTRB_write_data;
    reg s_axis_TSTRB_read_en;
    wire [4 - 1:0] s_axis_TSTRB_read_data;
    
    fifo #(4, 4) fifo_s_axis_TSTRB (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(s_axis_TSTRB_write_en),
        .write_data(s_axis_TSTRB_write_data),
        .read_clock(clk),
        .read_en(s_axis_TSTRB_read_en),
        .read_data(s_axis_TSTRB_read_data),
        .full(s_axis_TSTRB_full),
        .empty(s_axis_TSTRB_empty));
    
    always @ (*) begin
        s_axis_TSTRB_write_en <= 0;
        s_axis_TSTRB_read_en <= TRAN_s_axis_TREADY & TRAN_s_axis_TVALID;
    end
    
    assign TRAN_s_axis_TSTRB = s_axis_TSTRB_read_data;
    wire s_axis_TLAST_full;
    wire s_axis_TLAST_empty;
    reg s_axis_TLAST_write_en;
    reg [1 - 1:0] s_axis_TLAST_write_data;
    reg s_axis_TLAST_read_en;
    wire [1 - 1:0] s_axis_TLAST_read_data;
    
    fifo #(4, 1) fifo_s_axis_TLAST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(s_axis_TLAST_write_en),
        .write_data(s_axis_TLAST_write_data),
        .read_clock(clk),
        .read_en(s_axis_TLAST_read_en),
        .read_data(s_axis_TLAST_read_data),
        .full(s_axis_TLAST_full),
        .empty(s_axis_TLAST_empty));
    
    always @ (*) begin
        s_axis_TLAST_write_en <= 0;
        s_axis_TLAST_read_en <= TRAN_s_axis_TREADY & TRAN_s_axis_TVALID;
    end
    
    assign TRAN_s_axis_TLAST = s_axis_TLAST_read_data;
    assign TRAN_s_axis_TVALID = TRAN_s_axis_TVALID_temp;

    
    assign TRAN_s_axis_TVALID_temp = ~(s_axis_TDATA_empty || s_axis_TKEEP_empty || s_axis_TSTRB_empty || s_axis_TLAST_empty);
    
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
    
    reg [31:0] transaction_load_s_axis_TDATA;
    
    assign transaction = transaction_load_s_axis_TDATA;
    
    initial begin : AXI_stream_driver_s_axis_TDATA
        integer fp;
        reg [127:0] token;
        reg [32 - 1:0] data;
        reg [127:0] data_integer;
        integer fp_ingress_status;
        reg [127:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_s_axis_TDATA = 0;
        fifo_s_axis_TDATA.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_s_axis_TDATA, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_s_axis_TDATA);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_s_axis_TDATA, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_s_axis_TDATA);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_s_axis_TDATA.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_s_axis_TDATA.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_s_axis_TDATA.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_s_axis_TDATA = transaction_load_s_axis_TDATA + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_s_axis_TKEEP;
    
    initial begin : AXI_stream_driver_s_axis_TKEEP
        integer fp;
        reg [127:0] token;
        reg [4 - 1:0] data;
        reg [127:0] data_integer;
        integer fp_ingress_status;
        reg [127:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_s_axis_TKEEP = 0;
        fifo_s_axis_TKEEP.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_s_axis_TKEEP, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_s_axis_TKEEP);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_s_axis_TKEEP, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_s_axis_TKEEP);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_s_axis_TKEEP.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_s_axis_TKEEP.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_s_axis_TKEEP.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_s_axis_TKEEP = transaction_load_s_axis_TKEEP + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_s_axis_TSTRB;
    
    initial begin : AXI_stream_driver_s_axis_TSTRB
        integer fp;
        reg [127:0] token;
        reg [4 - 1:0] data;
        reg [127:0] data_integer;
        integer fp_ingress_status;
        reg [127:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_s_axis_TSTRB = 0;
        fifo_s_axis_TSTRB.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_s_axis_TSTRB, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_s_axis_TSTRB);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_s_axis_TSTRB, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_s_axis_TSTRB);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_s_axis_TSTRB.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_s_axis_TSTRB.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_s_axis_TSTRB.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_s_axis_TSTRB = transaction_load_s_axis_TSTRB + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_s_axis_TLAST;
    
    initial begin : AXI_stream_driver_s_axis_TLAST
        integer fp;
        reg [127:0] token;
        reg [1 - 1:0] data;
        reg [127:0] data_integer;
        integer fp_ingress_status;
        reg [127:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_s_axis_TLAST = 0;
        fifo_s_axis_TLAST.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_s_axis_TLAST, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_s_axis_TLAST);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_s_axis_TLAST, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_s_axis_TLAST);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_s_axis_TLAST.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_s_axis_TLAST.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_s_axis_TLAST.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_s_axis_TLAST = transaction_load_s_axis_TLAST + 1;
            end
        end
    end

endmodule
