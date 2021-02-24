% ut = uxx
% u(x,0) = sin(2x)
% u(0,t) = 2t
% u(0.6, t) = 0.932
% x[0,0.6]
% time [0, 0.01]
clear all;
step_stx = 0.01;
stem_stt = 0.001;
step_time = 0.004 : stem_stt : 0.009;                % шаг по времни
step_x = 0.04 : step_stx : 0.09;                   % шаг по x
size = 6;
fi  = zeros(size);

for ii = 1:size
    for jj = 1:size
        time = 0 : step_time(ii) : 0.01;      % сетка по времени
        x = 0 : step_x(jj) : 0.6;             % сетка по x
        
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
        k = step_time(ii)/(step_x(jj)^2);
        for i = 2 : Nt-1
            for j =  2 : Mx-1
                u1 = u(i-1,j+1);
                u2 = u(i-1,j);
                u3 = u(i-1,j-1);
                u4 = u(i-1,j);
                u(i,j) = -(u1-2*u2+u3)*k + u4;
                ut(i,j) = (u2 - u(i,j))/step_time(ii); % дл€ расчет нев€зки
                uxx(i,j) = (u1-2*u2+u3)*k;         %
            end
        end
        % –асчЄт нев€зки
        fi(ii,jj) = (1/12*k*step_x(jj)^2*uxx(ceil(0.005/step_time(ii)), ceil(0.3/step_x(jj)))...
            - 1/2*k^2*step_time(ii)*ut(ceil(0.005/step_time(ii)), ceil(0.3/step_x(jj))));
    end
end
% ¬ывод графика дл€ ошибки
figure(1)
[x,y] = meshgrid(step_x, step_time);
mesh(x, y, fi);
xlabel('шаг по x');
ylabel('шаг по времени');
zlabel('величина ошибки');