module COMPARATOR_16_BIT(gt,lt,eq,a,b,gt_in,lt_in,eq_in);
input[15:0]a,b;
input gt_in,lt_in,eq_in;
output gt,lt,eq;
//CASCADING ONE-BIT COMPARATOR
/*module COMPARATOR(gt,lt,eq,a,b,gt_in,lt_in,eq_in);*/
COMPARATOR comp0(gt0,lt0,eq0,a[15],b[15],gt_in,lt_in,eq_in);
COMPARATOR comp1(gt1,lt1,eq1,a[14],b[14],gt0,lt0,eq0);
COMPARATOR comp2(gt2,lt2,eq2,a[13],b[13],gt1,lt1,eq1);
COMPARATOR comp3(gt3,lt3,eq3,a[12],b[12],gt2,lt2,eq2);
COMPARATOR comp4(gt4,lt4,eq4,a[11],b[11],gt3,lt3,eq3);
COMPARATOR comp5(gt5,lt5,eq5,a[10],b[10],gt4,lt4,eq4);
COMPARATOR comp6(gt6,lt6,eq6,a[9],b[9],gt5,lt5,eq5);
COMPARATOR comp7(gt7,lt7,eq7,a[8],b[8],gt6,lt6,eq6);
COMPARATOR comp8(gt8,lt8,eq8,a[7],b[7],gt7,lt7,eq7);
COMPARATOR comp9(gt9,lt9,eq9,a[6],b[6],gt8,lt8,eq8);
COMPARATOR comp10(gt10,lt10,eq10,a[5],b[5],gt9,lt9,eq9);
COMPARATOR comp11(gt11,lt11,eq11,a[4],b[4],gt10,lt10,eq10);
COMPARATOR comp12(gt12,lt12,eq12,a[3],b[3],gt11,lt11,eq11);
COMPARATOR comp13(gt13,lt13,eq13,a[2],b[2],gt12,lt12,eq12);
COMPARATOR comp14(gt14,lt14,eq14,a[1],b[1],gt13,lt13,eq13);
COMPARATOR comp15(gt,lt,eq,a[0],b[0],gt14,lt14,eq14);
//DONE
endmodule
