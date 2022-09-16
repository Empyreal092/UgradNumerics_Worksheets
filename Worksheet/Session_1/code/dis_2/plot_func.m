func_implicit = @(x) x.^2-x-2;

%%
% define my x grid
x = -2:0.01:3; 
% evaluate y
% y = x.^2-x-2;
y = func_implicit(x);

%%
% plotting
plot(x,y); hold on
% plot(x,x)
% plot(x,zeros(1,length(x)))
yline(0);
xline(0);

% legend(["Quadratic","Linear"])

xlabel("x")
ylabel("f(x)")
title("Practice Plot")

hold off

%%
% function y = func_end(x)
% y = cos(x)+x;
% end