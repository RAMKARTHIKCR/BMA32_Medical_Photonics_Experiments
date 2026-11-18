
% EXP18 - Fiber-optic biosensor calibration

clc;
clear;
close all;

n1 = 1.48;
n2 = 1.46;

% Calculate numerical aperture
NA = sqrt(n1^2 - n2^2);

% Concentration and sensor response
C = [0 2 4 6 8 10];
R = [0.02 0.15 0.29 0.44 0.58 0.72];

% Linear calibration fitting
p = polyfit(C,R,1);

% Plot calibration curve
figure;
plot(C,R,'o',C,polyval(p,C),'-');

grid on;

xlabel('Concentration (mg/dL)');
ylabel('Response');

title('Biosensor Calibration');

% Display numerical results
fprintf('NA = %.3f, Sensitivity = %.4f /unit\n', ...
    NA,p(1));
