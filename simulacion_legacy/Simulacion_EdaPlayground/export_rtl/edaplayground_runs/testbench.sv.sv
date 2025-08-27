`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/31/2025 09:12:26 PM
// Design Name: 
// Module Name: tb_pipeline_blockdesign
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module tb_pipeline_blockdesign;

    // Señales de testbench
    reg clk = 1;
    
    reg start_flag_i = 0;
    reg [31:0] din_i = {32{1'bx}}; //dont care, dont enter into the fifo mem
    wire [31:0] dout_o;            //we just want to see the output
    wire done_flag_o;
    integer i;

  // Instancia del diseño completo
    design_1_wrapper uut (
        .start_flag_i(start_flag_i),
        .din_i(din_i),
        .dout_o(dout_o),
        .done_flag_o(done_flag_o)
    );

    // Reloj 100 MHz
    always #5 clk = ~clk;

    initial begin

        $dumpvars(0, tb_pipeline_blockdesign); //debug waves on edaplayground
        #20 //2 cycles
        start_flag_i = 0;
        #10;
        
        // TESTBENCH
        // PUSHING DATA TO FIFO_IN AND THEN GETTING IT AGAIN
      repeat(4) begin
            
            // Escritura
            @(posedge clk);
            start_flag_i = 1;
            
            @(posedge clk);
            for (i = 0; i < 4; i = i + 1) begin
              din_i = $random + i; // put random data into din wire
            end

            @(posedge clk);
            start_flag_i = 0;
          
            wait(done_flag_o); //espero a que empiece a haber datos
            
            for (i = 0; i < 4; i = i + 1) begin
                @(posedge clk);
                $display("Reversed = %h", dout_o); // put random data into din wire
            end
            
            wait(!done_flag_o); //termina la transmision de datos
            
        end
        
        #100 $finish;
        
     end
    
endmodule
