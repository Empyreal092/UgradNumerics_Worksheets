clear all
close all

%%
% a periodic function
func = @(x) exp(sin(x)+cos(3*x));

%% the "truth" from a high resolution integration
n = 1000;
h = 2*pi/n;
x_ary = linspace(0,2*pi,n+1);
x_ary = x_ary(1:end-1);
y_ary = func(x_ary);
trap_true = h*sum(y_ary);

%% measure the error
error_ary = [];
n_ary = 4:70;
for n = n_ary
    h = 2*pi/n;
    x_ary = linspace(0,2*pi,n+1);
    x_ary = x_ary(1:end-1);

    y_ary = func(x_ary);
    % the periodic version of trapezoidal
    trap_eval = h*sum(y_ary);
    error = abs(trap_eval-trap_true);
    error_ary = [error_ary error];
end

%% plot the error
figure(1)
loglog(n_ary,error_ary,'o')
xlabel("$n$"); ylabel("Error")

figure(2)
% a line in the semilogy plot means spectral convergence (exponential)
semilogy(n_ary,error_ary,'o')
xlabel("$n$"); ylabel("Error")


