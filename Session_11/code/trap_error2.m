clear all
close all

%%
f = @(x) exp(sin(x)+pi*cos(x))+exp(x);

%%
n_ary = 2:23;
n_ary = 2.^n_ary;
p_ary = [];
%%
for i = 1:length(n_ary)
    n = n_ary(i);
    t_n = trap_ry(n,f);
    t_2n = trap_ry(2*n,f);
    t_4n = trap_ry(4*n,f);

    p_est = log((t_n-t_2n)/(t_2n-t_4n))/log(2);
    p_ary = [p_ary p_est];
end

%%
semilogx(n_ary,p_ary,'o'); hold on
yline(2)
xlabel("$n$")
ylabel("$p$")


