`timescale 1ns / 1ps


module tb_pipeline;

    // Clock and Reset
    reg clk = 1;
    reg rst = 1;

    // 100 MHz clock
    always #5 clk = ~clk;

    // FIFO Input
    reg  [31:0] din_in = 32'hffffffff; // Not entering this starting data on the FIFO
    reg         wr_en_in;
    wire        full_in;
    wire [31:0] dout_in;
    wire        data_ready;
    reg         rd_en_in;          // Input to fifo_in, output from fifo2axis

    // FIFO2AXIS -> AXIS interface
    wire [31:0] m_axis_tdata;
    wire        m_axis_tvalid;
    wire        m_axis_tready;

    // AXIS2FIFO -> FIFO OUT
    wire [31:0] axis2fifo_dout;
    wire        axis2fifo_wr_en;
    wire        axis2fifo_empty;

    // FIFO OUT (controlled)
    wire [31:0] final_data;
    reg         final_rd_en = 0;
    wire        final_empty;
    wire        final_data_ready;


    // DUTs

    // 1. FIFO Input
    fifo_in fifo_in_inst (
        .clk(clk),
        .rst(rst),
        .din(din_in), // No input at first
        .wr_en(wr_en_in),
        .full(full_in),
        .dout(dout_in),         // Internal to fifo2axis
        .rd_en(rd_en_in)        // Internal to fifo2axis
    );

//    // 2. FIFO to AXIS
    fifo2axis fifo2axis_inst (
        .clk(clk),
        .rst(rst),
        .fifo_data(dout_in),
        .fifo_empty(),      
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tvalid(m_axis_tvalid),
        .m_axis_tready(m_axis_tready)
    );

//    // 3. ACCELERATOR USING AXISTREAM
    simple_accel accel_inst (
        .clk(clk),
        .rst(rst),
        .s_axis_tdata(m_axis_tdata),
        .s_axis_tvalid(m_axis_tvalid),
        .s_axis_tready(m_axis_tready)
    
    );

//    // 3. AXIS to FIFO
//    axis2fifo axis2fifo_inst (
//        .clk(clk),
//        .rst(rst),
//        .s_axis_tdata(m_axis_tdata),
//        .s_axis_tvalid(m_axis_tvalid),
//        .s_axis_tready(),
//        .fifo_data_out(axis2fifo_dout),
//        .fifo_wr_en(axis2fifo_wr_en)
//    );

////    // 4. FIFO OUT (controlled release on ≥ 4 values)
//    fifo_out #(
//        .DATA_WIDTH(32),
//        .DEPTH(1024),
//        .THRESHOLD(4)
//    ) fifo_out_inst (
//        .clk(clk),
//        .rst(rst),
//        .din(axis2fifo_dout),
//        .wr_en(axis2fifo_wr_en),
//        .full(),
//        .rd_en(final_rd_en),
//        .dout(final_data),
//        .empty(final_empty),
//        .data_ready(final_data_ready)
//    );

    
    integer i;
    
    initial begin
        
        #20 rst = 0;
        wr_en_in   = 0;
        
        // TESTBENCH
        repeat(4) begin
            
            // Escritura
            wr_en_in = 1;
            
            for (i = 0; i < 4; i = i + 1) begin
                @(posedge clk);
                din_in   = 32'hdd + i; // put random data
            end
            
            // Lectura
            @(posedge clk);
            wr_en_in = 0;
            rd_en_in = 1;
            
            repeat (4) 
                @(posedge clk);
                rd_en_in = 1;
            
            rd_en_in = 0;
         end
    end

    // Final FIFO read trigger when 4 values are available
    always @(posedge clk) begin
        if (!rst && final_data_ready)
            final_rd_en <= 1;
        else
            final_rd_en <= 0;
    end

    // Final output monitor
    always @(posedge clk) begin
        if (final_rd_en && !final_empty)
            $display("Final Out = %h", final_data);
    end


    initial begin
        #100000 $finish;
    end
endmodule

