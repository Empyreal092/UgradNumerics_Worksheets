clear all
close all

%%
x_k = 0.5;

% x_k_ary = [];
% for i = 1:10
%     x_k = x_k^2;
%     x_k_ary = [x_k_ary x_k];
% end


x_k_ary = [1 0.6648 0.4404 0.2895 0.1869 0.1155 0.0638 0.025417 0.0032 0.000008 0.0000000000001];

%%
figure(2)
% loglog(x_k_ary(1:end-1),x_k_ary(2:end),'o'); hold on
% loglog(x_k_ary(1:end-1),x_k_ary(1:end-1).^2)
% xlabel("$|x_{k}|$"); ylabel("$|x_{k+1}|$")

%%
x_plot = log(x_k_ary(3:end))./log(x_k_ary(2:end-1));
y_plot = log(x_k_ary(2:end-1))./log(x_k_ary(1:end-2));

plot(x_plot,y_plot,'o'); hold on
plot(x_plot,3*x_plot)



