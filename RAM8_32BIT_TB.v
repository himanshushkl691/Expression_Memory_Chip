module RAM8_32BIT_TB;
wire[31:0]out;
reg[31:0]in;
reg[2:0]address;
reg rw,en,clk;
RAM8_32BIT ram1(out,en,clk,address,in,rw);
integer i,j,k,l;
initial
begin
	en = 1;
	rw = 1'b1;#1;
	in = 32'b0;#1;
	address = 0;
	clk = 0;#1;clk = 1;#1;clk = 0;#1;
	#10;
	
	rw = 1'b1;#1;
	in = 123;#1;
	address = 7;
	clk = 0;#1;clk = 1;#1;clk = 0;#1;
	#10;

	rw = 1'b0;#1;
	address = 0;
	clk = 0;#1;clk = 1;#1;clk = 0;#1;
	#10;

	rw = 1'b0;#1;
	address = 7;
	clk = 0;#1;clk = 1;#1;clk = 0;#1;
	#10;
	
end
endmodule
