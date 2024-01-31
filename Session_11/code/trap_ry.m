function result = trap_ry(n,f)

    x_ary = linspace(0,2*pi,n);
    h = 2*pi/(n-1);
    
    f_ary = f(x_ary);
    
    trap = sum(f_ary(2:end-1))*h;
    trap = trap + (f_ary(1)+f_ary(end))*h/2;

    result = trap;
end

