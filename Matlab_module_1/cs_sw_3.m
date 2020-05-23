[X, Y ] = meshgrid(-3:.25:3, -3:.25:3);
Z = sin(X ).*sin(Y );
colormap hot
subplot(2,3,1);
mesh(X, Y, Z);
subplot(2,3,2);
surf (Y, X, Z );
view (45, 45);
shading faceted
subplot(2,3,3);
surf (X, Y, Z );
shading flat
subplot(2,3,4);
surf (X, Y, Z );
shading interp
subplot(2,3,5);
[X, Y] = meshgrid(-2:.02:2);
Z = sin(X.^2 + Y.^2) + exp(-X.^2);
surf (X, Y, Z )
axis off
shading interp
alpha .8
view(-17, 19)
subplot(2,3,6);
[u, v] = meshgrid(linspace(0, pi, 25), linspace(0, 2*pi, 50));
r1 = 4*(1 - cos(u)/2);
x1 = 6*cos(u).*(1 + sin(u)) + r1.*cos(u).*cos(v);
y1 = 16*sin(u) + r1.*sin(u).*cos(v);
z1 = r1.*sin(v);
[u, v] = meshgrid(linspace(pi, 2*pi, 25), linspace(0, 2*pi, 50));
r2 = 4*(1 - cos(u)/2);
x2 = 6*cos(u).*(1 + sin(u)) + r2.*cos(v + pi);
y2 = 16*sin(u);
z2 = r2.*sin(v);
surfl(x1, y1, z1 )
hold on
surfl(x2, y2, z2 )
view(9, 21)
colormap cool
shading interp
hold off
axis equal
axis off