%% Define implicit function
func_implicit = @(x) x.^2-x-2;

%%
% define x vector
x = [-2:0.01:3];
% calcualte y values
y = func_implicit(x);

%%
% I'm plotting functions
plot(x,y,'DisplayName',"1"); hold on
plot(x,x,'DisplayName',"2")
% plot(x,zeros(1,length(x)))
yline(0,'HandleVisibility','off')
xline(0,'HandleVisibility','off')
plot(x,x+2,'DisplayName',"3")

% legend(["Quadratic","Linear","","","HI"])
legend show

xlabel("x")
ylabel("f(x)")
title("Practice Plot")

hold off
