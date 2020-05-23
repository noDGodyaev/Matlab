
[Im_2, map] = imread('technlgy.bmp');
imshow(Im_2, map);
[Im_2_res, new_map] = imresize(Im_2, map, 0.25, 'bilinear');
figure, imshow(Im_2_res, new_map);