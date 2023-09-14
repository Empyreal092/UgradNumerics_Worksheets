m = 10;
n = 5;

%%
A = randn(m+n);

A11 = A(1:n,1:n);
A12 = A(1:n,n+1:end);
A21 = A(n+1:end,1:n);
A22 = A(n+1:end,n+1:end);

B = randn(m+n);

B11 = B(1:n,1:n);
B12 = B(1:n,n+1:end);
B21 = B(n+1:end,1:n);
B22 = B(n+1:end,n+1:end);

%%
C = A*B;

C11 = A11*B11+A12*B21;
C12 = A11*B12+A12*B22;
C21 = A21*B11+A22*B21;
C22 = A21*B12+A22*B22;

C_block = [C11 C12;C21 C22];

%% Be careful how to check if two matrices are the same!
sum(abs(C-C_block)<1e-10,'all')
norm(C-C_block)
(n+m)^2
