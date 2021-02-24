global a k1 k2 k3
a=3;
k1=0.1;
k2=100;
k3=10;
tau=0.05;
h=0.05;
x=0:h:a;
N=length(x);
Tm=7;
for i=1:N
    if x(i)<=0.5*a
        y(i)=((2*Tm)/a)*x(i);
    end
    if x(i)>0.5*a
        y(i)=((2*Tm)/a)*(a-x(i));
    end
end
plot(x,y)
xlabel('x');
ylabel('T(t,x)');
hold on 

for t=1:20
    for n=2:(N-1)
        A(n)=-(tau/h^2)*k(x(n)+0.5*h);
        B(n)=1+(tau/h^2)*...
            (k(x(n)+0.5*h)+k(x(n)-0.5*h));
        C(n)=-(tau/h^2)*k(x(n)-0.5*h);
    end
    alpha(2)=0;
    beta(2)=0;
    for n=2:(N-1)
        alpha(n+1)=-A(n)/(B(n)+C(n)*alpha(n));
        beta(n+1)=(y(n)-C(n)*beta(n))/...
            (B(n)+C(n)*alpha(n));
    end
    y(N)=0;
    for n=(N-1):-1:1
        y(n)=alpha(n+1)*y(n+1)+beta(n+1);
    end
    plot(x,y)
end
