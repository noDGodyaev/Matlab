rgb = imread('bf3.jpg');
i = im2double(rgb2gray(rgb));
figure, imshow(i);
t = graythresh(i);
bw = i > t;
figure, imshow(bw);
