function [] = f_cw_img03(input_im)
info = imfinfo(input_im);

if strcmp(info.ColorType, 'truecolor')
    [i3] = imread(input_im);
    
    subplot(1,2,1);    
    imshow(i3), title('source image');
    axis on;
    xlim([0,info.Width]), ylim([0,info.Height]);
    
    subplot(1,2,2);
    im_res2 = imresize(i3, 0.5, 'bilinear');
    imshow(im_res2), title('bilinear');
    axis on;
    xlim([0,info.Width]), ylim([0,info.Height]);
elseif strcmp(info.ColorType, 'indexed')
    [i2,map] = imread(input_im);
    
    subplot(1,2,1);    
    imshow(i2,map), title('source image');
    axis on;
    xlim([0,info.Width]), ylim([0,info.Height]);
    
    subplot(1,2,2);
    [im_res2, newmap] = imresize(i2,map, 0.5, 'bilinear');
    imshow(im_res2, newmap), title('bilinear');
    axis on;
    xlim([0,info.Width]), ylim([0,info.Height]);
end

