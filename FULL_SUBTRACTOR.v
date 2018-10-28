module FULL_SUBTRACTOR(borrow,diff,a,b,bin);
input a,b,bin;
output borrow,diff;
wire w1,w2,w3;
HALF_SUBTRACTOR hs1(w2,w1,a,b);
HALF_SUBTRACTOR hs2(w3,diff,w1,bin);
or(borrow,w3,w2);
endmodule