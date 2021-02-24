% ut = uxx
% u(x,0) = sin(2x)
% u(0,t) = 2t
% u(0.6, t) = 0.932
% x[0,0.6]
% time [0, 0.01]
clear all;
step_time = 0.001;               % шаг по времни
step_x = 0.006;                    % шаг по x
time = 0 : step_time : 0.01;      % сетка по времени
x = 0 : step_x : 0.6;             % сетка по x

Mx = length(x);                   % длина массива x-сов
Nt = length(time);                % длина массива времени
u = zeros(Nt,Mx);                 % задаЄм размер маттрицы дл€ сетки
ut = zeros(Nt,Mx);
uxx = zeros(Nt,Mx);
unext = zeros(Nt,Mx);
% дискретизаци€ начального услови€
for i = 1 : Mx                  
    u(1,i) = sin(2*x(i));       % u(x,0) = sin(2x)
end
% дискретизаци€ граничных условий
for i = 1 : Nt                  
    u(i, 1) = 2*time(i);        % u(0,t) = 2t
    u(i, Mx) = 0.932;           % u(0.6, t) = 0.932
end
% метод не€вных сеток
k = step_time/(step_x^2);
for i = 2 : Nt-1                
    for j =  2 : Mx-1
        u1 = u(i-1,j+1);
        u2 = u(i-1,j);
        u3 = u(i-1,j-1);
        u4 = u(i-1,j);
        u(i,j) = -(u1-2*u2+u3)*k + u4;
        ut(i,j) = (u2 - u(i,j))/step_time; % дл€ расчет нев€зки
        uxx(i,j) = (u1-2*u2+u3)*k;         %
    end
end
% вывод ответа
disp('шаг времени ');disp(vpa(step_time, 5));disp('шаг x');disp(vpa(step_x,5));
disp('метод не€вных сеток');
disp('ќтвет: u(0.3, 0.005) = ');
answer = u(ceil(0.005/step_time), ceil(0.3/step_x));
disp(answer);
% –асчЄт нев€зки
disp('Ќев€зка:');
fi = (1/12*k*step_x^2*uxx(ceil(0.005/step_time), ceil(0.3/step_x))...
- 1/2*k^2*step_time*ut(ceil(0.005/step_time), ceil(0.3/step_x)));
disp(fi);

% ¬ывод графика дл€ метода не€вных сеток
figure(1)
hold on;
for i=1:50
    %p=2.^i;
    p = 10*i;
    if p < Nt
        plot(x,u(p,:));
        pause(0.2)
    end
end
xlabel('x');
ylabel('u(t,x)');
hold off