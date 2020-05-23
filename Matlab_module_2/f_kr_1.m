function [] = f_kr_1(input_im)
info = imfinfo(input_im);

if strcmp(info.ColorType, 'truecolor')
    rgbHist(input_im);
    im = noisergb(input_im);
    subplot(3,2,4);
    im_med = medfilt2(im);
    imshow(im_med),title('Median filter');
    sfilterrgb(input_im);
    subplot(3,2,6);  
    write_into_file_rgb(im_med);
    imD = im2double(im);
    noise = nlfilter(imD,[3 3], @MYnlfilter, 0.2);
    imshow(noise), title('nlfilter');
elseif strcmp(info.ColorType, 'indexed')
    indHist(input_im);
    im = noiseind(input_im);
    subplot(3,2,4);
    im_med = medfilt2(im);
    imshow(im_med), title('Median filter');
    sfilterind(input_im);
    subplot(3,2,6); 
    imD = im2double(im);
    noise = nlfilter(imD,[3 3], @MYnlfilter, 0.2);
    imshow(noise), title('nlfilter');
    write_into_file_ind(im_med);
end
function [] = rgbHist(input_im)
    [i] = imread(input_im);
    figure, imhist(i), title('Histogramm');
    
    figure, subplot(3,2,1);   
    imshow(i), title('source image');
    
end %функция для построения гистограммы полноцветного изображения
function [] = indHist(input_im)
    [i1,map] = imread(input_im);  
    
    figure, imhist(i1, map), title('Histogramm'); 
    
    figure, subplot(3,2,1);
    imshow(i1,map);
    title('source image');
    
end %функция для построения гистограммы индексированного изображения
function returnedImage = noisergb(input_im)
	[i] = imread(input_im);
    S = rgb2gray(i);
    subplot(3,2,2);
    imshow(S), title('Gray');
    returnedImage = imnoise(S, 'salt & pepper');
    subplot(3,2,3);
    imshow(returnedImage), title('Noise');
    
end %функция для добавления шума на полноцветное изображение
function returnedImage = noiseind(input_im)
	[i2, map] = imread(input_im);
    S = ind2gray(i2, map);
    subplot(3,2,2);
    imshow(S), title('Gray');
    returnedImage = imnoise(S, 'salt & pepper');
    subplot(3,2,3);
    imshow(returnedImage), title('Noise');
end %функция для добавления шума на индексированное изображение
function im_upgrade = sfilterrgb(input_im)
    [image] = imread(input_im);
    S = im2double(rgb2gray(image));
    h = fspecial('prewitt');
    subplot(3,2,5);
    S1 = filter2(h,S);
    S2 = filter2(h',S);
    im_upgrade = S - S2 - S1;
    imshow(im_upgrade), title('sfilter');
end  %функция специальной фильтрации для полноцветного изображения
function im_upgrade = sfilterind(input_im)
    [image, map] = imread(input_im);
    S = im2double(ind2gray(image, map));
    h = fspecial('prewitt');
    subplot(3,2,5);
    S1 = filter2(h,S);
    S2 = filter2(h',S);
    im_upgrade = S - S2 -S1;
    imshow(im_upgrade), title('sfilter');
    
end  %функция специальной фильтрации для индексированного изображения

function [] = write_into_file_rgb(input_im)
    imwrite(input_im, 'rgb.jpg');
end %функция записи полноцветного изображения в файл
function [] = write_into_file_ind(input_im)
    imwrite(input_im, 'ind.bmp');
end %функция записи индексированного изображения в фай
end
