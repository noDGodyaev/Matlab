% scenario homework ¹3
x = -4: 0.4: 4;
f = sin(x.^2) + cos(x);
y = x.^2-4;
z = sqrt(abs(x))-0.8;
plot(x,f,x,y,x,z);