// Code your testbench here
// or browse Examples

integer i ;

module test ;
  reg [7:0] in_val;
  reg [7:0] maxi;
  reg [7:0] mini ; 
  wire out_val;
  
  schmidt_trigger st(in_val,maxi,mini,out_val);
  
  initial begin 
    // Dump waves
    $dumpfile("dump.vcd");
    $dumpvars(1);
    mini <= 8'b00000110;
    maxi <= 8'b00001100;
    in_val <= 8'd0;
    #5;
    for(int i=0; i<30; i++) begin
      in_val++;
      #1;
    end
    for(int i=0; i<30; i++) begin
      in_val--;
      #1;
    end
  end
  
endmodule 