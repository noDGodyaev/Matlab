% scenario for homework ¹4
% #1
syms x;
f = abs(x+1)+abs(x+2)-2;
ezplot(f);
grid
clear
% #2
syms x f
f = abs(x+1)+abs(x+2)-2;
r = vpasolve(f,x);
vpa(r,5)
clear
