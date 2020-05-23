clear all;
D = eye(100, 100);
C = logical(D);
BI2 = [1 1 1 1; 1 0 0 0; 1 1 1 1; 1 0 0 1; 1 0 0 1; 1 1 1 1];
BI = logical(BI2);
C(10:15, 2:5) = BI;

subplot(2,2,1);
imshow(C)
axis on;
subplot(2,2,2);
C = logical(D);
C(10:15, 2:5) = BI;
C = flip(C,1);
imshow(C);
axis on;

subplot(2,2,3);
out = D([1,50:end],[1,50:end]);
C = logical(out);
imshow(C);
axis on;
xlim([0,100]);
ylim([0,100]);

subplot(2,2,4);
out = D(10:end-25, 10:end-25);
C = logical(out);
imshow(C);
axis on;
xlim([0,100]);
ylim([0,100]);