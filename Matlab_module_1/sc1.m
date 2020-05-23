%—ценарий sc_2
%homework 4
% #1
A = [7,2; 1,4];
B = [2;1];
X = A^-1*B
clear A B X
% #2
A = [7,2;1,4];
A1 = [2,2;1,4 ];
A2 = [7,2;1,1];
x1  =det(A1)/det(A)
x2  =det(A2)/det(A)
clear A A1 A2 x1 x2
% #3
x = -5: 0.1: 5;
y1 = (2-7*x)/2;
y2 = (4-x)/4;
plot(x,y1,x,y2);
grid;
clear
% #4
syms x y;
[x,y] = solve(7*x+2*y==2, x+4*y==1);
vpa(x,4)
vpa(y,4)
clear
