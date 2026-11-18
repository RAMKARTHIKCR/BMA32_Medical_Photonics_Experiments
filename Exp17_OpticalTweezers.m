
% EXP17 - Trap stiffness by equipartition

clc;
clear;
close all;

kB = 1.38e-23;
T = 300;

% Simulated bead positions (m)
x = 20e-9*randn(1,10000);

% Calculate variance
varx = var(x);

% Calculate trap stiffness
kappa = kB*T/varx;

fprintf('Trap stiffness = %.3e N/m\n', kappa);

% Plot bead position distribution
figure;
histogram(x*1e9,40);

xlabel('Position (nm)');
ylabel('Counts');

title('Bead Position Distribution');
grid on;
