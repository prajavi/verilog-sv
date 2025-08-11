module ramm(input [5:0]addr, input we, clk, input [7:0]data, output
reg[7:0]reddat);
    reg[7:0]ram[63:0];
    always@(posedge clk)
    begin
        if( we==1)
            ram[addr] <= data;
        else
            reddat <= ram[addr];
    end
endmodule
