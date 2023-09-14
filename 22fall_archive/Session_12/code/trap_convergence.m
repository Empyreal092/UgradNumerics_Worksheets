clear all
close all

%% 
% a regular non-periodic function
func = @(x) exp(x);

%% measure the error
trap_eval_ary = [];
n_ary = 2.^[2:25];
for n = n_ary    
    h = 2*pi/n;
    x_ary = linspace(0,2*pi,n+1);
    y_ary = func(x_ary);
    % the non-periodic version of trapezoidal
    trap_eval = h*sum(y_ary(2:end-1)) + h/2*y_ary(1) + h/2*y_ary(end);

    trap_eval_ary = [trap_eval_ary trap_eval];
end

%%
error_ary = nan(1,length(trap_eval_ary)-2);
for i = 1:length(trap_eval_ary)-2
    T_ratio = (trap_eval_ary(i)-trap_eval_ary(i+1))/(trap_eval_ary(i+1)-trap_eval_ary(i+2));
    error_ary(i) = log(T_ratio)/log(2);
end

error_ary
