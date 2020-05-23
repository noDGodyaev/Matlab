I = checkerboard(40);
T = [3 0 0; 0 2 0;0 0 1];
tform = affine2d(T);
I1 = imwarp(I, tform);
figure, imshow(I)
figure, imshow(I1)
