
% EXP16 - FRET efficiency

clc;
clear;
close all;

R0 = 5;                 % Forster distance (nm)

r = linspace(2, 10, 200);

E = 1./(1 + (r/R0).^6);

figure;
plot(r, E, 'LineWidth', 1.2);

xlabel('Distance r (nm)');
ylabel('FRET Efficiency');

title('FRET Efficiency vs Distance');
grid on;

E_meas = 0.5;

r_est = R0*(1/E_meas - 1)^(1/6);

fprintf('Estimated distance = %.2f nm\n', r_est);
