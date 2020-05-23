function [] = f_cw_img03(input_im)
info = imfinfo(input_im);

if strcmp(info.ColorType, 'truecolor')
    write_into_file_rgb(f_cw_img03_1(input_im));
elseif strcmp(info.ColorType, 'indexed')
    write_into_file_ind(f_cw_img03_2(input_im));
end
function i2_1 = f_cw_img03_1(input_im)
    [i] = imread(input_im);
    
    subplot(1,3,1);    
    i1 = rgb2gray(i);
    imshow(i1), title('source image');
    axis on;
    xlim([0,info.Width]), ylim([0,info.Height]);
    
    subplot(1,3,3);
    i2 = rgb2gray(i);
    i2_1 = imadjust(i2,[0 0.9],[],0.5);
    imshow(i2_1);
    axis on;
    xlim([0,info.Width]), ylim([0,info.Height]);
    
    subplot(1,3,2);    
    i2_2 = imadjust(i2,[0 0.9],[],2);
    imshow(i2_2);
    axis on;
    xlim([0,info.Width]), ylim([0,info.Height]);
end
function i4_1 = f_cw_img03_2(input_im)
    [i,map] = imread(input_im);
    
    subplot(1,3,1);
    i4 = ind2gray(i,map);    
    imshow(i4), title('source image');
    axis on;
    xlim([0,info.Width]), ylim([0,info.Height]);
    
    subplot(1,3,2);
    i4_1 = imadjust(i4,[0 0.9],[],0.5);
    imshow(i4_1);
    axis on;
    xlim([0,info.Width]), ylim([0,info.Height]);
    
    subplot(1,3,3);
    i5 = ind2gray(i,map); 
    i5_1 = imadjust(i5,[0 0.9],[],2);   
    imshow(i5_1);
    axis on;
    xlim([0,info.Width]), ylim([0,info.Height]);
    
end
function [] = write_into_file_rgb(input_im)
    imwrite(input_im, 'rgb.jpg');
end
function [] = write_into_file_ind(input_im)
    imwrite(input_im, 'ind.bmp');
end
end