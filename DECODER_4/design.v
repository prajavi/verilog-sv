module deco(input [2:0] i, input en, output reg [7:0] out);
  always @(*) begin
    if (en)
      out = (8'b1 << i);
    else
      out = 8'b0;
  end
endmodule
