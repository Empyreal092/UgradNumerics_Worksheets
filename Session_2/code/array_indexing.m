%% array definition
A = [3 3 0;
     6 4 7;
     -6 -8 9;
     -6 -8 9];
 
x = [1 2 3 11 12 13];
y = [1;2;3];

%% get the size of matrices
size(A)
length(A)
width(A)
height(A)

%% Array indexing
A(2,2) = 3;
disp(A);

x(2:end-1);

v = [1:5];
x(v); % x(1:5)




