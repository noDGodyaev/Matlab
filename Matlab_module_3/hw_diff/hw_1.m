% ut = uxx
% u(x,0) = sin(2x)
% u(0,t) = 2t
% u(0.6, t) = 0.932
% x[0,0.6]
% time [0, 0.01]
clear all;
step_time = 0.001;               % шаг по времни
step_x = 0.04;                    % шаг по x
time = 0 : step_time : 0.01;      % сетка по времени
x = 0 : step_x : 0.6;             % сетка по x

Mx = length(x);                   % длина массива x-сов
Nt = length(time);                % длина массива времени
u_1 = zeros(Nt,Mx);               % задаём размер маттрицы для сетки
u_2 = zeros(Nt,Mx);
% дискретизация начального условия
for i = 1 : Mx                  
    u_1(1,i) = sin(2*x(i));       % u(x,0) = sin(2x)
    u_2(1,i) = sin(2*x(i));
end
% дискретизация граничных условий
for i = 1 : Nt                  
    u_1(i, 1) = 2*time(i);        % u(0,t) = 2t
    u_2(i, 1) = 2*time(i);
    u_1(i, Mx) = 0.932;           % u(0.6, t) = 0.932
    u_2(i, Mx) = 0.932;
end
% метод неявных сеток
k = step_time/(step_x^2);
for i = 2 : Nt-1                
    for j =  2 : Mx-1
        u1_1 = u_1(i-1,j+1);
        u2_1 = u_1(i-1,j);
        u3_1 = u_1(i-1,j-1);
        u4_1 = u_1(i-1,j);
        u_1(i,j) = -(u1_1-2*u2_1+u3_1)*k + u4_1;
    end
end
% оценка невязки:
%fi = (1/12*k*step_X^2 - 1/2*k^2*step_time)
% метод явных сеток
for i = 2 : Nt-1                
    for j =  2 : Mx-1
        u1_2 = u_2(i,j+1);
        u2_2 = u_2(i,j);
        u3_2 = u_2(i,j-1);
        u4_2 = u_2(i-1,j);
        u_2(i,j) = -(u1_2-2*u2_2+u3_2)*k + u4_2;
    end
end
% Вывод графика для метода неявных сеток
disp('метод явных сеток');
disp('шаг времени ');disp(vpa(step_time, 5));disp('шаг x');disp(vpa(step_x,5));
u_1(ceil(0.005/step_time), ceil(0.3/step_x))
fi = (1/12*k*step_x^2 - 1/2*k^2*step_time)*u_1(ceil(0.005/step_time), ceil(0.3/step_x));
fi
figure(1)
title('метод неявных сеток');  
hold on;
for i=1:20
    p=2.^i;
    if p < Nt
        plot(x,u_1(p,:));
        pause(0.1)
    end
end
xlabel('x');
ylabel('u(t,x)');
hold off
% Вывод графика для метода явных сеток
disp('метод явных сеток');
u_2(ceil(0.005/step_time), ceil(0.3/step_x))
fi_2 = (1/12*k*step_x^2 - 1/2*k^2*step_time)*u_2(ceil(0.005/step_time), ceil(0.3/step_x));
figure(2)
title('метод явных сеток'); 
hold on;
for i=1:20
    p=2.^i;
    if p < Nt
        plot(x,u_2(p,:));
        pause(0.1)
    end
end
xlabel('x');
ylabel('u(t,x)');
hold off