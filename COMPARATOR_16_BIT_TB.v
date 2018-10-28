module COMPARATOR_16_BIT_TB;
reg[15:0]a,b;
reg gt_in,lt_in,eq_in;
wire gt,lt,eq;
COMPARATOR_16_BIT comp1(gt,lt,eq,a,b,gt_in,lt_in,eq_in);
integer i;
initial
begin
	$dumpfile("COMPARATOR_16_BIT_TB");
	$dumpvars(1,COMPARATOR_16_BIT_TB);
	b = 23;#2;gt_in = 1'b0;#2;lt_in = 1'b0;#2;eq_in = 1'b1;#10;
	for (i = 0 ; i <= 30 ; i = i + 1)
	begin
		a = i;#10;
	end
end
endmodule
