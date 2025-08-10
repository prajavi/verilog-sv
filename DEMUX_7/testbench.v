module tb();
  reg in;
  reg [2:0] sel;
  wire [7:0] y;
  integer i;
  
  demux e1(in, sel, y);
  
  initial begin
    $monitor("in=%b, sel=%b || y=%b", in, sel, y);
    $dumpfile("dump.vcd");
    $dumpvars();
    
    in = 1;
    for (i = 0; i < 8; i++) begin
      sel = i;
      #10;
    end
  end
endmodule
