module DIV_REM(quot,rem,x,y);
output[15:0]quot,rem;
input[15:0]x,y;
reg[15:0]quot,rem;
always @(x,y)
begin
quot = 0;
rem = x;
while (rem>=y)
begin
	rem=rem-y;
	quot=quot+1;
end
end
endmodule