for i = 1:10
    disp(i)
end

%%
some_num = 4.5;

if (round(some_num)==some_num) && some_num >3
    disp(some_num+" is an integer larger than 3")
else
    disp("Not")
end

%%
disp(func(10))

%%
func_implicit = @(x) x.^2-x-2;
disp(func_implicit(10))



