a = fl_round(1,4);
b = fl_round(62.1,4);
c = fl_round(1,4);

%%
b2 = fl_round(b^2,4);
ta = fl_round(2*a,4);
ac = fl_round(a*c,4);
fac = fl_round(4*ac,4);
under_sq = fl_round(b2-fac,4);
sq_calc = fl_round(sqrt(under_sq),4);

%%
numer = fl_round(-b+sq_calc,4);
x1 = fl_round(numer/ta,4);

x1_true = -0.01610723;
rel_err1 = abs(x1_true-x1)/abs(x1_true);

%%
numer = fl_round(-b-sq_calc,4);
x2 = fl_round(numer/ta,4);

x2_true = -62.08390;
rel_err2 = abs(x2_true-x2)/abs(x2_true);

%%
tc = fl_round(2*c,4);

demon = fl_round(b+sq_calc,4);
x1_alt = fl_round(-tc/demon,4);

rel_err1_alt = abs(x1_true-x1_alt)/abs(x1_true);





