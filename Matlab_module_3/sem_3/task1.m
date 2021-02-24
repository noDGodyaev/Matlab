k=1;
a=1;
q=1;
p=2;
N=40;
t=0:0.05:10;
x=0:0.1:a;

for n=1:N
    alpha(n)=((a*(q-p))/(pi*n))*cos(0.5*pi*n)+...
        ((2*a*(q+p))/(pi^2*n^2))*sin(0.5*pi*n);
end
for j=1:length(x)
    if x(j)<=0.5*a
        T(j)=p*x(j);
    end
    if x(j)>0.5*a
        T(j)=q*(a-x(j));
    end
end
plot(x,T,'color','red','LineWidth',3);
hold on
xlabel('x');
ylabel('T');
for i=1:length(t)
    for j=1:length(x)
        s=0;
        for n=1:N
            s=s+alpha(n)*...
                exp(-(pi^2*n^2*k*t(i))/a^2)*...
                sin((pi*n*x(j))/a);
        end
        T(j)=s;
        plot(x,T);
        
    end
end    
   
