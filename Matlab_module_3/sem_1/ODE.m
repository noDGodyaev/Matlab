syms u(x)
Dy=diff(u,2,x);

uSol(x) = dsolve(diff(u,2,x) == 5*u,u(0) == 5, Dy(0)==3);
%uSol(x) = dsolve(diff(u,x) == (u-x)/(u+x));
disp(char(uSol(x)));

