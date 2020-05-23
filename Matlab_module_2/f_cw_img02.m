function [] = f_cw_img02()
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
[bf1] = imread('bf1.jpg');
bf2 = bf1;
subplot(1,2,1);
imshow(bf1);

subplot(1,2,2);
for i = 1:size(bf2, 1)
    for j = 1:size(bf2,2 )
        if(bf1(i,j)==0)
            bf2(i,j) = 200;
        end
    end
end
imshow(bf2);
end

