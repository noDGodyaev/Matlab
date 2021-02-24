k0=1;
sigma=3;
c=4;
x0=0.5;
t=0:0.025:1;
x=0:0.01:5;
hold on;
xlabel('x');
ylabel('T(t,x)');
for i=1:length(t)
    for j=1:length(x)
        T(j)=0;
        if x(j)<=x0+c*t(i)
            T(j)=(((c*sigma)/k0)*abs(x0-x(j)+c*t(i)))^(1/sigma);
        end
    end
    plot(x,T)
end
