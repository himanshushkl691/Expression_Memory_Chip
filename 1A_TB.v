module A1;
reg[15:0]x,y;
reg reset,clk;
wire[15:0]out;
MULTIPLY mult1(out,x,y,reset,clk);
integer i,j,k;
always
begin
	reset = 1'b1;
	for (i = 0;i<=9;i=i+1)
	begin
		clk = 1'b0;#2;clk = 1'b1;#2;
	end
	reset = 1'b0;x = 3;#10;y = 2;#10;
	for (i = 0;i<=20;i=i+1)
	begin
		clk = 1'b0;#2;clk = 1'b1;#2;
	end
	reset = 1'b1;
	for (i = 0;i<=9;i=i+1)
	begin
		clk = 1'b0;#2;clk = 1'b1;#2;
	end
	reset = 1'b0;x = 3;#10;y = 6;#10;
	for (i = 0;i<=20;i=i+1)
	begin
		clk = 1'b0;#2;clk = 1'b1;#2;
	end
end
endmodule
