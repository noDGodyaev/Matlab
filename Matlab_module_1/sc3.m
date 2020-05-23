%scenario sc3
syms x y z
[x,y,z] = solve(x.^3-2*x.^2+3*y+z==2, 2*x.^2-x+y.^2-z.^2==1, y.^3-2*z.^2+3*z==1);
vpa(x,4)
vpa(y,4)
vpa(z,4)