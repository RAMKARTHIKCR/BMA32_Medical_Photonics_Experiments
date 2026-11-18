
% EXP05 - Gaussian beam divergence

clc;
clear;
close all;

lambda = 1064e-9;
w0 = 0.5e-3;

zR = pi*w0^2/lambda;

z = linspace(0, 50*zR, 500);

w = w0.*sqrt(1 + (z./zR).^2);

theta = lambda/(pi*w0);

plot(z*1e3, w*1e3, 'LineWidth', 1.2);

xlabel('z (mm)');
ylabel('Beam radius (mm)');

title('Gaussian Beam Propagation');
grid on;

fprintf('Divergence = %.3f mrad\n', theta*1e3);