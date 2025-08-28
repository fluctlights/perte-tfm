`timescale 1ns/1ps

module tb_bitreversal;

  // Testbench signals
  reg clk = 1;
  reg start_flag_i = 0;
  reg [31:0] din_i = {32{1'bx}};
  wire done_flag_o;
  wire [31:0] dout_o;
  integer i;
  reg read;

  // DUT
  bitreversal dut (
    .din_i(din_i),
    .done_flag_o(done_flag_o),
    .dout_o(dout_o),
    .start_flag_i(start_flag_i),
    .clk(clk),
    .read(read)
  );

  // Reloj 100 MHz
    always #5 clk = ~clk;

    initial begin
        $dumpvars(0, tb_bitreversal); //debug waves on edaplayground
      	$monitor("t=%0t din=%h dout=%h done=%b", $time, din_i, dout_o, done_flag_o);

        // TESTBENCH
        // PUSHING DATA TO FIFO_IN AND THEN GETTING IT AGAIN
        repeat(4) begin
          
           //initializing design!!
          
          // Escritura
          @(posedge clk);
          start_flag_i = 1;
		 
          
          for (i = 0; i < 4; i = i + 1) begin
            @(posedge clk);
            din_i = $random; // put random data into din wire
            #50;
          end
		  
          //din_i = {32{1'bx}};
        
          wait(done_flag_o); //espero a que empiece a haber datos

          for (i = 0; i < 4; i = i + 1) begin
            #10;
            @(posedge clk);
            read = 1;
            #300;
            @(posedge clk);
            read = 0;
          end
		  
          wait(!done_flag_o); //termina la transmision de datos
        
        end
        
      	#100 $finish;
        
     end
    
endmodule