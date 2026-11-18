
% EXP20 - Fluorescence calibration and LOD

clc;
clear;
close all;

C = [0 1 2 4 8 16];       % Concentration (ug/mL)
I = [5 22 41 82 165 320]; % Measured intensity

% Linear calibration fitting
p = polyfit(C,I,1);
S = p(1);

% Standard deviation of blank
sigma_blank = 3;

% Calculate Limit of Detection
LOD = 3.3*sigma_blank/S;

% Plot calibration curve
figure;
plot(C,I,'o',C,polyval(p,C),'-');

grid on;

xlabel('Concentration (\mug/mL)');
ylabel('Intensity');

title('Fluorescence Calibration');

% Display results
fprintf('Sensitivity = %.2f, LOD = %.3f ug/mL\n', ...
    S,LOD);
