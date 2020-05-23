function [] = f_cw_img03(input_im)
info = imfinfo(input_im);

if strcmp(info.ColorType, 'truecolor')
    [i3] = imread(input_im);
    
    subplot(1,2,1);    
    i1 = rgb2gray(i3);
    imshow(i1), title('source image');
    axis on;
    xlim([0,info.Width]), ylim([0,info.Height]);
    
    subplot(1,2,2);
    i2 = rgb2gray(i3);
    MaxI = max(i2(:));
    NI = MaxI - i2;
    imshow(NI), title('negative');
    axis on;
    xlim([0,info.Width]), ylim([0,info.Height]);
elseif strcmp(info.ColorType, 'indexed')
    [i2,map] = imread(input_im);
    
    subplot(1,2,1);
    i1 = ind2gray(i2,map);    
    imshow(i1), title('source image');
    axis on;
    xlim([0,info.Width]), ylim([0,info.Height]);
    
    subplot(1,2,2);
    im_res2 = ind2gray(i2,map);
    MaxI = max(im_res2(:));
    NI = MaxI - im_res2;
    imshow(NI), title('negative');
    axis on;
    xlim([0,info.Width]), ylim([0,info.Height]);
end

