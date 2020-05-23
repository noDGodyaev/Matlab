syms x;
y = exp(x) + x.^4./3;
diff(y,6)
clear