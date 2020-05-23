[D,map] = imread('Construc.bmp');
I = ind2gray(D,map);
figure, imshow(I);
MaxI = max(I(:));
NI = MaxI - I;
figure, subplot(1,2,1), imshow(I);
subplot(1,2,2),imshow(NI);