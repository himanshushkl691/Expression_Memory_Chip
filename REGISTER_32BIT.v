module REGISTER_32BIT(out,en,clk,in,rw);
input[31:0] in;
input rw,en,clk;
output[31:0] out;
ONE_BIT_CELL bc1[31:0](out,en,clk,in,rw);
endmodule