% Задание 2
x = -2:0.2:2;
y = -2:0.2:2;
[X,Y] = meshgrid(x,y);
Z = X.^2+Y.^2;
subplot(2,2,1);
surfc (X, Y, Z);
shading flat;
axis ([-2 2 -2 2 0 9]);
subplot(2,2,2);
waterfall (X, Y, Z);
subplot(2,2,3);
plot3 (X, Y, Z, 's');
clear