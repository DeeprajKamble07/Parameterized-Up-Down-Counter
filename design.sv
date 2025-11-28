// design for parameterized updown counter

module counter #(parameter width=4,i=5)(clk,rst,updown,count);
  input clk,rst,updown;
  output reg [width-1:0] count=0;
  integer max;
  always@(posedge clk)
    begin
      max=2**(width);
      if(rst) begin
        count<=0; end
      else if(updown) begin
        if((i-1)<=(count)) begin
          count<=0; end
        else begin
          count=count+1; end
      end
      else
        begin
          if((max-i)==count) begin
            count<=max; end
          else begin
            count<=count-1;
          end
        end
    end
endmodule
