
% EXP04 - Coherence length and time

clc;
clear;
close all;

c = 3e8;
lambda = 633e-9;       % Central wavelength
dlambda = 0.01e-9;     % Spectral width of He-Ne laser

Lc = lambda^2/dlambda;
tau = Lc/c;

fprintf('Coherence length = %.4f m\n', Lc);
fprintf('Coherence time = %.3e s\n', tau);