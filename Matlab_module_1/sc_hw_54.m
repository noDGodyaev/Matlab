[X,Y] = meshgrid(linspace(-5, 5, 20));
Z = sqrt((1 - X.^2./50 - Y.^2./50)*50);
mesh(X,Y,Z)
hold on
mesh(X,Y,-Z)
hold off
grid off
hidden off
axis([-5 5 -5 5 -10 10 ])
clear