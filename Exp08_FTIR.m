
% EXP08 - FTIR Spectrum from Interferogram
clc;
clear;
close all;

N = 1024;
x = 0:N-1;

% Simulated interferogram
interferogram = ...
    0.90*cos(2*pi*100*x/N) + ...
    0.67*cos(2*pi*250*x/N) + ...
    0.35*cos(2*pi*450*x/N);

% Fourier Transform
spectrum = abs(fft(interferogram));

% Positive frequency spectrum
spectrum = spectrum(1:N/2);

% Plot FTIR spectrum
figure;
plot(0:N/2-1, spectrum, 'b', 'LineWidth', 1);

xlabel('Wavenumber index');
ylabel('Intensity');
title('FTIR Spectrum from Interferogram');
grid on;
