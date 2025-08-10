module mux(input [15:0] in, input [3:0] sel, output y);
  assign y = in[sel];
endmodule
