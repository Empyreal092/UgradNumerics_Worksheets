A = [3 3 0;
     6 4 7;
     -6 -8 9];

[L,U] = lu_nopivot(A);

%%
b = [1;0;0];

y = L\b;
x = U\y;

x

x_1 = A\b

%%
det(A)
