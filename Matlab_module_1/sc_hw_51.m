%Задание 1
x = -5:0.5:5;
y = -5:0.5:5;
[X,Y] = meshgrid(x,y);
Z = 2*X.*sin(X)+3*Y.*cos(Y);
surf (X, Y, Z )
clear