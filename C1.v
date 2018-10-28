module C1(out,x,y);
input[31:0]x,y;
output[31:0]out;
wire[31:0]out0,out1;
reg en,clk,rw;
reg[31:0]in;
reg[2:0]address;
reg[31:0] xm,ym;
//RAM8_32BIT(out,en,clk,address,in,rw)
MULTIPLIER mult1(out,ym,xm);
RAM8_32BIT ram1(out0,en,clk,address,in,rw);
initial
begin
	en = 1'b1;address = 3'b000;#2;in = x;#2;rw = 1'b1;#2;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;#2;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;#2;	
	
	en = 1'b1;address = 3'b001;#2;in = y;#2;rw = 1'b1;#2;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;#2;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;#2;
	
	xm = out0;#2;rw = 0;#2; address = 0;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;#2;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;#2;
	
	ym = out0;#2;rw = 0;#2; address = 1;#2;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;#2;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;#2;
	
	en = 1'b1;address = 3'b010;#2;in = out;#2;rw = 1'b1;#2;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;#2;
	clk = 1'b0;#2;clk = 1'b1;#2;clk = 1'b0;#2;	
end
endmodule