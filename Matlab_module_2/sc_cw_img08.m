BF3 = imread('bf3.jpg');
figure, imshow(BF3);
BF3_gr = rgb2gray(BF3);
figure, imshow(BF3_gr);
figure, imhist(BF3_gr);