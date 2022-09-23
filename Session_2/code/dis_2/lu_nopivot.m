function [L,U] = lu_nopivot(A)

% get the size of A
m = length(A);
% should check if A is square

U = A; L = eye(m);
% double loop: Gaussian elimination
for k = 1:(m-1)
    for j = k+1:m
        L(j,k) = U(j,k)/U(k,k);
        U(j,k:m) = U(j,k:m)-L(j,k)*U(k,k:m);
        disp("L="+mat2str(L)+"; U="+mat2str(U))
    end
end

end

