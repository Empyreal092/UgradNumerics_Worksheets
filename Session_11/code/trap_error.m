f = @(x) exp(sin(x)+pi*cos(x))+exp(x);

%%
n = 1e6;
x_ary = linspace(0,2*pi,n);
h = 2*pi/(n-1);

f_ary = f(x_ary);

truth = sum(f_ary(2:end-1))*h;
truth = truth + (f_ary(1)+f_ary(end))*h/2;

%%
n_ary = 3:31;
err_ary = [];
%%
for i = 1:length(n_ary)
    n = n_ary(i);

    x_ary = linspace(0,2*pi,n);
    h = 2*pi/(n-1);
    
    f_ary = f(x_ary);
    
    trap = sum(f_ary(2:end-1))*h;
    trap = trap + (f_ary(1)+f_ary(end))*h/2;

    err = abs(trap-truth);
    err_ary = [err_ary err];
end

%%
loglog(n_ary,err_ary,'o'); hold on
loglog(n_ary,n_ary.^(-2)*1e3)
xlabel("$n$")
ylabel("Error")


