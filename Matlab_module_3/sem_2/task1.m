alpha=0.4;
f=@(x,u)x*u;
mesh=10:50:10000;
for k=1:length(mesh)
    y(1)=1;
    N=mesh(k);
    h=1.0/(N-1);
    for n=1:(N-1)
        x(n)=(n-1)*h;
        y(n+1)=y(n)+h*((1-alpha)*f(x(n),y(n))+...
            alpha*f(x(n)+h/(2*alpha),y(n)+(h/(2*alpha))*f(x(n),y(n))));
    end    
    M(k)=abs(y(N)-exp(0.5))/h^2;
    step(k)=h;
end    
        
semilogx(step,M);
