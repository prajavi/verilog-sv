module fa(input a,b,cin ,output sum,carry);
    assign sum=a^b^cin;
    assign carry=((a&b)|(a&cin)|(b&cin));
endmodule

module rca(input [3:0] a,b, input cin, output coutt, output [3:0] sum);
    wire [2:0] cout;
    fa fa1(a[0],b[0],cin,sum[0],cout[0]);
    fa fa2(a[1],b[1],cout[0],sum[1],cout[1]);
    fa fa3(a[2],b[2],cout[1],sum[2],cout[2]);
    fa fa4(a[3],b[3],cout[2],sum[3],coutt);
endmodule
