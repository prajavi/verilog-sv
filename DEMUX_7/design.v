module demux(input i, input [2:0] sel, output [7:0] y);
  assign y = {7'b0, i} << sel;
endmodule
