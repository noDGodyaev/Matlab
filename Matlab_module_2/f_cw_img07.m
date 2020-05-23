function R = f_cw_img07(x,th)
[r c] = size(x);
n = r*c;
r = floor((r+1)/2);
c = floor((c+1)/2);
s = sum(x(:))/n;
if (abs(x(r,c) - s)) > th
    R =s;
else
    R = x(r,c);
end
end

