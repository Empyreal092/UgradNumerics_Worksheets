x = 0:0.1:10;
y = sin(x);

plot(x,y,'DisplayName',"$\sin(x)$")
hold on
plot(x,cos(x),'DisplayName',"$\cos(x)$")
yline(0,'k--')

ylim([-1.5,2])
legend show
title("Some functions")
xlabel("$x$")
ylabel("$y$")

%%
x = 0:1:10;
semilogy(x,exp(x),'o-','DisplayName',"$e^x$")

legend show
xlabel("$x$")
ylabel("$y$")

%%
x = 0:1:10;
loglog(x,x.^2/1.2,'o','DisplayName',"Data")
hold on
loglog(x,x.^2,'k','DisplayName',"$x^2$")
loglog(x,x.^3,'o','DisplayName',"$x^3$")

legend show
legend('Location','best')
xlabel("$x$")
ylabel("$y$")

exportgraphics(gcf,'example.pdf')
