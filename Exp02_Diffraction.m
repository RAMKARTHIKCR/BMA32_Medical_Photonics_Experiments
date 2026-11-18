
% EXPERIMENT 02 - SINGLE SLIT DIFFRACTION
% Medical Photonics Laboratory - BMA32

clc;
clear;
close all;

% STEP 1: Define parameters
lambda = 633e-9;    % Wavelength (633 nm)
a = 100e-6;         % Slit width (100 micrometres)
L = 1;              % Screen distance (1 metre)

% STEP 2: Define screen positions
x = linspace(-0.02, 0.02, 2000);

% STEP 3: Calculate diffraction angle
theta = atan(x/L);

% STEP 4: Calculate beta
beta = pi*a*sin(theta)/lambda;

% STEP 5: Calculate intensity
I = (sin(beta)./beta).^2;
I(beta==0) = 1;

% STEP 6: Plot diffraction pattern
figure;
plot(x*1e3, I, 'LineWidth', 1.2);

xlabel('Position (mm)');
ylabel('Normalised Intensity');
title('Single-Slit Diffraction Pattern');

grid on;

% STEP 7: Display theoretical first minimum
x_min = L*lambda/a;

fprintf('Single-Slit Diffraction Analysis\n');
fprintf('--------------------------------\n');
fprintf('Wavelength = %.0f nm\n', lambda*1e9);
fprintf('Slit Width = %.0f micrometres\n', a*1e6);
fprintf('First minimum position = %.3f mm\n', x_min*1e3);