function [fl_x] = fl_chop(x,n)

k = floor(log(x)/log(10));
x_norm = x/10^k;
x_norm_chop = floor(x_norm*10^(n-1))/10^(n-1);
fl_x = x_norm_chop*10^k;

end

