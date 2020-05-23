t = [0: .1:10]';
y1 = 1.1 * exp(-0.25*t) .* sin(0.97*t);
y2 = 1.09 * exp(-0.35*t) .* sin(0.94*t);
y3 = 1.15 * exp(-0.5*t) .* sin(0.87*t);
y4 = 0.45 * (exp(-0.38*t) - exp(-2.62*t));
y5 = 0.20 * (exp(-0.21*t) - exp(-4.80*t));
Y = [y1, y2, y3, y4, y5 ];
plot(t, Y );
ylim([-0.4, 0.8]);
grid on
clear