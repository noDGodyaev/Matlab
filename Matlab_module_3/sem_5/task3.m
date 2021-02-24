eps=[4^-1,4^-2,4^-3,4^-4,4^-5,4^-5];
n=10^6; %10, 10^2, 10^3, 10^4, 10^5, 10^6
N=10^2;
p=zeros(1,length(eps));
for m=1:length(eps)
    for i=1:N
        Xn=sum(round(rand(1,n)))/n;
        if abs(Xn-0.5)<eps(m)
            p(m)=p(m)+1;
        end
    end
end
disp(p/N);