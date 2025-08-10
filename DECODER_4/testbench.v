module tb();
  reg [2:0] i;
  reg en;
  wire [7:0] out;
  integer j;
  deco d1(i, en, out);
  
  initial begin
    $monitor("i=%b, en=%b || out=%b", i, en, out);
    $dumpfile("dump.vcd");
    $dumpvars;
    
    en = 1;
    for (j = 0; j < 8; j++) begin
      i = j;
      #10;
    end
    
    en = 0; 
    i = 3'b111; 
    #10;
  end
endmodule
