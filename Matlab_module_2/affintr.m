function I1 = affintr(I,T)
tform = affine2d(T);
i1 = imwarp(I, tform);
I1 = i1;
end