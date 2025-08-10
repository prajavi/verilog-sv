module tb();
  reg a, b, c;
  wire sum, carry;
  integer i;
  
  fa f1(a, b, c, sum, carry);
  
  initial begin
    $monitor("a=%b, b=%b, c=%b | sum=%b, carry=%b", a, b, c, sum, carry);
    $dumpfile("dump.vcd");
    $dumpvars;
    
    for (i = 0; i < 8; i = i + 1) begin
      {a, b, c} = i;
      #10;
    end
  end
endmodule
