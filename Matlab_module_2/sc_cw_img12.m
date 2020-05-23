[x,map] = imread('Athena.bmp');
i = im2double(ind2gray(x, map));
figure, imshow(i);
i1 = imnoise(i, 'salt & pepper');
figure, imshow(i1);
i2 = nlfilter(i1,[3 3], @f_cw_img07, 0.2);
figure, imshow(i2);