
% EXP14 - One-photon vs two-photon signal

clc;
clear;
close all;

I = linspace(0, 1, 200);

F1 = I;        % One-photon (linear)
F2 = I.^2;     % Two-photon (quadratic)

figure;
plot(I, F1, 'b', I, F2, 'r', 'LineWidth', 1.2);

legend('One-photon', 'Two-photon', ...
       'Location', 'NorthWest');

xlabel('Excitation Intensity');
ylabel('Fluorescence');

title('Two-Photon Excitation Dependence');
grid on;
