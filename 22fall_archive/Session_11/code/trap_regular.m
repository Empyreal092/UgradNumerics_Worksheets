clear all
close all

%% 
% a regular non-periodic function
func = @(x) exp(x);

%% the "truth" from a high resolution integration
n = 10000;
h = 2*pi/n;
x_ary = linspace(0,2*pi,n+1);
y_ary = func(x_ary);
trap_true = h*sum(y_ary(2:end-1)) + h/2*y_ary(1) + h/2*y_ary(end);

%% measure the error
error_ary = [];
n_ary = 4:70;
for n = n_ary    
    h = 2*pi/n;
    x_ary = linspace(0,2*pi,n+1);
    y_ary = func(x_ary);
    % the non-periodic version of trapezoidal
    trap_eval = h*sum(y_ary(2:end-1)) + h/2*y_ary(1) + h/2*y_ary(end);

    error = abs(trap_eval-trap_true);
    error_ary = [error_ary error];
end

%% plot the error
figure(1)
loglog(n_ary,error_ary,'o'); hold on
% check the convergence is h^2
loglog(n_ary,n_ary.^(-2)*1e3)
legend(["","$O(h^2)$"])

xlabel("$n$"); ylabel("Error")
