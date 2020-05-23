syms x y;
f = 18*x.^2*y.^2 + 32*x.^3*y;
int(int(f,x), y)
clear