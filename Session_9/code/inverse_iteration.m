clear all
close all

%%
n = 10;

temp = randn(n,n);
A = temp+temp';

x_0 = randn(n,1);

theta = 1;

%%
[V,Lambda] = eig(A);
[inverse_max,max_i] = max( 1./(abs(diag(Lambda)-theta)) );
eval_max = Lambda(max_i,max_i);
evec_max = V(:,max_i);

eval_sort = sort( 1./(abs(diag(Lambda)-theta)) );
inverse_2ndmax = eval_sort(end-1);

%%
max_iter = 40;
evec_error_save = nan(1,n);
eval_error_save = nan(1,n);

x_iter = x_0;
for i = 1:max_iter
    x_iter = (A-theta*eye(n))\x_iter;
    x_iter = x_iter/norm(x_iter);
    evec_error_save(i) = min(norm(evec_max-x_iter),norm(-evec_max-x_iter));

    rlqt = x_iter'*A*x_iter;
    eval_error_save(i) = abs(abs(eval_max)-abs(rlqt));
end

%%
figure(3)
iter_ary = 1:max_iter;
semilogy(iter_ary,evec_error_save,'ro'); hold on
semilogy(iter_ary,eval_error_save,'bo');
semilogy(iter_ary,(inverse_2ndmax/inverse_max).^iter_ary,'k')
semilogy(iter_ary,(inverse_2ndmax/inverse_max).^(2*iter_ary)*10,'k--')
legend(["error($v^k$)","error($\lambda^k$)"])

ylimm = ylim; ylim([1e-18 ylimm(2)])
xlabel("Iteration Number ($k$)")
ylabel("Errors")

hold off

