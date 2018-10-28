module MULTIPLIER_TB;
wire[31:0]out;
reg[31:0]x,y;
wire ready;
MULTIPLIER mult1(out,ready,x,y);
initial
begin
	x = 13;#2;y = 3;#10;
	x = 42;#2;y = 1;#10;
end
endmodule