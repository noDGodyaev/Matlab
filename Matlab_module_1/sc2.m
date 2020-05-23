%scenario 2 sc2
x = linspace(-1, 1, 50);
y1 = 5 - 3*x.^3-2*x.^2;
y2 = 4 - 2*x.^2+3*x;
plot(x,y1,x,y2)
grid
clear
syms x y
[x,y] = solve(3*x.^3+2*x.^2 + y ==5,2*x.^2-3*x+y == 4);
vpa(x,4)
vpa(y,4)
clear