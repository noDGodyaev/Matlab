syms x;
f = (sqrt(x)+1)./(x.^2+2*x);
int(f,x)
clear