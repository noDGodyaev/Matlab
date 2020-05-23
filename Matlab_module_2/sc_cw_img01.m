clear all
%info = imfinfo('Athena.bmp')
%info = imfinfo('Technlgy.bmp')
%info = imfinfo('bf1.jpg')
%info = imfinfo('bf3.jpg')

%[X,map] = imread('Handshak.bmp');
%whos X
%imshow(X,map)
%[X,map] = imread('bf1.jpg');
%whos X
%imshow(X)
%imwrite(x, map, hand3.bmp)

[X,map] = imread('Handshak.bmp');
whos X;
Hand1 = im2double(X, 'indexed');
whos Hand1;
imshow(Hand1, map);
Hand1_m = mat2gray(Hand1);
whos Hand1_m;
Hand1_m;
imshow(Hand1_m);
Hand2 = im2uint8(Hand1, 'indexed');
whos Hand2;
Hand2;
imshow(Hand2, map)
