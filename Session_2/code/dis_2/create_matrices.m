Z = zeros(3,4);

O = ones(4,3);

I = eye(3,4);

fancy = reshape([1:15],5,3);
fancy_v = fancy(:);

Rnormal = randn(1e5,1);
Runiform = rand(1e5,1);

%%
% Rnormal*Runiform';

%%
hist(Rnormal)


