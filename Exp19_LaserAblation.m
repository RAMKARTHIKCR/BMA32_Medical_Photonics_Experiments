
% EXP19 - 1D bioheat (explicit finite difference)

clc;
clear;
close all;

L = 0.01;
N = 100;
dx = L/N;
dt = 0.01;
steps = 200;

rho = 1000;
c = 3600;
k = 0.5;
alpha = k/(rho*c);

T = 37*ones(1,N);
Q = zeros(1,N);
Q(1:10) = 5e5;     % Surface heating

for s = 1:steps

    Tn = T;

    Tn(2:end-1) = T(2:end-1) ...
        + alpha*dt/dx^2 * ...
        (T(3:end)-2*T(2:end-1)+T(1:end-2)) ...
        + Q(2:end-1)*dt/(rho*c);

    T = Tn;

end

figure;

plot(linspace(0,L*1e3,N),T,'LineWidth',1.2);

xlabel('Depth (mm)');
ylabel('Temperature (^oC)');

title('Tissue Temperature after Laser Heating');
grid on;
