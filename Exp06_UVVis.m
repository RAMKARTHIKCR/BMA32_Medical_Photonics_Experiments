
% EXP06 - Beer-Lambert calibration

clc;
clear;
close all;

% Concentrations and absorbance values
c = [0.1 0.2 0.3 0.4 0.5];
A = [0.11 0.20 0.31 0.39 0.51];

% Linear curve fitting
p = polyfit(c, A, 1);

% Unknown sample absorbance
A_unknown = 0.27;

% Calculate unknown concentration
c_unknown = (A_unknown - p(2))/p(1);

% Plot calibration graph
plot(c, A, 'o');
hold on;
plot(c, polyval(p,c), '-');

xlabel('Concentration (mM)');
ylabel('Absorbance');

title('UV-Vis Calibration');
grid on;

% Display result
fprintf('Unknown concentration = %.3f mM\n', c_unknown);