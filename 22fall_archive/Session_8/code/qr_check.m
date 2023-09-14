A = [1 0 1;
     2 1 3;
     0 2 4];

[Q,R] = qr(A);

%%
v = [-sqrt(5)-1 -2 0]';
Q_1 = eye(3)-2*v*v'/(v'*v);

Q1A = Q_1*A;

%%
Q1A_sub = Q1A(2:end,2:end);

first_col_length = sqrt(Q1A_sub(1,1)^2+Q1A_sub(2,1)^2);
v = (-first_col_length*[1 0]'-Q1A_sub(:,1));

Q_2_sub = eye(2)-2*v*v'/(v'*v);

Q_2 = eye(3); Q_2(2:end,2:end) = Q_2_sub;

R_0 = Q_2*Q_1*A;

%%
Q_t = Q_2*Q_1;
Q_0 = Q_t'
