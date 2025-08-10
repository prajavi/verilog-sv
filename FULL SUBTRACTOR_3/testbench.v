module tb();
  reg a, b, c;
  wire diff, borrow;
  integer i;
  
  fs f1(a, b, c, diff, borrow);
  
  initial begin
    $monitor("a=%b, b=%b, c=%b || diff=%b, borrow=%b", a, b, c, diff, borrow);
    $dumpfile("dump.vcd");
    $dumpvars();
    
    for (i = 0; i < 8; i = i + 1) begin
      {a, b, c} = i;
      #10;
    end
  end
endmodule
