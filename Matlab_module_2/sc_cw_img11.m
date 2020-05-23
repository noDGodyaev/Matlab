clear
bf3 = imread('bf3.jpg');
gr = rgb2gray(bf3);
d = im2double(gr);
n = imnoise(d, 'gaussian');
imshow(n);
fun = @(x)median(x(:));
f = nlfilter(n, [3 3], fun);
figure, imshow(f);
