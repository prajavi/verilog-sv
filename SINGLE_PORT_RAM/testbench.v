module tb();
    reg [5:0]addr;
    reg we,clk;
    reg [7:0]data;
    wire [7:0]reddat;
    ramm r1(addr,we,clk,data,reddat);
    initial begin
        clk=0;
        forever #2 clk=~clk;
    end

    initial begin
        $monitor("the value of read data is %b",reddat);
        $dumpfile("dump.vcd");
        $dumpvars;
        addr=8'h2f; we=1; data=8'b10101111;
        #4;
        addr=8'h2f; we=0;
        #4;
        $finish;
    end
endmodule
