func = @(x) x^3-6.1*x^2+3.2*x+1.5;
f_true = func(4.71)

%%
x = fl_round(4.71,3);
x2 = fl_round(x^2,3);
x3 = fl_round(x2*x,3);

quad = fl_round(-x2*6.1,3);
lin = fl_round(x*3.2,3);

sum01 = fl_round(1.5+lin,3);
sum012 = fl_round(sum01+quad,3);
f_eval_default = fl_round(sum012+x3,3)

%%
nest_1 = fl_round(x-6.1,3);
nest_2 = fl_round(fl_round(nest_1*x,3)+3.2,3);
f_eval_horners = fl_round(fl_round(nest_2*x,3)+1.5,3)



