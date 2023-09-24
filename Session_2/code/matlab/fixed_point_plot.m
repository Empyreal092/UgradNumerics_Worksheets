g_1 = @(x) x.^2-2;
g_2 = @(x) -sqrt(x+2);

%%
x = -2:0.01:3;

%%
figure
plot(x,g_1(x),DisplayName="$g_1(x)$")
hold on
plot(x,g_2(x),DisplayName="$g_2(x)$")
plot(x,x,'k',DisplayName="$y=x$")

legend show
xlabel("$x$")
ylabel("$y$")
