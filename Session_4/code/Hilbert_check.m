n = 25;

H = zeros(n,n);

for i = 1:n
    for j = 1:n
        H(i,j) = 1/(i+j-1);
    end
end

disp(cond(H,2))

%%
b = zeros(n,1);

for i = 1:n
    for j = 1:n
        b(i) = b(i)+j/(i+j-1);
    end
end

%%
x = H\b;
b_rec = H*x;

rhs = norm(b-b_rec,2)/norm(b)*cond(H,2);
lhs = norm(x-[1:n]',2)/norm([1:n],2);
disp(rhs)
disp(lhs)
disp(rhs/lhs)




