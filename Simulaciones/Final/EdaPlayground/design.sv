`include "design_1.sv"

module bitreversal (
    input [31:0] din_i,
    output logic done_flag_o,
    output logic [31:0] dout_o,
    input logic start_flag_i,
    input logic clk,
    input logic read_i,
    input logic write_i,
    input logic rst_ni
);

  reg internal_rst    = 1;    // reset signal for design_1
  reg [1:0] rst_cnt   = 0;    // counter for reset delay

  reg internal_read   = 0;    // read signal for design_1
  reg already_read    = 0;	  // check if reading has ocurred
  reg [1:0] read_cnt  = 0;    // counter for readings
  
  reg internal_write  = 0;    // write signal for design_1
  reg already_written = 0;	  // check if writing has ocurred
  reg [1:0] write_cnt = 0;    // counter for writings
  
  
  design_1 design_1_i
    (.clk(clk),
    .din_i(din_i),
    .done_flag_o(done_flag_o),
    .dout_o(dout_o),
    .read_i(internal_read),
    .reset(internal_rst),
    .start_flag_i(start_flag_i),
    .write_i(internal_write)
    );

  always_ff @(posedge clk) begin
    
    if (internal_rst) begin
      if (rst_cnt < 3) begin  //3 cycles
      	rst_cnt = rst_cnt + 1;
      end else begin
      	read_cnt = 0;
    	rst_cnt = 0;
        internal_rst = 0;
      end

    end else if (done_flag_o) begin
      
      if(!internal_read && read_i && !already_read) begin
        internal_read = 1;

      end else if (internal_read && read_i && !already_read) begin
        internal_read = 0;
        already_read = 1;

        if (read_cnt < 3) begin
          read_cnt = read_cnt + 1;
        end else begin
          read_cnt = 0;
          internal_rst = 1;
        end
          
      end else if (!internal_read && read_i && already_read) begin
        //nothing!!
      end else if (!internal_read && !read_i && already_read) begin
        already_read = 0;
      end
      
    end else if (write_i) begin
      if(!internal_write && !already_written) begin
        internal_write = 1;
      
      end else if (internal_write && !already_written) begin
      	internal_write = 0;
        already_written = 1;

        if (write_cnt < 3) begin
          write_cnt = write_cnt + 1;
        end else begin
          write_cnt = 0;
        end
        
      end else if (!internal_write && already_written) begin
        //nothing!! 
      end
      
    end else if (!write_i) begin
      already_written = 0;
    end

  end
endmodule
