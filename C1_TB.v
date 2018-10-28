module C1_TB;
wire[31:0]out;
reg[31:0]x,y;
C1 mult1(out,x,y);
initial
begin
	x = 2;#2;y = 5;#10;
end
endmodule