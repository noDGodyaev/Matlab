[X,Y] = meshgrid(-4:0.2:4);
Z = (X.^2./8-Y.^2./8)/2;
surf (X,Y,Z);
zlim([-2 2])
clear