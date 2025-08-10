module rca_tb;
    reg [3:0] a,b;
    reg cin;
    wire [3:0]sum;
    wire coutt;
    rca rcal(a,b,cin,coutt,sum);
    initial begin
        $monitor("a=%0b, b=%0b, cin=%0b, sum=%0b, coutt=%0b", a,b,cin,sum,coutt);
        $dumpfile("dump.vcd");
        $dumpvars;
        a=4'b1011;b=4'b1010;cin=0;
        #10;
        a=4'b1001;b=4'b1111;cin=1;
        #10;
        a=4'b0000;b=4'b1000;cin=0;
        #10;
        $finish;
    end
endmodule
