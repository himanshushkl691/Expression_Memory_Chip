module HALF_SUBTRACTOR(borrow,diff,a,b);
input a,b;
output borrow,diff;
wire w1;
xor(diff,a,b);
not(w1,a);
and(borrow,w1,b);
endmodule