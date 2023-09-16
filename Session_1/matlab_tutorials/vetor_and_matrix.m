x = 0:0.1:1;
disp(x)

%%
v_ones = ones(10,1);
v_randn = randn(10,1);

%%
func_implicit = @(x) x.^2-x-2;
disp(func_implicit(x))

%%
m_randn1 = randn(2,3);
m_randn2 = randn(2,3);

elem_mul = m_randn1.*m_randn2;
matrx_mul = m_randn1*m_randn2';

%%
disp(m_randn1);
disp(m_randn1(1,2))
disp(m_randn1(1,:))

%%
size(m_randn1)
height(m_randn1)
width(m_randn1)
sum(m_randn1,1)

%%
ary_1 = randn(1,100000000);
ary_2 = randn(1,100000000);

%%%%%%%%%%%
tic

dot_prod = 0;
for i = 1:width(ary_1)
    dot_prod = dot_prod+ary_1(i)*ary_2(i);
end
toc
disp(dot_prod)

%%%%%%%%%%%
tic

dot_prod_vec = ary_1*ary_2';

toc
disp(dot_prod_vec)
