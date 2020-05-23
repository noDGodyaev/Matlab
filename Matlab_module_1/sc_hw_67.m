syms x(t);
eqn = diff(x,t) == t.^2*x.^4 - x/t;
cond = x(1)==1/(3^(1/3));
f = dsolve( eqn,cond);
ezplot(f)
grid
clear
