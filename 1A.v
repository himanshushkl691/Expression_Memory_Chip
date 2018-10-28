module MULTIPLY(out,x,y,reset,clk);
input[15:0]x,y;
output[15:0]out;
input reset,clk;
wire[15:0]temp,y_,in,add,out1;
wire inc_,gt_,lt_,eq_,load_;

PC pc1(temp,inc_,0,reset,,clk);

COMPARATOR_16_BIT comp1(gt_,lt_,eq_,temp,y,0,0,1);

nor(inc_,gt_,eq_);
MUX_2X1 mux1[15:0](out,~inc_,16'b0000000000000000,out1);

MUX_2X1 mux2[15:0](in,reset,add,16'b0000000000000000);

or(load_,lt_,reset);
REGISTER reg1(out1,1,clk,in,load_);

BIT16_ADDER add1(,add,out1,x,0);

endmodule
