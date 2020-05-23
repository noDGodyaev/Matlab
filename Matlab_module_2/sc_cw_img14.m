[x, map] = imread('Athena.bmp');
i = im2double(ind2gray(x,map));
figure, imshow(i);
t = 0.5*(min(i(:)) + max(i(:)));
done = false;
while ~done
    g = i >= t;
    tnext = 0.5*(double(min(i(g))) + double(max(i(g))));
    done = abs(t - tnext) < 0.5;
    t = tnext;
end
bw = i > t;
figure, imshow(bw);