clear
[S, map] = imread('Athena.bmp');
i = ind2gray(S,map);

subplot (1,4,1);
imshow(S, map);

subplot (1,4,2)
S1 = imnoise(i, 'gaussian', 0,0.1);
imshow(S1);
subplot (1,4,3);
S2 = imnoise(i, 'salt & pepper');
imshow(S2);
subplot (1,4,4);
S3 = imnoise(i, 'speckle');
imshow(S3);
