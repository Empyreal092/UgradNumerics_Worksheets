A = [3 3 0;
     6 4 7;
     -6 -8 9];

% call the lu function
[L,U] = lu_nopivot(A);

%% backward substitution
b = [1;0;0];

y = L\b;
x = U\y;

x

x_1 = A\b

%% Determinant of A
det(A)
