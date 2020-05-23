[x, map] = imread('Technlgy.bmp');
i = ind2gray(x,map);
bw = im2bw(x,map);
figure, imshow(bw);
t = graythresh(i);
bw = i < t;
bw = im2bw(i,t);
figure, imshow(bw);