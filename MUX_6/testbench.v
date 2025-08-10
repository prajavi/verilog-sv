module tb();
  reg [15:0] in;
  reg [3:0] sel;
  wire y;
  integer i;
  
  mux e1(in, sel, y);
  
  initial begin
    $monitor("in=%b, sel=%b || y=%b", in, sel, y);
    $dumpfile("dump.vcd");
    $dumpvars();
    
    in = 16'b0001001000110100;
    for (i = 0; i < 16; i++) begin
      sel = i;
      #10;
    end
  end
endmodule
