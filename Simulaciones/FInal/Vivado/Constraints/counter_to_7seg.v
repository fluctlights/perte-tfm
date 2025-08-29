`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.10.2024 15:08:33
// Design Name: 
// Module Name: counter_to_7seg
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

module counter_to_7seg(
    input wire clkin,       
    input wire reset,
    output reg [7:0] AN,
    output reg [7:0] display_output
    );
    
    reg [26:0] counter = 27'd0;
    reg [3:0] display;
    localparam DIVISOR = 100_000_000/2;
    integer rounds;
    
    initial 
    begin
        AN = 8'b11111110;
    end
    always @(posedge clkin) begin
        if (reset) begin
            counter <= 27'd0;
        end else begin
            if (counter == DIVISOR-1) begin
                counter <= 27'd0;
                rounds <= rounds +1;
                display <= rounds[3:0];
                case (display) 
                    4'b0000: display_output <=  8'b00000011;  //a,b,c,d,e,f,g,dot (zero)
                    4'b0001: display_output <=  8'b10011111;  //one
                    4'b0010: display_output <=  8'b00100101;  //two
                    4'b0011: display_output <=  8'b00001101;  //three
                    4'b0100: display_output <=  8'b10011001;  //four
                    4'b0101: display_output <=  8'b01001001;  //five
                    4'b0110: display_output <=  8'b01000001;  //six
                    4'b0111: display_output <=  8'b00011111;  //seven
                    4'b1000: display_output <=  8'b00000001;  //eight
                    4'b1001: display_output <=  8'b00001001;  //nine
                    4'b1010: display_output <=  8'b00010001;  //A
                    4'b1011: display_output <=  8'b11000001;  //b
                    4'b1100: display_output <=  8'b01100011;  //C
                    4'b1101: display_output <=  8'b10000101;  //d
                    4'b1110: display_output <=  8'b01100001;  //E
                    4'b1111: display_output <=  8'b01110001;  //F
                endcase
            end else begin
                counter <= counter + 1;
            end
    end
  end   
endmodule

