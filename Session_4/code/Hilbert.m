n_ary = [3,5,10,20,25];

for n = n_ary
    H = zeros(n,n);
    
    for i = 1:n
        for j = 1:n
            H(i,j) = 1/(i+j-1);
        end
    end

    disp(cond(H,2))
end