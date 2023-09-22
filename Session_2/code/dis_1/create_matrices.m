I = eye(3);

Ones = ones(3,4);

Zeros = zeros(4,3);

R = randn(4,3);

R_uni = rand(3,2);

vec_rand = randn(3,1);

R*vec_rand;

R*R_uni

A = randn(10,10);

eA = exp(A);
A_2 = log(eA);

% sum(norm(A-A_2)<1e-10,'all')

norm(A-A_2,1)<1e-10

% abs(x-y)<epsilon


% hist(r)

