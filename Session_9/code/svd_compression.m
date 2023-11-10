I = imread("cat.jpg");
I = flip(rgb2gray(I),1);
I = double(I)/256;

%%
[u,s,v] = svd(I);
ru = u;
rs = s(:,1:3000);
rv = v(:,1:3000);

ir = ru*rs*rv';

%%
d_save = 50;

% cu = ru(1:d_save,1:d_save);
% cs = rs(1:d_save,1:d_save);
% cv = rv(1:d_save/3*4,1:d_save);

cu = ru(:,1:d_save);
cv = rv(:,1:d_save);

cs = rs(1:d_save,1:d_save);

ic = cu*cs*cv';

%%
heatmap2d(ic)
colormap('gray');

