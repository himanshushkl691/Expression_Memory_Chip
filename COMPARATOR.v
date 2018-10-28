module COMPARATOR(gt,lt,eq,a,b,gt_in,lt_in,eq_in);
input a,b,gt_in,lt_in,eq_in;
output gt,eq,lt;
//EQUALITY
xor(eq_,a,b);
not(eq_bar,eq_);
and(eq,eq_bar,eq_in);
//LESS THAN
not(b_bar,b);
and(anb,a,b_bar);
and(gt_,anb,eq_in);
or(gt,gt_,gt_in);
//GREATER THAN
not(a_bar,a);
and(nab,a_bar,b);
and(lt_,eq_in,nab);
or(lt,lt_,lt_in);
endmodule
