tf=1;
sigma=3;
L=2*pi*sqrt(sigma+1)/sigma;
t=0.98:0.001:0.99;
x=-L:0.01:L;
hold on;
xlabel('x');
ylabel('T(t,x)');
for i=1:length(t)
    for j=1:length(x)
        T(j)=0;
        if abs(x(j))<0.5*L
            T(j)=(tf-t(i))^(-1/sigma)*...
                (((2*(sigma+1))/(sigma*sigma+2)))*...
                (cos((pi*x(j))/L))^2^(1/sigma);
        end
    end
    plot(x,T)
end
