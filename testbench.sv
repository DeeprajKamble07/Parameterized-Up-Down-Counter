// testbench for parameterized updown counter

module tb;
  reg clk,rst,updown;
  wire[3:0] count;
  
  counter #(4,6) dut(clk,rst,updown,count);
  initial begin
    clk=0;
    forever #5 clk=~clk;
  end
  initial begin
    clk=0;
    rst=1;updown=1;
    
    #20 rst=0;updown=1;
    
    #60 rst=1;updown=0;
    
    #60 rst=0;updown=0;
    
    #80 rst=1;updown=0;
    
    #100 rst=1;updown=1;
    # 50 $finish;
  end
  initial begin
    $monitor("[%0t] updown=%0d count=%0d ",$time,updown,count);
    $dumpfile("dump.vcd");
    $dumpvars();
  end
endmodule
