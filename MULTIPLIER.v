module MULTIPLIER(out,x,y);
input[31:0]x,y;
output[31:0]out;
reg[31:0]out;
reg[31:0]a;
integer i;

always @(x,y)
begin
a = x;
out = 0;
for (i = 0;i<y;i=i+1)
begin
if (y[i])
	out = out + a;
a=a<<1;
end
end
endmodule