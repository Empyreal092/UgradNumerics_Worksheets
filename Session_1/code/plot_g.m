%% Define implicit function
g1 = @(x) x.^2-2;
g2 = @(x) sqrt(x+2);

%%
% define x vector
x = [-2:0.01:3];
% calcualte y values
y1 = g1(x);
y2 = g2(x);

%%
plot(x,y1,'DisplayName','$g_1(x)$'); hold on
plot(x,y2,'DisplayName','$g_2(x)$');
plot(x,x,'k','DisplayName','$y=x$')

legend show

xlabel("$x$")
ylabel("$g(x)$'s")
title("Practice Plot")