%вырезание фрагмента изображения
i1 = imread('bf1.jpg');
[D1,rect] = imcrop(i1);
figure,imshow(D1)
rect