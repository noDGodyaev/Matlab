nmax=4;
syms x0 u0 x
x0=0;
u0=0;
u=u0;
for iter=1:nmax
    u=u0+int(x^2+u^2,x0,x);
    disp(char(u));
end
