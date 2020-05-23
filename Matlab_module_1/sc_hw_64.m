syms x;
f = (x+2)./(x.^2 -x -6);
vpa(limit(f,inf),3)
clear