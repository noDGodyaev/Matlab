function z=k(x)
global a k1 k2 k3
if (x>=0)&&(x<=a/3)
    z=k1;
end
if (x>a/3)&&(x<=(2*a)/3)
    z=k2;
end
if(x>(2*a)/3)&&(x<=a)
    z=k3;
end