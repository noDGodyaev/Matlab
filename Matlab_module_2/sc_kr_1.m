clear;
%чтение изображений
Im = imread('bf1.jpg'); %чтение изображений
Im_1 = imread('bf3.jpg');
[Im_2, map] = imread('technlgy.bmp');
%
rect = [1,1,600,499]; %размер вырезаемого куска
%image1
% изменение размера и отделение части изображения
T = [3 0 0; 0 2 0; 0 0 1];
Im_resized = affintr(Im, T);
[cut, rect] = imcrop(Im_resized, rect);
%
%image2
% изменение размера с поворотом, растяжением, изменением размера и
% отделение части изображения
Tscale = [1.5 0 0;0 2 0; 0 0 1];
Trot = [cos(pi) sin(pi) 0; -sin(pi) cos(pi) 0; 0 0 1];
Tshear = [1 0 0; 2 1 0; 0 0 1];
T = Tscale*Trot*Tshear;
Im1_rotated_scaled_sheared = affintr(Im_1, T);
[cut_1, rect] = imcrop(Im1_rotated_scaled_sheared, rect);
%
%image3
% изминение размера индексированного изображения с билинейной фильтрацией
[Im_2_res, new_map] = imresize(Im_2, map, 0.5, 'bilinear');
[cut_2, rect] = imcrop(Im_2_res, new_map, rect);
%
% вывод иображения на экран
subplot(4,2,1)
imshow(Im);
subplot(4,2,2)
imshow(Im_resized);

subplot(4,2,3)
imshow(Im_1);
subplot(4,2,4)
imshow(Im1_rotated_scaled_sheared);

subplot(4,2,5)
imshow(Im_2, map);
subplot(4,2,6)
imshow(Im_2_res, new_map);

subplot(4,2,7)
IM_2_rgb = ind2rgb(cut_2, new_map);
IM_2_rgb_uint = im2uint8(IM_2_rgb);
x = [cut cut_1 IM_2_rgb_uint];
imshow(x);
%
imwrite(x,'x.jpg','jpg')%запись изображения в файл