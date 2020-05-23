clear all;
%вырезание фрагмента изображения 1 вручную
[i2,map] = imread('Athena.bmp');
[D2, rect] = imcrop(i2, map);
figure, imshow(D2,map);
clear all;
%вырезание фрагмента изображения 2 прогграммно
[i2,map] = imread('Athena.bmp');
rect = [1,1,200,200];
[D2, rect] = imcrop(i2, map,rect);
figure, imshow(D2,map);