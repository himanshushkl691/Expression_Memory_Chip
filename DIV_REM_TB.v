module DIV_REM_TB;
wire[15:0]quot,rem;
reg[15:0]x,y;
DIV_REM div_rem1(quot,rem,x,y);
initial 
begin
	x = 2;#2;y=3;#2;
	x = 14;#2;y = 2;#2;
end
endmodule