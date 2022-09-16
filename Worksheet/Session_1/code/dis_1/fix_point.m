% g = @(x) x.^2-2;
g = @(x) sqrt(x+2);

f = @(x) x.^2-x-2;

%%
x_0 = 5;
x_k = x_0;

%%
x_k_hist = nan(1,20);
for i = 1:20
    x_k = g(x_k);
%     x_k_hist = [x_k_hist x_k];
    x_k_hist(i) = x_k;
    if abs(f(x_k)) < 1e-10
        break
    end
end

%%
plot(1:20,x_k_hist,'o')
ylabel("$x_k$")
xlabel("Iterantion Number")

%%
x_diff = abs(x_k_hist(1:end-1)-x_k_hist(2:end));

figure
semilogy(1:19,x_diff,'o'); hold on
semilogy(1:19,(1/4).^[1:19])
ylabel("$|x_{k+1}-x_k|$")
xlabel("Iterantion Number")

