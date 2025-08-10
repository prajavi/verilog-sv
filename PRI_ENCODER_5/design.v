module_enco (input [7:0] in, output reg [2:0] y);
integer i;
always@(*) begin
     y=3'b0;
  for (i=7; i>=0; i=i-1) begin
         if (in[i])
            y=i;
    end
end
endmodule
