Z = zeros(3,4);

O = ones(4,3);

I = eye(3,4);

fancy = reshape([1:15],5,3);
fancy_v = fancy(:);

Rnormal = randn(3,4);
Runiform = rand(2,4);

%%
Rnormal*Runiform';

%%
% hist(Rnormal)


