function [fl_x] = fl_round(x,n)

if x>0
    k = floor(log(x)/log(10));
    x_norm = x/10^k;
    x_norm_chop = round(x_norm*10^(n-1))/10^(n-1);
    fl_x = x_norm_chop*10^k;
elseif x == 0
    fl_x = 0;
else
    x = -x;
    k = floor(log(x)/log(10));
    x_norm = x/10^k;
    x_norm_chop = round(x_norm*10^(n-1))/10^(n-1);
    fl_x = x_norm_chop*10^k;
    fl_x = -fl_x;
end

end

