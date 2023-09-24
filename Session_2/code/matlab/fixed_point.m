close all

%%
g_2 = @(x) sqrt(x+2);
r = 5;

%%
r_save = [r];

for i=1:10
    r = g_2(r);
    r_save = [r_save r];
end

%%
figure(1)
semilogy(1:11,abs(r_save-2),'o',DisplayName="Error"); hold on
semilogy(1:11,(1/4).^[1:11],'k-',DisplayName="$(1/4)^k$")

legend show
xlabel("Steps")
ylabel("Error")





