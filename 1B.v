module QUOT_REM(quot,rem,x,y,reset,clk);
input[15:0]x,y;
output[15:0]quot,rem;
input reset,clk;
wire[15:0]q1,out1,in,sub;
PC pc1(q1,~reset,0,reset,,clk);

MUX_2X1 mux1[15:0](quot,~reset,16'b0000000000000000,q1);

COMPARATOR_16_BIT comp1(gt,lt,eq,out1,y,0,0,1);

REGISTER reg1(out1,1,clk,in,~reset);

MUX_2X1 mux2[15:0](in,reset,sub,x);

BIT16_SUBTRACTOR sub1(,sub,out1,y,0);

MUX_2X1 mux3[15:0](rem,~reset,16'b0000000000000000,out1);

endmodule

