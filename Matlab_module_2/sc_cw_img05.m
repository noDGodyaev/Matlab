clear all;
%изменение размеров изображения 1 вручную
[i3] = imread('bf3.jpg');
imshow(i3);
im_res = imresize(i3, 0.5);
figure, imshow(im_res);
im_res = imresize(i3, 0.5, 'bilinear');
figure, imshow(im_res), title('bilinear');
im_res = imresize(i3, 0.5, 'bicubic');
figure, imshow(im_res), title('bicubic');