function [] = f_cw_img03(input_im)
info = imfinfo(input_im);

if strcmp(info.ColorType, 'truecolor')
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
elseif strcmp(info.ColorType, 'indexed')
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

