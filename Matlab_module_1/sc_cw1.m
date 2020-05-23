t = 0 : 2*pi/360 : 2*pi;
x = exp(t);
y = 50 + exp(3*t);

subplot(2,2,1);
loglog(x,y,'LineWidth', 2);
grid on;
subplot(2,2,2);
plot (x,y,'LineWidth', 2);
grid on;
subplot(2,2,3);
semilogx(x,y,'LineWidth', 2);
grid on;
subplot(2,2,4);
semilogy(x,y,'LineWidth', 2);
grid on;