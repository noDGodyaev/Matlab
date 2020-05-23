%scenario homework 4(II)
% #1
syms x
f = 10*x.^3-3*x.^2-2*x+0.5;
ezplot(f)
grid on
clear
% #2
syms x
f = 10*x.^3-3*x.^2-2*x+0.5;
r = solve(f,x);
vpa(r,5)
clear
% #3
a = [10 -3 -2 0.5];
res = roots(a)
clear