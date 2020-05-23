clear all
close all
x = linspace(-1, 1, 50);
y = linspace(-1, 1, 50);
[X,Y] = meshgrid(x,y);
Z = exp(-X.^2-Y.^2);
subplot(2,2,1);
plot3(X,Y,Z);
subplot(2,2,2);
mesh(X,Y,Z);
subplot(2,2,3);
surf(X,Y,Z);