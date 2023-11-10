A = randn(10,10);
A = A'+A;

[U_t,lamb_t] = eig(A);

disp(eig(A))

%%
v_iter = randn(10,1);
lamb_iter = 4;

for i = 1:5
    v_iter = (A-lamb_iter*eye(10))\v_iter;
    v_iter = v_iter/norm(v_iter,2);
    lamb_iter = v_iter'*A*v_iter;

    disp(abs(lamb_iter-lamb_t(end-2,end-2)))

end