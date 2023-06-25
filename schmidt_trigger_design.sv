// Code your design here
// Digital Schmidt Trigger 
module schmidt_trigger(in_val,maxi,mini,out_val);
  input [7:0] in_val;
  input [7:0] maxi;
  input [7:0] mini ; 
  output logic out_val;
  wire comp_low , comp_high ;
  assign comp_low = (in_val > mini);
  assign comp_high = (in_val > maxi);
  
  always @(negedge comp_low) begin
    out_val = 1'b1 ;
  end
  
  always @(posedge comp_high) begin
    out_val = 1'b0 ;
  end
  
endmodule