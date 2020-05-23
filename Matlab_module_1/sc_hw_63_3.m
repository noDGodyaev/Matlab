syms x y z ;
f = sin(x) - 2*y + exp(z)
int(int(int(f,x, -1, 1), y, 2, 3), z, 1, 3)
clear