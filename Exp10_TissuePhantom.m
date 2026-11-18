
% EXP10 - Beer-Lambert attenuation

clc;
clear;
close all;

% Define optical properties
I0 = 1;
mua = 0.1;
mus = 10;
g = 0.9;

% Reduced scattering coefficient
mus_prime = mus*(1-g);

% Total attenuation coefficient
mut = mua + mus;

% Define tissue depth
x = linspace(0, 2, 200);

% Calculate light attenuation
I = I0*exp(-mut*x);

% Plot the graph
plot(x, I, 'LineWidth', 1.2);

xlabel('Depth (cm)');
ylabel('Relative Intensity');

title('Light Attenuation in Tissue Phantom');
grid on;

% Display result
fprintf('Reduced scattering = %.2f /cm\n', mus_prime);
