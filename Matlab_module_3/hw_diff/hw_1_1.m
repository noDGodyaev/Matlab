% ut = uxx
% u(x,0) = sin(2x)
% u(0,t) = 2t
% u(0.6, t) = 0.932
% x[0,0.6]
% time [0, 0.01]
clear all;
step_time = 0.001;               % ��� �� ������
step_x = 0.006;                    % ��� �� x
time = 0 : step_time : 0.01;      % ����� �� �������
x = 0 : step_x : 0.6;             % ����� �� x

Mx = length(x);                   % ����� ������� x-���
Nt = length(time);                % ����� ������� �������
u = zeros(Nt,Mx);                 % ����� ������ �������� ��� �����
ut = zeros(Nt,Mx);
uxx = zeros(Nt,Mx);
unext = zeros(Nt,Mx);
% ������������� ���������� �������
for i = 1 : Mx                  
    u(1,i) = sin(2*x(i));       % u(x,0) = sin(2x)
end
% ������������� ��������� �������
for i = 1 : Nt                  
    u(i, 1) = 2*time(i);        % u(0,t) = 2t
    u(i, Mx) = 0.932;           % u(0.6, t) = 0.932
end
% ����� ������� �����
k = step_time/(step_x^2);
for i = 2 : Nt-1                
    for j =  2 : Mx-1
        u1 = u(i-1,j+1);
        u2 = u(i-1,j);
        u3 = u(i-1,j-1);
        u4 = u(i-1,j);
        u(i,j) = -(u1-2*u2+u3)*k + u4;
        ut(i,j) = (u2 - u(i,j))/step_time; % ��� ������ �������
        uxx(i,j) = (u1-2*u2+u3)*k;         %
    end
end
% ����� ������
disp('��� ������� ');disp(vpa(step_time, 5));disp('��� x');disp(vpa(step_x,5));
disp('����� ������� �����');
disp('�����: u(0.3, 0.005) = ');
answer = u(ceil(0.005/step_time), ceil(0.3/step_x));
disp(answer);
% ������ �������
disp('�������:');
fi = (1/12*k*step_x^2*uxx(ceil(0.005/step_time), ceil(0.3/step_x))...
- 1/2*k^2*step_time*ut(ceil(0.005/step_time), ceil(0.3/step_x)));
disp(fi);

% ����� ������� ��� ������ ������� �����
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