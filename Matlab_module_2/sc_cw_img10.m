clear
[S, map] = imread('Athena.bmp');
i = ind2gray(S,map);

S2 = imnoise(i, 'salt & pepper');
imshow(S2,[]);
D = medfilt2(S2);
figure, imshow(D,[]);
